-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-10-2023 a las 07:55:13
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notebooks`
--

CREATE TABLE `notebooks` (
  `id` int(11) NOT NULL,
  `marca` varchar(255) NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `pulgadas` varchar(255) NOT NULL,
  `procesador` varchar(255) NOT NULL,
  `ram` varchar(255) NOT NULL,
  `disco` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `notebooks`
--

INSERT INTO `notebooks` (`id`, `marca`, `modelo`, `pulgadas`, `procesador`, `ram`, `disco`) VALUES
(1, 'Notebook Enova', '11va Gen W11', '15.5\"', 'Core I5', '8RAM', '240 GB SSD'),
(6, 'Laptop Asus ROG Flow', 'GZ301ZE-Z13.I93050T', '13.4\"', 'Core I9', '16GB tipo: LPDDR5', '1TB SSD'),
(7, 'Notebook HP', '15-DY2061LA', '15.6\"', 'Intel Core I3', '8GB tipo: DDR4', '256GB SSD'),
(8, 'Samsung Galaxy Book3', '15.6 15', '15.6\"', 'Intel I5', '8GB tipo: LPDDR4', '512GB SSD'),
(9, 'Notebook Dell Inspiron', '3525', '15.5\"', 'AMD Ryzen 5 modelo: 5500u', '8GB tipo:DDR4', '256GB SSD'),
(10, 'Notebook Lenovo Ideapad', '15ALC7', '15.6\"', 'Ryzen 3 modelo:5300u', '8GB tipo: DDR4', '256GB SSD'),
(11, 'PRUEBA', 'PRUEBA', 'PRUEBA', 'PRUEBA', 'PRUEBA', 'PRUEBA');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `notebooks`
--
ALTER TABLE `notebooks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `notebooks`
--
ALTER TABLE `notebooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
