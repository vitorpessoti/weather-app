const fetch = require('node-fetch');

const realtime = async (req, res) => {
    try {
        const url = `https://api.openweathermap.org/data/2.5/weather?lat=${req.body.latitude}&lon=${req.body.longitude}&units=${req.body.units}&appid=${process.env.API_KEY}`;
        const apiResponse = await fetch(url);
        const data = await apiResponse.json();

        const response = {
            weather: data.weather[0],
            temp: data.main.temp,
            feels_like: data.main.feels_like,
            min: data.main.temp_min,
            max: data.main.temp_max,
            pressure: data.main.pressure,
            humidity: data.main.humidity,
            wind: data.wind,
            country: data.sys.country,
            sunrise: data.sys.sunrise,
            sunset: data.sys.sunset,
            name: data.name
        }

        return res.status(200).json({
            status: true,
            message: 'Request successfully.',
            item: response
        });
    } catch (error) {
        console.log(error)
        return res.status(400).json({
            status: false,
            message: 'An error has occurred.',
            item: error
        })
    }
}

module.exports = {
    realtime: realtime
}