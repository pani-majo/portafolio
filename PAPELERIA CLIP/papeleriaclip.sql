-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-06-2024 a las 01:50:45
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
-- Base de datos: `papeleriaclip`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonificacion`
--

CREATE TABLE `bonificacion` (
  `id_bono` int(11) NOT NULL,
  `tipo_bono` varchar(50) NOT NULL,
  `valor_bono` bigint(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `bonificacion`
--

INSERT INTO `bonificacion` (`id_bono`, `tipo_bono`, `valor_bono`) VALUES
(1, 'METAS', 70000),
(2, 'Logro Ventas', 80000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `cedula` int(11) NOT NULL,
  `nombres` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `telefono` bigint(11) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `cargo` varchar(45) NOT NULL,
  `sueldo` bigint(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`cedula`, `nombres`, `apellidos`, `direccion`, `telefono`, `correo`, `cargo`, `sueldo`) VALUES
(1045121892, 'Esteban', 'Perez', 'calle 10 La dorada', 321898692, 'Esteban@gmail.com', 'Desarrollador', 3000000),
(1054544144, 'Camila', 'Acuña', 'calle 11 salgar ', 3217587999, 'camilaacuña@gmail.com', 'procrastinadora', 5000000),
(1998975869, 'Elaine', 'Gaviria', 'calle 14 Honda', 302404233, 'Elaine@gmail.com', 'Maestra', 3000000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gestion_administrativo`
--

CREATE TABLE `gestion_administrativo` (
  `id_gestion` int(11) NOT NULL,
  `ano` varchar(50) NOT NULL,
  `valorEx` int(11) NOT NULL,
  `valorNo` int(11) NOT NULL,
  `valorFe` int(11) NOT NULL,
  `auxilioTrans` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `gestion_administrativo`
--

INSERT INTO `gestion_administrativo` (`id_gestion`, `ano`, `valorEx`, `valorNo`, `valorFe`, `auxilioTrans`) VALUES
(6, '2024', 5000, 8000, 12000, 140000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nomina`
--

CREATE TABLE `nomina` (
  `idnomina` int(11) NOT NULL,
  `auxilioTrans` int(11) NOT NULL,
  `mes` varchar(45) NOT NULL,
  `ano` year(4) NOT NULL,
  `diaslaborados` int(11) NOT NULL,
  `descuentopension` bigint(200) NOT NULL,
  `descuentosalud` bigint(200) NOT NULL,
  `sueldoneto` bigint(200) NOT NULL,
  `idempleado` int(11) DEFAULT NULL,
  `hed` int(11) DEFAULT NULL,
  `hen` int(11) DEFAULT NULL,
  `hedf` int(11) DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `vhe` decimal(10,2) DEFAULT NULL,
  `boni` decimal(10,2) DEFAULT NULL,
  `salDev` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `nomina`
--

INSERT INTO `nomina` (`idnomina`, `auxilioTrans`, `mes`, `ano`, `diaslaborados`, `descuentopension`, `descuentosalud`, `sueldoneto`, `idempleado`, `hed`, `hen`, `hedf`, `salario`, `vhe`, `boni`, `salDev`) VALUES
(2, 0, '2024-06-05', '2024', 30, 205000, 205000, 4785000, 1054544144, 5, 5, 5, 5000000.00, 125000.00, 70000.00, 5125000.00),
(3, 0, '2024-05-06', '2024', 28, 112400, 112400, 2665200, 1045121892, 2, 0, 0, 2800000.00, 10000.00, 80000.00, 2810000.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bonificacion`
--
ALTER TABLE `bonificacion`
  ADD PRIMARY KEY (`id_bono`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`cedula`);

--
-- Indices de la tabla `gestion_administrativo`
--
ALTER TABLE `gestion_administrativo`
  ADD PRIMARY KEY (`id_gestion`);

--
-- Indices de la tabla `nomina`
--
ALTER TABLE `nomina`
  ADD PRIMARY KEY (`idnomina`),
  ADD KEY `idempleado` (`idempleado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bonificacion`
--
ALTER TABLE `bonificacion`
  MODIFY `id_bono` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `gestion_administrativo`
--
ALTER TABLE `gestion_administrativo`
  MODIFY `id_gestion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
