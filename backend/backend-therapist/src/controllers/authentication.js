const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const expiresIn = { expiresIn: '7d' };
const JWT_KEY  = "$store-jwt-key?";

const Therapist = require('../models/therapist');

const { responseToMongooseError } = require('../helpers/responses')


function signup(req, res) {
    let body = req.body;
    Therapist.findOne({ email: body.email })
        .exec()
        .then(therapist => {
            if (therapist) {
                return res.status(409).json({
                    message: 'Existe un usario con ese email, intente de nuevo'
                });
            }
            const user = new Therapist({
                firstname: body.firstname,
                lastname: body.lastname,
                email: body.email,
                password: bcrypt.hashSync(body.password, 10),
            });
            user.save()
                .then(result => {
                    res.status(201).json({
                        message: 'Usuario registrado satisfactoriamente'
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

function signin(req, res) {
    let body = req.body;
    Therapist.findOne({ email: body.email })
        .exec()
        .then(therapist => {
            if (therapist === null) {
                return res.status(401).json({
                    message: 'No se ha encontrado al usuario'
                });
            }
            if (!bcrypt.compareSync(body.password, therapist.password)) {
                return res.status(401).json({
                    message: 'Contraseña errónea'
                });
            }
            let payload = {
                _id: therapist._id,
                email: therapist.email,
                firstname: therapist.firstname,
                lastname: therapist.lastname
            }
            const token = jwt.sign(payload, JWT_KEY, expiresIn);
            const response = {
                token,
                user: {
                    _id: therapist._id,
                    firstname: therapist.firstname,
                    lastname: therapist.lastname
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
    signup,
    signin
}