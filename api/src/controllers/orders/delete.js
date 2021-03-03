const pool = require('../../helpers/mysql')

module.exports = async (req, res) => {

    try {

        let { order_id } = req.params

        await pool("SELECT quantity, product_id FROM orders WHERE id = ? AND deleted = 0", [order_id])
            .then(result => {

                if (!result[0]) throw 'Invalid order id.'

                Promise.all([
                    pool('UPDATE products SET quantity = quantity + ? WHERE id = ?', [result[0].quantity, result[0].product_id]),
                    pool('UPDATE orders SET deleted = 1 WHERE id = ?', [order_id])
                ])

                res.status(201).json({
                    message: 'Deleted order successful.'
                })

            })
            .catch(err => {
                throw err
            })

    } catch (error) {

        res.status(400).json({
            message: error
        })

    }
}