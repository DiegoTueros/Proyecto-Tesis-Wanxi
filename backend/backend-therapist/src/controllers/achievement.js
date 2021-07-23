const { responseToMongooseError } = require('../helpers/responses');
const Achievement = require('../models/achievement')

function addAchievement(req, res) {
    let body = req.body;
    const patientId = req.params.patientID;
    const achievement = new Achievement({
        name: body.name,
        image: body.image,
        patient_id: patientId,
    });
    achievement.save()
        .then((result) => {
            res.status(201).json({
                message: 'Logro añadido'
            });
        })
        .catch(err => {
            responseToMongooseError(res, err);
        })
}

function getAllAchievement(req, res){
    const patientId = req.params.patientID;
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
    addAchievement,
    getAllAchievement
};