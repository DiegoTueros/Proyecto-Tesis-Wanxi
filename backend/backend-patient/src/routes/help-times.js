const { Router } = require('express');
const router = Router();

const HelpTimesController = require('../controllers/help-times');
const checkAuth = require('../middlewares/authentication');

router.post('/addHelpTimes', checkAuth, HelpTimesController.addHelpTimes);

module.exports = router;