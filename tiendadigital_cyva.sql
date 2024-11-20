-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-11-2024 a las 00:46:25
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
-- Base de datos: `tiendadigital_cyva`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientees`
--

CREATE TABLE `clientees` (
  `Numero_cliente` int(4) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Apellido` varchar(20) NOT NULL,
  `Edad` int(2) NOT NULL,
  `Direccion` varchar(33) NOT NULL,
  `Telefono` int(10) NOT NULL,
  `Numero_pedido` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientees`
--

INSERT INTO `clientees` (`Numero_cliente`, `Nombre`, `Apellido`, `Edad`, `Direccion`, `Telefono`, `Numero_pedido`) VALUES
(2165, 'Maximiliano', 'Vazquez', 37, 'San rulfo, tepito ·#23432', 81122343, 11111),
(2166, 'Alejandro', 'Hernandez', 28, 'Benito juarez, colon #342', 81272338, 11112),
(2167, 'Brayan', 'Roman', 40, 'Santa Monica valles#356', 81273923, 11113),
(2168, 'Ivan', 'Chavez', 17, 'las lomas de luis #289', 81271827, 11114),
(2169, 'Angel', 'Angel', 23, 'San pedro de fulclro #786', 81729286, 11115),
(2170, 'Gael', 'Nimer', 43, 'Arboledas de cometas #980', 81123872, 11116),
(2171, 'Max', 'Gonzales', 33, 'Cometas, enredaderas #690', 81282787, 11117),
(2172, 'Yaretzi', 'Antonio', 22, 'Esmeralda de valtazar #786', 81298723, 11118);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `Numero_pedido` int(5) NOT NULL,
  `Numero_cliente` int(4) NOT NULL,
  `Fecha_entregar` date NOT NULL,
  `Direccion` varchar(33) NOT NULL,
  `Telefono` int(10) NOT NULL,
  `Proveedor` varchar(33) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`Numero_pedido`, `Numero_cliente`, `Fecha_entregar`, `Direccion`, `Telefono`, `Proveedor`) VALUES
(11111, 2165, '2024-09-01', 'San rulfo, tepito ·#23432', 81122343, 'Alan'),
(11112, 2166, '2024-09-01', 'Benito juarez, colon #342', 81272338, 'Berenice'),
(11113, 2167, '2024-09-02', 'Santa Monica valles#356', 81273923, 'Cinthya'),
(11114, 2168, '2024-09-02', 'las lomas de luis #289', 81271827, 'Devany'),
(11115, 2169, '2024-09-03', 'San pedro de fulclro #786', 8172928, 'Elisa'),
(11116, 2170, '2024-09-03', 'Arboledas de cometas #980', 811223872, 'Francisco'),
(11118, 2172, '2024-09-08', 'Esmeralda de valtazar #786', 81298723, 'Hilda'),
(21111, 2165, '2024-09-04', 'San rulfo, tepito ·#23432', 81122343, 'Alna'),
(22111, 2165, '2024-09-04', 'San rulfo, tepito ·#23432', 81122343, 'Alan'),
(22211, 2170, '2024-09-05', 'Arboledas de cometas #980', 811223872, 'Francisco'),
(22221, 2167, '2024-09-05', 'Santa Monica valles#356', 81273923, 'Cinthya'),
(22222, 2166, '2024-09-06', 'Benito juarez, colon #342', 81272338, 'Berenice'),
(22223, 2171, '2024-09-06', 'Cometas, enredaderas #690', 81282787, 'Gael'),
(22224, 2171, '2024-09-07', 'Cometas, enredaderas #690', 81282787, 'Gael'),
(22225, 2172, '2024-09-07', 'Esmeralda de valtazar #786', 81298723, 'Hilda');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `Numero_proveedor` int(3) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Apellido` varchar(20) NOT NULL,
  `Edad` int(2) NOT NULL,
  `Telefono` int(10) NOT NULL,
  `Numero_pedido` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`Numero_proveedor`, `Nombre`, `Apellido`, `Edad`, `Telefono`, `Numero_pedido`) VALUES
(2, 'Berenice', 'Hernandez', 65, 2342344, 11112),
(3, 'Cinthya', 'Roman', 45, 2836483, 11113),
(4, 'Debany', 'Chavez', 34, 2378468, 0),
(5, 'Elisa', 'Angel', 33, 2453462, 11115),
(6, 'Francisco', 'Nimer', 38, 2378436, 11116),
(9, 'celia', 'vazque', 38, 2343254, 3000),
(12, 'Berenice', 'Hernandez', 65, 2342344, 12),
(13, 'Cinthya', 'Roman', 45, 2836483, 13),
(14, 'Debany', 'Chavez', 34, 2378468, 17),
(15, 'Elisa', 'Angel', 33, 2453462, 15),
(16, 'Francisco', 'Nimer', 38, 2378436, 16);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientees`
--
ALTER TABLE `clientees`
  ADD PRIMARY KEY (`Numero_cliente`),
  ADD UNIQUE KEY `Nombre` (`Nombre`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`Numero_pedido`),
  ADD UNIQUE KEY `Numero_pedido` (`Numero_pedido`),
  ADD KEY `indice1` (`Numero_pedido`,`Numero_cliente`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`Numero_proveedor`),
  ADD UNIQUE KEY `Numero_pedido` (`Numero_pedido`),
  ADD KEY `indice_pro` (`Numero_proveedor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientees`
--
ALTER TABLE `clientees`
  MODIFY `Numero_cliente` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2173;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `Numero_pedido` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22226;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `Numero_proveedor` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
