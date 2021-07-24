const mongoose = require('mongoose');

const questionSchema = new mongoose.Schema({

    question: {
        type: String,
        required: true
    },
    state:{
        type: Boolean,
        default: true
    },
    patient_id: {
        type: String,
        required: true
    },
});

module.exports = mongoose.model('Question', questionSchema);