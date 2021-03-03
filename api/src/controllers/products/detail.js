const pool = require('../../helpers/mysql')

module.exports = async (req, res) => {

    try {

        let { product_id } = req.params

        pool("SELECT *, (SELECT name FROM categories WHERE id = category_id) AS category_name FROM products WHERE id = ?", [product_id])
            .then(result => res.status(200).json({
                result
            }))
            .catch(err => {
                throw err
            })

    } catch (error) {

        res.status(400).json({
            message: error
        })

    }
}