const mongoose = require('mongoose');

const achievementSchema = new mongoose.Schema({

    name: {
        type: String,
        required: true,
    },
    image: {
        type: Number,
        required: true,
    },
    patient_id: {
        type: String,
        required: true
    },
});

module.exports = mongoose.model('Achievement', achievementSchema);