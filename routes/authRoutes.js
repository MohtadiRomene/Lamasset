const express = require('express');
const router = express.Router();
const authController = require('../controllers/authController');
const authMiddleware = require('../middleware/authMiddleware');

router.post('/register', authController.register);
router.post('/login', authController.login);

// Route protégée
router.get('/profile', authMiddleware, (req, res) => {
  res.status(200).json({
    message: 'Accès autorisé au profil',
    user: req.user
  });
});

module.exports = router;
