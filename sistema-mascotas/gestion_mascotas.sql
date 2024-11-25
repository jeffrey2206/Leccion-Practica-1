-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2024 a las 18:11:40
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gestion_mascotas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascotas`
--

CREATE TABLE `mascotas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `especie` enum('perro','gato','ave','otro') NOT NULL,
  `raza` varchar(100) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `propietario_id` int(11) NOT NULL,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp(),
  `actualizado_en` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mascotas`
--

INSERT INTO `mascotas` (`id`, `nombre`, `especie`, `raza`, `edad`, `propietario_id`, `creado_en`, `actualizado_en`) VALUES
(1, 'Milo', 'gato', 'Siames', 2, 1, '2024-11-25 16:51:31', '2024-11-25 16:51:31'),
(2, 'Rocky', 'perro', 'Bulldog', 3, 2, '2024-11-25 16:51:31', '2024-11-25 16:51:31'),
(3, 'Bella', 'gato', 'Persa', 1, 3, '2024-11-25 16:51:31', '2024-11-25 16:51:31'),
(4, 'Max', 'perro', 'Labrador', 4, 4, '2024-11-25 16:51:31', '2024-11-25 16:51:31'),
(5, 'Coco', '', 'Holland Lop', 2, 5, '2024-11-25 16:51:31', '2024-11-25 16:51:31'),
(6, 'Luna', 'gato', 'Maine Coon', 3, 6, '2024-11-25 16:51:31', '2024-11-25 16:51:31'),
(7, 'Toby', 'perro', 'Beagle', 5, 7, '2024-11-25 16:51:31', '2024-11-25 16:51:31'),
(8, 'Nina', 'gato', 'Bengal', 1, 8, '2024-11-25 16:51:31', '2024-11-25 16:51:31'),
(9, 'Daisy', 'perro', 'Chihuahua', 2, 9, '2024-11-25 16:51:31', '2024-11-25 16:51:31'),
(10, 'Oscar', 'gato', 'British Shorthair', 4, 10, '2024-11-25 16:51:31', '2024-11-25 16:51:31'),
(51, 'Max', 'perro', 'Labrador', 3, 1, '2024-11-20 10:00:00', '2024-11-20 10:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `telefono`, `creado_en`) VALUES
(1, 'Juan Pérez', 'juan.perez@example.com', '555-1234', '2024-11-25 16:50:51'),
(2, 'María García', 'maria.garcia@example.com', '555-5678', '2024-11-25 16:50:51'),
(3, 'Pedro González', 'pedro.gonzalez@example.com', '555-8765', '2024-11-25 16:50:51'),
(4, 'Ana Martínez', 'ana.martinez@example.com', '555-4321', '2024-11-25 16:50:51'),
(5, 'Luis López', 'luis.lopez@example.com', '555-6789', '2024-11-25 16:50:51'),
(6, 'Carmen Rodríguez', 'carmen.rodriguez@example.com', '555-9876', '2024-11-25 16:50:51'),
(7, 'Carlos Sánchez', 'carlos.sanchez@example.com', '555-3456', '2024-11-25 16:50:51'),
(8, 'Elena Torres', 'elena.torres@example.com', '555-6543', '2024-11-25 16:50:51'),
(9, 'David Fernández', 'david.fernandez@example.com', '555-2468', '2024-11-25 16:50:51'),
(10, 'Laura Díaz', 'laura.diaz@example.com', '555-1357', '2024-11-25 16:50:51');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mascotas`
--
ALTER TABLE `mascotas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `propietario_id` (`propietario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `mascotas`
--
ALTER TABLE `mascotas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `mascotas`
--
ALTER TABLE `mascotas`
  ADD CONSTRAINT `mascotas_ibfk_1` FOREIGN KEY (`propietario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
