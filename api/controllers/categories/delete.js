const pool = require('../../helpers/mysql')

module.exports = async (req, res) => {

    try {

        const { category_id } = req.params

        pool('UPDATE categories SET deleted = 1 WHERE id = ?', [category_id])
            .then(() => res.status(201).json({
                message: 'Deleted category successful.'
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