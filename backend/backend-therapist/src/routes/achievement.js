const { Router } = require('express');
const router = Router();

const AchievementController = require('../controllers/achievement');


router.post('/:patientID/addAchievement', AchievementController.addAchievement)
router.get('/:patientID/getAllAchievement', AchievementController.getAllAchievement)



module.exports = router;