-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 10-03-2022 a las 20:29:16
-- Versión del servidor: 8.0.17
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaturas`
--

CREATE TABLE `asignaturas` (
  `id` int(20) DEFAULT NULL,
  `nombre` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `asig_profesor` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `estudiantes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `asignaturas`
--

INSERT INTO `asignaturas` (`id`, `nombre`, `asig_profesor`, `estudiantes`) VALUES
(52, 'base de datos ', 'willian insignares', 'maria  de la hoz '),
(11, 'base de datos ', 'willian insignares', 'manuel valencia '),
(75, 'lenguaje grafico y visual  ', 'pedro antonio ibañez ', 'mario gonzales caro ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id` int(20) NOT NULL,
  `Nombre` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `fecha` date DEFAULT NULL,
  `telefono` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `Nombre`, `fecha`, `telefono`) VALUES
(111, 'maria de la hoz ', '2022-02-07', 3245034),
(115, 'manuel valencia ', '2022-03-01', 3245030),
(116, 'valeria mendoza', '2022-02-08', 3223456),
(117, 'jesus casalin', '2022-01-10', 3456789),
(118, 'manuela valtran', '2021-12-07', 345678935),
(122, 'sebastian perez', '2022-03-01', 325675645);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `Id_p` int(20) NOT NULL,
  `NIF_p` int(20) DEFAULT NULL,
  `nombre` text,
  `tefefono` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`Id_p`, `NIF_p`, `nombre`, `tefefono`) VALUES
(52, 113, 'pedro anotonio ibañez ', 30052356),
(100, 111, 'willian insignares', 312247057);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`Id_p`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `estudiantes_ibfk_1` FOREIGN KEY (`id`) REFERENCES `asignaturas` (`id`),
  ADD CONSTRAINT `estudiantes_ibfk_2` FOREIGN KEY (`id`) REFERENCES `profesores` (`Id_p`);

--
-- Filtros para la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD CONSTRAINT `profesores_ibfk_1` FOREIGN KEY (`Id_p`) REFERENCES `asignaturas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
