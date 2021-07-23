const { Router } = require('express');
const router = Router();

const HelpController = require('../controllers/help');


router.post('/:patientID/addHelp', HelpController.addHelp)
router.get('/:patientID/getAllHelps', HelpController.getAllHelp)



module.exports = router;