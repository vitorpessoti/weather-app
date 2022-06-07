module.exports = app => {
    app.route('/geocoding')
        .post(app.controllers.geocoding.index)

    app.route('/geocoding/namePrefix')
        .post(app.controllers.geocoding.namePrefix)

    app.route('/geocoding/latLong')
        .post(app.controllers.geocoding.latLong)

    app.route('/realtime')
        .post(app.controllers.weather.realtime)

    app.route('/onecall')
        .post(app.controllers.weather.onecall)
}