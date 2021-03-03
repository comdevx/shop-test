const app = require('express')()

app
    .get('/:limit/:page', require('../controllers/users/list'))
    .get('/:user_id', require('../controllers/users/detail'))
    .post('/create', require('../validates/users/create'), require('../controllers/users/create'))
    .delete('/delete/:user_id', require('../controllers/users/delete'))

module.exports = app