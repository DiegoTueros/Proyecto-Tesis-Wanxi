const mongoose = require('mongoose');

const optionSchema = new mongoose.Schema({

    option: {
        type: String,
        required: true
    },
    answer: {
        type: Boolean,
        default: false
    },
    question_id: {
        type: String,
        required: true
    }
});

module.exports = mongoose.model('Option', optionSchema);