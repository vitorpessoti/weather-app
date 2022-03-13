const fetch = require('node-fetch');

const geocoding = async (req, res) => {
    try {
        const apiResponse = await fetch(`https://api.openweathermap.org/geo/1.0/direct?q=${req.body.city}&appid=${process.env.API_KEY}`);
        const data = await apiResponse.json();
        const response = {
            latitude: data[0].lat,
            longitude: data[0].lon,
        }

        return res.status(200).json({
            status: true,
            message: 'Request successfully.',
            item: response
        });
    } catch (error) {
        return res.status(400).json({
            status: false,
            message: 'An error has occurred.',
            item: error
        })
    }
}

module.exports = {
    index: geocoding
}