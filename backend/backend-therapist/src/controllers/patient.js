const bcrypt = require('bcryptjs');

const Patient = require('../models/patient');

const { responseToMongooseError } = require('../helpers/responses');


function registerPatient(req, res) {
    let body = req.body;
    const therapistId = req.user._id;
    console.log(therapistId)
    Patient.findOne({ email: body.email })
        .exec()
        .then(patient => {
            if (patient) {
                return res.status(409).json({
                    message: 'Existe un paciente con ese email, intente de nuevo'
                });
            }
            const user = new Patient({
                firstname: body.firstname,
                lastname: body.lastname,
                email: body.email,
                phone: body.phone,
                password: bcrypt.hashSync(body.phone, 10),
                age: body.age,
                gender: body.gender,
                diagnostic: body.diagnostic,
                therapist: therapistId
            });
            console.log(user)
            user.save()
                .then((result) => {
                    console.log("qdsvsvsdfeefwe")
                    console.log(result)
                    res.status(201).json({
                        message: 'Paciente registrado satisfactoriamente'
                    });
                })
                .catch(err => {
                    responseToMongooseError(res, err);
                })
        })
        .catch(err => {
            responseToMongooseError(res, err);
        });
}

function getAllPatients(req, res){
    const therapistId = req.user._id;
    const conditions = { therapist: therapistId };
    Patient.find(conditions)
        .select('_id firstname lastname age gender')
        .exec()
        .then((docs) => {
            const response = {
                count: docs.length,
                patients: docs
            };
            res.status(200).json(response);
        })
        .catch((err) => {
            res.status(500).json({
              message:
                'Error interno de servidor, reintente en unos minutos por favor',
              error: err,
            });
        });
}

module.exports = {
    registerPatient,
    getAllPatients
}