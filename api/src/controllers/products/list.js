const pool = require('../../helpers/mysql')

module.exports = async (req, res) => {

    try {

        const { category_id } = req.query
        let { limit = 10, page = 0 } = req.params
        limit = +limit
        page = +page
        page = limit * page

        let query = "SELECT *, (SELECT name FROM categories WHERE id = category_id) AS category_name FROM products WHERE deleted = 0 ORDER BY created_at DESC limit ? OFFSET ?"
        let totalQuery = "SELECT COUNT(id) AS total FROM products WHERE deleted = 0"
        let vals = [limit, page]
        let totalVals = []

        if (category_id) {
            query = "SELECT *, (SELECT name FROM categories WHERE id = category_id) AS category_name FROM products WHERE category_id = ? AND deleted = 0 ORDER BY created_at DESC limit ? OFFSET ?"
            vals = [category_id, limit, page]

            totalQuery = "SELECT COUNT(id) AS total FROM products WHERE category_id = ? AND deleted = 0"
            totalVals = [category_id]
        }

        pool(query, vals)
            .then(async list => {

                const total = await pool(totalQuery, totalVals)

                res.status(200).json({
                    list,
                    total: total[0].total
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