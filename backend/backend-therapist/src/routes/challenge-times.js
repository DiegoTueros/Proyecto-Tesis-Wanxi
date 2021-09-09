const { Router } = require('express');
const router = Router();

const ChallengeTimesController = require('../controllers/challenge-times');
const checkAuth = require('../middlewares/authentication');

router.get('/:patientID/challengeTimes', checkAuth, ChallengeTimesController.getAllChallengeTimes)

module.exports = router;