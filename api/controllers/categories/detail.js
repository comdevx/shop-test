const pool = require('../../helpers/mysql')

module.exports = async (req, res) => {

    try {

        let { category_id } = req.params

        pool("SELECT * FROM categories WHERE id = ?", [category_id])
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