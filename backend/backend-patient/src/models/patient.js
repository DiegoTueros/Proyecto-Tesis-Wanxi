const mongoose = require('mongoose');
var Schema = mongoose.Schema;

const patientSchema = new mongoose.Schema({

  email: {
    type: String,
    required: true,
    unique: true,
  },
  phone:{
    type: String,
    required: true,
  },
  password: {
    type: String,
    required: true,
  },
  firstname: {
    type: String,
    required: true,
  },
  lastname: {
    type: String,
    required: true,
  },
  age: {
    type: Number,
    required: true,
  },
  gender: {
    type: String,
    required: true,
  },
  diagnostic: {
    type: String,
  },
  status: {
    type: String,
  },
  statusDescription: {
    type: String,
  },
  therapist: {
    type: mongoose.Types.ObjectId, 
    ref: 'Therapist',
    required: true,
  },
});

module.exports = mongoose.model('Patient', patientSchema);