const { Router } = require('express');
const router = Router();

const ChallengeController = require('../controllers/challenge');
const checkAuth = require('../middlewares/authentication');

router.post('/:patientID/challenge', checkAuth, ChallengeController.addChallenge)
router.get('/:patientID/challenge', checkAuth, ChallengeController.getAllChallenge)



module.exports = router;