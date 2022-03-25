-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 25-03-2022 a las 20:57:57
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
-- Base de datos: `panas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `amigos`
--

CREATE TABLE `amigos` (
  `id_amigos` int(20) NOT NULL,
  `fecha_solicitud` date DEFAULT NULL,
  `Id_emisor` int(20) NOT NULL,
  `Id_receptor` int(20) NOT NULL,
  `fecha_de_aceptacion` date DEFAULT NULL,
  `estado` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `amigos`
--

INSERT INTO `amigos` (`id_amigos`, `fecha_solicitud`, `Id_emisor`, `Id_receptor`, `fecha_de_aceptacion`, `estado`) VALUES
(201, '2021-12-01', 101, 102, '2021-12-31', 'amigos '),
(202, '2021-12-01', 102, 103, '2021-12-31', 'amigos '),
(204, '2021-12-01', 103, 101, '2021-12-31', 'enviada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `Id` int(20) NOT NULL,
  `nombre` text,
  `apellido` text,
  `correo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`Id`, `nombre`, `apellido`, `correo`) VALUES
(101, 'juancho ', 'rois', 'juancho509@outlook.com'),
(102, 'juana ', 'pacheco ', 'juana509@email.com'),
(103, 'pablo ', 'perez', 'pabllo509@email.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `amigos`
--
ALTER TABLE `amigos`
  ADD PRIMARY KEY (`id_amigos`),
  ADD UNIQUE KEY `Id_emisor` (`Id_emisor`),
  ADD UNIQUE KEY `Id_receptor` (`Id_receptor`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
