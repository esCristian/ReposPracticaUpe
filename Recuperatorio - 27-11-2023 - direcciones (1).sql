-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2021 a las 00:45:37
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `direcciones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidades`
--

CREATE TABLE `localidades` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `cant_habitantes` int(11) NOT NULL,
  `municipio_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `localidades`
--

INSERT INTO `localidades` (`id`, `descripcion`, `cant_habitantes`, `municipio_id`) VALUES
(1, 'Lomas del Mirador', 0, 114),
(2, 'San Justo', 0, 114);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE `municipios` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `provincia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`id`, `descripcion`, `provincia_id`) VALUES
(1, 'Adolfo Alsina', 23),
(2, 'Pellegrini', 23),
(3, 'Rivadavia', 23),
(4, 'General Villegas', 23),
(5, 'Florentino Ameghino', 23),
(6, 'Carlos Tejedor', 23),
(7, 'Trenque Lauquen', 23),
(8, 'Guaminí', 23),
(9, 'Daireaux', 23),
(10, 'Hipólito Yrigoyen', 23),
(11, 'Pehuajó', 23),
(12, 'Lincoln', 23),
(13, 'General Pinto', 23),
(14, 'Leandro N. Alem', 23),
(15, 'Carlos Casares', 23),
(16, 'Bolívar', 23),
(17, 'General Alvear', 23),
(18, '9 de Julio', 23),
(19, 'General Las Heras', 23),
(20, 'Junín', 23),
(21, 'General Arenales', 23),
(22, 'Colón', 23),
(23, 'Pergamino', 23),
(24, 'Rojas', 23),
(25, 'Chascomús', 23),
(26, 'Bragado', 23),
(27, '25 de Mayo', 23),
(28, 'Saladillo', 23),
(29, 'Roque Pérez', 23),
(30, 'Alberti', 23),
(31, 'Chivilcoy', 23),
(32, 'Navarro', 23),
(33, 'Chacabuco', 23),
(34, 'Salto', 23),
(35, 'Arrecifes', 23),
(36, 'Baradero', 23),
(37, 'Campana', 23),
(38, 'Capitán Sarmiento', 23),
(39, 'Exaltación de la Cruz', 23),
(40, 'Mercedes', 23),
(41, 'Ramallo', 23),
(42, 'Salliqueló', 23),
(43, 'San Andrés de Giles', 23),
(44, 'San Pedro', 23),
(45, 'Tres Lomas', 23),
(46, 'Zárate', 23),
(47, 'San Antonio de Areco', 23),
(48, 'Carmen de Areco', 23),
(49, 'Lobos', 23),
(50, 'Luján', 23),
(51, 'Suipacha', 23),
(52, 'General Viamonte', 23),
(53, 'Cañuelas', 23),
(54, 'San Nicolás', 23),
(55, 'La Plata', 23),
(56, 'Magdalena', 23),
(57, 'General Paz', 23),
(58, 'Las Flores', 23),
(59, 'Tapalqué', 23),
(60, 'Olavarría', 23),
(61, 'General La Madrid', 23),
(62, 'Coronel Suárez', 23),
(63, 'Saavedra', 23),
(64, 'Tornquist', 23),
(65, 'Bahía Blanca', 23),
(66, 'Patagones', 23),
(67, 'Coronel Pringles', 23),
(68, 'Monte Hermoso', 23),
(69, 'Tres Arroyos', 23),
(70, 'San Cayetano', 23),
(71, 'Lobería', 23),
(72, 'Necochea', 23),
(73, 'Benito Juárez', 23),
(74, 'Azul', 23),
(75, 'Rauch', 23),
(76, 'Tandil', 23),
(77, 'Pila', 23),
(78, 'General Guido', 23),
(79, 'Ayacucho', 23),
(80, 'Balcarce', 23),
(81, 'General Alvarado', 23),
(82, 'Castelli', 23),
(83, 'Dolores', 23),
(84, 'Maipú', 23),
(85, 'Mar Chiquita', 23),
(86, 'General Pueyrredón', 23),
(87, 'General Lavalle', 23),
(88, 'General Juan Madariaga', 23),
(89, 'Coronel de Marina Leonardo Rosales', 23),
(90, 'Brandsen', 23),
(91, 'Coronel Dorrego', 23),
(92, 'La Costa', 23),
(93, 'Laprida', 23),
(94, 'Lezama', 23),
(95, 'Monte', 23),
(96, 'Pinamar', 23),
(97, 'Puán', 23),
(98, 'Punta Indio', 23),
(99, 'Villa Gesell', 23),
(100, 'Villarino', 23),
(101, 'Adolfo Gonzales Chaves', 23),
(102, 'General Belgrano', 23),
(103, 'Tordillo', 23),
(104, 'San Fernando', 23),
(105, 'Escobar', 23),
(106, 'Pilar', 23),
(107, 'Ciudad Libertador San Martín', 23),
(108, 'San Isidro', 23),
(109, 'Vicente López', 23),
(110, 'Tigre', 23),
(111, 'Malvinas Argentinas', 23),
(112, 'General Rodríguez', 23),
(113, 'Marcos Paz', 23),
(114, 'La Matanza', 23),
(115, 'Merlo', 23),
(116, 'Morón', 23),
(117, 'Moreno', 23),
(118, 'Tres de Febrero', 23),
(119, 'Ituzaingó', 23),
(120, 'Hurlingham', 23),
(121, 'José C. Paz', 23),
(122, 'San Miguel', 23),
(123, 'Avellaneda', 23),
(124, 'Lanús', 23),
(125, 'Lomas de Zamora', 23),
(126, 'Esteban Echeverría', 23),
(127, 'Almirante Brown', 23),
(128, 'Florencio Varela', 23),
(129, 'Quilmes', 23),
(130, 'Berazategui', 23),
(131, 'Ensenada', 23),
(132, 'Berisso', 23),
(133, 'José M. Ezeiza', 23),
(134, 'Presidente Perón', 23),
(135, 'San Vicente', 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias`
--

CREATE TABLE `provincias` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `provincias`
--

INSERT INTO `provincias` (`id`, `descripcion`) VALUES
(1, 'Corrientes'),
(2, 'Misiones'),
(3, 'Formosa'),
(4, 'Chaco'),
(5, 'Entre Ríos'),
(6, 'Santa fe'),
(7, 'Cordoba'),
(8, 'Salta'),
(9, 'Jujuy'),
(10, 'Catamarca'),
(11, 'La Rioja'),
(12, 'Sgo. del Estero'),
(13, 'Tucumán'),
(14, 'San Juan'),
(15, 'San Luis'),
(16, 'Mendoza'),
(17, 'La Pampa'),
(18, 'Río Negro'),
(19, 'Neuquén'),
(20, 'Chubut'),
(21, 'Santa Cruz'),
(22, 'Tierra del Fuego'),
(23, 'Buenos Aires'),
(24, 'Ciudad Autónoma de Buenos Aires');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `localidades`
--
ALTER TABLE `localidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `provincias`
--
ALTER TABLE `provincias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `localidades`
--
ALTER TABLE `localidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `municipios`
--
ALTER TABLE `municipios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT de la tabla `provincias`
--
ALTER TABLE `provincias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
