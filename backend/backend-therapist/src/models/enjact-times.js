const mongoose = require('mongoose');

const enjActTimesSchema = new mongoose.Schema({

    enjoyable_activities_id: {
        type: mongoose.Types.ObjectId, 
        ref: 'EnjoyableActivities',
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

module.exports = mongoose.model('EnjActTimes', enjActTimesSchema);