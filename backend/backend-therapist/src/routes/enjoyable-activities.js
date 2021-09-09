const { Router } = require('express');
const router = Router();

const EnjoyableActivitiesController = require('../controllers/enjoyable-activities');
const checkAuth = require('../middlewares/authentication');

router.post('/:patientID/enjoyable-activities', checkAuth, EnjoyableActivitiesController.addEnjoyableActivities)
router.get('/:patientID/enjoyable-activities', checkAuth, EnjoyableActivitiesController.getAllEnjoyableActivities)



module.exports = router;