const { responseToMongooseError } = require('../helpers/responses');
const Challenge = require('../models/challenge')

function addChallenge(req, res) {
    let body = req.body;
    const patientId = req.params.patientID;
    console.log(body)
    const challenge = new Challenge({
        situation: body.situation,
        description: body.description,
        patient_id: patientId,
    });
    challenge.save()
        .then((result) => {
            res.status(201).json({
                message: 'Reto añadido',
            });
        })
        .catch(err => {
            responseToMongooseError(res, err);
        })
}

function getAllChallenge(req, res){
    const patientId = req.params.patientID;
    const conditions = { patient_id: patientId };
    Challenge.find(conditions)
        .select('situation description')
        .exec()
        .then((docs) => {
            const response = {
                count: docs.length,
                challenge: docs
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
    addChallenge,
    getAllChallenge,
};