const { responseToMongooseError } = require('../helpers/responses');
const Help = require('../models/help')

function addHelp(req, res) {
    let body = req.body;
    const patientId = req.params.patientID;
    const help = new Help({
        situation: body.situation,
        description: body.description,
        patient_id: patientId,
    });
    console.log(help)
    help.save()
        .then((result) => {
            res.status(201).json({
                message: 'Ayuda añadido'
            });
        })
        .catch(err => {
            responseToMongooseError(res, err);
        })
}

function getAllHelp(req, res){
    const patientId = req.params.patientID;
    const conditions = { patient_id: patientId };
    Help.find(conditions)
        .select('situation description')
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

module.exports = {
    addHelp,
    getAllHelp,
};