const SelfRegistration = require('../models/self-registration')

function getAllSelfRegister(req, res){
    const patientId = req.params.patientID;
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
    getAllSelfRegister
};