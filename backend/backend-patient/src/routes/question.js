const { Router } = require('express');
const router = Router();

const QuestionController = require('../controllers/question');
const checkAuth = require('../middlewares/authentication');

router.get('/', checkAuth, QuestionController.getAllQuestion)
router.patch('/:questionID', checkAuth, QuestionController.updateQuestion)

module.exports = router;