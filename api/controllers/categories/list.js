const pool = require('../../helpers/mysql')

module.exports = async (req, res) => {

    try {

        let { limit = 10, page = 0 } = req.params
        limit = +limit
        page = +page
        page = limit * page

        pool("SELECT * FROM categories WHERE deleted = 0 ORDER BY created_at DESC limit ? OFFSET ?", [limit, page])
            .then(async list => {

                const total = await pool("SELECT COUNT(id) AS total FROM categories WHERE deleted = 0")

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