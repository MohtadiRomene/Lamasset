const db = require('../db');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');

// Clé secrète (à sécuriser en prod)
const jwtSecret = 'cle_secrete_test';

// Inscription
exports.register = async (req, res) => {
  const { first_name, email, phone_number, password, confirm_password } = req.body;

  if (!first_name || !email || !phone_number || !password || !confirm_password)
    return res.status(400).json({ message: "Tous les champs sont obligatoires." });

  if (password !== confirm_password)
    return res.status(400).json({ message: "Les mots de passe ne correspondent pas." });

  db.query("SELECT * FROM users WHERE email = ?", [email], async (err, results) => {
    if (err) return res.status(500).json({ message: "Erreur serveur." });
    if (results.length > 0)
      return res.status(400).json({ message: "Cet email est déjà utilisé." });

    const hashedPassword = await bcrypt.hash(password, 10);

    db.query(
      "INSERT INTO users (first_name, last_name, email, phone_number, password_hash) VALUES (?, ?, ?, ?, ?)",
      [first_name, null, email, phone_number, hashedPassword],
      (err) => {
        if (err) {
          console.error("Erreur SQL :", err); // important pour le debug
          return res.status(500).json({ message: "Erreur lors de l'inscription." });
        }
        return res.status(201).json({ message: "Inscription réussie." });
      }
    );
  });
};


// Connexion
/*
exports.login = (req, res) => {
  const { email, password } = req.body;

  if (!email || !password)
    return res.status(400).json({ message: "Email et mot de passe requis." });

  db.query("SELECT * FROM users WHERE email = ?", [email], async (err, results) => {
    if (err) return res.status(500).json({ message: "Erreur serveur." });
    if (results.length === 0)
      return res.status(404).json({ message: "Utilisateur introuvable." });

    const user = results[0];
    const validPassword = await bcrypt.compare(password, user.password_hash);
    if (!validPassword)
      return res.status(401).json({ message: "Mot de passe incorrect." });

    const token = jwt.sign(
      { user_id: user.user_id, email: user.email },
      jwtSecret,
      { expiresIn: "7d" }
    );

    res.status(200).json({
      message: "Connexion réussie.",
      token,
      user: {
        user_id: user.user_id,
        first_name: user.first_name,
        last_name: user.last_name,
        email: user.email
      }
    });
  });
};
*/
exports.login = (req, res) => {
  const { email, password } = req.body;

  if (!email || !password)
    return res.status(400).json({ message: "Email et mot de passe requis." });

  db.query("SELECT * FROM users WHERE email = ?", [email], async (err, results) => {
    if (err) return res.status(500).json({ message: "Erreur serveur." });
    if (results.length === 0)
      return res.status(404).json({ message: "Utilisateur introuvable." });

    const user = results[0];
    const validPassword = await bcrypt.compare(password, user.password_hash);
    if (!validPassword)
      return res.status(401).json({ message: "Mot de passe incorrect." });

    const token = jwt.sign(
      { user_id: user.user_id, email: user.email },
      jwtSecret,
      { expiresIn: "7d" }
    );

    // ✅ Set cookies
    res.cookie("token", token, {
      httpOnly: true,
      secure: false, // set to true if using HTTPS
      sameSite: "Lax",
      maxAge: 7 * 24 * 60 * 60 * 1000, // 7 days
    });

    res.cookie("first_name", user.first_name, {
      httpOnly: false,
      maxAge: 7 * 24 * 60 * 60 * 1000,
    });

    res.cookie("email", user.email, {
      httpOnly: false,
      maxAge: 7 * 24 * 60 * 60 * 1000,
    });

    return res.status(200).json({
      message: "Connexion réussie.",
      token,
      user: {
        user_id: user.user_id,
        first_name: user.first_name,
        last_name: user.last_name,
        phone_number: user.phone_number,
        email: user.email
      }
    });
  });
};
