const mongoose = require('mongoose');

const challengeSchema = new mongoose.Schema({

    situation: {
        type: String,
        required: true,
    },
    description: {
        type: String,
        required: true,
    },
    patient_id: {
        type: String,
        required: true
    },
});

module.exports = mongoose.model('Challenge', challengeSchema);