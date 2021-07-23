const Achievement = require('../models/achievement')

function getAllAchievement(req, res) {
    const patientId = req.user._id;
    const conditions = { patient_id: patientId };
    Achievement.find(conditions)
        .select('name image')
        .exec()
        .then((docs) => {
            const response = {
                count: docs.length,
                achievements: docs
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
    getAllAchievement,
};