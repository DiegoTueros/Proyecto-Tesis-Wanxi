const { Router } = require('express');
const router = Router();

const HelpTimesController = require('../controllers/help-times');

router.get('/:patientID/helpTimes', HelpTimesController.getAllHelpTimes)

module.exports = router;