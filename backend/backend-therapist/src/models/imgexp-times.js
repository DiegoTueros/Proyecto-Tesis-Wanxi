const mongoose = require('mongoose');

const imgExpTimesSchema = new mongoose.Schema({

    imaginal_exposure_id: {
        type: mongoose.Types.ObjectId, 
        ref: 'ImaginalExposure',
        required: true,
      },
    created_at: {
        type: Date,
        default: new Date()
    },
    patient_id: {
        type: String,
        required: true
    },
});

module.exports = mongoose.model('ImgExpTimes', imgExpTimesSchema);