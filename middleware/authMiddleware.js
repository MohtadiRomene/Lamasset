const jwt = require('jsonwebtoken');

// Même clé secrète que celle utilisée dans login
const jwtSecret = 'cle_secrete_test';

const authMiddleware = (req, res, next) => {
  const authHeader = req.headers.authorization;

  if (!authHeader || !authHeader.startsWith('Bearer '))
    return res.status(401).json({ message: 'Token manquant ou mal formé.' });

  const token = authHeader.split(' ')[1];

  try {
    const decoded = jwt.verify(token, jwtSecret);
    req.user = decoded; // On attache l'utilisateur décodé à la requête
    next(); // OK → on passe à la suite
  } catch (err) {
    return res.status(401).json({ message: 'Token invalide ou expiré.' });
  }
};

module.exports = authMiddleware;
