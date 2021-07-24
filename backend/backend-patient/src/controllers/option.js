const Option = require('../models/option')

function getAllOption(req, res) {
    let body = req.body;
    const conditions = { 
        question_id: body.question_id,
    };
    Option.find(conditions)
        .select('option answer')
        .exec()
        .then((docs) => {
            const response = {
                count: docs.length,
                helps: docs
            };
            res.status(200).json(response);
        })
        .catch((err) => {
            res.status(500).json({
                message:
                    'Error interno de servidor, reintente en unos minutos por favor',
                error: err,
            });
        });
}

function updateOption(req, res){
    const optionId = req.params.optionID;
    updateOps = {
        answer: true
    }
    Option.updateOne(
        {
            _id: optionId
        },
        {
            $set: updateOps
        }
    )
    .exec()
    .then((result) => {
      if (result.n === 0) {
        res.status(404).json({
          message: 'No se encontró la opción',
        });
      } else {
        res.status(200).json({
          message: 'Opción actualizada',
        });
      }
    })
    .catch((err) => {
      responseToMongooseError(res, err);
    });

}

module.exports = {
    getAllOption,
    updateOption
};