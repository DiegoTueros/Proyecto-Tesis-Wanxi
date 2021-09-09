const EnjoyableActivities = require('../models/enjoyable-activities')

function getAllEnjoyableActivities(req, res) {
    const patientId = req.user._id;
    const conditions = { patient_id: patientId };
    EnjoyableActivities.find(conditions)
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
    getAllEnjoyableActivities,
};