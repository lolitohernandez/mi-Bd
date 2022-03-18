-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-03-2022 a las 00:18:11
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
-- Base de datos: `uni`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaturas`
--

CREATE TABLE `asignaturas` (
  `ID_F` int(11) NOT NULL,
  `Nom_Asignatura` text DEFAULT NULL,
  `Horarios` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asignaturas`
--

INSERT INTO `asignaturas` (`ID_F`, `Nom_Asignatura`, `Horarios`) VALUES
(300, 'Calculo', '14:00-15:50 pm'),
(301, 'Calculo ', '14:00-15:50 pm'),
(302, 'Electromagnetismo', '14:00-15:50 pm'),
(303, 'Tonalidad', '13:00-16:50 pm'),
(304, 'Matematicas', '13:00-16:50 pm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `ID_estudiantes` int(50) NOT NULL,
  `Nombre` text DEFAULT NULL,
  `Apellido` text DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`ID_estudiantes`, `Nombre`, `Apellido`, `fecha`) VALUES
(100, 'Juancho ', 'roiz', '2014-03-12'),
(101, 'Maira ', 'De la hoz', '2017-07-05'),
(102, 'Antonio ', 'Sanchez', '2012-05-10'),
(103, 'Yesid', 'Quiroga', '2012-05-17'),
(104, 'Manuela', 'Beltran ', '2013-02-19'),
(105, 'Nadin', 'Sanchez ', '2014-07-17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultad`
--

CREATE TABLE `facultad` (
  `ID_facultad` int(20) NOT NULL,
  `Nombre` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `facultad`
--

INSERT INTO `facultad` (`ID_facultad`, `Nombre`) VALUES
(300, 'ING Informatica'),
(301, 'ING Biomedica'),
(302, 'ING Hambiental'),
(303, 'Musica'),
(304, 'Contaduria ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matricula`
--

CREATE TABLE `matricula` (
  `ID_Matricula` int(20) NOT NULL,
  `alumno` int(20) NOT NULL,
  `Fecha` date DEFAULT NULL,
  `Semestres` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `matricula`
--

INSERT INTO `matricula` (`ID_Matricula`, `alumno`, `Fecha`, `Semestres`) VALUES
(1, 100, '2022-03-01', 1),
(2, 101, '2022-03-10', 2),
(3, 102, '2022-03-03', 6),
(4, 103, '2022-03-14', 1),
(5, 104, '2022-03-10', 2),
(6, 105, '2022-03-23', 8);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD PRIMARY KEY (`ID_F`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`ID_estudiantes`);

--
-- Indices de la tabla `facultad`
--
ALTER TABLE `facultad`
  ADD UNIQUE KEY `ID_facultad` (`ID_facultad`);

--
-- Indices de la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`ID_Matricula`),
  ADD UNIQUE KEY `alumno` (`alumno`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD CONSTRAINT `asignaturas_ibfk_1` FOREIGN KEY (`ID_F`) REFERENCES `facultad` (`ID_facultad`);

--
-- Filtros para la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD CONSTRAINT `matricula_ibfk_1` FOREIGN KEY (`alumno`) REFERENCES `estudiantes` (`ID_estudiantes`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
