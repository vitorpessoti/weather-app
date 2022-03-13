module.exports = app => {
    app.route('/testing')
        .get(app.controllers.weather.testing)
}