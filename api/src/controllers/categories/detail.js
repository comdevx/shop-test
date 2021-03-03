const pool = require('../../helpers/mysql')

module.exports = async (req, res) => {

    try {

        let { category_id } = req.params

        await pool("SELECT * FROM categories WHERE id = ?", [category_id])
            .then(result => {
                
                if (!result[0]) throw 'Invalid category id.'

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