const app = require('express')()

app.get('/:limit/:page', require('../controllers/orders/list'))
app.post('/add', require('../validates/orders/add'), require('../controllers/orders/add'))
app.post('/confirm/:category_id', require('../validates/orders/confirm'), require('../controllers/orders/confirm'))

module.exports = app