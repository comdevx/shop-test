const pool = require('../../helpers/mysql')

module.exports = async (req, res) => {

    try {

        const { product_id } = req.params

        pool('UPDATE products SET deleted = 1 WHERE id = ?', [product_id])
            .then(() => res.status(201).json({
                message: 'Deleted product successful.'
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