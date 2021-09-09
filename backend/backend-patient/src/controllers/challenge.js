const Challenge = require('../models/challenge')

function getAllChallenge(req, res) {
    const patientId = req.user._id;
    const conditions = { patient_id: patientId };
    Challenge.find(conditions)
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
    getAllChallenge,
};