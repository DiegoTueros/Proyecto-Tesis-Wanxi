const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const expiresIn = { expiresIn: '7d' };
const JWT_KEY  = "$store-jwt-key?";

const Patient = require('../models/patient');

const { responseToMongooseError } = require('../helpers/responses');

function signin(req, res) {
    let body = req.body;
    Patient.findOne({ email: body.email })
        .exec()
        .then(patient => {
            if (patient === null) {
                return res.status(401).json({
                    message: 'No se ha encontrado al usuario'
                });
            }
            if (!bcrypt.compareSync(body.password, patient.password)) {
                return res.status(401).json({
                    message: 'Contraseña errónea'
                });
            }
            let payload = {
                _id: patient._id,
                firstname: patient.firstname,
                lastname: patient.lastname,
                age: patient.age,
                gender: patient.gender
            }
            const token = jwt.sign(payload, JWT_KEY, expiresIn);
            const response = {
                token,
                user: {
                    _id: patient._id,
                    firstname: patient.firstname,
                    lastname: patient.lastname
                },
            }
            return res.status(200).json(response);
        })
        .catch(err => {
            responseToMongooseError(res, err);
        });
}

/*router.get('./logout', function (req, res) {
    res.status(200).send({ auth: false, token: null });
});*/


module.exports = {
    signin
}