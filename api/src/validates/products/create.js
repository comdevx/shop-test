const Joi = require("joi")

module.exports = (req, res, next) => {
  Joi.validate(
    req.body,
    {
      name: Joi.string().required(),
      quantity: Joi.string().required(),
      price: Joi.string().required(),
      category_id: Joi.string().required()
    },
    { abortEarly: false },
    err => {

      if (err) {
        return res.status(400).json({
          code: 400,
          message: err.details.map((d) => d.message.replace(/"|\\/g, "")),
        })
      }

      next()

    }
  )
}