const pool = require('../../helpers/mysql')

module.exports = async (req, res) => {

    try {

        let { user_id } = req.params

        await pool("SELECT * FROM users WHERE id = ?", [user_id])
            .then(result => {
                
                if (!result[0]) throw 'Invalid user id.'

                res.status(200).json({
                    result: result[0]
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