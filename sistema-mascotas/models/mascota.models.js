class Mascota {
  constructor(id, nombre, especie, raza, edad, propietario_id, creado_en, actualizado_en) {
    this.id = id; // ID único de la mascota
    this.nombre = nombre; // Nombre de la mascota
    this.especie = especie; // Especie (e.g., perro, gato)
    this.raza = raza; // Raza de la mascota
    this.edad = edad; // Edad de la mascota
    this.propietario_id = propietario_id; // ID del propietario asociado
    this.creado_en = creado_en; // Fecha de creación
    this.actualizado_en = actualizado_en; // Fecha de última actualización
  }
}

module.exports = Mascota;
