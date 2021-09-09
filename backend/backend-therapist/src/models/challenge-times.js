const mongoose = require('mongoose');

const challengeTimesSchema = new mongoose.Schema({

    challenge_id: {
        type: mongoose.Types.ObjectId, 
        ref: 'Challenge',
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

module.exports = mongoose.model('ChallengeTimes', challengeTimesSchema);