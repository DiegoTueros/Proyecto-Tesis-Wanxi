const { Router } = require('express');
const router = Router();

const QuestionController = require('../controllers/question');


router.post('/:patientID/addQuestion', QuestionController.addQuestion)
router.get('/:patientID/getAllQuestions', QuestionController.getAllQuestion)
router.get('/:patientID/getAllQuestionsAnswered', QuestionController.getAllQuestionAnswered)



module.exports = router;