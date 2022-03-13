module.exports = app => {
    app.route('/geocoding')
        .get(app.controllers.geocoding.index)
}