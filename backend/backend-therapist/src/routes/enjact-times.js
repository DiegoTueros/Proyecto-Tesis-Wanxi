const { Router } = require('express');
const router = Router();

const EnjActTimesController = require('../controllers/enjact-times');
const checkAuth = require('../middlewares/authentication');

router.get('/:patientID/enjActTimes', checkAuth, EnjActTimesController.getAllEnjActTimes)

module.exports = router;