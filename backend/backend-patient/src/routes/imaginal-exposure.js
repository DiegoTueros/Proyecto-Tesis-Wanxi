const { Router } = require('express');
const router = Router();

const ImaginalExposureController = require('../controllers/imaginal-exposure');
const checkAuth = require('../middlewares/authentication');

router.get('/', checkAuth, ImaginalExposureController.getAllImaginalExposure)

module.exports = router;