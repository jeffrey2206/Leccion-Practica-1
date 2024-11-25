const MascotaService = require('../services/mascota.services');

class MascotaController {
  async obtenerTodas(req, res) {
    const mascotas = await MascotaService.obtenerTodas();
    res.json(mascotas);
  }

  async crear(req, res) {
    const nuevaMascota = req.body;
    const id = await MascotaService.crear(nuevaMascota);
    res.status(201).json({ id, ...nuevaMascota });
  }

  async obtenerPorId(req, res) {
    const mascota = await MascotaService.obtenerPorId(req.params.id);
    if (!mascota) {
      return res.status(404).json({ mensaje: 'Mascota no encontrada' });
    }
    res.json(mascota);
  }

  async actualizar(req, res) {
    await MascotaService.actualizar(req.params.id, req.body);
    res.json({ mensaje: 'Mascota actualizada' });
  }

  async eliminar(req, res) {
    await MascotaService.eliminar(req.params.id);
    res.json({ mensaje: 'Mascota eliminada' });
  }
}

module.exports = new MascotaController();

