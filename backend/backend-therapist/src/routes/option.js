const { Router } = require('express');
const router = Router();

const OptionController = require('../controllers/option');
const checkAuth = require('../middlewares/authentication');

router.post('/:questionID/option', checkAuth, OptionController.addOption)
router.get('/:questionID/option', checkAuth, OptionController.getAllOption)
//router.get('/:patientID/getAllQuestionsAnswered', OptionController.)



module.exports = router;