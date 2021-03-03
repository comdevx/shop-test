const app = require('express')()

app.get('/:limit/:page/user/:user_id', require('../controllers/orders/list'))
app.post('/add', require('../validates/orders/add'), require('../controllers/orders/add'))
app.post('/confirm/:order_id', require('../controllers/orders/confirm'))
app.delete('/delete/:order_id', require('../controllers/orders/delete'))

module.exports = app