const mongoose = require('mongoose');

const breathingTimesSchema = new mongoose.Schema({

    created_at: {
        type: Date,
        default: new Date()
    },
    patient_id: {
        type: String,
        required: true
    },
});

module.exports = mongoose.model('BreathingTimes', breathingTimesSchema);