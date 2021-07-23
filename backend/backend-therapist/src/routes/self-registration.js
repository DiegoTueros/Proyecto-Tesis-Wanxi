const { Router } = require('express');
const router = Router();

const SelfRegistrationController = require('../controllers/self-registration');

router.get('/:patientID/selfRegistrations', SelfRegistrationController.getAllSelfRegister)

module.exports = router;