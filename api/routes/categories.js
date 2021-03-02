const app = require('express')()

app
    .get('/:limit/:page', require('../controllers/categories/list'))
    .get('/:category_id', require('../controllers/categories/detail'))
    .post('/create', require('../validates/categories/create'), require('../controllers/categories/create'))
    .put('/edit/:category_id', require('../validates/categories/edit'), require('../controllers/categories/edit'))
    .delete('/delete/:category_id', require('../controllers/categories/delete'))

module.exports = app