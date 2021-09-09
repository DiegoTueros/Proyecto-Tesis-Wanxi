const ImaginalExposure = require('../models/imaginal-exposure')

function getAllImaginalExposure(req, res) {
    const patientId = req.user._id;
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
    getAllImaginalExposure,
};