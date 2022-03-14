module.exports = app => {
    app.route('/geocoding')
        .get(app.controllers.geocoding.index)

    app.route('/realtime')
        .get(app.controllers.weather.realtime)
}