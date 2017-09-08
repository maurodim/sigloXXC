-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-12-2016 a las 01:02:29
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 7.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `siglox`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `ID` int(11) NOT NULL,
  `BARRAS` varchar(30) DEFAULT NULL,
  `NOMBRE` varchar(70) DEFAULT NULL,
  `SERVICIO` double DEFAULT NULL,
  `COSTO` double DEFAULT NULL,
  `PRECIO` double DEFAULT NULL,
  `MINIMO` int(11) DEFAULT NULL,
  `STOCK` int(11) DEFAULT NULL,
  `PROVEEDOR` int(11) DEFAULT NULL,
  `RUBRON` varchar(12) DEFAULT NULL,
  `ALTA` varchar(19) DEFAULT NULL,
  `INHABILITADO` int(11) NOT NULL DEFAULT '0',
  `idRubro` int(11) NOT NULL DEFAULT '1',
  `equivalencia` double NOT NULL DEFAULT '1',
  `modificaPrecio` int(11) NOT NULL DEFAULT '0',
  `modificaServicio` int(11) NOT NULL DEFAULT '0',
  `recargo` double NOT NULL DEFAULT '0',
  `servicio1` double DEFAULT '0',
  `idcombo` int(11) DEFAULT '0',
  `actualizacion` int(11) NOT NULL DEFAULT '0',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`ID`, `BARRAS`, `NOMBRE`, `SERVICIO`, `COSTO`, `PRECIO`, `MINIMO`, `STOCK`, `PROVEEDOR`, `RUBRON`, `ALTA`, `INHABILITADO`, `idRubro`, `equivalencia`, `modificaPrecio`, `modificaServicio`, `recargo`, `servicio1`, `idcombo`, `actualizacion`, `fecha`) VALUES
(1, '1', 'Coca-Cola 354.ml', NULL, NULL, 25, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(2, '2', 'Coca-Cola 500.ml', NULL, NULL, 30, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(3, '3', 'Coca-Cola 1,0.lts', NULL, NULL, 45, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(4, '4', 'Coca-Cola 1,5.lts', NULL, NULL, 55, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(5, '5', 'Coca-Cola 2,25.lts', NULL, NULL, 65, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(6, '6', 'Coca-Cola Light 1,5.lts', NULL, NULL, 55, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(7, '7', 'Coca-Cola Zero 354.ml', NULL, NULL, 25, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(8, '8', 'Coca-Cola Zero 500.ml', NULL, NULL, 30, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(9, '9', 'Coca-Cola Zero 1,5.lts', NULL, NULL, 55, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(10, '10', 'Coca-Cola Zero 2,25.lts', NULL, NULL, 65, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(11, '11', 'Sprite 354.ml', NULL, NULL, 25, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(12, '12', 'Sprite 500.ml', NULL, NULL, 30, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(13, '13', 'Sprite 1,0.lts', NULL, NULL, 45, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(14, '14', 'Sprite 1,5.lts', NULL, NULL, 55, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(15, '15', 'Sprite 2,25.lts', NULL, NULL, 65, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(16, '16', 'Sprite Zero 1,5.lts', NULL, NULL, 55, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(17, '17', 'Aquarius Naranja 1,5.lts', NULL, NULL, 45, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(18, '18', 'Aquarius Naranja 500.ml', NULL, NULL, 25, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(19, '19', 'Aquarius Pomelo Amarillo 1,5.lts', NULL, NULL, 45, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(20, '20', 'Aquarius Pomelo Amarillo 500.ml', NULL, NULL, 25, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(21, '21', 'Aquarius Pomelo Rosado 1,5.lts', NULL, NULL, 45, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(22, '22', 'Aquarius Pomelo Rosado 500.ml', NULL, NULL, 25, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(23, '23', 'Aquarius Pera 1,5.lts', NULL, NULL, 45, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(24, '24', 'Aquarius Pera 500.ml', NULL, NULL, 25, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(25, '25', 'Aquarius Manzana 1,5.lts', NULL, NULL, 45, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(26, '26', 'Aquarius Manzana 500.ml', NULL, NULL, 25, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(27, '27', 'Aquarius Multifruta 1,5.lts', NULL, NULL, 45, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(28, '28', 'Aquarius Multifruta 500.ml', NULL, NULL, 25, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(29, '29', 'Fanta 354.ml', NULL, NULL, 25, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(30, '30', 'Fanta 500.ml', NULL, NULL, 30, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(31, '31', 'Fanta 1,5.lts', NULL, NULL, 55, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(32, '32', 'Fanta Zero 1,5.lts', NULL, NULL, 55, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(33, '33', 'Powerade Naranja 500.ml', NULL, NULL, 35, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(34, '34', 'Powerade Frutas Tropicales 500.ml', NULL, NULL, 35, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(35, '35', 'Powerade Manzana 500.ml', NULL, NULL, 35, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(36, '36', 'Powerade Mountain Blast 500.ml', NULL, NULL, 35, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(37, '37', 'Powerade Naranja 995.ml', NULL, NULL, 50, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(38, '38', 'Powerade Frutas Tropicales 995.ml', NULL, NULL, 50, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(39, '39', 'Powerade Manzana 995.ml', NULL, NULL, 50, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(40, '40', 'Powerade Mountain Blast 995.ml', NULL, NULL, 50, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(41, '41', 'Cepita Del Valle Naranja 200.ml', NULL, NULL, 15, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(42, '42', 'Cepita Del Valle Manzana 200.ml', NULL, NULL, 15, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(43, '43', 'Cepita Del Valle Ananá 200.ml', NULL, NULL, 15, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(44, '44', 'Cepita Del Valle Multifruta 200.ml', NULL, NULL, 15, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(45, '45', 'Cepita Del Valle Durazno 200.ml', NULL, NULL, 15, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(46, '46', 'Cepita Del Valle Naranja 300.ml', NULL, NULL, 20, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(47, '47', 'Cepita Del Valle Manzana 300.ml', NULL, NULL, 20, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(48, '48', 'Cepita Del Valle Ananá 300.ml', NULL, NULL, 20, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(49, '49', 'Cepita Del Valle Multifruta 300.ml', NULL, NULL, 20, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(50, '50', 'Cepita Del Valle Durazno 300.ml', NULL, NULL, 20, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(51, '51', 'Cepita Del Valle Naranja 1,0.lts', NULL, NULL, 40, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(52, '52', 'Cepita Del Valle Manzana 1,0.lts', NULL, NULL, 40, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(53, '53', 'Cepita Del Valle Ananá 1,0.lts', NULL, NULL, 40, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(54, '54', 'Cepita Del Valle Multifruta 1,0.lts', NULL, NULL, 40, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(55, '55', 'Cepita Del Valle Durazno 1,0.lts', NULL, NULL, 40, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(56, '56', 'La Campagnola BC en polvo Limonada 9.gr', NULL, NULL, 10, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(57, '57', 'La Campagnola BC en polvo Manzana 9.gr', NULL, NULL, 10, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(58, '58', 'La Campagnola BC en polvo Naranza-Durazno 9.gr', NULL, NULL, 10, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(59, '59', 'La Campagnola BC en polvo Mango-Naranja 9.gr', NULL, NULL, 10, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(60, '60', 'La Campagnola BC en polvo Pera 9.gr', NULL, NULL, 10, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(61, '61', 'La Campagnola BC Naranja 200.ml', NULL, NULL, 15, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(62, '62', 'La Campagnola BC Pera 200.ml', NULL, NULL, 15, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(63, '63', 'La Campagnola BC Multifruta 200.ml', NULL, NULL, 15, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(64, '64', 'La Campagnola BC Manzana 200.ml', NULL, NULL, 15, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(65, '65', 'La Campagnola BC Naranja-Durazno 200.ml', NULL, NULL, 15, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(66, '66', 'La Campagnola BC Naranja 500.ml', NULL, NULL, 20, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(67, '67', 'La Campagnola BC Pera 500.ml', NULL, NULL, 20, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(68, '68', 'La Campagnola BC Multifruta 500.ml', NULL, NULL, 20, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(69, '69', 'La Campagnola BC Manzana 500.ml', NULL, NULL, 20, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(70, '70', 'La Campagnola BC Naranja-Durazno 500.ml', NULL, NULL, 20, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(71, '71', 'La Campagnola BC Naranja 1,0.lts', NULL, NULL, 40, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(72, '72', 'La Campagnola BC Pera 1,0.lts', NULL, NULL, 40, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(73, '73', 'La Campagnola BC Multifruta 1,0.lts', NULL, NULL, 40, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(74, '74', 'La Campagnola BC Manzana 1,0.lts', NULL, NULL, 40, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(75, '75', 'La Campagnola BC Naranja-Durazno 1,0.lts', NULL, NULL, 40, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(76, '76', 'Baggio Jugo Manzana 200.ml', NULL, NULL, 15, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(77, '77', 'Baggio Jugo Naranja 200.ml', NULL, NULL, 15, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(78, '78', 'Baggio Jugo Durazno 200.ml', NULL, NULL, 15, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(79, '79', 'Baggio Jugo Multifruta 200.ml', NULL, NULL, 15, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(80, '80', 'Baggio Jugo Pera 200.ml', NULL, NULL, 15, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(81, '81', 'Baggio Jugo Manzana 1,0.lts', NULL, NULL, 35, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(82, '82', 'Baggio Jugo Naranja 1,0.lts', NULL, NULL, 35, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(83, '83', 'Baggio Jugo Durazno 1,0.lts', NULL, NULL, 35, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(84, '84', 'Baggio Jugo Multifruta 1,0.lts', NULL, NULL, 35, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(85, '85', 'Baggio Jugo Pera 1,0.lts', NULL, NULL, 35, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(86, '86', 'Baggio Latte Shake 200.ml', NULL, NULL, 20, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(87, '87', 'Baggio Latte Shake 1,0.lts', NULL, NULL, 40, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(88, '88', 'Citric Naranja 500.ml', NULL, NULL, 40, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(89, '89', 'Citric Naranja 1,0.lts', NULL, NULL, 60, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(90, '90', 'Citric Naranja-Mango 500.ml', NULL, NULL, 40, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(91, '91', 'Citric Naranja-Mango 1,0.lts', NULL, NULL, 60, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(92, '92', 'Citric Naranja-Durazno 500.ml', NULL, NULL, 40, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(93, '93', 'Citric Naranja-Durazno 1,0.lts', NULL, NULL, 60, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(94, '94', 'Citric Naranja-Frutilla 500.ml', NULL, NULL, 40, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(95, '95', 'Citric Naranja-Frutilla 1,0.lts', NULL, NULL, 60, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(96, '96', 'Citric Limonada 500.ml', NULL, NULL, 40, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(97, '97', 'Citric Limonada 1,0.lts', NULL, NULL, 60, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(98, '98', '7-Up  500.ml', NULL, NULL, 30, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(99, '99', '7-Up  1,5.lts', NULL, NULL, 55, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(100, '100', '7-Up Free 500.ml', NULL, NULL, 30, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(101, '101', '7-Up Free 1,5.lts', NULL, NULL, 55, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(102, '102', 'Mirinda 500.ml', NULL, NULL, 30, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(103, '103', 'Mirinda 1,5.lts', NULL, NULL, 55, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(104, '104', '7-Up Limonada 500.ml', NULL, NULL, 30, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(105, '105', '7-Up Limonada 1,5.lts', NULL, NULL, 55, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(106, '106', 'Pepsi 500.ml', NULL, NULL, 30, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(107, '107', 'Pepsi 1,5.lts', NULL, NULL, 55, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(108, '108', 'Paso de los Toros Pomelo 500.ml', NULL, NULL, 30, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(109, '109', 'Paso de los Toros Pomelo 1,5.lts', NULL, NULL, 55, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(110, '110', 'Paso de los Toros Tonica 500.ml', NULL, NULL, 30, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(111, '111', 'Paso de los Toros Tonica 1,5.lts', NULL, NULL, 55, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(112, '112', 'Nestle Awafrut Naranja-Durazno 500.ml', NULL, NULL, 25, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(113, '113', 'Nestle Awafrut Pera 500.ml', NULL, NULL, 25, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(114, '114', 'Nestle Awafrut Pomelo 500.ml', NULL, NULL, 25, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(115, '115', 'Nestle Awafrut Manzana Verde 500.ml', NULL, NULL, 25, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(116, '116', 'Nestle Awafrut Manzana 500.ml', NULL, NULL, 25, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(117, '117', 'Nestle Awafrut Limonada 500.ml', NULL, NULL, 25, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(118, '118', 'Ser We  500.ml', NULL, NULL, 30, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(119, '119', 'Speed 250.ml', NULL, NULL, 30, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(120, '120', 'Red Bull 250.ml', NULL, NULL, 30, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(121, '121', 'H2O Citrus 500.ml', NULL, NULL, 30, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(122, '122', 'H2O Citrus 1,5.lts', NULL, NULL, 55, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(123, '123', 'H2O Limon 500.ml', NULL, NULL, 30, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(124, '124', 'H2O Limon 1,5.lts', NULL, NULL, 55, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(125, '125', 'H2O Limonchelo 500.ml', NULL, NULL, 30, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(126, '126', 'H2O Limonchelo 1,5.lts', NULL, NULL, 55, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(127, '127', 'H20 Naranchelo 500.ml', NULL, NULL, 30, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(128, '128', 'H20 Naranchelo 1,5.lts', NULL, NULL, 55, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(129, '129', 'Cerveza Isenbek 355.ml', NULL, NULL, 40, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(130, '130', 'Cerveza Isenbek 500.ml', NULL, NULL, 30, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(131, '131', 'Cerveza Isenbek 1,0.lts', NULL, NULL, 65, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(132, '132', 'Cerveza Schneider 355.ml', NULL, NULL, 20, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(133, '133', 'Cerveza Quilmes 355.ml', NULL, NULL, 30, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(134, '134', 'Cerveza Quilmes 500.ml', NULL, NULL, 40, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(135, '135', 'Cerveza Budweiser 1,0.lts', NULL, NULL, 60, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(136, '136', 'Cerveza Iguana 1,0.lts', NULL, NULL, 70, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(137, '137', 'Levité Naranja 500.ml', NULL, NULL, 25, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(138, '138', 'Levité Manzana 500.ml', NULL, NULL, 25, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(139, '139', 'Levité Pera 500.ml', NULL, NULL, 25, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(140, '140', 'Levité Pomelo 500.ml', NULL, NULL, 25, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(141, '141', 'Levité Frutos Tropicales 500.ml', NULL, NULL, 25, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(142, '142', 'Levité Ananá 500.ml', NULL, NULL, 25, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(143, '143', 'Levité Limonada 500.ml', NULL, NULL, 25, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(144, '144', 'Levité Frutilla-Limon 500.ml', NULL, NULL, 25, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(145, '145', 'Levité Zero Kiwi 500.ml', NULL, NULL, 25, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(146, '146', 'Levité Zero Frutos Tropicales 500.ml', NULL, NULL, 25, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(147, '147', 'Levité Zero Naranja 500.ml', NULL, NULL, 25, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(148, '148', 'Levité Zero Manzana 500.ml', NULL, NULL, 25, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(149, '149', 'Levité Zero Ananá 500.ml', NULL, NULL, 25, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(150, '150', 'Levité Naranja 1,5.lts', NULL, NULL, 45, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(151, '151', 'Levité Manzana 1,5.lts', NULL, NULL, 45, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(152, '152', 'Levité Pera 1,5.lts', NULL, NULL, 45, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(153, '153', 'Levité Pomelo 1,5.lts', NULL, NULL, 45, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(154, '154', 'Levité Frutos Tropicales 1,5.lts', NULL, NULL, 45, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(155, '155', 'Levité Ananá 1,5.lts', NULL, NULL, 45, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(156, '156', 'Levité Limonada 1,5.lts', NULL, NULL, 45, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(157, '157', 'Levité Frutilla-Limon 1,5.lts', NULL, NULL, 45, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(158, '158', 'Levité Zero Kiwi 1,5.lts', NULL, NULL, 45, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(159, '159', 'Levité Zero Frutos Tropicales 1,5.lts', NULL, NULL, 45, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(160, '160', 'Levité Zero Naranja 1,5.lts', NULL, NULL, 45, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(161, '161', 'Levité Zero Manzana 1,5.lts', NULL, NULL, 45, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(162, '162', 'Levité Zero Ananá 1,5.lts', NULL, NULL, 45, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(163, '163', 'Levité Flip 250.ml', NULL, NULL, 15, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(164, '164', 'Agua Mineral Villa del Sur 500.ml', NULL, NULL, 25, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(165, '165', 'Agua Mineral Villa del Sur 1,5.lts', NULL, NULL, 35, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(166, '166', 'Agua Mineral Villavicencio 500.ml', NULL, NULL, 25, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(167, '167', 'Agua Mineral Villavicencio 1,5.lts', NULL, NULL, 35, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(168, '168', 'Agua Mineral Bonaqua 500.ml', NULL, NULL, 25, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(169, '169', 'Agua Mineral Bonaqua 1,5.lts', NULL, NULL, 35, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(170, '170', 'Agua Minenal Bonaqua 2,0.lts', NULL, NULL, 40, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(171, '171', 'Agua con Gas Villavicencio 500.ml', NULL, NULL, 25, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(172, '172', 'Agua Mineral Eco de los Andes 500.ml', NULL, NULL, 25, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(173, '173', 'Agua Mineral Eco de los Andes 1,5.lts', NULL, NULL, 35, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(174, '174', 'Agua Mineral Ser 1,5lts', NULL, NULL, 0, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(175, '175', 'Gatorade Frutos Tropicales 500.ml', NULL, NULL, 35, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(176, '176', 'Gatorade Naranja 500.ml', NULL, NULL, 35, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(177, '177', 'Gatorade Limon 500.ml', NULL, NULL, 35, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(178, '178', 'Gatorade Cool Blue 500.ml', NULL, NULL, 35, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(179, '179', 'Gatorade Manzana 500.ml', NULL, NULL, 35, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(180, '180', 'Gatorade Frutos Tropicales 1,0.lts', NULL, NULL, 50, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(181, '181', 'Gatorade Naranja 1,0.lts', NULL, NULL, 50, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(182, '182', 'Gatorade Limon 1,0.lts', NULL, NULL, 50, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(183, '183', 'Gatorade Cool Blue 1,0.lts', NULL, NULL, 50, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(184, '184', 'Gatorade Manzana 1,0.lts', NULL, NULL, 50, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(185, '185', 'Fernet Branca 500.ml', NULL, NULL, 140, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(186, '186', 'Fernet Branca 750.ml', NULL, NULL, 225, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(187, '187', 'Fernet Branca 1,0.lts', NULL, NULL, 260, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(188, '188', 'Fernet Branca Menta 500.ml', NULL, NULL, 110, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(189, '189', 'Fernet Branca Menta 750.ml', NULL, NULL, 135, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(190, '190', 'Fernet Branca Menta 1,0.lts', NULL, NULL, 180, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(191, '191', 'Gancia 500.ml', NULL, NULL, 90, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(192, '192', 'Gancia 750.ml', NULL, NULL, 115, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(193, '193', 'Chandón Délice 750.ml', NULL, NULL, 270, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(194, '194', 'Chandón Extra Brut 375.ml', NULL, NULL, 180, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(195, '195', 'Mumm Extra Brut 187.ml', NULL, NULL, 80, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(196, '196', 'Norton Cosecha Tardia 187.ml', NULL, NULL, 80, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(197, '197', 'Chandon 187 Extra Brut 187.ml', NULL, NULL, 80, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(198, '198', 'Bacardi Superior 750.ml', NULL, NULL, 205, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(199, '199', 'Bacardi Gold 980.ml', NULL, NULL, 280, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(200, '200', 'Jose Cuervo Especial 750.ml', NULL, NULL, 650, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(201, '201', 'Blender Pride 1,0.lts', NULL, NULL, 170, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(202, '202', 'Teacher 750.ml', NULL, NULL, 209, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(203, '203', 'Smuggler Estuche 1,0lts', NULL, NULL, 150, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(204, '204', 'Tia Maria Cream 690.ml', NULL, NULL, 270, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(205, '205', 'Ginebra Llave Estuche 960.ml', NULL, NULL, 160, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(206, '206', 'Ballantine s Estuche 750.ml', NULL, NULL, 570, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(207, '207', 'Criadores 1,0.lts', NULL, NULL, 150, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(208, '208', 'Hiram Walker 750.ml', NULL, NULL, 115, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(209, '209', 'Quara Estuche Malbec 750.ml', NULL, NULL, 85, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(210, '210', 'Alma Mora Finca las Moras Estuche 750.ml', NULL, NULL, 150, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(211, '211', 'Valmont Estuche 750.ml', NULL, NULL, 115, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(212, '212', 'Santa Julia Estuche 750.ml', NULL, NULL, 115, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(213, '213', 'Santa Julia Estuche x2 750.ml', NULL, NULL, 295, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(214, '214', 'Don Valentin Lacrado Estuche x2 750.ml', NULL, NULL, 250, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(215, '215', 'Callia Alta Estuche 750.ml', NULL, NULL, 85, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(216, '216', 'Altos del Plata Estuche 750.ml', NULL, NULL, 185, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(217, '217', 'Latitud 33 Estuche 750.ml', NULL, NULL, 150, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(218, '218', 'Dadá Estuche 750.ml', NULL, NULL, 120, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(219, '219', 'Fernet Branca Estuche 750.ml', NULL, NULL, 280, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(220, '220', 'Fernet Branca 50.ml', NULL, NULL, 30, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(221, '221', 'Alaris Trapiche Estuche x2 750.ml', NULL, NULL, 185, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(222, '222', 'Fernet 1882 750.ml', NULL, NULL, 90, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(223, '223', 'Vodka Smirnoff Clásico 750.ml', NULL, NULL, 170, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(224, '224', 'Vodka Smirnoff Saborizado 750.ml', NULL, NULL, 250, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(225, '225', 'Vodka Bols Clásico 750.ml', NULL, NULL, 110, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(226, '226', 'Vodka Bols Saborizado 750.ml', NULL, NULL, 140, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(227, '227', 'White Horse 750.ml', NULL, NULL, 280, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(228, '228', 'Valmont  750.ml', NULL, NULL, 105, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(229, '229', 'Elementos 750.ml', NULL, NULL, 90, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(230, '230', 'Echart Privado 750.ml', NULL, NULL, 75, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(231, '231', 'Dadá  750.ml', NULL, NULL, 135, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(232, '232', 'Quara  750.ml', NULL, NULL, 78, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(233, '233', 'San Telmo 750.ml', NULL, NULL, 85, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(234, '234', 'Alma Mora Finca las Moras 750.ml', NULL, NULL, 115, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(235, '235', 'Latitud 33  750.ml', NULL, NULL, 115, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(236, '236', 'Pecado Quara 750.ml', NULL, NULL, 63, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(237, '237', 'Cafayate Echart 750.ml', NULL, NULL, 70, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(238, '238', 'Callia Alta 750.ml', NULL, NULL, 75, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(239, '239', 'Estancia Mendoza 750.ml', NULL, NULL, 45, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(240, '240', 'Los Arboles 750.ml', NULL, NULL, 110, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(241, '241', 'Bianchi 750.ml', NULL, NULL, 55, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(242, '242', 'San Humberto 1,5lts', NULL, NULL, 93, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(243, '243', 'Don Valentin Lacrado 750.ml', NULL, NULL, 95, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(244, '244', 'Mil Rosas 750.ml', NULL, NULL, 75, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(245, '245', 'Alaris Trapiche 750.ml', NULL, NULL, 95, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(246, '246', 'Viñas del Balbo 1,25.lts', NULL, NULL, 55, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(247, '247', 'Finca las Moras 750.ml', NULL, NULL, 100, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(248, '248', 'Las Moras 750.ml', NULL, NULL, 100, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(249, '249', 'Portillo 750.ml', NULL, NULL, 65, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(250, '250', 'Mercier 750.ml', NULL, NULL, 210, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(251, '251', 'Americano Silva 950.ml', NULL, NULL, 40, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(252, '252', 'Fresita 750.ml', NULL, NULL, 130, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(253, '253', 'Piña Colada  -', NULL, NULL, 115, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(254, '254', 'Sidra Del Valle -', NULL, NULL, 50, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(255, '255', 'Ananá Fizz Del Valle -', NULL, NULL, 50, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(256, '256', 'Licor Cusenier 700.ml', NULL, NULL, 95, NULL, NULL, NULL, 'Bebidas', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(257, '257', 'Krachitos Papa Tradicional 120g', NULL, NULL, 50, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(258, '258', 'Krachitos Papa Tradicional 65g', NULL, NULL, 30, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(259, '259', 'Krachitos Papa Tradicional 30g', NULL, NULL, 20, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(260, '260', 'Krachitos Corte Americano 120g', NULL, NULL, 50, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(261, '261', 'Krachitos Corte Americano 65g', NULL, NULL, 30, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(262, '262', 'Krachitos Cono 50g', NULL, NULL, 30, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(263, '263', 'Krachitos Papas Pay 65g', NULL, NULL, 30, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(264, '264', 'Krachitos Palito de Maíz 160g', NULL, NULL, 50, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(265, '265', 'Krachitos Palito de Maíz 65g', NULL, NULL, 30, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(266, '266', 'Krachitos Palito de Maíz 30g', NULL, NULL, 20, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(267, '267', 'Krachitos Cheddar 65g', NULL, NULL, 30, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(268, '268', 'Krachitos Ketchup 65g', NULL, NULL, 30, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(269, '269', 'Krachitos Mani Pelado Salado 65g', NULL, NULL, 30, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(270, '270', 'Krachitos Palito Salado 65g', NULL, NULL, 30, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(271, '271', 'Krachitos Mani c/Cascara 200g', NULL, NULL, 35, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(272, '272', 'Galletita Cereal Mix 230g', NULL, NULL, 35, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(273, '273', 'Galletita Rocklet 118g', NULL, NULL, 25, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(274, '274', 'Galletita Macucas 123g', NULL, NULL, 25, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(275, '275', 'Galletita Mana Rellena Vainilla 165g', NULL, NULL, 25, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(276, '276', 'Galletita Mana Rellena Frutilla 165g', NULL, NULL, 25, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(277, '277', 'Galletita Mana Rellena Chocolate 165g', NULL, NULL, 25, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(278, '278', 'Galletita Mana Rellena Limon 165g', NULL, NULL, 25, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(279, '279', 'Galletita Mana Liviana c/Leche 165g', NULL, NULL, 25, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(280, '280', 'Galletita Mana Liviana Limon 165g', NULL, NULL, 25, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(281, '281', 'Galletita Mana Liviana Vainilla 165g', NULL, NULL, 25, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(282, '282', 'Galletita Mana Liviana Coco 165g', NULL, NULL, 25, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(283, '283', 'Galletita Mana Liviana  165g', NULL, NULL, 25, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(284, '284', 'Galletita Hogareñas 7 semillas 181g', NULL, NULL, 30, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(285, '285', 'Galletita Hogareñas Mix Cereales 181g', NULL, NULL, 30, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(286, '286', 'Galletita Hogareñas Sesamo 181g', NULL, NULL, 30, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(287, '287', 'Galletita Hogareñas Salvado 181g', NULL, NULL, 30, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(288, '288', 'Galletita Agua Serranita 145g', NULL, NULL, 15, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(289, '289', 'Galletita Agua Serranitax3 435g', NULL, NULL, 35, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(290, '290', 'Galletita Agua Serrana 112g', NULL, NULL, 15, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(291, '291', 'Galletita Agua Serranax3 336g', NULL, NULL, 35, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(292, '292', 'Galletita Chocolinas 170g', NULL, NULL, 25, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(293, '293', 'Galletita Melitas 170g', NULL, NULL, 25, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(294, '294', 'Galletita Porteñitas 130g', NULL, NULL, 25, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(295, '295', 'Galletita Merengadas 93g', NULL, NULL, 25, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(296, '296', 'Galletita Coquitas 170g', NULL, NULL, 25, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(297, '297', 'Galletita Rumba 112g', NULL, NULL, 25, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(298, '298', 'Galletita Formis 110g', NULL, NULL, 25, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(299, '299', 'Galletita Sonrisas 118g', NULL, NULL, 25, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(300, '300', 'Galletita Amor 112g', NULL, NULL, 25, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(301, '301', 'Galletita Opera 55g', NULL, NULL, 20, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(302, '302', 'Galletita  Opera 92g', NULL, NULL, 25, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(303, '303', 'Galletita Operax3 Vainilla 75g', NULL, NULL, 20, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(304, '304', 'Galletita Operax3 Frutilla 75g', NULL, NULL, 20, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(305, '305', 'Galletita Opera Bonobon 97g', NULL, NULL, 25, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(306, '306', 'Galletita ChocoChips 135g', NULL, NULL, 25, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(307, '307', 'Galletita Rex 75g', NULL, NULL, 20, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(308, '308', 'Galletita Rex 125g', NULL, NULL, 40, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(309, '309', 'Galletita Saladix Parmesano 100g', NULL, NULL, 30, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(310, '310', 'Galletita Saladix DUO 100g', NULL, NULL, 30, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(311, '311', 'Galletita Saladix Jamon 100g', NULL, NULL, 30, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(312, '312', 'Galletita Saladix Calabresa 100g', NULL, NULL, 30, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(313, '313', 'Galletita Saladix Pizza 100g', NULL, NULL, 30, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(314, '314', 'Galletita Saladix Parmesano 30g', NULL, NULL, 15, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(315, '315', 'Galletita Saladix DUO 30g', NULL, NULL, 15, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(316, '316', 'Galletita Saladix Jamon 30g', NULL, NULL, 15, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(317, '317', 'Galletita Saladix Calabresa 30g', NULL, NULL, 15, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(318, '318', 'Galletita Saladix Pizza 30g', NULL, NULL, 15, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(319, '319', 'Galletita Criollita Finitas 125g', NULL, NULL, 30, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(320, '320', 'Galletita Criollita Original 100g', NULL, NULL, 15, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(321, '321', 'Galletita Criollita Grande 169g', NULL, NULL, 20, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(322, '322', 'Galletita Bagley Salvado 150g', NULL, NULL, 30, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(323, '323', 'Galletita Criollita 3 cereales 140g', NULL, NULL, 30, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(324, '324', 'Galletita Criollitasx3 400g', NULL, NULL, 40, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(325, '325', 'Tostadas Criollita Clásicas 200g', NULL, NULL, 40, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(326, '326', 'Tostadas Criollita Sin sal 200g', NULL, NULL, 40, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(327, '327', 'Surtido Bagley 400g', NULL, NULL, 40, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(328, '328', 'Surtido Diversion 400g', NULL, NULL, 40, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(329, '329', 'Menthoplus Menta 30g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(330, '330', 'Menthoplus Mentol 30g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(331, '331', 'Menthoplus Strong 30g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(332, '332', 'Menthoplus Cereza 30g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(333, '333', 'Menthoplus Miel 30g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(334, '334', 'Menthoplus Frutilla 30g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(335, '335', 'Menthoplus Cofler 30g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(336, '336', 'Menthoplus Acido Cereza 30g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(337, '337', 'Menthoplus Acido Naranja 30g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(338, '338', 'Menthoplus Acido Manzana 30g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(339, '339', 'Menthoplus Cremix Frutilla 30g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(340, '340', 'Menthoplus Cremix Berries 30g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(341, '341', 'Menthoplus Limon 30g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(342, '342', 'Menthoplus Zero Pomelo 30g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(343, '343', 'Menthoplus Zero Limon 30g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(344, '344', 'Menthoplus Zero Strong 30g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(345, '345', 'Menthoplus Zero Mentol 30g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(346, '346', 'Menthoplus Zero Cereza 30g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(347, '347', 'Menthoplus Zero Durazno 30g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(348, '348', 'Chicle TopLine Menta 6,7g', NULL, NULL, 5, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(349, '349', 'Chicle TopLine Strong 6,7g', NULL, NULL, 5, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(350, '350', 'Chicle TopLine Fruta 6,7g', NULL, NULL, 5, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(351, '351', 'Chicle TopLine Ultra Defence 6,7g', NULL, NULL, 5, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(352, '352', 'Chicle TopLine Mistery 6,7g', NULL, NULL, 5, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(353, '353', 'Chicle TopLine Citrus 6,7g', NULL, NULL, 5, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(354, '354', 'Chicle TopLine Sandia 6,7g', NULL, NULL, 5, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20');
INSERT INTO `articulos` (`ID`, `BARRAS`, `NOMBRE`, `SERVICIO`, `COSTO`, `PRECIO`, `MINIMO`, `STOCK`, `PROVEEDOR`, `RUBRON`, `ALTA`, `INHABILITADO`, `idRubro`, `equivalencia`, `modificaPrecio`, `modificaServicio`, `recargo`, `servicio1`, `idcombo`, `actualizacion`, `fecha`) VALUES
(355, '355', 'Chicle TopLine 7 Menta 14g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(356, '356', 'Chicle TopLine 7 Xboms 14g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(357, '357', 'Chicle TopLine 7 Mandarina 14g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(358, '358', 'Chicle TopLine 7 Cherry 14g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(359, '359', 'Chicle TopLine 7 Frutilla 14g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(360, '360', 'Chicle TopLine 7 Sandia 14g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(361, '361', 'Chicle TopLine OrinalMints Menta 24g', NULL, NULL, 30, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(362, '362', 'Chicle TopLine OrinalMints Mentol 24g', NULL, NULL, 30, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(363, '363', 'Chicle TopLine NaturalFruits Melon 24g', NULL, NULL, 30, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(364, '364', 'Chicle TopLine NaturalFruits Frambuesa 24g', NULL, NULL, 30, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(365, '365', 'Caramelo Butter Toffees Bon o Bon -', NULL, NULL, 1, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(366, '366', 'Caramelo Butter Toffees Cabsha -', NULL, NULL, 1, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(367, '367', 'Caramelo Butter Toffees Chocolate -', NULL, NULL, 1, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(368, '368', 'Caramelo Butter Toffees Dulce de Leche -', NULL, NULL, 1, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(369, '369', 'Caramelo Butter Toffees Aguila -', NULL, NULL, 1, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(370, '370', 'Caramelo Butter Toffees Café -', NULL, NULL, 1, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(371, '371', 'Caramelo Butter Toffees Chocolate Blanco -', NULL, NULL, 1, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(372, '372', 'Caramelo Butter n Cream -', NULL, NULL, 1, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(373, '373', 'Caramelo Menta Cristal -', NULL, NULL, 1, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(374, '374', 'Caramelo Mix Cristal -', NULL, NULL, 1, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(375, '375', 'Caramelo Menta Chocolate -', NULL, NULL, 1, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(376, '376', 'Caramelo Cristal Fresh -', NULL, NULL, 1, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(377, '377', 'Caramelo Cremino -', NULL, NULL, 1, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(378, '378', 'Caramelo Mix Cremino -', NULL, NULL, 1, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(379, '379', 'Caramelo Miel -', NULL, NULL, 1, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(380, '380', 'Caramelo Miel y Menta -', NULL, NULL, 1, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(381, '381', 'Caramelo Masticable Fruta -', NULL, NULL, 0.5, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(382, '382', 'Caramelo Gajitos -', NULL, NULL, 1, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(383, '383', 'Caramelo Relleno Frutal -', NULL, NULL, 1, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(384, '384', 'Caramelo Acido Frutal -', NULL, NULL, 1, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(385, '385', 'Caramelo Super Acido -', NULL, NULL, 1, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(386, '386', 'Caramelo Billiken -', NULL, NULL, 0.5, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(387, '387', 'Caramelo Alka Strong -', NULL, NULL, 0.3, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(388, '388', 'Caramelo Alka Cereza -', NULL, NULL, 0.3, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(389, '389', 'Caramelo Alka Frutilla -', NULL, NULL, 0.3, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(390, '390', 'Caramelo Alka Frambuesa -', NULL, NULL, 0.3, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(391, '391', 'Gomita Mogul Rollo 35g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(392, '392', 'Gomita Mogul Conito 1kg', NULL, NULL, 150, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(393, '393', 'Gomita Mogul Boton 1kg', NULL, NULL, 150, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(394, '394', 'Gomita Mogul Eucaliptus 1kg', NULL, NULL, 150, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(395, '395', 'Gomita Mogul Dientes 1u.', NULL, NULL, 1, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(396, '396', 'Gomita Mogul Moras 1u.', NULL, NULL, 1, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(397, '397', 'Gomita Mogul Gusanitos 1u.', NULL, NULL, 1, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(398, '398', 'Gomita Mogul BlancayRosa 1u.', NULL, NULL, 1, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(399, '399', 'Gomita Mogul Ositos 30g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(400, '400', 'Gomita Mogul Tiburones 30g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(401, '401', 'Gomita Mogul Cerebritos 30g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(402, '402', 'Gomita Mogul Duo 35g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(403, '403', 'Gomita Mogul Piratas 30g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(404, '404', 'Gomita Mogul Colmillos 30g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(405, '405', 'Gomita Mogul Sapitos 30g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(406, '406', 'Gomita Mogul Murcielagos 30g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(407, '407', 'Gomita Mogul Viborita 30g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(408, '408', 'Barra de Cereal Cereal Mix Yogurt Vainilla 26g', NULL, NULL, 15, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(409, '409', 'Barra de Cereal Cereal Mix Yogurt Frutilla 26g', NULL, NULL, 15, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(410, '410', 'Barra de Cereal Cereal Mix Pasion de Chocolate 26g', NULL, NULL, 15, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(411, '411', 'Barra de Cereal Cereal Mix Original 26g', NULL, NULL, 15, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(412, '412', 'Barra de Cereal Cereal Mix Manzana Light 26g', NULL, NULL, 15, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(413, '413', 'Barra de Cereal Cereal MixChocolate y Almendras 26g', NULL, NULL, 15, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(414, '414', 'Barra de Cereal Cereal Mix Yogurt Frutilla Light 32g', NULL, NULL, 20, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(415, '415', 'Barra de Cereal Cereal Mix Rellena Frutilla 32g', NULL, NULL, 20, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(416, '416', 'Barra de Cereal Cereal Mix Rellena Durazno 32g', NULL, NULL, 20, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(417, '417', 'Barra de Cereal Cereal Mix Rellena Manzana 32g', NULL, NULL, 20, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(418, '418', 'Barra de Cereal Ser Frutilla Chocolate 23g', NULL, NULL, 15, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(419, '419', 'Barra de Cereal Ser Manzana 23g', NULL, NULL, 15, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(420, '420', 'Chupetin Mister Pop Clasico 1u.', NULL, NULL, 2, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(421, '421', 'Chupetin Mister Pop Evolution Cereza 1u.', NULL, NULL, 4, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(422, '422', 'Chupetin Mister Pop Evolution Blueberry 1u.', NULL, NULL, 4, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(423, '423', 'Chupetin  Mister Pop Trompito 1u.', NULL, NULL, 2, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(424, '424', 'Alfajor Aguila Minitorta Brownie 74g', NULL, NULL, 25, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(425, '425', 'Alfajor Aguila Minitorta Coco 74g', NULL, NULL, 25, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(426, '426', 'Alfajor Aguila Minitorta Clasica 74g', NULL, NULL, 25, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(427, '427', 'Alfajor Aguila Minitorta Chocolate Blanco 74g', NULL, NULL, 25, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(428, '428', 'Alfajor Bon o Bon  40g', NULL, NULL, 20, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(429, '429', 'Alfajor Bon o Bon blanco 40g', NULL, NULL, 20, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(430, '430', 'Alfajor Bon o Bon Triple 60g', NULL, NULL, 25, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(431, '431', 'Alfajor Tofi 73g', NULL, NULL, 25, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(432, '432', 'Alfajor Tofi Blanco 73g', NULL, NULL, 25, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(433, '433', 'Alfajor Cofler Block 60g', NULL, NULL, 25, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(434, '434', 'Alfajor B&N Negro 50g', NULL, NULL, 20, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(435, '435', 'Alfajor B&N Blanco 50g', NULL, NULL, 20, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(436, '436', 'Alfajor B&N Blanco 3.0 73g', NULL, NULL, 25, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(437, '437', 'Alfajor B&N Negro 3.0 73g', NULL, NULL, 25, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(438, '438', 'Alfajor Tatin Triple Blanco 60g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(439, '439', 'Alfajor Tatin Triple Negro 60g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(440, '440', 'Alfajor Tatin Negro 33g', NULL, NULL, 5, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(441, '441', 'Alfajor Tatin Blanco 33g', NULL, NULL, 5, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(442, '442', 'Alfajor Ser Dulce de Leche 47g', NULL, NULL, 20, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(443, '443', 'Alfajor de Arroz Ser dulce de lehce 23g', NULL, NULL, 20, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(444, '444', 'Alfajor de Arroz Ser limon 23g', NULL, NULL, 20, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(445, '445', 'Alfajor de Arroz Cereal Mix Dulce de Leche 25g', NULL, NULL, 20, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(446, '446', 'Alfajor de Arroz Cereal Mix Chocolate 25g', NULL, NULL, 20, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(447, '447', 'Citos Aguila Menta 40g', NULL, NULL, 20, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(448, '448', 'Citos Butter Toffees 40g', NULL, NULL, 20, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(449, '449', 'Citos Cofler 40g', NULL, NULL, 20, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(450, '450', 'Citos Bon o Bon 40g', NULL, NULL, 20, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(451, '451', 'Rocklets 20g', NULL, NULL, 15, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(452, '452', 'Rocklets 40g', NULL, NULL, 20, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(453, '453', 'Rocklets Mogul 50g', NULL, NULL, 20, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(454, '454', 'Mogul Confitados 40g', NULL, NULL, 20, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(455, '455', 'Mogul Confitados Berries 40g', NULL, NULL, 20, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(456, '456', 'Cofler Block Mani con chocolate 25g', NULL, NULL, 15, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(457, '457', 'Cofler Block Oblea 35g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(458, '458', 'Cofler Block Bombón 18g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(459, '459', 'Cofler Extra Coco 30g', NULL, NULL, 15, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(460, '460', 'Cofler Extra Marroc 30g', NULL, NULL, 15, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(461, '461', 'Cofler Extra Menta 30g', NULL, NULL, 15, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(462, '462', 'Cofler Extra Mini coco 17g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(463, '463', 'Cofler Bombón Dulce de Leche 18g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(464, '464', 'Chocolate Cofler Air Leche 55g', NULL, NULL, 30, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(465, '465', 'Chocolate Cofler Air Mixto 55g', NULL, NULL, 30, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(466, '466', 'Chocolate Cofler Air Blanco 55g', NULL, NULL, 30, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(467, '467', 'Chocolate Cofler Air Almendras 55g', NULL, NULL, 30, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(468, '468', 'Chocolate Cofler Air Leche 27g', NULL, NULL, 15, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(469, '469', 'Chocolate Cofler Air Mixto 27g', NULL, NULL, 15, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(470, '470', 'Chocolate Cofler Air Blanco 27g', NULL, NULL, 15, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(471, '471', 'Chocolate Cofler Air Almendras 27g', NULL, NULL, 15, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(472, '472', 'Chocolate Tofi Negro 55g', NULL, NULL, 30, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(473, '473', 'Chocolate Tofi Blanco 55g', NULL, NULL, 30, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(474, '474', 'Chocolate Tofi Negro 28g', NULL, NULL, 15, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(475, '475', 'Chocolate Tofi Blanco 28g', NULL, NULL, 15, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(476, '476', 'Chocolate Tofi Negro 14g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(477, '477', 'Chocolate Tofi Blanco 14g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(478, '478', 'Tortuguita 17,5g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(479, '479', 'Tortuguita Nutribar 24g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(480, '480', 'Tortuguita Nutricereal 20g', NULL, NULL, 15, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(481, '481', 'Oblea Bon o Bon XL 45g', NULL, NULL, 15, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(482, '482', 'Oblea Bon o Bon Negro 30g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(483, '483', 'Oblea Bon o Bon Blanco 30g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(484, '484', 'Oblea Opera Bañada 27g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(485, '485', 'Chocolate Arcor Negro 25g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(486, '486', 'Chocolate Arcor Blanco 25g', NULL, NULL, 10, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(487, '487', 'Natural Break Nutritivo 27g', NULL, NULL, 35, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(488, '488', 'Natural Break Energia 27g', NULL, NULL, 35, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(489, '489', 'Estadio Triple B. Jamon y Queso x3 -', NULL, NULL, 50, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(490, '490', 'Estadio Triple N. Jamon y Queso x3 -', NULL, NULL, 50, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(491, '491', 'Estadio Triple B. Salame y Queso x3 -', NULL, NULL, 50, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(492, '492', 'Estadio Triple B. Morrón x3 -', NULL, NULL, 50, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(493, '493', 'Estadio Triple B. Jamon Crudo y Queso x3 -', NULL, NULL, 50, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(494, '494', 'Estadio Pebete Jamon y Queso -', NULL, NULL, 50, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(495, '495', 'Estadio Pebete Mortadela y Queso -', NULL, NULL, 50, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(496, '496', 'Estadio Pebete Salame y Queso -', NULL, NULL, 50, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(497, '497', 'Estadio Pebete Jamon Crudo y Queso -', NULL, NULL, 50, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(498, '498', 'Estadio Baguette Jamon y Queso -', NULL, NULL, 50, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(499, '499', 'Estadio Semillado x2 -', NULL, NULL, 60, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(500, '500', 'Estadio Bandeja x6 -', NULL, NULL, 80, NULL, NULL, NULL, 'NN', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(501, '501', 'Baisha Ks -', NULL, NULL, 40, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(502, '502', 'Benson & Hedges Box 100 s -', NULL, NULL, 58, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(503, '503', 'Chesterfield Ks -', NULL, NULL, 40, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(504, '504', 'Chesterfield Fresh Box x20 -', NULL, NULL, 40, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(505, '505', 'Imparciales 100 s -', NULL, NULL, 40, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(506, '506', 'L&M Ks -', NULL, NULL, 48, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(507, '507', 'L&M Light Ks -', NULL, NULL, 48, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(508, '508', 'L&M Light 100 s -', NULL, NULL, 50, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(509, '509', 'Marlboro Box 10 -', NULL, NULL, 30, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(510, '510', 'Marlboro Box 20 -', NULL, NULL, 53, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(511, '511', 'Marlboro Ks -', NULL, NULL, 50, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(512, '512', 'Marlboro IceBlast Box 10 -', NULL, NULL, 30, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(513, '513', 'Marlboro IceBlast Box 20 -', NULL, NULL, 55, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(514, '514', 'Marlboro Fusion Blast Box 10 -', NULL, NULL, 30, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(515, '515', 'Marlboro Fusion Blast Box 20 -', NULL, NULL, 55, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(516, '516', 'Marlboro Gold Box 20 -', NULL, NULL, 53, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(517, '517', 'Next Box 10 -', NULL, NULL, 25, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(518, '518', 'Parliament Box 20 -', NULL, NULL, 58, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(519, '519', 'Particulares 30 Ks -', NULL, NULL, 40, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(520, '520', 'Philip Morris Box 20 -', NULL, NULL, 50, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(521, '521', 'Philip Morris Box 10 -', NULL, NULL, 30, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(522, '522', 'Philip Morris Caps Box 10 -', NULL, NULL, 28, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(523, '523', 'Philip Morris Caps Box 20 -', NULL, NULL, 50, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(524, '524', 'Philip Morris Ks -', NULL, NULL, 48, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(525, '525', 'Virginia SuperSlims Box 20 -', NULL, NULL, 58, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(526, '526', '43/70 Ks -', NULL, NULL, 40, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(527, '527', 'Camel Box 20 -', NULL, NULL, 53, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(528, '528', 'Camel Box 10 -', NULL, NULL, 30, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(529, '529', 'Camel Ks -', NULL, NULL, 50, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(530, '530', 'Gitanes Box -', NULL, NULL, 50, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(531, '531', 'Gold Leaf Box 20 -', NULL, NULL, 50, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(532, '532', 'Lucky Strike Box 20 -', NULL, NULL, 53, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(533, '533', 'Lucky Strike Box 11 -', NULL, NULL, 30, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(534, '534', 'Lucky Strike Conv. Box 11 -', NULL, NULL, 30, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(535, '535', 'Lucky Strike Conv. Box 20 -', NULL, NULL, 55, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(536, '536', 'Lucky Strike Click 4 Mix Box 20 -', NULL, NULL, 55, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(537, '537', 'Lucky Strike Doble Click Box 20 -', NULL, NULL, 55, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(538, '538', 'Lucky Strike Ks -', NULL, NULL, 50, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(539, '539', 'Pall Mall 100 s -', NULL, NULL, 50, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(540, '540', 'Pall Mall Suave 100 s -', NULL, NULL, 50, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(541, '541', 'Pall Mall Ks -', NULL, NULL, 48, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(542, '542', 'Pall Mall Suave Ks -', NULL, NULL, 48, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(543, '543', 'Parisiennes Box 10 -', NULL, NULL, 30, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(544, '544', 'Parisiennes Box 20 -', NULL, NULL, 53, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(545, '545', 'Parisiennes Ks -', NULL, NULL, 50, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(546, '546', 'Viceroy Box 10 -', NULL, NULL, 25, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(547, '547', 'Viceroy Ks -', NULL, NULL, 40, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(548, '548', 'Rodeo Ks -', NULL, NULL, 30, NULL, NULL, NULL, 'CIGARRILLOS', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(549, '549', 'Lampara de Escritorio c/usb -', NULL, NULL, 450, NULL, NULL, NULL, 'REGALERIA', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(550, '550', 'Masajeador c/Usb -', NULL, NULL, 90, NULL, NULL, NULL, 'REGALERIA', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(551, '551', 'Parlante Minion -', NULL, NULL, 200, NULL, NULL, NULL, 'REGALERIA', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(552, '552', 'Cenicero Acero -', NULL, NULL, 30, NULL, NULL, NULL, 'REGALERIA', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(553, '553', 'Palo Selfie -', NULL, NULL, 200, NULL, NULL, NULL, 'REGALERIA', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(554, '554', 'Destapador Iman Botella -', NULL, NULL, 100, NULL, NULL, NULL, 'REGALERIA', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(555, '555', 'Destapador Futbol -', NULL, NULL, 135, NULL, NULL, NULL, 'REGALERIA', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(556, '556', 'Libro Colorear -', NULL, NULL, 15, NULL, NULL, NULL, 'REGALERIA', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(557, '557', 'Desetapador en bolsa -', NULL, NULL, 60, NULL, NULL, NULL, 'REGALERIA', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(558, '558', 'Espejo de Cartera -', NULL, NULL, 70, NULL, NULL, NULL, 'REGALERIA', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(559, '559', 'Iman buho vintage -', NULL, NULL, 50, NULL, NULL, NULL, 'REGALERIA', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(560, '560', 'Colitas c/orejas -', NULL, NULL, 10, NULL, NULL, NULL, 'REGALERIA', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(561, '561', 'Colita Tela x1 -', NULL, NULL, 10, NULL, NULL, NULL, 'REGALERIA', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(562, '562', 'Esecia Cigarro Elec. -', NULL, NULL, 70, NULL, NULL, NULL, 'REGALERIA', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(563, '563', 'Tarjetero Cuero "Aconcagua" -', NULL, NULL, 110, NULL, NULL, NULL, 'REGALERIA', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(564, '564', 'Billetera Hombre en caja -', NULL, NULL, 150, NULL, NULL, NULL, 'REGALERIA', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(565, '565', 'Termo "Aguantador" -', NULL, NULL, 200, NULL, NULL, NULL, 'REGALERIA', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(566, '566', 'Adorno Buhos x3 -', NULL, NULL, 160, NULL, NULL, NULL, 'REGALERIA', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(567, '567', 'Reloj Madera Buho -', NULL, NULL, 170, NULL, NULL, NULL, 'REGALERIA', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(568, '568', 'Lata Vertedor baja Futbol -', NULL, NULL, 150, NULL, NULL, NULL, 'REGALERIA', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(569, '569', 'Lata Vertedor alta Futbol -', NULL, NULL, 170, NULL, NULL, NULL, 'REGALERIA', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(570, '570', 'Gafas Sol "LBL" -', NULL, NULL, 100, NULL, NULL, NULL, 'REGALERIA', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(571, '571', 'Gafas RayBan -', NULL, NULL, 100, NULL, NULL, NULL, 'REGALERIA', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(572, '572', 'Juego Mate Futbol -', NULL, NULL, 330, NULL, NULL, NULL, 'REGALERIA', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(573, '573', 'Naipes "Macao" -', NULL, NULL, 35, NULL, NULL, NULL, 'REGALERIA', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(574, '574', 'Vela Cumpleaños x12 -', NULL, NULL, 30, NULL, NULL, NULL, 'REGALERIA', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(575, '575', 'Vela Cumpleaños c/u -', NULL, NULL, 10, NULL, NULL, NULL, 'REGALERIA', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(576, '576', 'Bengala Cumpleaños x4 -', NULL, NULL, 40, NULL, NULL, NULL, 'REGALERIA', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20'),
(577, '577', 'Bengala Cumpleaños c/u -', NULL, NULL, 15, NULL, NULL, NULL, 'REGALERIA', NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, '2016-12-28 23:54:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `billetes`
--

CREATE TABLE `billetes` (
  `id` int(11) NOT NULL DEFAULT '0',
  `descripcion` varchar(30) NOT NULL DEFAULT '',
  `valor` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja`
--

CREATE TABLE `caja` (
  `numero` bigint(11) NOT NULL DEFAULT '0',
  `numeroSucursal` int(11) NOT NULL DEFAULT '0',
  `numeroUsuario` int(11) NOT NULL DEFAULT '0',
  `tipoMovimiento` int(11) NOT NULL DEFAULT '0',
  `saldoinicial` double NOT NULL DEFAULT '0',
  `estado` int(11) NOT NULL DEFAULT '0',
  `tipo` int(11) NOT NULL DEFAULT '0',
  `saldofinal` double DEFAULT NULL,
  `fechacierre` varchar(30) DEFAULT NULL,
  `diferencia` double DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coeficienteslistas`
--

CREATE TABLE `coeficienteslistas` (
  `id` int(11) NOT NULL DEFAULT '0',
  `coeficiente` double NOT NULL DEFAULT '0',
  `descripcion` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `coeficienteslistas`
--

INSERT INTO `coeficienteslistas` (`id`, `coeficiente`, `descripcion`) VALUES
(1, 1, 'base');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `combo`
--

CREATE TABLE `combo` (
  `id` int(11) NOT NULL DEFAULT '0',
  `fecha` date DEFAULT NULL,
  `idarticulo` int(11) NOT NULL DEFAULT '0',
  `cantidad` double DEFAULT NULL,
  `articulopadre` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprobantes`
--

CREATE TABLE `comprobantes` (
  `numero` int(11) NOT NULL DEFAULT '0',
  `descripcion` varchar(4) NOT NULL DEFAULT '',
  `destinatarioCondicion` int(11) NOT NULL DEFAULT '0',
  `descargaStock` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `depositos`
--

CREATE TABLE `depositos` (
  `numero` int(11) NOT NULL DEFAULT '0',
  `descripcion` varchar(100) NOT NULL DEFAULT '',
  `direccion` varchar(200) NOT NULL DEFAULT '',
  `telefono` varchar(200) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `depositos`
--

INSERT INTO `depositos` (`numero`, `descripcion`, `direccion`, `telefono`) VALUES
(1, 'casa central', ' ', ' ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fallas`
--

CREATE TABLE `fallas` (
  `st` text NOT NULL,
  `estado` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fiscal`
--

CREATE TABLE `fiscal` (
  `fecha` varchar(8) NOT NULL DEFAULT '',
  `tipo` varchar(3) NOT NULL DEFAULT '011',
  `pto` varchar(5) NOT NULL DEFAULT '00002',
  `numero` varchar(20) NOT NULL DEFAULT '',
  `gravado` double NOT NULL DEFAULT '0',
  `alicuota` varchar(4) NOT NULL DEFAULT '0005',
  `impuesto` double NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL,
  `total` double NOT NULL DEFAULT '0',
  `fechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `estado` int(11) NOT NULL DEFAULT '0',
  `idcliente` int(11) NOT NULL DEFAULT '1',
  `tipoClienteId` int(11) NOT NULL DEFAULT '99',
  `razon` varchar(30) NOT NULL DEFAULT '',
  `cuit` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ivaventas`
--

CREATE TABLE `ivaventas` (
  `id` int(11) NOT NULL,
  `comprobante` varchar(4) NOT NULL,
  `fecha` varchar(10) NOT NULL,
  `numero` varchar(14) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `cliente` varchar(35) NOT NULL,
  `condicion` varchar(4) NOT NULL,
  `cuit` varchar(11) NOT NULL,
  `neto` varchar(15) NOT NULL,
  `iva` varchar(15) NOT NULL,
  `total` varchar(15) NOT NULL,
  `periodo` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listcli`
--

CREATE TABLE `listcli` (
  `COD_CLIENT` varchar(6) DEFAULT NULL,
  `RAZON_SOCI` varchar(60) DEFAULT NULL,
  `DOMICILIO` varchar(30) DEFAULT NULL,
  `COND_VTA` int(11) NOT NULL DEFAULT '0',
  `TELEFONO_1` varchar(30) DEFAULT NULL,
  `LISTADEPRECIO` int(11) NOT NULL DEFAULT '0',
  `NUMERODECUIT` varchar(30) DEFAULT NULL,
  `CUPODECREDITO` double DEFAULT NULL,
  `empresa` varchar(3) DEFAULT NULL,
  `codmmd` int(11) NOT NULL DEFAULT '0',
  `saldo` double DEFAULT '0',
  `saldoactual` double DEFAULT '0',
  `TIPO_IVA` int(11) NOT NULL DEFAULT '0',
  `COEFICIENTE` int(11) NOT NULL DEFAULT '1',
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `listcli`
--

INSERT INTO `listcli` (`COD_CLIENT`, `RAZON_SOCI`, `DOMICILIO`, `COND_VTA`, `TELEFONO_1`, `LISTADEPRECIO`, `NUMERODECUIT`, `CUPODECREDITO`, `empresa`, `codmmd`, `saldo`, `saldoactual`, `TIPO_IVA`, `COEFICIENTE`, `id`) VALUES
('999999', 'CONSUMIDOR FINAL', 'NN', 1, '11', 1, '1', 0, 'sd', 1, 0, 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientosarticulos`
--

CREATE TABLE `movimientosarticulos` (
  `tipoMovimiento` int(11) NOT NULL DEFAULT '0',
  `idArticulo` int(11) NOT NULL DEFAULT '0',
  `cantidad` double NOT NULL DEFAULT '0',
  `numeroDeposito` int(11) NOT NULL DEFAULT '0',
  `tipoComprobante` int(11) NOT NULL DEFAULT '0',
  `numeroComprobante` int(11) NOT NULL DEFAULT '0',
  `numeroCliente` int(11) NOT NULL DEFAULT '0',
  `fechaComprobante` varchar(30) NOT NULL DEFAULT '',
  `numeroUsuario` int(11) NOT NULL DEFAULT '0',
  `precioDeCosto` double NOT NULL DEFAULT '0',
  `precioDeVenta` double NOT NULL DEFAULT '0',
  `precioServicio` double NOT NULL DEFAULT '0',
  `estado` int(11) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `idcaja` bigint(11) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `idcomprobante` int(11) DEFAULT '0',
  `observaciones` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientoscaja`
--

CREATE TABLE `movimientoscaja` (
  `numeroUsuario` int(11) NOT NULL DEFAULT '0',
  `idCliente` int(11) DEFAULT NULL,
  `numeroSucursal` int(11) NOT NULL DEFAULT '0',
  `numeroComprobante` int(11) NOT NULL DEFAULT '0',
  `tipoComprobante` int(11) NOT NULL DEFAULT '0',
  `monto` double DEFAULT NULL,
  `tipoMovimiento` int(11) NOT NULL DEFAULT '0',
  `idCaja` int(11) NOT NULL DEFAULT '0',
  `cantidad` double DEFAULT NULL,
  `pagado` int(11) NOT NULL DEFAULT '0',
  `observaciones` varchar(100) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `tipoCliente` int(11) DEFAULT NULL,
  `id` bigint(11) NOT NULL,
  `fiscal` int(11) NOT NULL DEFAULT '0',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientosclientes`
--

CREATE TABLE `movimientosclientes` (
  `numeroProveedor` int(11) NOT NULL DEFAULT '0',
  `monto` double NOT NULL DEFAULT '0',
  `pagado` int(11) DEFAULT NULL,
  `numeroComprobante` int(11) DEFAULT NULL,
  `idRemito` int(11) DEFAULT NULL,
  `idUsuario` int(11) NOT NULL DEFAULT '0',
  `idCaja` int(11) NOT NULL DEFAULT '0',
  `fechaPago` varchar(20) DEFAULT NULL,
  `tipoComprobante` int(11) DEFAULT NULL,
  `idSucursal` int(11) NOT NULL DEFAULT '0',
  `estado` int(11) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `idcomprobante` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientosdesucursales`
--

CREATE TABLE `movimientosdesucursales` (
  `depOrigen` int(11) DEFAULT NULL,
  `depDestino` int(11) DEFAULT NULL,
  `idArticulo` int(11) NOT NULL DEFAULT '0',
  `cantidad` double NOT NULL DEFAULT '0',
  `confirmado` int(11) DEFAULT NULL,
  `numeroRemito` int(11) DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `diferencia` double DEFAULT NULL,
  `idUsuarioRecep` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientosproveedores`
--

CREATE TABLE `movimientosproveedores` (
  `numeroProveedor` int(11) NOT NULL DEFAULT '0',
  `monto` double NOT NULL DEFAULT '0',
  `pagado` int(11) DEFAULT NULL,
  `numeroComprobante` varchar(30) DEFAULT NULL,
  `idRemito` int(11) DEFAULT NULL,
  `idUsuario` int(11) NOT NULL DEFAULT '0',
  `idCaja` int(11) NOT NULL DEFAULT '0',
  `fechaPago` varchar(20) DEFAULT NULL,
  `tipoComprobante` int(11) DEFAULT NULL,
  `idSucursal` int(11) NOT NULL DEFAULT '0',
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientosusuarios`
--

CREATE TABLE `movimientosusuarios` (
  `numeroUsuario` int(11) NOT NULL DEFAULT '0',
  `tipoAcceso` int(11) DEFAULT NULL,
  `entrada` varchar(30) NOT NULL DEFAULT '',
  `estado` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `ID` int(11) DEFAULT NULL,
  `nombre` varchar(19) DEFAULT NULL,
  `DOMICILIO` varchar(100) DEFAULT NULL,
  `LOCALIDAD` varchar(8) DEFAULT NULL,
  `TELEFONO` varchar(10) DEFAULT NULL,
  `INHABILITADO` int(11) DEFAULT NULL,
  `numero` int(11) NOT NULL DEFAULT '0',
  `mail` varchar(200) NOT NULL DEFAULT '',
  `saldo` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `numero` int(11) NOT NULL DEFAULT '0',
  `descripcion` varchar(100) NOT NULL DEFAULT '',
  `direccion` varchar(100) NOT NULL DEFAULT '',
  `telefono` varchar(100) NOT NULL DEFAULT '',
  `deposito` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`numero`, `descripcion`, `direccion`, `telefono`, `deposito`) VALUES
(1, 'CASA CENTRAL', '1', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoacceso`
--

CREATE TABLE `tipoacceso` (
  `numero` int(11) NOT NULL DEFAULT '0',
  `descripcion` varchar(20) NOT NULL DEFAULT '',
  `nivel` int(11) NOT NULL DEFAULT '0',
  `menu1` int(11) NOT NULL DEFAULT '0',
  `menu2` int(11) NOT NULL DEFAULT '0',
  `menu3` int(11) NOT NULL DEFAULT '0',
  `menu4` int(11) NOT NULL DEFAULT '0',
  `menu5` int(11) NOT NULL DEFAULT '0',
  `menu6` int(11) NOT NULL DEFAULT '0',
  `menu7` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipoacceso`
--

INSERT INTO `tipoacceso` (`numero`, `descripcion`, `nivel`, `menu1`, `menu2`, `menu3`, `menu4`, `menu5`, `menu6`, `menu7`) VALUES
(1, 'administrador', 1, 1, 1, 1, 1, 1, 1, 1),
(2, 'cajero', 2, 0, 0, 1, 1, 0, 1, 0),
(3, 'prueba', 3, 0, 0, 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocomprobantes`
--

CREATE TABLE `tipocomprobantes` (
  `numero` int(11) NOT NULL DEFAULT '0',
  `descripcion` varchar(50) NOT NULL DEFAULT '',
  `numeroActivo` int(11) NOT NULL DEFAULT '0',
  `numeroSucursal` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipocomprobantes`
--

INSERT INTO `tipocomprobantes` (`numero`, `descripcion`, `numeroActivo`, `numeroSucursal`) VALUES
(1, 'ticket', 3, 1),
(2, 'FCA A', 0, 1),
(3, 'remito proveedor', 0, 1),
(4, 'remito interno', 0, 1),
(5, 'factura proveedor A', 0, 1),
(6, 'factura proveedor', 0, 1),
(7, 'ticket', 0, 2),
(8, 'FCA A', 0, 2),
(9, 'ticket', 0, 3),
(10, 'FCA A', 0, 3),
(11, 'recibo de pago', 0, 1),
(12, 'mov caja', 3, 0),
(13, 'gasto fijo', 0, 1),
(14, 'ticket', 0, 4),
(15, 'FCA A', 0, 4),
(16, 'ticket', 0, 5),
(17, 'FCA A', 0, 5),
(18, 'remito de ajuste de stock', 3, 1),
(19, 'TICKET', 0, 7),
(20, 'FACTURA PROVEEDOR', 0, 7),
(21, 'FCA A', 0, 7),
(22, 'ticket', 0, 6),
(23, 'FCA A', 0, 6),
(81, 'TFA', 0, 1),
(82, 'TFB', 0, 1),
(112, 'NCA', 0, 1),
(113, 'NCB', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipomovimientos`
--

CREATE TABLE `tipomovimientos` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `DESCRIPCION` varchar(30) NOT NULL DEFAULT '',
  `DESTINOOPERACION` int(11) NOT NULL DEFAULT '0',
  `MULTIPLOOP` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipomovimientos`
--

INSERT INTO `tipomovimientos` (`ID`, `DESCRIPCION`, `DESTINOOPERACION`, `MULTIPLOOP`) VALUES
(1, 'Ventas', 1, 1),
(2, 'Compras', 1, 1),
(3, 'Devolucion de Ventas', 1, 1),
(4, 'Retiro Efectivo', 2, -1),
(5, 'Recepcion de mercaderias', 1, 1),
(6, 'Traslado de mercaderias', 1, 1),
(7, 'Ingreso de Caja', 2, 1),
(8, 'Devolucion de compras', 1, 1),
(9, 'saldo inicial', 2, 1),
(10, 'Cerrar Caja', 2, -1),
(11, 'Pago a Proveedores', 2, -1),
(12, 'Gastos de Caja', 2, -1),
(13, 'Cobro de Cuenta Corriente Clie', 2, 1),
(14, 'ajuste de stock', 1, 1),
(15, 'ajuste de saldo', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `numero` int(11) NOT NULL DEFAULT '0',
  `nombre` varchar(70) NOT NULL DEFAULT '',
  `direccion` varchar(200) NOT NULL DEFAULT '',
  `localidad` varchar(70) NOT NULL DEFAULT '',
  `telefono` varchar(100) NOT NULL DEFAULT '',
  `mail` varchar(100) NOT NULL DEFAULT '',
  `nombreUsuario` varchar(100) NOT NULL DEFAULT '',
  `clave` varchar(100) NOT NULL DEFAULT '',
  `autorizacion` int(11) NOT NULL DEFAULT '0',
  `numeroTipoAcceso` int(11) NOT NULL DEFAULT '0',
  `sucursal` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`numero`, `nombre`, `direccion`, `localidad`, `telefono`, `mail`, `nombreUsuario`, `clave`, `autorizacion`, `numeroTipoAcceso`, `sucursal`) VALUES
(1, 'administrador', '', '', '', '', 'ADM', 'adm', 1, 1, 1),
(2, 'ELIEL', '', '', '', '', 'ELIEL', 'ELIEL', 2, 2, 7);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `billetes`
--
ALTER TABLE `billetes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `caja`
--
ALTER TABLE `caja`
  ADD PRIMARY KEY (`numero`);

--
-- Indices de la tabla `coeficienteslistas`
--
ALTER TABLE `coeficienteslistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `combo`
--
ALTER TABLE `combo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comprobantes`
--
ALTER TABLE `comprobantes`
  ADD PRIMARY KEY (`numero`);

--
-- Indices de la tabla `depositos`
--
ALTER TABLE `depositos`
  ADD PRIMARY KEY (`numero`);

--
-- Indices de la tabla `fiscal`
--
ALTER TABLE `fiscal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `numero_2` (`numero`);

--
-- Indices de la tabla `ivaventas`
--
ALTER TABLE `ivaventas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `listcli`
--
ALTER TABLE `listcli`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `codmmd` (`codmmd`);

--
-- Indices de la tabla `movimientosarticulos`
--
ALTER TABLE `movimientosarticulos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `movimientoscaja`
--
ALTER TABLE `movimientoscaja`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fecha` (`fecha`);

--
-- Indices de la tabla `movimientosclientes`
--
ALTER TABLE `movimientosclientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`numero`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`numero`);

--
-- Indices de la tabla `tipoacceso`
--
ALTER TABLE `tipoacceso`
  ADD PRIMARY KEY (`numero`);

--
-- Indices de la tabla `tipocomprobantes`
--
ALTER TABLE `tipocomprobantes`
  ADD PRIMARY KEY (`numero`);

--
-- Indices de la tabla `tipomovimientos`
--
ALTER TABLE `tipomovimientos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`numero`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=578;
--
-- AUTO_INCREMENT de la tabla `fiscal`
--
ALTER TABLE `fiscal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ivaventas`
--
ALTER TABLE `ivaventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `listcli`
--
ALTER TABLE `listcli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `movimientosarticulos`
--
ALTER TABLE `movimientosarticulos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `movimientoscaja`
--
ALTER TABLE `movimientoscaja`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `movimientosclientes`
--
ALTER TABLE `movimientosclientes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
