const express = require('express');
const router = express.Router();
const db = require('../db');

router.post('/', (req, res) => {
  const { date, startTime, endTime, notes, salonId, serviceId, user_id } = req.body;

  if (!date || !startTime || !endTime || !salonId || !serviceId || !user_id) {
    return res.status(400).json({ success: false, message: 'Tous les champs obligatoires doivent être remplis.' });
  }

  if (isNaN(Number(user_id))) {
    return res.status(400).json({ success: false, message: 'user_id doit être un nombre.' });
  }

  const sanitizedNotes = typeof notes === 'string' ? notes.trim() : '';

  const query = `INSERT INTO bookings (date, startTime, endTime, notes, salonId, serviceId, user_id)
                 VALUES (?, ?, ?, ?, ?, ?, ?)`;

  db.query(query, [date, startTime, endTime, sanitizedNotes, salonId, serviceId, user_id], (err, result) => {
    if (err) {
      console.error('Erreur SQL lors de la création de la réservation:', err);
      return res.status(500).json({ success: false, message: 'Erreur lors de la création de la réservation.' });
    }

    res.status(201).json({
      success: true,
      booking: {
        id: result.insertId,
        date,
        startTime,
        endTime,
        notes: sanitizedNotes,
        salonId,
        serviceId,
        user_id,
      }
    });
  });
});

module.exports = router;
