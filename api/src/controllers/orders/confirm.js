const pool = require('../../helpers/mysql')

module.exports = async (req, res) => {

    try {

        let { order_id } = req.params

        await pool("UPDATE orders SET confirmed = 1 WHERE id = ? AND deleted = 0", [order_id])
            .then(result => {

                if (!result.changedRows) throw 'Invalid order id.'

                res.status(201).json({
                    message: 'Updated order successful.'
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