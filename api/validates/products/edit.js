const Joi = require("joi");

module.exports = (req, res, next) => {
  Joi.validate(
    req.body,
    {
      name: Joi.string().allow('', null),
      quantity: Joi.string().allow('', null),
      price: Joi.string().allow('', null),
      category_id: Joi.string().allow('', null)
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