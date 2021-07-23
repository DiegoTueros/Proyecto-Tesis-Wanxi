const { responseToMongooseError } = require('../helpers/responses');
const HelpTimes = require('../models/help-times')

function addHelpTimes(req, res) {
    let body = req.body;
    const patientId = req.user._id;
    const helpTimes = new HelpTimes({
        help_id: body.helpId,
        patient_id: patientId
    });
    helpTimes.save()
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
    addHelpTimes,
};