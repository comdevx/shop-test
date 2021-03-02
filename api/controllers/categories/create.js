const pool = require('../../helpers/mysql')

module.exports = async (req, res) => {

    try {

        const body = req.body

        pool('INSERT INTO categories SET ?', body)
            .then(() => res.status(201).json({
                message: 'Created category successful.'
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