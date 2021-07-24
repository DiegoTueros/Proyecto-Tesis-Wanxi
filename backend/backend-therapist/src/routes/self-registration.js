const { Router } = require('express');
const router = Router();

const SelfRegistrationController = require('../controllers/self-registration');
const checkAuth = require('../middlewares/authentication');

router.get('/:patientID/selfRegistrations', checkAuth, SelfRegistrationController.getAllSelfRegister)

module.exports = router;