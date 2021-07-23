const { Router } = require('express');
const router = Router();

const HelpController = require('../controllers/help');
const checkAuth = require('../middlewares/authentication');

router.get('/getAllHelp', checkAuth, HelpController.getAllHelp)

module.exports = router;