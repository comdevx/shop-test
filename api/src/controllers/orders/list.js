const pool = require('../../helpers/mysql')

module.exports = async (req, res) => {

    try {

        let { limit = 10, page = 0, user_id } = req.params
        limit = +limit
        page = +page
        page = limit * page

        await pool("SELECT *, (SELECT username FROM users WHERE id = user_id) AS username, (SELECT name FROM products WHERE id = product_id) AS product_name FROM orders WHERE user_id = ? AND deleted = 0 ORDER BY created_at DESC limit ? OFFSET ?", [user_id, limit, page])
            .then(list => res.status(200).json({
                list
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