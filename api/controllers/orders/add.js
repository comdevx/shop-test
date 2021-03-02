const pool = require('../../helpers/mysql')

module.exports = async (req, res) => {

    try {

        pool('INSERT INTO order SET ?', req.body)
            .then(() => res.status(201).json({
                message: 'Add product successful.'
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