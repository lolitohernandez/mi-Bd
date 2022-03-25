-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-03-2022 a las 19:50:16
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sti`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carta`
--

CREATE TABLE `carta` (
  `plato` int(50) NOT NULL,
  `nombre` text DEFAULT NULL,
  `Precio` int(20) NOT NULL,
  `forma_de_pago` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carta`
--

INSERT INTO `carta` (`plato`, `nombre`, `Precio`, `forma_de_pago`) VALUES
(202, 'secundario', 15, 'verano, efectivo y ligero '),
(203, 'secundario', 11, 'verano, efectivo y ligero ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fuentes`
--

CREATE TABLE `fuentes` (
  `platos` int(20) NOT NULL,
  `libros` text DEFAULT NULL,
  `Prensa` text DEFAULT NULL,
  `TV` varchar(20) DEFAULT NULL,
  `Ubicacion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `fuentes`
--

INSERT INTO `fuentes` (`platos`, `libros`, `Prensa`, `TV`, `Ubicacion`) VALUES
(101, 'platos del  dia ', '', 'señal colombia ', 'biblioteca la manga '),
(102, 'comida en las palmas ', NULL, 'canal 1', 'biblioteca la manga ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recetas`
--

CREATE TABLE `recetas` (
  `id_platos` int(50) NOT NULL,
  `nombre_plato` text DEFAULT NULL,
  `tiempo_previsto` varchar(11) DEFAULT NULL,
  `Utencilios` text DEFAULT NULL,
  `tiempo-total` varchar(11) DEFAULT NULL,
  `Id_proceso` int(20) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `recetas`
--

INSERT INTO `recetas` (`id_platos`, `nombre_plato`, `tiempo_previsto`, `Utencilios`, `tiempo-total`, `Id_proceso`, `descripcion`) VALUES
(101, 'arroz de pollo', '60mn', 'caldero y colador', '45mn', 1, '1) cocinar el pollo \r\n2) picar el pollo\r\n3) picar verduras para el arroz \r\n4) hacer unas verduras salteadas junto al pollo \r\n5) una ves ya este listo el arroz, lo paleamos con las verduras y el pollo '),
(102, 'arroz de coco ', '60mn', 'caldero, licuadora, colador, cuchillo', '60mn', 2, '1) licuar el coco\r\n2) fritar  el coco \r\n3) cocinar el coco y el arroz juntos ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_de_plato`
--

CREATE TABLE `tipo_de_plato` (
  `Id-tipo` int(50) NOT NULL,
  `nombre_tipo` varchar(20) DEFAULT NULL,
  `Ingrediente_Pincipal` text DEFAULT NULL,
  `Fases` int(20) DEFAULT NULL,
  `calorias` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_de_plato`
--

INSERT INTO `tipo_de_plato` (`Id-tipo`, `nombre_tipo`, `Ingrediente_Pincipal`, `Fases`, `calorias`) VALUES
(202, 'plato secundario', 'pollo y verduras ', 1, '343'),
(203, 'plato secundario', 'coco ', 2, '532');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carta`
--
ALTER TABLE `carta`
  ADD UNIQUE KEY `plato` (`plato`);

--
-- Indices de la tabla `fuentes`
--
ALTER TABLE `fuentes`
  ADD UNIQUE KEY `platos` (`platos`);

--
-- Indices de la tabla `recetas`
--
ALTER TABLE `recetas`
  ADD PRIMARY KEY (`id_platos`),
  ADD UNIQUE KEY `Id_proceso` (`Id_proceso`);

--
-- Indices de la tabla `tipo_de_plato`
--
ALTER TABLE `tipo_de_plato`
  ADD PRIMARY KEY (`Id-tipo`),
  ADD UNIQUE KEY `Fases` (`Fases`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carta`
--
ALTER TABLE `carta`
  ADD CONSTRAINT `carta_ibfk_1` FOREIGN KEY (`plato`) REFERENCES `tipo_de_plato` (`Id-tipo`);

--
-- Filtros para la tabla `fuentes`
--
ALTER TABLE `fuentes`
  ADD CONSTRAINT `fuentes_ibfk_1` FOREIGN KEY (`platos`) REFERENCES `recetas` (`id_platos`);

--
-- Filtros para la tabla `tipo_de_plato`
--
ALTER TABLE `tipo_de_plato`
  ADD CONSTRAINT `tipo_de_plato_ibfk_1` FOREIGN KEY (`Fases`) REFERENCES `recetas` (`Id_proceso`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
