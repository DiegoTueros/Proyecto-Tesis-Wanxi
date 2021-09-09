const { Router } = require('express');
const router = Router();

const EnjActTimesController = require('../controllers/enjact-times');
const checkAuth = require('../middlewares/authentication');

router.post('/', checkAuth, EnjActTimesController.addEnjActTimes);

module.exports = router;