const { Router } = require('express');
const router = Router();

const AchievementController = require('../controllers/achievement');
const checkAuth = require('../middlewares/authentication');

router.get('/', checkAuth, AchievementController.getAllAchievement)

module.exports = router;