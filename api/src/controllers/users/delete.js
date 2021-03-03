const pool = require('../../helpers/mysql')

module.exports = async (req, res) => {

    try {

        const { user_id } = req.params

        await pool('UPDATE users SET deleted = 1 WHERE id = ?', [user_id])
            .then(result => {

                if (!result.changedRows) throw 'Invalid user id.'

                res.status(201).json({
                    message: 'Deleted user successful.'
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