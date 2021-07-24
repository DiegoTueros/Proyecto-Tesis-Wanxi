const { responseToMongooseError } = require('../helpers/responses');
const Option = require('../models/option')

function addOption(req, res) {
    let body = req.body;
    const questiontId = req.params.questionID;
    console.log(body)
    const option = new Option({
        option: body.option,
        question_id: questiontId
    });
    console.log(option)
    option.save()
        .then((result) => {
            res.status(201).json({
                message: 'Opción añadido'
            });
        })
        .catch(err => {
            responseToMongooseError(res, err);
        })
}

function getAllOption(req, res){
    const questiontId = req.params.questionID;
    const conditions = { question_id: questiontId };
    Option.find(conditions)
        .select('option answer')
        .exec()
        .then((docs) => {
            const response = {
                count: docs.length,
                option: docs
            };
            console.log(response)
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

module.exports = {
    addOption,
    getAllOption
};