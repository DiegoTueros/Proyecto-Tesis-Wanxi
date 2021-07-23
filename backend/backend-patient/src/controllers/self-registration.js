const { responseToMongooseError } = require('../helpers/responses');
const SelfRegistration = require('../models/self-registration')

function addSelfRegister(req, res) {
    let body = req.body;
    const patientId = req.user._id;
    const selfR = new SelfRegistration({
        situation: body.situation,
        emotions: body.emotions,
        thought: body.thought,
        duration: body.duration,
        whatIDo: body.whatIDo,
        utility: body.utility,
        patient_id: patientId
    });
    selfR.save()
        .then((result) => {
            res.status(201).json({
                message: 'Auto-Registro añadido'
            });
        })
        .catch(err => {
            responseToMongooseError(res, err);
        })
}

function getAllSelfRegister(req, res){
    const patientId = req.user._id;
    const conditions = { patient_id: patientId };
    SelfRegistration.find(conditions)
        .select('situation emotions thought duration whatIDo utility')
        .exec()
        .then((docs) => {
            const response = {
                count: docs.length,
                selfRegistration: docs
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
    addSelfRegister,
    getAllSelfRegister
};