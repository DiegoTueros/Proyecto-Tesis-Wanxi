const { responseToMongooseError } = require('../helpers/responses');
const Question = require('../models/question')

function addQuestion(req, res) {
    let body = req.body;
    const patientId = req.params.patientID;
    console.log(body)
    const question = new Question({
        question: body.question,
        patient_id: patientId,
    });
    console.log(question)
    question.save()
        .then((result) => {
            res.status(201).json({
                message: 'Pregunta añadido',
                question_id: question._id
            });
        })
        .catch(err => {
            responseToMongooseError(res, err);
        })
}

function getAllQuestion(req, res){
    const patientId = req.params.patientID;
    const conditions = { patient_id: patientId };
    Question.find(conditions)
        .select('question state')
        .exec()
        .then((docs) => {
            const response = {
                count: docs.length,
                question: docs
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

function getAllQuestionAnswered(req, res){
    const patientId = req.params.patientID;
    const conditions = { 
        patient_id: patientId,
        state: false
    };
    Question.find(conditions)
        .select('question state')
        .exec()
        .then((docs) => {
            const response = {
                count: docs.length,
                question: docs
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

module.exports = {
    addQuestion,
    getAllQuestion,
    getAllQuestionAnswered
};