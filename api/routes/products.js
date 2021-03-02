const app = require('express')()

app
    .get('/:limit/:page', require('../controllers/products/list'))
    .get('/:product_id', require('../controllers/products/detail'))
    .post('/create', require('../validates/products/create'), require('../controllers/products/create'))
    .put('/edit/:product_id', require('../validates/products/edit'), require('../controllers/products/edit'))
    .delete('/delete/:product_id', require('../controllers/products/delete'))

module.exports = app