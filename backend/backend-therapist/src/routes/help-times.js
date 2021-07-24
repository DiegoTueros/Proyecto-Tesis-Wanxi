const { Router } = require('express');
const router = Router();

const HelpTimesController = require('../controllers/help-times');
const checkAuth = require('../middlewares/authentication');

router.get('/:patientID/helpTimes', checkAuth, HelpTimesController.getAllHelpTimes)

module.exports = router;