const { responseToMongooseError } = require('../helpers/responses');
const ChallengeTimes = require('../models/challenge-times')

function addChallengeTimes(req, res) {
    let body = req.body;
    const patientId = req.user._id;
    const challengeTimes = new ChallengeTimes({
        challenge_id: body.challengeId,
        patient_id: patientId
    });
    challengeTimes.save()
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
    addChallengeTimes,
};