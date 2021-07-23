const { Router } = require('express');
const router = Router();

const SelfRegistrationController = require('../controllers/self-registration');
const checkAuth = require('../middlewares/authentication');

router.post('/add-self-registration', checkAuth, SelfRegistrationController.addSelfRegister);
router.get('/get-all-self-registration', checkAuth, SelfRegistrationController.getAllSelfRegister);

module.exports = router;