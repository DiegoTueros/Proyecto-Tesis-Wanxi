const { Router } = require('express');
const router = Router();

const QuestionController = require('../controllers/question');
const checkAuth = require('../middlewares/authentication');


router.post('/:patientID/question', checkAuth, QuestionController.addQuestion)
router.get('/:patientID/question', checkAuth, QuestionController.getAllQuestion)
router.get('/:patientID/questionsAnswered', checkAuth, QuestionController.getAllQuestionAnswered)



module.exports = router;