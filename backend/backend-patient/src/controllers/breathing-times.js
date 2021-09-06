const { responseToMongooseError } = require('../helpers/responses');
const BreathingTimes = require('../models/breathing-times')

function addBreathingTimes(req, res) {
    const patientId = req.user._id;
    const breathingTimes = new BreathingTimes({
        patient_id: patientId
    });
    breathingTimes.save()
        .then((result) => {
            res.status(201).json({
                message: 'Se registro su interacción'
            });
        })
        .catch(err => {
            responseToMongooseError(res, err);
        })
}

module.exports = {
    addBreathingTimes,
};