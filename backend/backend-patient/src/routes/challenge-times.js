const { Router } = require('express');
const router = Router();

const ChallengeTimesController = require('../controllers/challenge-times');
const checkAuth = require('../middlewares/authentication');

router.post('/', checkAuth, ChallengeTimesController.addChallengeTimes);

module.exports = router;