const { Router } = require('express');
const router = Router();

const ImgExpTimesController = require('../controllers/imgexp-times');
const checkAuth = require('../middlewares/authentication');

router.post('/', checkAuth, ImgExpTimesController.addImgExpTimes);

module.exports = router;