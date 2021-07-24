const { Router } = require('express');
const router = Router();

const AchievementController = require('../controllers/achievement');
const checkAuth = require('../middlewares/authentication');

router.post('/:patientID/Achievement', checkAuth, AchievementController.addAchievement)
router.get('/:patientID/Achievement', checkAuth, AchievementController.getAllAchievement)



module.exports = router;