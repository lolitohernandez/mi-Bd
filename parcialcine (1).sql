-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 08-04-2022 a las 21:19:11
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
-- Base de datos: `parcialcine`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idcine`
--

CREATE TABLE `idcine` (
  `id` int(50) NOT NULL,
  `nombre_cine` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `horarios_pases` varchar(20) DEFAULT NULL,
  `pelicula_dibujos` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `direccion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `teléfono` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `idcine`
--

INSERT INTO `idcine` (`id`, `nombre_cine`, `horarios_pases`, `pelicula_dibujos`, `direccion`, `teléfono`) VALUES
(100, 'cineColombia', '8:00am hasta las 4:p', 'martes y viernes', 'car22d #75-21', 3524440),
(101, 'cineColombia', '8:00am hasta las 4:p', 'martes y viernes ', 'car22d# 75-21', 3524440),
(102, 'cineLan ', '8:00am hasta 4:00pm', 'martes y jueves', 'car21d #70-21', 3525556),
(103, 'nuevaColombia', '9:00am hasta 4:00pm', 'viernes', 'calle42#32-34', 3152613);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `lugar` int(50) NOT NULL,
  `Nombre` text,
  `horario` varchar(50) DEFAULT NULL,
  `director` text,
  `protagonista` text,
  `genero` text,
  `clasificaion_y_edades` varchar(50) DEFAULT NULL,
  `sala` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `pelicula`
--

INSERT INTO `pelicula` (`lugar`, `Nombre`, `horario`, `director`, `protagonista`, `genero`, `clasificaion_y_edades`, `sala`) VALUES
(100, 'anaconda', '4:35pm ', 'Charly segundo', 'melania isbeth\r\nrenae logan', 'terror', 'para mayores de 14 años', 1),
(101, 'kama y y karma', '4:35 pm ', 'muricio polom', 'karina palacio\r\npablo cotis', 'romance', 'para mayores de 12 años', 2),
(102, 'mi pasión ', '8:35 pm ', 'james sanchez ', 'falcao mendoza ', 'romance', 'para mayores de 8 años', 5),
(103, 'palacio de rocas', '6:00pm', 'james sanchez ', 'la roca', 'acción ', 'para mayores de 12 años', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precios`
--

CREATE TABLE `precios` (
  `fechas_especiales` varchar(50) DEFAULT NULL,
  `valor` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `precios`
--

INSERT INTO `precios` (`fechas_especiales`, `valor`) VALUES
('dia del espectador ', '8.000'),
('día del jubilado ', '8.500'),
('festivo ', '10.000'),
('festivo ', '10.000'),
('vísperas', '7.000'),
('carnet estudiantil', '5.000'),
('vísperas', '7.000'),
('carnet estudiantil', '5.000'),
('precio diario ', '12.000'),
('precio diario ', '12.000');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `idcine`
--
ALTER TABLE `idcine`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `direccion` (`direccion`);

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD UNIQUE KEY `lugar` (`lugar`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `idcine`
--
ALTER TABLE `idcine`
  ADD CONSTRAINT `idcine_ibfk_1` FOREIGN KEY (`id`) REFERENCES `pelicula` (`lugar`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
