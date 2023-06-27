-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 27-06-2023 a las 04:03:20
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_virtual`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `idcategoria` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `portada` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `descripcion`, `portada`, `datecreated`, `status`) VALUES
(1, 'Categoria1', 'Categoria1', 'img_cf6d761a909cabadba44d0f09a25f58b.jpg', '2023-06-12 16:17:41', 1),
(2, 'Categoria 2', 'Categoria', 'img_a3d42038527348ea2e94a1a06d0fd6c2.jpg', '2023-06-13 14:46:36', 1),
(3, 'Categoria 3', '3', 'img_f4fb2042698da00a37ce02fe3cb9d3f5.jpg', '2023-06-15 13:55:36', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

DROP TABLE IF EXISTS `detalle_pedido`;
CREATE TABLE IF NOT EXISTS `detalle_pedido` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pedidoid` bigint NOT NULL,
  `productoid` bigint NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pedidoid` (`pedidoid`),
  KEY `productoid` (`productoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_temp`
--

DROP TABLE IF EXISTS `detalle_temp`;
CREATE TABLE IF NOT EXISTS `detalle_temp` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `productoid` bigint NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int NOT NULL,
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productoid` (`productoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

DROP TABLE IF EXISTS `imagen`;
CREATE TABLE IF NOT EXISTS `imagen` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `productoid` bigint NOT NULL,
  `img` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productoid` (`productoid`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `imagen`
--

INSERT INTO `imagen` (`id`, `productoid`, `img`) VALUES
(1, 1, 'pro_145a7157779ba8036b675c7f41bb8adc.jpg'),
(2, 1, 'pro_b2e1f80ea80792c897c4c867ee2cf7d7.jpg'),
(3, 1, 'pro_f3ac8036ec0dbd72f4298ac6785d7622.jpg'),
(4, 1, 'pro_1f96782f4e23396daade947ce162ad32.jpg'),
(5, 1, 'pro_60559e4a1f1f0f0afd09b1b4253be24a.jpg'),
(6, 1, 'pro_7acc4ba791a4db1386b4990d6ad91979.jpg'),
(7, 1, 'pro_8a7b0e52e00cd15f8f0ffb97794fa0fe.jpg'),
(8, 1, 'pro_b1a19eb3513099b5af993ab334355d10.jpg'),
(9, 1, 'pro_6d93435da80bdae0e3f29cd4ee8b2290.jpg'),
(10, 1, 'pro_4ef30d373bc97a03c865fdc75c7e58d4.jpg'),
(11, 1, 'pro_4f85b44ba054cdbedf0c308475bd44de.jpg'),
(12, 1, 'pro_c862094b048f12b11736a3c59c33520b.jpg'),
(13, 1, 'pro_d5406a3102419ba3f58a501e98c5b4e7.jpg'),
(14, 1, 'pro_a5ba0c37e568a6866b7c241acc230eee.jpg'),
(15, 1, 'pro_9ce48a2286865239ed2d378ff0f180ab.jpg'),
(16, 1, 'pro_7fb7fd6231296c8dc65414896a4bf7c5.jpg'),
(17, 1, 'pro_8a7b0e52e00cd15f8f0ffb97794fa0fe.jpg'),
(18, 1, 'pro_90ad72532e5e2c90f0efcb6576b9ec6b.jpg'),
(19, 1, 'pro_d2164999067cf4603d45b6c38b38325e.jpg'),
(20, 1, 'pro_98e1c2aa61d2e40b25d96826f20057c4.jpg'),
(21, 1, 'pro_5f03cedefd3a9dc36f00fa2635853bff.jpg'),
(22, 1, 'pro_ea6b0da88ac109e7a9c3e0195224ea0c.jpg'),
(23, 1, 'pro_e94f1c0328802e0107b499ab8a19404a.jpg'),
(24, 1, 'pro_9bf89dcefe3d175d252799efe8855405.jpg'),
(25, 16, 'pro_8e2f7b56afbe512bb91ad2890336805a.jpg'),
(26, 16, 'pro_400245e3d67d86c6de5d259fb2600d73.jpg'),
(27, 16, 'pro_08f831d7c20cffbe018823741b4c6840.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

DROP TABLE IF EXISTS `modulo`;
CREATE TABLE IF NOT EXISTS `modulo` (
  `idmodulo` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idmodulo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`idmodulo`, `titulo`, `descripcion`, `status`) VALUES
(1, 'Dashboard', 'Dashboard', 1),
(2, 'Usuarios', 'Usuarios del sistema', 1),
(3, 'Clientes', 'Clientes de tienda', 1),
(4, 'Productos', 'Todos los productos', 1),
(5, 'Pedidos', 'Pedidos', 1),
(6, 'Categoria', 'Categoria', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

DROP TABLE IF EXISTS `pedido`;
CREATE TABLE IF NOT EXISTS `pedido` (
  `idpedido` bigint NOT NULL AUTO_INCREMENT,
  `personaid` bigint NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `monto` decimal(11,2) NOT NULL,
  `tipopagoid` bigint NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idpedido`),
  KEY `personaid` (`personaid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

DROP TABLE IF EXISTS `permisos`;
CREATE TABLE IF NOT EXISTS `permisos` (
  `idpermiso` bigint NOT NULL AUTO_INCREMENT,
  `rolid` bigint NOT NULL,
  `moduloid` bigint NOT NULL,
  `r` int NOT NULL DEFAULT '0',
  `w` int NOT NULL DEFAULT '0',
  `u` int NOT NULL DEFAULT '0',
  `d` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpermiso`),
  KEY `rolid` (`rolid`),
  KEY `moduloid` (`moduloid`)
) ENGINE=InnoDB AUTO_INCREMENT=443 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`idpermiso`, `rolid`, `moduloid`, `r`, `w`, `u`, `d`) VALUES
(365, 2, 1, 1, 0, 0, 0),
(366, 2, 2, 0, 0, 0, 0),
(367, 2, 3, 1, 1, 0, 0),
(368, 2, 4, 0, 0, 0, 0),
(369, 2, 5, 0, 0, 0, 0),
(370, 2, 6, 0, 0, 0, 0),
(425, 3, 1, 1, 0, 0, 0),
(426, 3, 2, 0, 0, 0, 0),
(427, 3, 3, 0, 0, 0, 0),
(428, 3, 4, 0, 0, 0, 0),
(429, 3, 5, 0, 0, 0, 0),
(430, 3, 6, 0, 0, 0, 0),
(437, 1, 1, 1, 1, 1, 1),
(438, 1, 2, 1, 1, 1, 1),
(439, 1, 3, 1, 1, 1, 1),
(440, 1, 4, 1, 1, 1, 1),
(441, 1, 5, 1, 1, 1, 1),
(442, 1, 6, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

DROP TABLE IF EXISTS `persona`;
CREATE TABLE IF NOT EXISTS `persona` (
  `idpersona` bigint NOT NULL AUTO_INCREMENT,
  `identificacion` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `nombres` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `apellidos` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `telefono` bigint NOT NULL,
  `email_user` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `password` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `nit` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `nombrefiscal` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `direccionfiscal` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `rolid` bigint NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idpersona`),
  KEY `rolid` (`rolid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `identificacion`, `nombres`, `apellidos`, `telefono`, `email_user`, `password`, `nit`, `nombrefiscal`, `direccionfiscal`, `token`, `rolid`, `datecreated`, `status`) VALUES
(1, '74146165', 'Sebastian', 'Vasquez Wong', 989999120, 'admin@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '1', 'fdfdfdfdfdfdfdfdfd', '43434343dd', '', 1, '2023-05-26 14:40:11', 1),
(2, '123456789', 'Angelina', 'La Torre', 159753, 'admin2@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 1, '2023-05-26 14:41:24', 1),
(3, '456123789', 'Andrea', 'Cruz', 115545212132, 'supervisor@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 2, '2023-05-29 15:13:39', 1),
(20, '789456123', 'Soy Cliente', 'Vasquez', 98765321, 'cliente@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '333333', 'sac', 'fff', '', 3, '2023-06-09 15:00:59', 1),
(21, '123456', 'Luzz', 'De La Torre', 5451113, 'luz@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '222', 'ddd', 'sdssd', '', 3, '2023-06-09 17:40:26', 0),
(22, '456123', 'Edu', 'Salinas', 987632255, 'eduardo@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'CF', 'dfdsf', 'CF', '', 3, '2023-06-09 17:41:45', 0),
(23, '222', 'Dsad', 'Sadsada', 222, 'dsadsa@gmail.com', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 'sadsa', 'sasd', 'ssad', '', 3, '2023-06-09 17:42:48', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

DROP TABLE IF EXISTS `producto`;
CREATE TABLE IF NOT EXISTS `producto` (
  `idproducto` bigint NOT NULL AUTO_INCREMENT,
  `categoriaid` bigint NOT NULL,
  `codigo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `stock` int NOT NULL,
  `imagen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idproducto`),
  KEY `categoriaid` (`categoriaid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `categoriaid`, `codigo`, `nombre`, `descripcion`, `precio`, `stock`, `imagen`, `datecreated`, `status`) VALUES
(1, 1, 'P01', 'Mochila', 'Marca nike\r\nPorta Lapto', '19.00', 0, '', '2023-06-21 15:27:14', 1),
(2, 1, 'P02', 'Guantes', 'Marca Adidas', '12.00', 0, '', '2023-06-21 15:27:17', 1),
(3, 2, '11224', 'producto 3', '', '20.00', 2, '', '2023-06-21 17:59:35', 1),
(4, 1, '2222', 'producto 4', '', '22.00', 2, '', '2023-06-21 18:21:55', 1),
(5, 1, '2200', 'producto 5', '', '2.00', 2, '', '2023-06-21 18:23:55', 1),
(6, 1, '1111133', 'Producto 6', '', '2.00', 2, '', '2023-06-21 18:38:07', 1),
(7, 1, '11', 'producto 7', '<p>producto 7</p>', '1.00', 0, '', '2023-06-22 16:04:27', 1),
(8, 1, '333333', 'producto 33', '', '3.00', 0, '', '2023-06-22 16:18:20', 1),
(9, 1, '2444224', 'producto 22', '<p>dd</p>', '2.00', 2, '', '2023-06-22 16:18:58', 1),
(10, 1, '2222242424', 'd2dd22', '<p>d</p>', '2.00', 2, '', '2023-06-22 16:19:37', 1),
(11, 1, 'qqq11', 'Sporade', '<ul> <li>Marca lata</li> <li>400 ml</li> </ul>', '2.00', 2, '', '2023-06-22 16:36:19', 1),
(12, 1, 's2', '500MLL GASEOSA', '<p>sss</p>', '2.00', 22, '', '2023-06-22 16:58:05', 1),
(13, 1, 'M2', 'Mandarina', '', '3.00', 2, '', '2023-06-23 13:24:48', 1),
(14, 1, 'maaa2', 'Manzana', '', '2.00', 2, '', '2023-06-23 13:26:12', 1),
(15, 1, 'veveev', 'Ve', '', '2.00', 21, '', '2023-06-23 13:39:26', 1),
(16, 1, 'a1a1', 'a', '', '1.00', 1, '', '2023-06-23 14:08:47', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

DROP TABLE IF EXISTS `rol`;
CREATE TABLE IF NOT EXISTS `rol` (
  `idrol` bigint NOT NULL AUTO_INCREMENT,
  `nombrerol` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idrol`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idrol`, `nombrerol`, `descripcion`, `status`) VALUES
(1, 'Administrador', 'Administrador', 1),
(2, 'Lider', 'Lider', 1),
(3, 'Cliente', 'Cliente', 1);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`pedidoid`) REFERENCES `pedido` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  ADD CONSTRAINT `detalle_temp_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD CONSTRAINT `imagen_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`personaid`) REFERENCES `persona` (`idpersona`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permisos_ibfk_2` FOREIGN KEY (`moduloid`) REFERENCES `modulo` (`idmodulo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoriaid`) REFERENCES `categoria` (`idcategoria`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
