const { responseToMongooseError } = require('../helpers/responses');
const   ImgExpTimes = require('../models/imgexp-times')

function addImgExpTimes(req, res) {
    let body = req.body;
    const patientId = req.user._id;
    const imgExpTimes = new ImgExpTimes({
        imaginal_exposure_id: body.imgExpId,
        patient_id: patientId
    });
    imgExpTimes.save()
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
    addImgExpTimes,
};