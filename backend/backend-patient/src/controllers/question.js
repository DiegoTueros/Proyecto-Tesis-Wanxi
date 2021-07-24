const Question = require('../models/question')

function getAllQuestion(req, res) {
    const patientId = req.user._id;
    const conditions = { 
        patient_id: patientId,
        state: true
    };
    Question.find(conditions)
        .select('question')
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

function updateQuestion(req, res) {
    const questionId = req.params.questionID;
    updateOps = { 
        state: false
    };
    Question.updateOne(
        {
            _id: questionId
        },
        {
            $set: updateOps
        }
    )
    .exec()
    .then((result) => {
      if (result.n === 0) {
        res.status(404).json({
          message: 'No se encontró la pregunta',
        });
      } else {
        res.status(200).json({
          message: 'Pregunta actualizada',
        });
      }
    })
    .catch((err) => {
      responseToMongooseError(res, err);
    });
}

module.exports = {
    getAllQuestion,
    updateQuestion
};