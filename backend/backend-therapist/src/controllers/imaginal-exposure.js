const { responseToMongooseError } = require('../helpers/responses');
const ImaginalExposure = require('../models/imaginal-exposure')

function addImaginalExposure(req, res) {
    let body = req.body;
    const patientId = req.params.patientID;
    console.log(body)
    const imaginalExposure = new ImaginalExposure({
        situation: body.situation,
        description: body.description,
        patient_id: patientId,
    });
    imaginalExposure.save()
        .then((result) => {
            res.status(201).json({
                message: 'Exposición Imaginal añadida',
            });
        })
        .catch(err => {
            responseToMongooseError(res, err);
        })
}

function getAllImaginalExposure(req, res){
    const patientId = req.params.patientID;
    const conditions = { patient_id: patientId };
    ImaginalExposure.find(conditions)
        .select('situation description')
        .exec()
        .then((docs) => {
            const response = {
                count: docs.length,
                imaginalExposure: docs
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
    addImaginalExposure,
    getAllImaginalExposure,
};