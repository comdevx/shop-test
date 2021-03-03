const pool = require('../../helpers/mysql')

module.exports = async (req, res) => {

    try {

        const { user_id, product_id, quantity } = req.body

        const [amount, exists] = await Promise.all([
            pool('SELECT quantity FROM products WHERE id = ?', [product_id]),
            pool('SELECT id FROM orders WHERE user_id = ? AND product_id = ?', [user_id, product_id])
        ])

        if (quantity > amount[0].quantity) {
            return res.status(400).json({
                message: 'Not enough product.'
            })
        }

        if (!exists[0]) {
            await pool('INSERT INTO orders SET ?', req.body)
                .then(() => {

                    pool('UPDATE products SET quantity = quantity - ? WHERE id = ?', [quantity, product_id])

                    res.status(201).json({
                        message: 'Add product successful.'
                    })

                })
                .catch(err => {
                    throw err
                })
        }

        if (exists[0]) {
            await pool('UPDATE orders SET quantity = quantity + ? WHERE user_id = ? AND product_id = ?', [quantity, user_id, product_id])
                .then(() => {

                    pool('UPDATE products SET quantity = quantity - ? WHERE id = ?', [quantity, product_id])

                    res.status(201).json({
                        message: 'Add product successful.'
                    })

                })
                .catch(err => {
                    throw err
                })
        }

    } catch (error) {

        res.status(400).json({
            message: error
        })

    }

}