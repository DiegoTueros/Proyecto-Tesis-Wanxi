const { Router } = require('express');
const router = Router();

const OptionController = require('../controllers/option');
const checkAuth = require('../middlewares/authentication');

router.get('/', checkAuth, OptionController.getAllOption)
router.patch('/:optionID', checkAuth,OptionController.updateOption)

module.exports = router;