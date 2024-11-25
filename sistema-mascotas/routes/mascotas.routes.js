const express = require('express');
const router = express.Router();
const MascotaController = require('../controllers/mascota.controller');

// Rutas de la API de mascotas
router.get('/', MascotaController.obtenerTodas);
router.post('/', MascotaController.crear);
router.get('/:id', MascotaController.obtenerPorId);
router.put('/:id', MascotaController.actualizar);
router.delete('/:id', MascotaController.eliminar);

module.exports = router;
