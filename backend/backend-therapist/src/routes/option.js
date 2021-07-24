const { Router } = require('express');
const router = Router();

const OptionController = require('../controllers/option');


router.post('/:questionID/addOption', OptionController.addOption)
router.get('/:questionID/getAllOption', OptionController.getAllOption)
//router.get('/:patientID/getAllQuestionsAnswered', OptionController.)



module.exports = router;