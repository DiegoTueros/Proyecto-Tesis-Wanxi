const { Router } = require('express');
const router = Router();

const HelpController = require('../controllers/help');
const checkAuth = require('../middlewares/authentication');

router.post('/:patientID/help', checkAuth, HelpController.addHelp)
router.get('/:patientID/help', checkAuth, HelpController.getAllHelp)



module.exports = router;