const pool = require('../../helpers/mysql')

module.exports = async (req, res) => {

    try {

        const body = req.body

        await pool('INSERT INTO users SET ?', body)
            .then(() => res.status(201).json({
                message: 'Created user successful.'
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
