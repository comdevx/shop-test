require('dotenv').config()

const app = require('express')()
const bodyParser = require('body-parser')
const { PORT } = process.env

app.use(require('cors')())
app.use(bodyParser.urlencoded({ extended: false }))
app.use(bodyParser.json())

app.use('/categories', require('./routes/categories'))
app.use('/products', require('./routes/products'))
app.use('/orders', require('./routes/orders'))

app.listen(PORT, () => console.log(`App listening on port ${PORT}!`))