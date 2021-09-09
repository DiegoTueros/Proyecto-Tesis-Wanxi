const { Router } = require('express');
const router = Router();

const ChallengeController = require('../controllers/challenge');
const checkAuth = require('../middlewares/authentication');

router.get('/', checkAuth, ChallengeController.getAllChallenge)

module.exports = router;