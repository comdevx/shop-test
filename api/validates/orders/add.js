const Joi = require("joi");

module.exports = (req, res, next) => {
  Joi.validate(
    req.body,
    {
      user_id: Joi.string().required(),
      product_id: Joi.string().required()
    },
    { abortEarly: false },
    err => {
      if (err) {
        res.status(400).json({
          code: 400,
          message: err.details.map((d) => d.message.replace(/"|\\/g, "")),
        });
      } else {
        next()
      }
    },
  )
}