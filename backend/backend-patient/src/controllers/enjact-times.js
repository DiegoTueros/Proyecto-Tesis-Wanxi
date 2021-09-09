const { responseToMongooseError } = require('../helpers/responses');
const EnjActTimes = require('../models/enjact-times')

function addEnjActTimes(req, res) {
    let body = req.body;
    const patientId = req.user._id;
    const enjActTimes = new EnjActTimes({
        enjoyable_activities_id: body.enjActId,
        patient_id: patientId
    });
    enjActTimes.save()
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
    addEnjActTimes,
};