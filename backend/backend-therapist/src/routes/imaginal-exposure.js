const { Router } = require('express');
const router = Router();

const ImaginalExposureController = require('../controllers/imaginal-exposure');
const checkAuth = require('../middlewares/authentication');

router.post('/:patientID/imaginal-exposure', checkAuth, ImaginalExposureController.addImaginalExposure)
router.get('/:patientID/imaginal-exposure', checkAuth, ImaginalExposureController.getAllImaginalExposure)



module.exports = router;