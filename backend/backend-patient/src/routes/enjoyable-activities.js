const { Router } = require('express');
const router = Router();

const EnjoyableActivitiesController = require('../controllers/enjoyable-activities');
const checkAuth = require('../middlewares/authentication');

router.get('/', checkAuth, EnjoyableActivitiesController.getAllEnjoyableActivities)

module.exports = router;