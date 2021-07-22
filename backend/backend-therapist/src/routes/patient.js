const { Router } = require('express');
const router = Router();

const PatientController = require('../controllers/patient');
const checkAuth = require('../middlewares/authentication');

router.post('/register',checkAuth, PatientController.registerPatient)
router.get('/',checkAuth, PatientController.getAllPatients)



module.exports = router;