const { Router } = require('express');
const router = Router();

const BreathingTimesController = require('../controllers/breathing-times');
const checkAuth = require('../middlewares/authentication');

router.get('/:patientID/breathingTimes', checkAuth, BreathingTimesController.getAllBreathingTimes)

module.exports = router;