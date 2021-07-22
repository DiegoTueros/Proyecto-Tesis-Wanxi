const { Schema, model } = require("mongoose");
const bcrypt = require('bcryptjs')
const therapistSchema = new Schema({
    firstname: String,
    lastname: String,
    email: String,
    password: String
});

module.exports = model('Therapist', therapistSchema)