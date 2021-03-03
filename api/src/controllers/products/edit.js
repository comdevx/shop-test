const pool = require('../../helpers/mysql')

module.exports = async (req, res) => {

    try {

        let { product_id } = req.params

        pool("UPDATE products SET ? WHERE id = ?", [req.body, product_id])
            .then(() => res.status(201).json({
                message: 'Updated product successful.'
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