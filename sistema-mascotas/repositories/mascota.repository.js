const db = require('../config/db');

class MascotaRepository {
  // Obtener todas las mascotas
  async obtenerTodas() {
    const [mascotas] = await db.query('SELECT * FROM mascotas');
    return mascotas;
  }

  // Crear una nueva mascota
  async crear(mascota) {
    const [resultado] = await db.query('INSERT INTO mascotas SET ?', mascota);
    return resultado.insertId; // Retorna el ID de la nueva mascota
  }

  // Obtener una mascota por ID
  async obtenerPorId(id) {
    const [mascotas] = await db.query('SELECT * FROM mascotas WHERE id = ?', [id]);
    return mascotas[0]; // Retorna la primera mascota (si existe)
  }

  // Actualizar la información de una mascota
  async actualizar(id, datos) {
    await db.query('UPDATE mascotas SET ? WHERE id = ?', [datos, id]);
  }

  // Eliminar una mascota por ID
  async eliminar(id) {
    await db.query('DELETE FROM mascotas WHERE id = ?', [id]);
  }
}

module.exports = new MascotaRepository();
