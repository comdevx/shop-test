const pool = require('../../helpers/mysql')

module.exports = async (req, res) => {

    try {

        let { category_id } = req.params

        pool("UPDATE categories SET ? WHERE id = ?", [req.body, category_id])
            .then(() => res.status(201).json({
                message: 'Updated category successful.'
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