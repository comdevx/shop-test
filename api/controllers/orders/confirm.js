const pool = require('../../helpers/mysql')

module.exports = async (req, res) => {

    try {

        let { order_id } = req.params

        pool("UPDATE orders SET ? WHERE id = ?", [req.body, order_id])
            .then(() => res.status(201).json({
                message: 'Updated order successful.'
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