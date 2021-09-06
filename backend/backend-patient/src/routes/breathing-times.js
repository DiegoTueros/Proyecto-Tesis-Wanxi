const { Router } = require('express');
const router = Router();

const BreathingTimesController = require('../controllers/breathing-times');
const checkAuth = require('../middlewares/authentication');

router.post('/', checkAuth, BreathingTimesController.addBreathingTimes);

module.exports = router;