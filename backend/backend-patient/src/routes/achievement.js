const { Router } = require('express');
const router = Router();

const AchievementController = require('../controllers/achievement');
const checkAuth = require('../middlewares/authentication');

router.get('/getAllAchievement', checkAuth, AchievementController.getAllAchievement)

module.exports = router;