-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-06-2024 a las 21:06:26
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
-- Base de datos: `base de datos ferreteria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `ID Cliente` int(6) NOT NULL,
  `Nombre` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Apellido` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`ID Cliente`, `Nombre`, `Apellido`, `telefono`) VALUES
(123, 'Matias', 'del polo', 44444444),
(214, 'Claudia', 'Lopez', 3131225),
(222, 'Fernando', 'silva', 36218451),
(1212, 'Polo ', 'fernandez', 2548144),
(1234, 'Luis ', 'Polo', 333656212),
(1321, 'Osvaldo', 'rodriguez', 996152122),
(2463, 'Pepe ', 'lopez', 3214663),
(3625, 'luis', 'Macro', 3214544),
(32149, 'Juan', 'Solis', 36521498),
(35277, 'Pedro', 'Gonzalez', 9632558),
(36521, 'Federico', 'Gonzalez', 336521444);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `Nombre Usuario` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contraseña` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ID Empleado` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`Nombre Usuario`, `contraseña`, `ID Empleado`) VALUES
('usuario21', '1457', '120'),
('Mariano', '65432', '121'),
('Tino', '1234', '122');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encargosproveedores`
--

CREATE TABLE `encargosproveedores` (
  `Producto` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Proveedor ID` int(6) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Estado de pago` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `encargosproveedores`
--

INSERT INTO `encargosproveedores` (`Producto`, `Proveedor ID`, `Fecha`, `Estado de pago`) VALUES
('Arandelas', 3119, '2024-10-12 12:12:03', 'SI'),
('Alcohol Isopropilico', 2315, '2024-06-04 18:17:39', 'No'),
('Pastillas de cloro', 3265, '2024-02-28 18:12:39', 'Si'),
('Caños del 24', 3296, '2024-12-24 17:25:23', 'No'),
('Agua raz', 2541, '2024-10-14 12:25:32', 'Si'),
('Acido muriarico', 9965, '2024-10-12 12:10:25', 'No');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informes`
--

CREATE TABLE `informes` (
  `Informes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `informes`
--

INSERT INTO `informes` (`Informes`) VALUES
(' este es un texto de prueba para informes'),
(' este es un texto de prueba para informes'),
('------Informes Clientes-----\n\nfgfgd'),
('------Informes Clientes-----\n\nhola'),
('------Informes Encargos-----\n\nfaltan martillos'),
('------Informes Productos-----\nTodos estos son ejemplos de informes de la empresa \ncon uso informativo'),
('------Informes Encargos-----\nEncargar más Martillos'),
('------Informes Productos-----\nMuchos clientes hay preguntado por Soda cautica'),
('------Informes Clientes-----\nmuchos clientes esta semana'),
('------Informes Proveedores-----\nhay nuevos proveedores'),
('------Informes Ventas-----\nLas ventas han sido un exito'),
('------Informes Pagos-----\nEsta todo al dia'),
('------Informes Encargos-----\nHay que hacer encargos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagosproveedores`
--

CREATE TABLE `pagosproveedores` (
  `Monto` decimal(10,2) NOT NULL,
  `Producto` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Cantidad` int(50) NOT NULL,
  `Proveedor ID` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pagosproveedores`
--

INSERT INTO `pagosproveedores` (`Monto`, `Producto`, `Cantidad`, `Proveedor ID`) VALUES
(2000.00, 'Tiner', 25, 3241),
(2500.00, 'Agua raz', 36, 3254),
(1200.00, 'Caño del 32', 96, 3362),
(3200.00, 'Hierro del  25', 63, 5524),
(20000.00, 'Barras de hierro', 50, 9638),
(30000.00, 'Rulemanes', 50, 36527);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `Nombre Producto` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ID Producto` varchar(10) NOT NULL,
  `Precio` decimal(10,2) NOT NULL,
  `Stock` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`Nombre Producto`, `ID Producto`, `Precio`, `Stock`) VALUES
('Martillo', '1245', 25.00, 54),
('Destornillador', '2135', 50.00, 99),
('Pintura negra', '1382', 20.00, 88),
('Pintura Amarilla', '2137', 20.00, 74),
('Alcohol isopropilico', '3657', 40.00, 118),
('Hierro del 25', '25499', 20.00, 99);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `Nombre` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Apellido` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ID Proveedor` int(6) NOT NULL,
  `telefono` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`Nombre`, `Apellido`, `ID Proveedor`, `telefono`) VALUES
('Oscar', 'Perez', 2548, 9963254),
('Rodolfo', 'silva', 2314, 699855544),
('Carlos', 'gutierrez', 63258, 996321117);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `nombre_cliente` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido_cliente` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_cliente` int(6) NOT NULL,
  `fecha_compra` datetime NOT NULL,
  `id_producto` int(11) NOT NULL,
  `nombre_producto` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`nombre_cliente`, `apellido_cliente`, `id_cliente`, `fecha_compra`, `id_producto`, `nombre_producto`) VALUES
('Maria', 'DelValle', 9654, '2024-06-26 20:38:30', 2135, 'Destornillador'),
('Pedro', 'Rosas', 5647, '2024-06-27 16:06:52', 3657, 'Alcohol isopropilico'),
('Omar', 'aguilera', 36225, '2024-06-28 15:37:16', 25499, 'Hierro del 25');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`ID Cliente`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `ID Cliente` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118007;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25500;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
