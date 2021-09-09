const { Router } = require('express');
const router = Router();

const ImgExpTimesController = require('../controllers/imgexp-times');
const checkAuth = require('../middlewares/authentication');

router.get('/:patientID/imgExpTimes', checkAuth, ImgExpTimesController.getAllImgExpTimes)

module.exports = router;