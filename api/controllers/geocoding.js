const fetch = require('node-fetch');

const geocoding = async (req, res) => {
    console.log('req.body', req.body);
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

const namePrefix = async (req, res) => {
    try {
        console.log(req.body);
        const apiResponse = await fetch(`https://wft-geo-db.p.rapidapi.com/v1/geo/cities?namePrefix=${req.body.cityPrefix}`, {
            headers: {
                'X-RapidAPI-Host': process.env.GEODB_HOST,
                'X-RapidAPI-Key': process.env.GEODB_KEY
            }
        });
        const data = await apiResponse.json();
        const response = {
            data: data.data,
            count: data.metadata.totalCount,
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

const latLong = async (req, res) => {
    try {
        console.log(req.body);
        const apiResponse = await fetch(`https://wft-geo-db.p.rapidapi.com/v1/geo/cities?location=${req.body.latitude}${req.body.longitude}&limit=1`, {
            headers: {
                'X-RapidAPI-Host': process.env.GEODB_HOST,
                'X-RapidAPI-Key': process.env.GEODB_KEY
            }
        });
        const data = await apiResponse.json();
        const response = {
            data: data.data,
            count: data.metadata.totalCount,
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
    index: geocoding,
    namePrefix: namePrefix,
    latLong: latLong
}