const MascotaRepository = require('../repositories/mascota.repository');

class MascotaService {
  // Obtener todas las mascotas
  async obtenerTodas() {
    return await MascotaRepository.obtenerTodas();
  }

  // Crear una nueva mascota
  async crear(mascota) {
    return await MascotaRepository.crear(mascota);
  }

  // Obtener una mascota por ID
  async obtenerPorId(id) {
    return await MascotaRepository.obtenerPorId(id);
  }

  // Actualizar una mascota
  async actualizar(id, datos) {
    return await MascotaRepository.actualizar(id, datos);
  }

  // Eliminar una mascota
  async eliminar(id) {
    return await MascotaRepository.eliminar(id);
  }
}

module.exports = new MascotaService();
