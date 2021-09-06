const mongoose = require('mongoose');

const selfRegistrationtSchema = new mongoose.Schema({

    situation: {
        type: String,
        required: true
    },
    emotions: [{
        emotion: {
            type: String,
            required: true
        },
        level: {
            type: Number,
            required: true
        }
    }],
    thought: {
        type: String,
        required: true
    },
    duration: {
        type: Number,
        required: true
    },
    whatIDo: {
        type: String,
        required: true
    },
    utility: {
        type: Number,
        required: true
    },
    created_at: {
        type: Date,
        default: Date.now
    },
    patient_id: {
        type: String,
        required: true
    },
});

module.exports = mongoose.model('SelfRegistration', selfRegistrationtSchema);