const { responseToMongooseError } = require('../helpers/responses');
const EnjoyableActivities = require('../models/enjoyable-activities')

function addEnjoyableActivities(req, res) {
    let body = req.body;
    const patientId = req.params.patientID;
    console.log(body)
    const enjoyableActivities = new EnjoyableActivities({
        situation: body.situation,
        description: body.description,
        patient_id: patientId,
    });
    enjoyableActivities.save()
        .then((result) => {
            res.status(201).json({
                message: 'Actividad Agradable añadida',
            });
        })
        .catch(err => {
            responseToMongooseError(res, err);
        })
}

function getAllEnjoyableActivities(req, res){
    const patientId = req.params.patientID;
    const conditions = { patient_id: patientId };
    EnjoyableActivities.find(conditions)
        .select('situation description')
        .exec()
        .then((docs) => {
            const response = {
                count: docs.length,
                enjoyableActivities: docs
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
    addEnjoyableActivities,
    getAllEnjoyableActivities,
};