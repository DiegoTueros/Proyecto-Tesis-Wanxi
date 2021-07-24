const { Router } = require('express');
const router = Router();

const SelfRegistrationController = require('../controllers/self-registration');
const checkAuth = require('../middlewares/authentication');

router.post('/', checkAuth, SelfRegistrationController.addSelfRegister);
router.get('/', checkAuth, SelfRegistrationController.getAllSelfRegister);

module.exports = router;