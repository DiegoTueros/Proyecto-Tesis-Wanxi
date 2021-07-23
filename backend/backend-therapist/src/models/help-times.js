const mongoose = require('mongoose');

const helpTimesSchema = new mongoose.Schema({

    help_id: {
        type: mongoose.Types.ObjectId, 
        ref: 'Help',
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

module.exports = mongoose.model('HelpTimes', helpTimesSchema);