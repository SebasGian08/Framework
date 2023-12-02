-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 01-12-2023 a las 21:08:15
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
-- Base de datos: `bd_tiendavirtual`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banners`
--

DROP TABLE IF EXISTS `banners`;
CREATE TABLE IF NOT EXISTS `banners` (
  `idbanner` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `portada` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idbanner`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `banners`
--

INSERT INTO `banners` (`idbanner`, `nombre`, `descripcion`, `portada`, `status`, `datecreated`) VALUES
(1, 'Banner', 'Banner', 'img_6c3a92d18d0b8471081e212525ba20c0.jpg', 1, '2023-08-07 11:20:44'),
(2, 'ahora si', 'ojala pues', 'img_e3df21b3c1fd4f1e0396616091212344.jpg', 1, '2023-08-08 12:21:47'),
(3, 'ahorae', 'ojala pues', 'img_f7133022515c33da73f028c149b4823f.jpg', 1, '2023-08-08 18:01:28'),
(4, 'deeev', 'ojala pues', 'portada_banners.png', 0, '2023-08-08 18:03:36'),
(5, 'da', 'da', 'portada_banners.png', 0, '2023-08-09 10:37:16'),
(6, 's', 'fs', 'portada_banners.png', 0, '2023-08-09 10:37:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `idcategoria` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `portada` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ruta` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `descripcion`, `portada`, `datecreated`, `ruta`, `status`) VALUES
(1, 'ESTÉ SLIDER ES PARA QUE SE MUESTRE EN LA TIENDA VIRTÁAL', 'ESTÉ SLIDER ES PARA QUE SE MUESTRE EN LA TIENDA VIRTÁAL', 'img_770c12f236a2330b4eff7a470337ec15.jpg', '2023-06-12 16:17:41', 'este-slider-es-para-que-se-muestre-en-la-tienda-virtaal', 1),
(2, 'SLIDERR', 'ESTE SLIDER ES PARA QUE SE MUESTRE EN LA TIENDA VIRTUAL', 'img_923afda5030a3ef1767af57536412cdc.jpg', '2023-06-13 14:46:36', 'sliderr', 1),
(3, 'Hombres', 'Categoria a', 'img_f4fb2042698da00a37ce02fe3cb9d3f5.jpg', '2023-06-15 13:55:36', 'hombres', 1);

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
  `img` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productoid` (`productoid`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `imagen`
--

INSERT INTO `imagen` (`id`, `productoid`, `img`) VALUES
(31, 16, 'pro_8f159c1936392c5d53dbd693483ad67b.jpg'),
(32, 16, 'pro_5cff3af58f5263b6c5e4b11c6bf7de3a.jpg'),
(37, 16, 'pro_64353e747c1a58ca02504367bf6809d1.jpg'),
(41, 10, 'pro_360b53af69f2b72bc427afa6c8b356e9.jpg'),
(42, 12, 'pro_ea4b39637888b64d2dc0d4fa2abbd6b0.jpg'),
(44, 17, 'pro_f4feb4f8c2c4e7f421de78e8b694e426.jpg'),
(45, 1, 'pro_77529bc7bac5b873003e9106a538cc45.jpg'),
(48, 2, 'pro_aa2e7c755c4bc8de059943c6227aec38.jpg'),
(50, 18, 'pro_6f780da6b4f64816c16a740045d50a16.jpg'),
(51, 19, 'pro_99659c5ae9d7b0c8723cb5b36f8438d9.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`idmodulo`, `titulo`, `descripcion`, `status`) VALUES
(1, 'Dashboard', 'Dashboard', 1),
(2, 'Usuarios', 'Usuarios del sistema', 1),
(3, 'Clientes', 'Clientes de tienda', 1),
(4, 'Productos', 'Todos los productos', 1),
(5, 'Pedidos', 'Pedidos', 1),
(6, 'Categoria', 'Categoria', 1),
(7, 'Banners', 'Banners', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=497 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

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
(490, 1, 1, 1, 1, 1, 1),
(491, 1, 2, 1, 1, 1, 1),
(492, 1, 3, 1, 1, 1, 1),
(493, 1, 4, 1, 1, 1, 1),
(494, 1, 5, 1, 1, 1, 1),
(495, 1, 6, 1, 1, 1, 1),
(496, 1, 7, 1, 1, 1, 1);

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
(1, '74146165', 'Sebastian', 'Vasquez Wong', 989999120, 'superadmin@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '1', 'fdfdfdfdfdfdfdfdfd', '43434343dd', '', 1, '2023-05-26 14:40:11', 1),
(2, '123456789', 'Empresa', 'Empresa', 159753, 'admin@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 1, '2023-05-26 14:41:24', 1),
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
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `stock` int NOT NULL,
  `imagen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ruta` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idproducto`),
  KEY `categoriaid` (`categoriaid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `categoriaid`, `codigo`, `nombre`, `descripcion`, `precio`, `stock`, `imagen`, `datecreated`, `ruta`, `status`) VALUES
(1, 1, 'P00001', 'Agua Cielo 250ml', '<p>Embase</p>', '2.00', 0, '', '2023-06-21 15:27:14', 'agua-cielo-250ml', 1),
(2, 1, 'P00002', 'VINO EL ENEMIGO CHARDONNAY Botella de 750ML', '<p><span class=\"posted_in detail-container\"><span class=\"detail-label\">Categorias</span>&nbsp;<span class=\"detail-content\"><a href=\"https://licoreria247.pe/categoria-producto/vino/chardonnay/\" rel=\"tag\">Chardonnay</a>,&nbsp;<a href=\"https://licoreria247.pe/categoria-producto/vino/\" rel=\"tag\">Vino</a></span></span><span class=\"tagged_as detail-container\"><span class=\"detail-label\">Tipo</span>&nbsp;<span class=\"detail-content\"><a href=\"https://licoreria247.pe/etiqueta-producto/vino-argentino/\" rel=\"tag\">Vino Argentino</a></span></span></p> <div class=\"pwb-single-product-brands pwb-clearfix\"><span class=\"pwb-text-before-brands-links\">Marca:</span><a title=\"Ver marca\" href=\"https://licoreria247.pe/marca/el-enemigo/\">El Enemigo</a></div>', '108.00', 1, '', '2023-06-21 15:27:17', 'vino-el-enemigo-chardonnay-botella-de-750ml', 1),
(3, 2, '11224', 'producto 3', '', '20.00', 2, '', '2023-06-21 17:59:35', '', 0),
(4, 1, '2222', 'producto 4', '', '22.00', 2, '', '2023-06-21 18:21:55', '', 0),
(5, 1, '2200', 'producto 5', '', '2.00', 2, '', '2023-06-21 18:23:55', '', 0),
(6, 1, '1111133', 'Producto 6', '', '2.00', 2, '', '2023-06-21 18:38:07', '', 0),
(7, 1, '11', 'producto 7', '<p>producto 7</p>', '1.00', 0, '', '2023-06-22 16:04:27', '', 0),
(8, 1, '333333', 'producto 33', '', '3.00', 0, '', '2023-06-22 16:18:20', '', 0),
(9, 1, '2444224', 'producto 22', '<p>dd</p>', '2.00', 2, '', '2023-06-22 16:18:58', '', 0),
(10, 1, '2222242424', 'd2dd22', '<p>d</p>', '2.00', 2, '', '2023-06-22 16:19:37', '', 0),
(11, 1, 'qqq11', 'Sporade', '<ul> <li>Marca lata</li> <li>400 ml</li> </ul>', '2.00', 2, '', '2023-06-22 16:36:19', '', 0),
(12, 1, 's2', '500MLL GASEOSA', '<p>sss</p>', '2.00', 22, '', '2023-06-22 16:58:05', '', 0),
(13, 1, 'M2', 'Mandarina', '', '3.00', 2, '', '2023-06-23 13:24:48', '', 0),
(14, 1, 'maaa2', 'Manzana', '', '2.00', 2, '', '2023-06-23 13:26:12', '', 0),
(15, 1, 'veveev', 'Ve', '', '2.00', 21, '', '2023-06-23 13:39:26', '', 0),
(16, 1, 'a1a1', 'Pastillasss', '<p style=\"text-align: center;\">ddd</p>', '1.00', 1, '', '2023-06-23 14:08:47', '', 0),
(17, 1, '2355', 'Pastilla 1', '', '10.00', 1, '', '2023-07-04 16:45:43', '', 0),
(18, 1, 'PLAY1235', 'PROMOCIÓN DE VINOS FRONTERA CEPAS VARIAS – Botella de 750ml', '<p><span class=\"posted_in detail-container\"><span class=\"detail-label\">Categorias</span>&nbsp;<span class=\"detail-content\"><a href=\"https://licoreria247.pe/categoria-producto/packs/\" rel=\"tag\">Packs de Licores</a>,&nbsp;<a href=\"https://licoreria247.pe/categoria-producto/vino/\" rel=\"tag\">Vino</a></span></span><span class=\"tagged_as detail-container\"><span class=\"detail-label\">Tipo</span>&nbsp;<span class=\"detail-content\"><a href=\"https://licoreria247.pe/etiqueta-producto/vino-chileno/\" rel=\"tag\">Vino Chileno</a></span></span></p> <div class=\"pwb-single-product-brands pwb-clearfix\"><span class=\"pwb-text-before-brands-links\">Marca:</span><a title=\"Ver marca\" href=\"https://licoreria247.pe/marca/frontera/\">Frontera</a></div>', '82.00', 2, '', '2023-07-10 17:07:16', 'promocion-de-vinos-frontera-cepas-varias-–-botella-de-750ml', 1),
(19, 1, 'BB0001', 'Baby aceite 200ML', '<p>Baby aceite 200ML</p>', '5.00', 1, '', '2023-07-13 17:13:52', 'baby-aceite-200ml', 1),
(20, 3, 'M41554', 'LUIS', '', '10.00', 5, '', '2023-11-07 10:26:55', 'luis', 1);

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
