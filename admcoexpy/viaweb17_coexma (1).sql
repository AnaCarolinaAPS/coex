-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 13-01-2021 a las 10:27:41
-- Versión del servidor: 5.7.23-23
-- Versión de PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `viaweb17_coexma`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_atributo`
--

CREATE TABLE `tb_atributo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_atributo`
--

INSERT INTO `tb_atributo` (`id`, `nombre`, `activo`) VALUES
(1, 'Colores', 1),
(3, 'Medida', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_atr_valor`
--

CREATE TABLE `tb_atr_valor` (
  `id` int(11) NOT NULL,
  `id_atributo` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_banner`
--

CREATE TABLE `tb_banner` (
  `id` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `text_alt` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `orden` int(11) NOT NULL,
  `posicion` tinyint(1) NOT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_banner`
--

INSERT INTO `tb_banner` (`id`, `img`, `text_alt`, `url`, `orden`, `posicion`, `activo`) VALUES
(1, 'banner-2020-12-15-07-32-30.jpeg', '', 'categorie.php?cat=4', 1, 1, 0),
(13, 'banner-2020-12-15-08-49-09.jpeg', '', 'categorie.php?cat=1', 2, 1, 1),
(14, 'banner-2020-12-15-10-12-52.jpeg', '', 'categorie.php?cat=1', 3, 1, 1),
(15, 'banner-2020-12-15-10-46-42.jpeg', '', 'categorie.php?cat=2', 1, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_categoria`
--

CREATE TABLE `tb_categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `id_padre` int(11) DEFAULT NULL,
  `menu` tinyint(1) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `descripcion` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_categoria`
--

INSERT INTO `tb_categoria` (`id`, `nombre`, `id_padre`, `menu`, `activo`, `descripcion`) VALUES
(8, 'Proyectos Exclusivos', 2, 1, 1, NULL),
(7, 'Refrigeracion y Supermercado', 2, 1, 1, NULL),
(6, 'Bar', 1, 1, 1, NULL),
(5, 'Persianas', 1, 1, 1, NULL),
(4, 'Muebles y Equipos de Oficina', 1, 1, 1, NULL),
(3, 'Sillas', 4, 1, 1, NULL),
(2, 'Refrigeracion y Gastronomia', NULL, 1, 1, NULL),
(1, 'Muebles de Oficina', NULL, 1, 1, NULL),
(136, 'Auto Atendimento', 7, 1, 1, NULL),
(137, 'Armario P/ Panes / Bodegas', 7, 1, 1, NULL),
(138, 'Mesas', 6, 1, 1, NULL),
(9, 'Sillas Gamer', 4, 1, 1, NULL),
(141, 'Armarios', 4, 1, 1, NULL),
(140, 'Caja Fuerte', 4, 1, 1, NULL),
(142, 'Estación de Trabajo', 4, 1, 1, NULL),
(143, 'Mesas de Reuniones', 4, 1, 1, NULL),
(144, 'Complementos', 4, 1, 1, NULL),
(145, 'Visa Cooler', 7, 1, 1, NULL),
(146, 'Carnicería', 7, 1, 1, NULL),
(147, 'Panadería y Confitería', 7, 1, 1, NULL),
(148, 'Restaurante/Cocina ind. / Comercial', 7, 1, 1, NULL),
(149, 'Freezer/Isla', 7, 1, 1, NULL),
(150, 'Recepción/Check out', 7, 1, 1, NULL),
(151, 'Frutería', 7, 1, 1, NULL),
(152, 'Gatronomía', 7, 1, 1, NULL),
(153, 'Gondolas/Carritos', 7, 1, 1, NULL),
(154, 'Persianas Horizontales', 5, 1, 1, NULL),
(155, 'Persianas Verticales', 5, 1, 1, NULL),
(156, 'Persianas Verticales en tela', 5, 1, 1, NULL),
(157, 'Persiana Roló', 5, 1, 1, NULL),
(158, 'Persianas Romanas', 5, 1, 1, NULL),
(159, 'Persiana Double Visión', 5, 1, 1, NULL),
(162, 'Cajoneros/Archivos', 4, 1, 1, NULL),
(163, 'Recepción', 4, 1, 1, NULL),
(164, 'Metalicos', 4, 1, 1, NULL),
(165, 'Escritorio', 4, 1, 1, NULL),
(166, 'Últimas piezas GEEB WORK A/N', 4, 1, 1, NULL),
(167, 'test bar', 6, 0, 0, NULL),
(168, 'Proyectos Exclusivos', 1, 1, 1, NULL),
(170, 'Fabricadora de hielo MFG150 ', 7, 0, 0, NULL),
(180, 'Posa pie', 4, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_categoria_tienda`
--

CREATE TABLE `tb_categoria_tienda` (
  `id_tienda` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_ciudad`
--

CREATE TABLE `tb_ciudad` (
  `id` int(11) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `id_departamento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_ciudad`
--

INSERT INTO `tb_ciudad` (`id`, `nombre`, `id_departamento`) VALUES
(1, 'CDE', 1),
(2, 'HERNANDARIAS', 1),
(3, 'ASUNCION', 2),
(1, 'CDE', 1),
(2, 'HERNANDARIAS', 1),
(3, 'ASUNCION', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_cliente`
--

CREATE TABLE `tb_cliente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `apellido` varchar(80) DEFAULT NULL,
  `ruc` varchar(20) DEFAULT NULL COMMENT 'RUC, RG, CI',
  `documento` varchar(50) DEFAULT NULL,
  `razon_social` varchar(80) DEFAULT NULL,
  `mayorista` tinyint(1) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_cliente`
--

INSERT INTO `tb_cliente` (`id`, `nombre`, `apellido`, `ruc`, `documento`, `razon_social`, `mayorista`, `telefono`, `email`) VALUES
(5, 'JUAN RICHARD', 'CABRERA', '', '4402651', '', 0, '0983112965', 'viawebpy@gmail.com'),
(6, 'Leandro Carlos', 'González Reyes', '3197076', '3197076', 'fff', 0, '0985858565', 'gonzagroupsrl@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_cli_direccion`
--

CREATE TABLE `tb_cli_direccion` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `calle` varchar(80) NOT NULL,
  `ciudad` varchar(80) NOT NULL,
  `departamento` varchar(80) NOT NULL,
  `referencia` varchar(80) DEFAULT NULL,
  `favorito` tinyint(1) NOT NULL COMMENT '0 -> no 1 -> sí'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_cli_direccion`
--

INSERT INTO `tb_cli_direccion` (`id`, `id_cliente`, `calle`, `ciudad`, `departamento`, `referencia`, `favorito`) VALUES
(8, 5, 'Avda. San Blas', '1', '1', 'ANJOS', 1),
(9, 6, 'area 2', '1', '1', 'correos pyo', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_contacto`
--

CREATE TABLE `tb_contacto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `asunto` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `mensaje` longtext COLLATE utf8_unicode_ci NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tb_contacto`
--

INSERT INTO `tb_contacto` (`id`, `nombre`, `email`, `telefono`, `asunto`, `mensaje`, `fecha`) VALUES
(2, 'juan', 'richard.cabrera.paim@hotmail.com', '0983112965', 'ferere', 'dfdfd', '2020-12-09 08:35:31'),
(3, 'Juan', 'viawebpy@gmail.com', '0983112965', 'Capacit', 'Hola, quieo', '2020-12-14 12:38:24'),
(4, 'Juan', 'viawebpy@gmail.com', '0983112965', 'Capacit', 'Hola, quieo', '2020-12-14 12:50:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_curriculm`
--

CREATE TABLE `tb_curriculm` (
  `id` int(11) NOT NULL,
  `nombre` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `cedula` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `id_ciudad` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_departamento` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `area` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_curriculum`
--

CREATE TABLE `tb_curriculum` (
  `id` int(11) NOT NULL,
  `nombre` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `cedula` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `id_ciudad` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_departamento` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `area` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tb_curriculum`
--

INSERT INTO `tb_curriculum` (`id`, `nombre`, `apellido`, `cedula`, `id_ciudad`, `id_departamento`, `area`, `email`, `telefono`) VALUES
(1, 'JUAN RICHARD', 'CABRERA', '4402651', 'cde', 'Alto Parana', 'Administrativo', 'viawebpy@gmail.com', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_curriculum_experiencia`
--

CREATE TABLE `tb_curriculum_experiencia` (
  `id` int(11) NOT NULL,
  `id_curriculum` int(11) NOT NULL,
  `empresa` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `desde` date NOT NULL,
  `hasta` date NOT NULL,
  `cargo` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tb_curriculum_experiencia`
--

INSERT INTO `tb_curriculum_experiencia` (`id`, `id_curriculum`, `empresa`, `desde`, `hasta`, `cargo`) VALUES
(1, 1, 'capacit', '2011-08-19', '2020-08-19', 'Administrador'),
(2, 1, 'mega electrónicos', '2011-08-19', '2020-08-19', 'Vendedor'),
(3, 1, 'sax department', '2011-08-19', '2020-08-19', 'chofer');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_departamento`
--

CREATE TABLE `tb_departamento` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_departamento`
--

INSERT INTO `tb_departamento` (`id`, `nombre`) VALUES
(1, 'Alto paraná'),
(2, 'Central');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_marca`
--

CREATE TABLE `tb_marca` (
  `id` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `url` varchar(80) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_marca`
--

INSERT INTO `tb_marca` (`id`, `nombre`, `url`, `activo`) VALUES
(2, 'Tokyo', 'Tokyo.png-2020-09-19', 1),
(4, 'JBL', 'jbl-logo.jpg-2020-09-19', 1),
(5, 'CAVALETTI', 'no-image.png', 1),
(6, 'REFRIMATE', 'no-image.png', 1),
(7, 'DALL MÓVEIS', 'no-image.png', 1),
(8, 'EDW', 'no-image.png', 1),
(9, 'AVANTTI', 'no-image.png', 1),
(10, 'ARTANY', 'no-image.png', 1),
(11, 'LUNASA', 'no-image.png', 1),
(12, 'GEBB WORK', 'no-image.png', 1),
(13, 'BERMAR', 'no-image.png', 1),
(14, 'INARCAN', 'no-image.png', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_met_envio`
--

CREATE TABLE `tb_met_envio` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(80) NOT NULL,
  `costo` double DEFAULT '0',
  `default` int(11) DEFAULT '0',
  `activo` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_met_envio`
--

INSERT INTO `tb_met_envio` (`id`, `descripcion`, `costo`, `default`, `activo`) VALUES
(1, 'AEX', 45000, 0, 0),
(2, 'Retirar en la Tienda', 0, 0, 1),
(3, 'Envío Propio (COEXMA)', 0, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_met_envio_costo`
--

CREATE TABLE `tb_met_envio_costo` (
  `id` int(11) DEFAULT NULL,
  `id_met_envio` int(11) DEFAULT NULL,
  `id_ciudad` int(11) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `tiempo_entrega` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_met_pago`
--

CREATE TABLE `tb_met_pago` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(80) NOT NULL,
  `default` int(11) DEFAULT NULL,
  `instrucciones` mediumtext,
  `activo` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_met_pago`
--

INSERT INTO `tb_met_pago` (`id`, `descripcion`, `default`, `instrucciones`, `activo`) VALUES
(1, 'TARJETA / PAGO EXPRESS / PAGOPAR', 0, NULL, 0),
(2, 'COORDINAR PAGO CON VENDEDOR', 1, 'En la brevedad posible un Asesor de Ventas estará confirmando su pedido en contactándole para coordinar la entrega', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_newsletter`
--

CREATE TABLE `tb_newsletter` (
  `id` int(11) NOT NULL,
  `email` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tb_newsletter`
--

INSERT INTO `tb_newsletter` (`id`, `email`) VALUES
(1, 'richardcabrera92@hotmail.com'),
(2, 'richardcabrera92@hotmail.com'),
(3, 'richardcabrera92@hotmail.com'),
(4, 'n@gmail.com'),
(5, 'n@gmail.com'),
(6, 'n@gmail.com'),
(7, 'richardcabrera92@hotmail.com'),
(8, 'dfvd@sdsd.com'),
(9, 'richardcabrera92@hotmail.com'),
(10, 'richardcabrera92@hotmail.com'),
(11, 'richard.cabrera.paim@hotmail.com'),
(12, ''),
(13, ''),
(14, ''),
(15, 'jos.pe@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_pais`
--

CREATE TABLE `tb_pais` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_pedido`
--

CREATE TABLE `tb_pedido` (
  `id` int(11) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_cliente` int(11) NOT NULL,
  `id_met_pago` int(11) NOT NULL,
  `id_met_envio` int(11) NOT NULL,
  `id_cli_direccion` int(11) NOT NULL DEFAULT '1',
  `total` double NOT NULL,
  `id_factura` int(11) DEFAULT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  `total_envio` double DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_pedido`
--

INSERT INTO `tb_pedido` (`id`, `fecha`, `id_cliente`, `id_met_pago`, `id_met_envio`, `id_cli_direccion`, `total`, `id_factura`, `observacion`, `total_envio`, `status`) VALUES
(37, '2020-12-30 09:42:48', 5, 1, 2, 1, 50000, NULL, '', 0, 1),
(38, '2020-12-30 11:14:09', 5, 2, 2, 1, 50000, NULL, '', 0, 2),
(39, '2021-01-04 11:37:17', 5, 2, 3, 1, 50000, NULL, '', 0, 0),
(40, '2021-01-08 10:10:03', 6, 2, 2, 1, 550000, NULL, '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_pedido_express`
--

CREATE TABLE `tb_pedido_express` (
  `id` int(11) NOT NULL,
  `url_desde` varchar(45) DEFAULT 'Formulario',
  `nombre` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  `mensaje` text,
  `vendedor` int(11) DEFAULT NULL,
  `full_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_pedido_express`
--

INSERT INTO `tb_pedido_express` (`id`, `url_desde`, `nombre`, `telefono`, `id_producto`, `email`, `fecha`, `mensaje`, `vendedor`, `full_url`) VALUES
(11, 'WhatsApp', 'MAria', '0983112965', 1, '', '2020-12-14 08:16:24', '', 5, NULL),
(12, 'WhatsApp', 'Marta', '09832156', 1, '', '2020-12-14 08:21:01', '', 5, 'http://viaweb.com.py/coexma/send_whatsapp.php'),
(13, 'WhatsApp', 'dfdfd', 'fdfd', 1, '', '2020-12-14 08:26:29', '', 5, 'https://viaweb.com.py/coexma/send_whatsapp.php'),
(14, 'WhatsApp', 'SDS', 'WEW', 1, '', '2020-12-14 08:35:41', '', 2, 'window.location'),
(15, 'WhatsApp', 'Juan', '09832651', 1, '', '2020-12-14 08:43:30', '', 3, 'http://viaweb.com.py/coexma/index.php'),
(16, 'WhatsApp', 'Juan', '09832651', 1, '', '2020-12-14 08:43:31', '', 3, 'http://viaweb.com.py/coexma/index.php'),
(17, 'WhatsApp', 'Juan', '09832651', 1, '', '2020-12-14 08:43:32', '', 3, 'http://viaweb.com.py/coexma/index.php'),
(18, 'WhatsApp', 'Juan', '09832651', 1, '', '2020-12-14 08:43:32', '', 3, 'http://viaweb.com.py/coexma/index.php'),
(19, 'WhatsApp', 'Luis Pereira', '098322195', 1, '', '2020-12-14 09:36:58', '', 4, 'http://viaweb.com.py/coexma/producto.php?id=34'),
(20, 'Formulario', 'Jose', '0982635874', 34, 'jos.pe@gmail.com', '2020-12-14 11:40:18', 'Hola queria mas info de eesre producto', NULL, NULL),
(21, 'Formulario', 'MARCOS', '0983112965', 35, 'MARCOS@MARCOSPEREIRA.COM', '2020-12-14 11:44:32', 'hOLA MARCOS', NULL, NULL),
(22, 'Formulario', 'MARCOS', '0983112965', 35, 'MARCOS@MARCOSPEREIRA.COM', '2020-12-14 11:45:15', 'hOLA MARCOS', NULL, NULL),
(23, 'Formulario', 'MARCOS', '0983112965', 35, 'MARCOS@MARCOSPEREIRA.COM', '2020-12-14 11:45:40', 'hOLA MARCOS', NULL, NULL),
(24, 'WhatsApp', 'LEANDRO', '0973642631', 1, '', '2020-12-18 08:56:13', '', 3, 'http://viaweb.com.py/coexma/contactos.php'),
(25, 'Formulario', 'jose', '0985858565', 33, 'gonzagroupsrl@gmail.com', '2021-01-08 10:00:12', 'hola', NULL, NULL),
(26, 'WhatsApp', 'LEANDRO', '0973642631', 1, '', '2021-01-08 10:21:55', '', 5, 'http://viaweb.com.py/coexma/contactos.php');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_ped_detalle`
--

CREATE TABLE `tb_ped_detalle` (
  `id_pedido` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `valor_unitario` double NOT NULL,
  `ctd` int(11) NOT NULL,
  `descuento` double DEFAULT NULL,
  `valor_total` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_ped_detalle`
--

INSERT INTO `tb_ped_detalle` (`id_pedido`, `id_producto`, `valor_unitario`, `ctd`, `descuento`, `valor_total`) VALUES
(37, 185, 50000, 1, 0, 50000),
(38, 185, 50000, 1, 0, 50000),
(39, 185, 50000, 1, 0, 50000),
(40, 33, 550000, 1, 0, 550000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_ped_status`
--

CREATE TABLE `tb_ped_status` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_ped_status`
--

INSERT INTO `tb_ped_status` (`id`, `descripcion`) VALUES
(0, 'Pendiente'),
(1, 'En Revisión'),
(2, 'Aprobado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_preguntas`
--

CREATE TABLE `tb_preguntas` (
  `id` int(11) NOT NULL,
  `pregunta` varchar(150) DEFAULT NULL,
  `activo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_preguntas`
--

INSERT INTO `tb_preguntas` (`id`, `pregunta`, `activo`) VALUES
(1, 'Cómo valora la atención recibida? El vendedor comprendió sus necesidades?', 1),
(2, 'La calidad del producto es la esperada?', 1),
(3, 'En caso de que haya adquirido muebles corporativos, está satisfecho con el montaje y la entrega?', 1),
(4, 'Cuál es la probabilidad de que vuelva a comprar nuestros productos?', 1),
(5, 'En general, está satisfecho con esta compañía?', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_preguntas_opciones`
--

CREATE TABLE `tb_preguntas_opciones` (
  `id` int(11) DEFAULT NULL,
  `id_pregunta` int(11) DEFAULT NULL,
  `valor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_preguntas_opciones`
--

INSERT INTO `tb_preguntas_opciones` (`id`, `id_pregunta`, `valor`) VALUES
(1, 1, 'Todas mis necesidades fueron comprendidas'),
(2, 1, 'Algunas necesidades no fueron comprendidas'),
(3, 1, ' El vendedor no comprendió lo que necesitaba.'),
(4, 1, ' Insuficiente, no recibí respuesta.'),
(5, 2, 'Supera mis expectativas de calidad'),
(6, 2, ' Resuelve mis necesidades sin más'),
(7, 2, 'Es útil, pero hay opciones mejores'),
(8, 2, 'No resuelve mis necesidades'),
(9, 3, 'Muy Satisfecho'),
(10, 3, 'Satisfecho'),
(11, 3, 'Poco Satisfecho'),
(12, 3, 'Insatisfecho'),
(13, 4, 'Muy Probable'),
(14, 4, 'Probable'),
(15, 4, 'Poco Probable'),
(16, 4, 'Improbable'),
(17, 5, 'Altamente satisfecho'),
(18, 5, 'Muy satisfecho'),
(19, 5, 'Satisfecho'),
(20, 5, 'Poco Satisfecho');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_preguntas_respuestas`
--

CREATE TABLE `tb_preguntas_respuestas` (
  `id_res` int(11) NOT NULL,
  `id` varchar(50) DEFAULT NULL,
  `id_pregunta` int(11) DEFAULT NULL,
  `id_respuesta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_preguntas_respuestas`
--

INSERT INTO `tb_preguntas_respuestas` (`id_res`, `id`, `id_pregunta`, `id_respuesta`) VALUES
(11, 'e95beda15c5e83ac', 1, 4),
(12, 'e95beda15c5e83ac', 2, 6),
(13, 'e95beda15c5e83ac', 3, 10),
(14, 'e95beda15c5e83ac', 4, 15),
(15, 'e95beda15c5e83ac', 5, 18),
(16, '0ac850918e8efcb4', 1, 1),
(17, '0ac850918e8efcb4', 2, 5),
(18, '0ac850918e8efcb4', 3, 9),
(19, '0ac850918e8efcb4', 4, 13),
(20, '0ac850918e8efcb4', 5, 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_producto`
--

CREATE TABLE `tb_producto` (
  `id` int(20) NOT NULL,
  `referencia` varchar(20) DEFAULT NULL,
  `nombre` varchar(80) NOT NULL,
  `descripcion_corta` text NOT NULL,
  `descripcion_detallada` text NOT NULL,
  `precio` int(11) DEFAULT NULL,
  `valor_descuento` double DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `valor_mayorista` int(11) DEFAULT NULL,
  `id_marca` int(11) NOT NULL,
  `destaque` tinyint(1) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `unique_hits` int(11) DEFAULT NULL,
  `total_hits` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_producto`
--

INSERT INTO `tb_producto` (`id`, `referencia`, `nombre`, `descripcion_corta`, `descripcion_detallada`, `precio`, `valor_descuento`, `descripcion`, `valor_mayorista`, `id_marca`, `destaque`, `activo`, `unique_hits`, `total_hits`) VALUES
(33, '5705', 'Armario Bajo con Puertas 5705', '', '', 550000, 0, '', NULL, 10, 1, 1, NULL, NULL),
(34, '40', 'Caja Fuerte 40', '', '<p>Cofre 40</p>\r\n\r\n<p>Medidas Externas: 400x380x350</p>\r\n\r\n<p>Pesa: 80 kilos</p>\r\n', 0, 0, '', NULL, 8, 1, 1, NULL, NULL),
(35, '98264', 'Call Center Simple 98264', '', '<p><strong>Caracter&iacute;sticas:</strong></p>\r\n\r\n<p>&bull; Largo: 90cm</p>\r\n\r\n<p>&bull; Alto: 1,20mts</p>\r\n\r\n<p>&bull; Profundidad: 81cm</p>\r\n', 0, 0, '', NULL, 9, 1, 1, NULL, NULL),
(36, '90116', 'MESA EN L REUNIÓN CON PIE OP DE METAL 90116', '', '', 0, 0, '', NULL, 9, 1, 1, NULL, NULL),
(37, 'MU-30301', 'CAJONERO FIJO DE 2 CAJONES MU-30301', '', '', NULL, NULL, '', NULL, 9, 0, 1, NULL, NULL),
(38, 'MU-30301', 'CAJONERO FIJO DE 2 CAJONES MU-30301', '', '', NULL, NULL, '', NULL, 9, 0, 1, NULL, NULL),
(39, '5774', 'BALCÓN DE RECEPCIÓN TAMBURATO 5774', '', '', NULL, NULL, '', NULL, 10, 0, 1, NULL, NULL),
(40, '', 'ESTANTE MÉTALICO 5 BANDEJAS', '', '', NULL, NULL, '', NULL, 11, 0, 1, NULL, NULL),
(41, '90007', 'MESA ANGULAR 90007', '', '', NULL, NULL, '', NULL, 9, 0, 1, NULL, NULL),
(42, 'Cajonero', 'Cajonero móvil 3 cajones ', '', '<p><strong>INFORMACIONES DEL PRODUCTO</strong></p>\r\n\r\n<p><br />\r\nCAJONERO M&Oacute;VIL 3 CAJONES</p>\r\n\r\n<p>C&oacute;digo: ATC4640</p>\r\n\r\n<p>Medidas</p>\r\n\r\n<p>Altura: 67cm</p>\r\n\r\n<p>Largura: 46cm</p>\r\n\r\n<p>Profundidad: 40cm</p>\r\n', 0, 0, '', NULL, 12, 0, 1, NULL, NULL),
(43, 'Soporte', 'Soporte para monitor', '', '', 0, 0, '', NULL, 10, 0, 1, NULL, NULL),
(44, '001', 'Test Armario', 'descripcion corta', '<p>descripcion detallada</p>\r\n', 50000, 0, NULL, NULL, 10, 0, 0, NULL, NULL),
(45, 'Apas2000', 'Armario para panes Apas2000', '', '<p><strong>INFORMACIONES DEL PRODUCTO</strong></p>\r\n\r\n<p>&bull; Iluminaci&oacute;n fluorescente</p>\r\n\r\n<p>&bull; 100% laminado 15mm&nbsp;</p>\r\n\r\n<p>&bull; Largo: 1,00mts</p>\r\n\r\n<p>&bull; Altura: 1,87mts</p>\r\n\r\n<p>&bull; Profundidad: 67cm</p>\r\n', 0, 0, NULL, NULL, 6, 0, 0, NULL, NULL),
(46, 'ASFL-3PP', 'Visacooler Fríos y lácteos ASFL-3PP', '', '<p><strong>INFORMACIONES DEL PRODUCTO</strong></p>\r\n\r\n<p>&bull; Controlador de temperatura&nbsp;digital.&nbsp;</p>\r\n\r\n<p>&bull; Temperatura regulable de&nbsp;3 a 10 grados.</p>\r\n\r\n<p>&bull; 4 niveles de rejilla con&nbsp;altura ajustable.</p>\r\n\r\n<p>&bull; Pies regulables.</p>\r\n\r\n<p>&bull; Iluminaci&oacute;n Led.</p>\r\n\r\n<p>&bull; Largo: 84cm</p>\r\n\r\n<p>&bull; Altura: 1,89mts</p>\r\n\r\n<p>&bull; Profundidad: 57cm</p>\r\n', 0, 0, NULL, NULL, 6, 1, 1, NULL, NULL),
(47, 'BBP1000', 'Balcón de pasaje línea plus BBP1000', '', '<p><strong>INFORMACIONES DEL PRODUCTO</strong></p>\r\n\r\n<p>&bull; Estructura en chapa de acero con pintura blanca anticorrosiva</p>\r\n\r\n<p>&bull; Largo: 1,00mts</p>\r\n\r\n<p>&bull; Altura: 84cm</p>\r\n\r\n<p>&bull; Profundidad: 71cm</p>\r\n\r\n<p>&bull; Utilizaci&oacute;n: Para balanzas</p>\r\n', 0, 0, NULL, NULL, 6, 1, 1, NULL, NULL),
(48, 'VNPCX730', 'Vitrina new panorámica caja VNPCX730', '', '<p><strong>INFORMACIONES DEL PRODUCTO</strong></p>\r\n\r\n<p>&bull; C&oacute;digo:&nbsp; VNPS1260</p>\r\n\r\n<p>&bull; Exposici&oacute;n de productos secos</p>\r\n\r\n<p>&bull; Temperatura:&nbsp; Ambiente</p>\r\n\r\n<p>&bull; Patas regulables</p>\r\n\r\n<p>&bull; Largo: 1,26mts</p>\r\n\r\n<p>&bull; Altura:&nbsp; 1,13mts</p>\r\n\r\n<p>&bull; Profundidad: 70cm</p>\r\n', 0, 0, NULL, NULL, 6, 1, 1, NULL, NULL),
(49, 'BSR-2000', 'Mesa de trabajo refrigerada c/ cuba BSR-2000', '', '<p><strong>INFORMACIONES DEL PRODUCTO</strong></p>\r\n\r\n<p>&bull; C&oacute;digo: BSR-2000</p>\r\n\r\n<p>&bull; Almacenamiento de productos refrigerados</p>\r\n\r\n<p>&bull; Temperatura: 0&deg;C a 5&deg;C</p>\r\n\r\n<p>&bull; Refrigeraci&oacute;n: Est&aacute;tica</p>\r\n\r\n<p>&bull; Controlador de temperatura electr&oacute;nico digital</p>\r\n\r\n<p>&bull; Puertas con cierre autom&aacute;tico</p>\r\n\r\n<p>&bull; Aislamiento en poliuretano inyectado</p>\r\n\r\n<p>&bull; Patas regulables</p>\r\n\r\n<p>&bull; Con cuba</p>\r\n', 0, 0, NULL, NULL, 6, 1, 1, NULL, NULL),
(50, 'EIP3000', 'Isla para congelados doble acción EIP3000', '', '<p><strong>INFORMACIONES DEL PRODUCTO</strong></p>\r\n\r\n<p><br />\r\n&bull; Utilizaci&oacute;n de productos congelados o refrigerados</p>\r\n\r\n<p>&bull; Temperatura: 0&deg;C a 7&deg;C o -18&deg;C</p>\r\n\r\n<p>&bull; Refrigeraci&oacute;n: Est&aacute;tica</p>\r\n\r\n<p>&bull; Parrilas divisorias</p>\r\n\r\n<p>&bull; Molduras en PVC</p>\r\n\r\n<p>&bull; Patas Regulables</p>\r\n\r\n<p>&bull; 4 Puertas</p>\r\n\r\n<p>&bull; Volumen: 86</p>\r\n\r\n<p>&bull; Tapa de vidrio plano</p>\r\n\r\n<p>&bull; Largo: 3,00mts</p>\r\n\r\n<p>&bull; Altura: 97cm</p>\r\n\r\n<p>&bull; Profundidad: 83cm</p>\r\n', NULL, 0, NULL, NULL, 6, 0, 1, NULL, NULL),
(51, 'COTE2050', 'Check-out COTE2050', '', '<p><strong>INFORMACIONES DEL PRODUCTO<br />\r\nCARACTER&Iacute;STICAS</strong></p>\r\n\r\n<p>&bull; Tapa de acero inoxidable</p>\r\n\r\n<p>&bull; Estructura en chapa de acero con pintura anticorrosiva</p>\r\n\r\n<p>&bull; Caja con llave</p>\r\n\r\n<p>&bull; Patas regulables</p>\r\n\r\n<p>&bull; Kit de automatizaci&oacute;n</p>\r\n\r\n<p>&bull; Altura: 93cm</p>\r\n\r\n<p>&bull; Largo: 2,05mts</p>\r\n\r\n<p>&bull; Profundidad: 1,00mts</p>\r\n', 0, 0, NULL, NULL, 6, 1, 1, NULL, NULL),
(52, 'FCCE-24CX', 'Frutera central FCCE-24CX', '', '<p><strong>INFORMACIONES DEL PRODUCTO</strong></p>\r\n\r\n<p><br />\r\n&bull; C&oacute;digo: FCCE-24CX</p>\r\n\r\n<p>&bull; Estructura met&aacute;lica</p>\r\n\r\n<p>&bull; Patas regulables</p>\r\n\r\n<p>&bull; Altura: 1,85mts</p>\r\n\r\n<p>&bull; Largo: 1,86mts</p>\r\n\r\n<p>&bull; Profundidad: 2,10mts</p>\r\n\r\n<p>&bull; Con espejo</p>\r\n', NULL, 0, NULL, NULL, 6, 0, 1, NULL, NULL),
(53, 'BM-122', 'Licuadora industrial basculante BM-122 (Baja rotación)', '', '<p>INFORMACIONES DEL PRODUCTO</p>\r\n\r\n<p><br />\r\n&bull; Codigo: BM-122</p>\r\n\r\n<p>&bull; Estructura y vaso en acero inox</p>\r\n\r\n<p>&bull; Cuchillas en acero inox reforzadas</p>\r\n\r\n<p>&bull; Capacidad: 15 Litros</p>\r\n\r\n<p>&bull; Rotaci&oacute;n: Baja</p>\r\n\r\n<p>&bull; Altura: 1,22mts</p>\r\n\r\n<p>&bull; Largo: 34cm</p>\r\n\r\n<p>&bull; Potencia y motor: 1HP</p>\r\n\r\n<p>&bull; Mezclas y salsas en general</p>\r\n', 0, 0, NULL, NULL, 13, 0, 1, NULL, NULL),
(54, '104-002', 'Carrito para supermercado 90LTS 104-002', '', '<p><strong>INFORMACIONES DEL PRODUCTO</strong></p>\r\n\r\n<p>&bull; C&oacute;digo:&nbsp;104-002</p>\r\n\r\n<p>&bull; C&oacute;digo S: 06556</p>\r\n\r\n<p>&bull; Largo: 51cm</p>\r\n\r\n<p>&bull; Altura: 96cm</p>\r\n\r\n<p>&bull; Profundidad: 82cm</p>\r\n', 0, 0, NULL, NULL, 14, 0, 1, NULL, NULL),
(55, 'Persianas Horizontal', 'Persianas Horizontales', '', '<p>Persianas horizontales de Aluminio 25mm</p>\r\n', NULL, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(56, 'Persianas Verticales', 'Persianas Verticales', '', '<p>Persianas Verticales en PVC de 90mm</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(57, 'Persianas en Tela', 'Persianas Verticales en Tela', 'Persianas verticales en tela de 90mm', '<p>Persianas verticales en tela de 90mm</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(58, 'Persianas Roló', 'Persianas Roló', '', '<p>Es clean y moderna, combina con diversos estilos de decoraci&oacute;n.</p>\r\n', NULL, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(59, 'Persianas Romanas', 'Persianas Romanas', '', '<p>Persianas romanas en tela</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(60, 'Persiana Double', 'Persiana Double Visión ', '', '<p>Persianas double vision en tela</p>\r\n', NULL, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(61, 'PAINEL 98181', 'Plataforma de trabajo dupla pie Painel 98181', '', '<p><strong>INFORMACIONES DEL PRODUCTO</strong></p>\r\n\r\n<p><br />\r\n<strong>Caracter&iacute;sticas</strong></p>\r\n\r\n<p>&bull; Largo: 1,20mts</p>\r\n\r\n<p>&bull; Altura: 74cm</p>\r\n\r\n<p>&bull; Profundidad: 1,33mts</p>\r\n', 0, 0, NULL, NULL, 9, 0, 1, NULL, NULL),
(62, 'MU-30301', 'Cajonero fijo de dos cajones MU-30301', '', '<p><strong>INFORMACIONES DEL PRODUCTO</strong></p>\r\n\r\n<p><br />\r\nLargo: 36cm</p>\r\n\r\n<p>Altura: 21cm</p>\r\n\r\n<p>Profundidad: 39cm</p>\r\n', NULL, 0, NULL, NULL, 9, 0, 1, NULL, NULL),
(63, 'BOX 36105 2L', 'Sofá de espera BOX 36105 2L', '', '', NULL, 0, NULL, NULL, 5, 0, 1, NULL, NULL),
(64, 'Metalico', 'Estante metálico 5 bandejas ', '', '<p><strong>INFORMACIONES DEL PRODUCTO</strong></p>\r\n\r\n<p><strong>CARACTER&Iacute;STICAS</strong></p>\r\n\r\n<p>-Altura: 2,00mts</p>\r\n\r\n<p>-Largo: 92cm</p>\r\n\r\n<p>-Profundidad: 30cm</p>\r\n', NULL, 0, NULL, NULL, 11, 0, 1, NULL, NULL),
(65, 'Tamburato 1700 5894', 'Mesa recta tamburato 1700 5894 ', '', '<p><strong>INFORMACIONES DEL PRODUCTO</strong></p>\r\n\r\n<p><br />\r\n&bull; Largo: 1,70mts</p>\r\n\r\n<p>&bull; Profundidad: 60cm</p>\r\n\r\n<p>&bull; Altura: 59cm</p>\r\n', NULL, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(66, 'Amazonas Paraguay', 'Amazonas Paraguay', '', '<p>Entrega a Amaszonas Paraguay - Agencia de Viajes</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(67, 'RDAN-100', 'Enfriador y dosificador de agua RDAN-100', '', '<p>&bull; C&oacute;digo: RDAN-100</p>\r\n\r\n<p>&bull; Enfriador y dosificador de agua</p>\r\n\r\n<p>&bull; Capacidad: 100lts</p>\r\n\r\n<p>&bull; Regulador de temperatura mec&aacute;nico</p>\r\n\r\n<p>&bull; Temperatura: 0&deg;C a 10&deg;C</p>\r\n\r\n<p>&bull; Cuerpo externo en acero inox</p>\r\n\r\n<p>&bull; Dep&oacute;sito de acero inox 304</p>\r\n\r\n<p>&bull; Accesorios: 3 grifos y bandeja colectora de agua</p>\r\n', 0, 0, NULL, NULL, 6, 0, 1, NULL, NULL),
(68, 'MFG150', 'Fabricadora de hielo MFG150', '', '<p>&bull; Largo: 90cm</p>\r\n\r\n<p>&bull; Profundidad: 62cm</p>\r\n\r\n<p>&bull; Altura: 1,17mts</p>\r\n\r\n<p>&bull; Altura total: 1,28mts</p>\r\n\r\n<p>&bull; Capacidad de producci&oacute;n: 150kg en 24hrs</p>\r\n\r\n<p>&bull; Indicadores LED de funcionalidad en el exterior de la m&aacute;quina</p>\r\n\r\n<p>&bull; Acompa&ntilde;a filtro y 2 metros de manguera</p>\r\n\r\n<p>&bull; Dep&oacute;sito con capacidad: 50kg de almacenamiento</p>\r\n\r\n<p>&bull; Aislamiento de puliuretano inyectado</p>\r\n\r\n<p>&bull; Revestimiento externo en acero inoxidable 304</p>\r\n\r\n<p>&bull; S&oacute;tano de almacenamiento en vacuum-form</p>\r\n\r\n<p>&bull; Regulador del tama&ntilde;o de los hielos: peque&ntilde;o, mediano y grande</p>\r\n\r\n<p>&bull; Estructura del mecanismo de transformaci&oacute;n (l&iacute;quido o s&oacute;lido) de acero inoxidable 304</p>\r\n\r\n<p>&bull; Antideslizantes pies de goma con ajuste de altura</p>\r\n\r\n<p>&bull; Para un perfecto funcionamiento, la m&aacute;quina debe ser instalada en ambiente con temperatura controlada en torno de 22&deg;C y limpio, siendo que la temperatura del agua, que entrar&aacute; a la m&aacute;quina no puede ultrapasar 22&deg;C</p>\r\n\r\n<p>&bull; La capacidad de producci&oacute;n de las m&aacute;quinas, estar&aacute; directamente relacionada a la temperatura ambiente , la temperatura del agua y la calidad del medio ambiente (Aire libre de harina, lejos de Hornos, totalmente protegido interperios, etc.) Donde las mismas ser&aacute;n instaladas.</p>\r\n', 0, 0, NULL, NULL, 10, 0, 0, NULL, NULL),
(69, 'MFG150', 'Fabricadora de hielo MFG150', '', '<p>&bull; Largo: 90cm</p>\r\n\r\n<p>&bull; Profundidad: 62cm</p>\r\n\r\n<p>&bull; Altura: 1,17mts</p>\r\n\r\n<p>&bull; Altura total: 1,28mts</p>\r\n\r\n<p>&bull; Capacidad de producci&oacute;n: 150kg en 24hrs</p>\r\n\r\n<p>&bull; Indicadores LED de funcionalidad en el exterior de la m&aacute;quina</p>\r\n\r\n<p>&bull; Acompa&ntilde;a filtro y 2 metros de manguera</p>\r\n\r\n<p>&bull; Dep&oacute;sito con capacidad: 50kg de almacenamiento</p>\r\n\r\n<p>&bull; Aislamiento de puliuretano inyectado</p>\r\n\r\n<p>&bull; Revestimiento externo en acero inoxidable 304</p>\r\n\r\n<p>&bull; S&oacute;tano de almacenamiento en vacuum-form</p>\r\n\r\n<p>&bull; Regulador del tama&ntilde;o de los hielos: peque&ntilde;o, mediano y grande</p>\r\n\r\n<p>&bull; Estructura del mecanismo de transformaci&oacute;n (l&iacute;quido o s&oacute;lido) de acero inoxidable 304</p>\r\n\r\n<p>&bull; Antideslizantes pies de goma con ajuste de altura</p>\r\n\r\n<p>&bull; Para un perfecto funcionamiento, la m&aacute;quina debe ser instalada en ambiente con temperatura controlada en torno de 22&deg;C y limpio, siendo que la temperatura del agua, que entrar&aacute; a la m&aacute;quina no puede ultrapasar 22&deg;C</p>\r\n\r\n<p>&bull; La capacidad de producci&oacute;n de las m&aacute;quinas, estar&aacute; directamente relacionada a la temperatura ambiente , la temperatura del agua y la calidad del medio ambiente (Aire libre de harina, lejos de Hornos, totalmente protegido interperios, etc.) Donde las mismas ser&aacute;n instaladas.</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(70, 'MFG75', 'Fabricadora de hielo MFG75', '', '<p>&bull; Largo: 56cm</p>\r\n\r\n<p>&bull; Profundidad: 62cm</p>\r\n\r\n<p>&bull; Altura: 1,17mts</p>\r\n\r\n<p>&bull; Altura total: 1,28mts</p>\r\n\r\n<p>&bull; Capacidad de producci&oacute;n: 75kg en 24hrs</p>\r\n\r\n<p>&bull; Indicadores LED de funcionalidad en el exterior de la m&aacute;quina</p>\r\n\r\n<p>&bull; Acompa&ntilde;a filtro y 2 metros de manguera</p>\r\n\r\n<p>&bull; Dep&oacute;sito con capacidad: 25kg de almacenamiento</p>\r\n\r\n<p>&bull; Aislamiento de puliuretano inyectado</p>\r\n\r\n<p>&bull; Revestimiento externo en acero inoxidable 304</p>\r\n\r\n<p>&bull; S&oacute;tano de almacenamiento en vacuum-form</p>\r\n\r\n<p>&bull; Regulador del tama&ntilde;o de los hielos: peque&ntilde;o, mediano y grande</p>\r\n\r\n<p>&bull; Estructura del mecanismo de transformaci&oacute;n (l&iacute;quido o s&oacute;lido) de acero inoxidable 304</p>\r\n\r\n<p>&bull; Antideslizantes pies de goma con ajuste de altura</p>\r\n\r\n<p>&bull; Para un perfecto funcionamiento, la m&aacute;quina debe ser instalada en ambiente con temperatura controlada en torno de 22&deg;C y limpio, siendo que la temperatura del agua, que entrar&aacute; a la m&aacute;quina no puede ultrapasar 22&deg;C</p>\r\n\r\n<p>&bull; La capacidad de producci&oacute;n de las m&aacute;quinas, estar&aacute; directamente relacionada a la temperatura ambiente , la temperatura del agua y la calidad del medio ambiente (Aire libre de harina, lejos de Hornos, totalmente protegido interperios, etc.) Donde las mismas ser&aacute;n instaladas.</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(71, 'MFG50', 'Fabricadora de hielo MFG50', '', '<p>&bull; Largo: 46cm</p>\r\n\r\n<p>&bull; Profundidad: 62cm</p>\r\n\r\n<p>&bull; Altura: 65cm</p>\r\n\r\n<p>&bull; Altura total: 77cm</p>\r\n\r\n<p>&bull; Capacidad de producci&oacute;n: 50kg en 24hrs</p>\r\n\r\n<p>&bull; Indicadores LED de funcionalidad en el interior de la m&aacute;quina</p>\r\n\r\n<p>&bull; Acompa&ntilde;a filtro y 2 metros de manguera</p>\r\n\r\n<p>&bull; Dep&oacute;sito con capacidad: 6kg de almacenamiento</p>\r\n\r\n<p>&bull; Aislamiento de puliuretano inyectado</p>\r\n\r\n<p>&bull; Revestimiento externo en acero inoxidable 304</p>\r\n\r\n<p>&bull; S&oacute;tano de almacenamiento en vacuum-form</p>\r\n\r\n<p>&bull; Regulador del tama&ntilde;o de los hielos: peque&ntilde;o, mediano y grande</p>\r\n\r\n<p>&bull; Estructura del mecanismo de transformaci&oacute;n (l&iacute;quido o s&oacute;lido) de acero inoxidable 304</p>\r\n\r\n<p>&bull; Antideslizantes pies de goma con ajuste de altura</p>\r\n\r\n<p>&bull; Para un perfecto funcionamiento, la m&aacute;quina debe ser instalada en ambiente con temperatura controlada en torno de 22&deg;C y limpio, siendo que la temperatura del agua, que entrar&aacute; a la m&aacute;quina no puede ultrapasar 22&deg;C</p>\r\n\r\n<p>&bull; La capacidad de producci&oacute;n de las m&aacute;quinas, estar&aacute; directamente relacionada a la temperatura ambiente , la temperatura del agua y la calidad del medio ambiente (Aire libre de harina, lejos de Hornos, totalmente protegido interperios, etc.) Donde las mismas ser&aacute;n instaladas.</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(72, 'VCCG600S', 'Autoservicios para congelados VCCG600S', '', '<p>&bull; Exposici&oacute;n de productos congelados</p>\r\n\r\n<p>&bull; Temperatura: 0&deg;C a 7&deg;C o -12&deg;C a &nbsp;-15&deg;c</p>\r\n\r\n<p>&bull; Refrigeraci&oacute;n: Est&aacute;tica</p>\r\n\r\n<p>&bull; Controlador de temperatura mec&aacute;nica de doble acci&oacute;n</p>\r\n\r\n<p>&bull; Estantes regulables</p>\r\n\r\n<p>&bull; Puertas con cierre autom&aacute;tico</p>\r\n\r\n<p>&bull; C&oacute;digo: VCCG600S</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(73, 'ASFl3000', 'Autoservicios fríos y lácteos ASFL3000', '', '<p>- Exposici&oacute;n de productos fr&iacute;os y l&aacute;cteos</p>\r\n\r\n<p>- Temperatura: 3&deg; a 10&deg;C</p>\r\n\r\n<p>- Refrigeraci&oacute;n: Aire forzado</p>\r\n\r\n<p>- Controlador de temperatura electr&oacute;nico&nbsp;</p>\r\n\r\n<p>- Iluminaci&oacute;n LED</p>\r\n\r\n<p>- Estantes regulables</p>\r\n\r\n<p>- C&oacute;digo fabricante: ASFL3000</p>\r\n\r\n<p>- Altura: 2,10mts</p>\r\n\r\n<p>- Largo: 2,90mts</p>\r\n\r\n<p>- Profundidad: 61cm</p>\r\n\r\n<p>- Volumen: 1950</p>\r\n\r\n<p>- Estante: 5</p>\r\n\r\n<p>- Puerta: 5</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(74, 'ASFL2000', 'Autoservicio fríos y lácteos ASFL2000', '', '<p>- Exposici&oacute;n de productos fr&iacute;os y l&aacute;cteos</p>\r\n\r\n<p>- Temperatura: 3&deg; a 10&deg;C</p>\r\n\r\n<p>- Refrigeraci&oacute;n: Aire forzado</p>\r\n\r\n<p>- Controlador de temperatura electr&oacute;nico&nbsp;</p>\r\n\r\n<p>- Iluminaci&oacute;n LED</p>\r\n\r\n<p>- Estantes regulables</p>\r\n\r\n<p>- C&oacute;digo fabricante: ASFL2000</p>\r\n\r\n<p>- Altura: 2,10mts</p>\r\n\r\n<p>- Largo: 1,80mts</p>\r\n\r\n<p>- Profundidad: 61cm</p>\r\n\r\n<p>- Volumen: 1260</p>\r\n\r\n<p>- Estante: 5</p>\r\n\r\n<p>- Puerta: 3</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(75, 'ASFL1240', 'Autoservicio fríos y lácteos ASFL1240', '', '<p>- Exposici&oacute;n de productos fr&iacute;os y l&aacute;cteos</p>\r\n\r\n<p>- Temperatura: 3&deg; a 10&deg;C</p>\r\n\r\n<p>- Refrigeraci&oacute;n: Aire forzado</p>\r\n\r\n<p>- Controlador de temperatura electr&oacute;nico&nbsp;</p>\r\n\r\n<p>- Iluminaci&oacute;n LED</p>\r\n\r\n<p>- Estantes regulables</p>\r\n\r\n<p>- C&oacute;digo fabricante: ASFL1240</p>\r\n\r\n<p>- Altura: 2,10mts</p>\r\n\r\n<p>- Largo: 1,24mts</p>\r\n\r\n<p>- Profundidad: 61cm</p>\r\n\r\n<p>- Volumen: 750</p>\r\n\r\n<p>- Estante: 5</p>\r\n\r\n<p>- Puerta: 2</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(76, 'ASAC1200', 'Auto atendimiento abierto conveniencia ASAC1200', '', '<p>Exposici&oacute;n de productos fr&iacute;os y l&aacute;cteos</p>\r\n\r\n<p>Temperatura: 3&deg; a 10&deg;C</p>\r\n\r\n<p>Refrigeraci&oacute;n: Aire forzado</p>\r\n\r\n<p>Controlador de temperatura electr&oacute;nico&nbsp;</p>\r\n\r\n<p>Iluminaci&oacute;n LED</p>\r\n\r\n<p>Estantes regulables</p>\r\n\r\n<p>Cortinas nocturnas</p>\r\n\r\n<p>C&oacute;digo fabricante: ASAC1200</p>\r\n\r\n<p>Altura: 1,89mts</p>\r\n\r\n<p>Largo: 1,20mts</p>\r\n\r\n<p>Profundidad: 85cm</p>\r\n\r\n<p>Volumen: 930</p>\r\n\r\n<p>Estante: 4</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(77, 'ASAC900', 'Auto atendimiento abierto conveniencia ASAC900', '', '<p>Exposici&oacute;n de productos fr&iacute;os y l&aacute;cteos</p>\r\n\r\n<p>Temperatura: 3&deg; a 10&deg;C</p>\r\n\r\n<p>Refrigeraci&oacute;n: Aire forzado</p>\r\n\r\n<p>Controlador de temperatura electr&oacute;nico&nbsp;</p>\r\n\r\n<p>Iluminaci&oacute;n LED</p>\r\n\r\n<p>Estantes regulables</p>\r\n\r\n<p>Cortinas nocturnas</p>\r\n\r\n<p>C&oacute;digo fabricante: ASAC900</p>\r\n\r\n<p>Altura: 1,89mts</p>\r\n\r\n<p>Largo: 90cm</p>\r\n\r\n<p>Profundidad: 85cm</p>\r\n\r\n<p>Volumen: 600</p>\r\n\r\n<p>Estante: 4</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(78, 'Autoservicio', 'Autoservicios Bebidas', '', '', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(79, 'VCM400', 'Visa cooler multiuso VCM400', '', '<p>&bull; C&oacute;digo: VCM400</p>\r\n\r\n<p>&bull; Refrigeraci&oacute;n: Aire forzado</p>\r\n\r\n<p>&bull; Controlador de temperatura: &nbsp;termostato m&eacute;canico</p>\r\n\r\n<p>&bull; Iluminaci&oacute;n: LED &nbsp;fijada en la parte interna superior</p>\r\n\r\n<p>&bull; Temperatura: 2&deg;C a 6&deg;C</p>\r\n\r\n<p>&bull; Altura: 2,01mts</p>\r\n\r\n<p>&bull; Largo: 59cm</p>\r\n\r\n<p>&bull; Profundidad: 61cm</p>\r\n\r\n<p>&bull; Puerta de vidrio templado doble con gas arg&oacute;n</p>\r\n\r\n<p>&bull; Estantes de malla de alambre de tres niveles con pintura epoxi blanca, con ajuste de altura</p>\r\n\r\n<p>&bull; Pies regulables</p>\r\n\r\n<p>&bull; Vidrio sujeto a condensaci&oacute;n dependiendo de la variaci&oacute;n&nbsp;</p>\r\n\r\n<p>de la humedad relativa</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(80, 'VCC400S', 'Visa cooler para cerveza puerta solida VCC400S', '', '<p>&bull; C&oacute;digo: VCC-400S</p>\r\n\r\n<p>&bull; Altura: 1,92mts</p>\r\n\r\n<p>&bull; Largo: 72cm</p>\r\n\r\n<p>&bull; Profundidad: 60cm</p>\r\n\r\n<p>&bull; Puerta s&oacute;lida: 1</p>\r\n\r\n<p>&bull; Estante: 4</p>\r\n\r\n<p>&bull; Volumen: 400</p>\r\n\r\n<p>&bull; Utilizaci&oacute;n: enfriamiento de cerveza</p>\r\n\r\n<p>&bull; Temperatura: -5,5&deg;C a -7,5&deg;C</p>\r\n\r\n<p>&bull; Refrigeraci&oacute;n: aire forzado</p>\r\n\r\n<p>&bull; Controlador &nbsp;de temperatura electr&oacute;nico digital</p>\r\n\r\n<p>&bull; Iluminaci&oacute;n LED</p>\r\n\r\n<p>&bull; Puertas con cierre autom&aacute;tico</p>\r\n\r\n<p>&bull; Estantes regulables</p>\r\n\r\n<p>&bull; Patas regulables</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(81, 'VCC600S', 'Visa cooler para cerveza puerta solida VCC600S', '', '<p>&bull; C&oacute;digo: VCC-600S</p>\r\n\r\n<p>&bull; Altura: 2,08mts</p>\r\n\r\n<p>&bull; Largo: 72cm</p>\r\n\r\n<p>&bull; Profundidad: 74cm</p>\r\n\r\n<p>&bull; Puerta s&oacute;lida: 1</p>\r\n\r\n<p>&bull; Estante: 4</p>\r\n\r\n<p>&bull; Volumen: 600</p>\r\n\r\n<p>&bull; Utilizaci&oacute;n: enfriamiento de cerveza</p>\r\n\r\n<p>&bull; Temperatura: -5,5&deg;C a -7,5&deg;C</p>\r\n\r\n<p>&bull; Refrigeraci&oacute;n: aire forzado</p>\r\n\r\n<p>&bull; Controlador &nbsp;de temperatura electr&oacute;nico digital</p>\r\n\r\n<p>&bull; Iluminaci&oacute;n LED</p>\r\n\r\n<p>&bull; Puertas con cierre autom&aacute;tico</p>\r\n\r\n<p>&bull; Estantes regulables</p>\r\n\r\n<p>&bull; Patas regulables</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(82, 'VCEXF1300', 'Visa cooler extra frio VCEXF1300', '', '<p>Conservaci&oacute;n de cervezas o carnes envasadas</p>\r\n\r\n<p>C&oacute;digo fabricante: VCEXF1300</p>\r\n\r\n<p>Altura: 2,08mts</p>\r\n\r\n<p>Largo: 1,44mts</p>\r\n\r\n<p>Profundidad: 74cm</p>\r\n\r\n<p>Puerta: 2</p>\r\n\r\n<p>Volumen: 1300</p>\r\n\r\n<p>Estante: 5</p>\r\n\r\n<p>Carga 1000ml: 250</p>\r\n\r\n<p>Carga lata: 1134</p>\r\n\r\n<p>Temperatura: -5&deg;C</p>\r\n\r\n<p>Refrigeraci&oacute;n: Aire forzado</p>\r\n\r\n<p>Controlador de temperatura&nbsp;</p>\r\n\r\n<p>electr&oacute;nico digital</p>\r\n\r\n<p>Iluminaci&oacute;n LED</p>\r\n\r\n<p>Estantes regulables</p>\r\n\r\n<p>Puerta con cerre autom&aacute;tico</p>\r\n\r\n<p>Doble vidrio</p>\r\n\r\n<p><br />\r\nPatas regulables</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(83, 'VCEXF600', 'Visa cooler extra frio VCEXF600', '', '<p>Conservaci&oacute;n de cervezas o carnes envasadas</p>\r\n\r\n<p>C&oacute;digo fabricante: VCEXF600</p>\r\n\r\n<p>Altura: 2,08mts</p>\r\n\r\n<p>Largo: 72cm</p>\r\n\r\n<p>Profundidad: 74cm</p>\r\n\r\n<p>Puerta: 1</p>\r\n\r\n<p>Volumen: 600</p>\r\n\r\n<p>Estante: 5</p>\r\n\r\n<p>Carga 1000ml: 125</p>\r\n\r\n<p>Carga lata: 567</p>\r\n\r\n<p>Temperatura: -5&deg;C</p>\r\n\r\n<p>Refrigeraci&oacute;n: Aire forzado</p>\r\n\r\n<p>Controlador de temperatura&nbsp;</p>\r\n\r\n<p>electr&oacute;nico digital</p>\r\n\r\n<p>Iluminaci&oacute;n LED</p>\r\n\r\n<p>Estantes regulables</p>\r\n\r\n<p>Puerta con cerre autom&aacute;tico</p>\r\n\r\n<p>Doble vidrio</p>\r\n\r\n<p><br />\r\nPatas regulables</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(84, 'VCEXF410', 'Visa cooler extra frio VCEXF410', '', '<p>Conservaci&oacute;n de cervezas o carnes&nbsp;envasadas</p>\r\n\r\n<p>C&oacute;digo fabricante: VCEXF410</p>\r\n\r\n<p>Altura: 1,92mts</p>\r\n\r\n<p>Largo: 72cm</p>\r\n\r\n<p>Profundidad: 60cm</p>\r\n\r\n<p>Puerta: 1</p>\r\n\r\n<p>Volumen: 410</p>\r\n\r\n<p>Estante: 4</p>\r\n\r\n<p>Carga 1000ml: 91</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Carga lata: 378</p>\r\n\r\n<p>Temperatura: -5&deg;C</p>\r\n\r\n<p>Refrigeraci&oacute;n: Aire forzado</p>\r\n\r\n<p>Controlador de temperatura&nbsp;</p>\r\n\r\n<p>electr&oacute;nico digital</p>\r\n\r\n<p>Iluminaci&oacute;n LED</p>\r\n\r\n<p>Estantes regulables</p>\r\n\r\n<p>Puerta con cerre autom&aacute;tico</p>\r\n\r\n<p>Doble vidrio</p>\r\n\r\n<p>Patas regulables</p>\r\n\r\n<p>Frio y seco</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(85, 'VMC1300', 'Visa cooler multiuso VMC1300', '', '<p>C&oacute;digo f&aacute;bricante: VCM1300</p>\r\n\r\n<p>-Exposici&oacute;n de bebidas,productos fr&iacute;os y l&aacute;cteos</p>\r\n\r\n<p>-Temperatura: 0&deg;C a 7&deg;C</p>\r\n\r\n<p>-Refrigeraci&oacute;n: Aire forzado</p>\r\n\r\n<p>-Controladodor de temperatura: termostato mec&aacute;nico o electr&oacute;nico digital</p>\r\n\r\n<p>-Iluminaci&oacute;n fluorescente</p>\r\n\r\n<p>-Patas regulables</p>\r\n\r\n<p>-Puertas con cierre autom&aacute;tico</p>\r\n\r\n<p>-Doble vidrio</p>\r\n\r\n<p>-Estante regulable</p>\r\n\r\n<p>-Altura: 2,05mts</p>\r\n\r\n<p>-Largo: 1,44mts</p>\r\n\r\n<p>-Profundidad: 75cm</p>\r\n\r\n<p>- 2 Puertas</p>\r\n\r\n<p>-Estante: 4</p>\r\n\r\n<p>-1300 Litros</p>\r\n\r\n<p>-Fr&iacute;o y seco</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(86, 'VMC3P', 'Visa cooler multiuso VMC3P', '', '<p>-C&oacute;digo f&aacute;bricante: VCM3P</p>\r\n\r\n<p>-Exposici&oacute;n de bebidas,productos fr&iacute;os y l&aacute;cteos</p>\r\n\r\n<p>-Temperatura: 0&deg;C a 7&deg;C</p>\r\n\r\n<p>-Refrigeraci&oacute;n: Aire forzado</p>\r\n\r\n<p>-Controladodor de temperatura: termostato mec&aacute;nico o electr&oacute;nico digital</p>\r\n\r\n<p>-Iluminaci&oacute;n fluorescente</p>\r\n\r\n<p>-Patas regulables</p>\r\n\r\n<p>-Puertas con cierre autom&aacute;tico</p>\r\n\r\n<p>-Doble vidrio</p>\r\n\r\n<p>-Estante regulable</p>\r\n\r\n<p>-Altura: 2,08mts</p>\r\n\r\n<p>-Largo: 2,18mts</p>\r\n\r\n<p>-Profundidad: 77cm</p>\r\n\r\n<p>- 3 Puertas</p>\r\n\r\n<p>-Estante: 3</p>\r\n\r\n<p>-2000 Litros</p>\r\n\r\n<p>-Fr&iacute;o y seco</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(87, 'home wine', 'Visa cooler Adega home wine 230 Litros', '', '<p>&bull; C&oacute;digo fabricante: AHW230</p>\r\n\r\n<p>&bull; Utilizaci&oacute;n: Enfriamiento de vinos</p>\r\n\r\n<p>&bull; Temperatura: 4&deg;C a 20&deg;C</p>\r\n\r\n<p>&bull; Refrigeraci&oacute;n: Est&aacute;tica. Placa fr&iacute;a</p>\r\n\r\n<p>&bull; Controlador de temperatura electr&oacute;nico digital</p>\r\n\r\n<p>&bull; Iluminaci&oacute;n LED azul</p>\r\n\r\n<p>&bull; Capacidad: 230 litros</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(88, 'home wine', 'Visa cooler Adega home wine 130 Litros', '', '<p>&bull; C&oacute;digo fabricante: AHW130</p>\r\n\r\n<p>&bull; Utilizaci&oacute;n: Enfriamiento de vinos</p>\r\n\r\n<p>&bull; Temperatura: 4&deg;C a 20&deg;C</p>\r\n\r\n<p>&bull; Refrigeraci&oacute;n: Est&aacute;tica. Placa fr&iacute;a</p>\r\n\r\n<p>&bull; Controlador de temperatura electr&oacute;nico digital</p>\r\n\r\n<p>&bull; &nbsp;Iluminaci&oacute;n LED azul</p>\r\n\r\n<p><br />\r\n&bull; Capacidad: 130 litros</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(89, 'home wine', 'Visa cooler Adega home wine 86 Litros', '', '<p>&bull; C&oacute;digo fabricante: AHW86</p>\r\n\r\n<p>&bull; Utilizaci&oacute;n: Enfriamiento de vinos</p>\r\n\r\n<p>&bull; Temperatura: 4&deg;C a 20&deg;C</p>\r\n\r\n<p>&bull; Refrigeraci&oacute;n: Est&aacute;tica. Placa fr&iacute;a</p>\r\n\r\n<p>&bull; Controlador de temperatura electr&oacute;nico digital</p>\r\n\r\n<p>&bull; &nbsp;Iluminaci&oacute;n LED azul</p>\r\n\r\n<p>&bull; Capacidad: 86 litros</p>\r\n', 0, 0, NULL, NULL, 6, 0, 1, NULL, NULL),
(90, 'Slim home beer', 'Visa cooler Slim home beer puerta de vidrio 230L', '', '<p>&bull; Puerta de vidrio</p>\r\n\r\n<p>&bull; Utilizaci&oacute;n: Enfriamiento de cerveza</p>\r\n\r\n<p>&bull; Temperatura: -5,5 &deg;C a -2,5 &deg;C</p>\r\n\r\n<p>&bull; Refrigeraci&oacute;n: aire forzado</p>\r\n\r\n<p>&bull; Controlador de temperatura electr&oacute;nico digital</p>\r\n\r\n<p><br />\r\n&bull; Capacidad: 230 litros</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(91, 'Slim home beer ', 'Visa cooler Slim home beer puerta de vidrio 130L', '', '<p>&bull; Puerta de vidrio</p>\r\n\r\n<p>&bull; Utilizaci&oacute;n: Enfriamiento de cerveza</p>\r\n\r\n<p>&bull; Temperatura: -5,5 &deg;C a -2,5 &deg;C</p>\r\n\r\n<p>&bull; Refrigeraci&oacute;n: aire forzado</p>\r\n\r\n<p>&bull; Controlador de temperatura electr&oacute;nico digital</p>\r\n\r\n<p><br />\r\n&bull; Capacidad: 130 litros</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(92, 'Slim home beer', 'Visa cooler Slim home beer puerta de vidrio 86L', '', '<p>&bull; Puerta de vidrio</p>\r\n\r\n<p>&bull; Utilizaci&oacute;n: Enfriamiento de cerveza</p>\r\n\r\n<p>&bull; Temperatura: -5,5 &deg;C a -2,5 &deg;C</p>\r\n\r\n<p>&bull; Refrigeraci&oacute;n: aire forzado</p>\r\n\r\n<p>&bull; Controlador de temperatura electr&oacute;nico digital</p>\r\n\r\n<p><br />\r\n&bull; Capacidad: 86 litros</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(93, 'Slim home beer', 'Visa cooler Slim home beer puerta solida 230L', '', '<p>&bull; Puerta solida</p>\r\n\r\n<p>&bull; Utilizaci&oacute;n: Enfriamiento de cerveza</p>\r\n\r\n<p>&bull; Temperatura: -5,5 &deg;C a -2,5 &deg;C</p>\r\n\r\n<p>&bull; Refrigeraci&oacute;n: aire forzado</p>\r\n\r\n<p>&bull; Controlador de temperatura electr&oacute;nico digital</p>\r\n\r\n<p><br />\r\n&bull; Capacidad: 230 litros</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(94, 'Slim home beer', 'Visa cooler Slim home beer puerta solida 130L', '', '<p>&bull; Puerta solida</p>\r\n\r\n<p>&bull; Utilizaci&oacute;n: Enfriamiento de cerveza</p>\r\n\r\n<p>&bull; Temperatura: -5,5 &deg;C a -2,5 &deg;C</p>\r\n\r\n<p>&bull; Refrigeraci&oacute;n: aire forzado</p>\r\n\r\n<p>&bull; Controlador de temperatura electr&oacute;nico digital</p>\r\n\r\n<p>&bull; Capacidad: 130 litros</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(95, 'Slim home beer', 'Visa cooler Slim home beer puerta solida 86L', '', '<p>&bull; Puerta solida</p>\r\n\r\n<p>&bull; Utilizaci&oacute;n: Enfriamiento de cerveza</p>\r\n\r\n<p>&bull; Temperatura: -5,5 &deg;C a -2,5 &deg;C</p>\r\n\r\n<p>&bull; Refrigeraci&oacute;n: aire forzado</p>\r\n\r\n<p>&bull; Controlador de temperatura electr&oacute;nico digital</p>\r\n\r\n<p>&bull; Capacidad: 86 litros</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(96, 'BBP1000', 'Balcón de pesaje línea plus BBP1000', '', '<p>&bull; Estructura en chapa de acero con pintura blanca anticorrosiva</p>\r\n\r\n<p>&bull; Largo: 1,00mts</p>\r\n\r\n<p>&bull; Altura: 84cm</p>\r\n\r\n<p>&bull; Profundidad: 71cm</p>\r\n\r\n<p>&bull; Utilizaci&oacute;n: Para balanzas</p>\r\n', 0, 0, NULL, NULL, 10, 0, 0, NULL, NULL),
(97, 'MCP2800', 'Mini cámara para carnes línea plus MCP2800', '', '<p>&bull; Utilizaci&oacute;n: Almacenamiento y refrigeraci&oacute;n de carnes</p>\r\n\r\n<p>&bull; Temperatura: 0&deg;C a 5&deg;C</p>\r\n\r\n<p>&bull; Refrigeraci&oacute;n: Aire forzado</p>\r\n\r\n<p>&bull; Controlador de temperatura electr&oacute;nico digital</p>\r\n\r\n<p>&bull; Puertas con cierre autom&aacute;tico</p>\r\n\r\n<p>&bull; Gancheras en tubo de acero galbanizado</p>\r\n\r\n<p>&bull; Patas regulables</p>\r\n\r\n<p>&bull; Volumen: 2651</p>\r\n\r\n<p>&bull; Puerta: 3</p>\r\n\r\n<p>&bull; Largo: 2,31mts</p>\r\n\r\n<p>&bull; Altura: 2,15mts</p>\r\n\r\n<p>&bull; Profundidad: 91cm</p>\r\n', 0, 0, NULL, NULL, 6, 0, 1, NULL, NULL),
(98, 'MCP1800', 'Mini cámara para carnes línea plus MCP1800', '', '<p>&bull; Utilizaci&oacute;n: Almacenamiento y refrigeraci&oacute;n de carnes</p>\r\n\r\n<p>&bull; Temperatura: 0&deg;C a 5&deg;C</p>\r\n\r\n<p>&bull; Refrigeraci&oacute;n: Aire forzado</p>\r\n\r\n<p>&bull; Controlador de temperatura electr&oacute;nico digital</p>\r\n\r\n<p>&bull; Puertas con cierre autom&aacute;tico</p>\r\n\r\n<p>&bull; Gancheras en tubo de acero galbanizado</p>\r\n\r\n<p>&bull; Patas regulables</p>\r\n\r\n<p>&bull; Volumen: 1755</p>\r\n\r\n<p>&bull; Puerta: 2</p>\r\n\r\n<p>&bull; Largo: 1,55mts</p>\r\n\r\n<p>&bull; Altura: 2,15mts</p>\r\n\r\n<p>&bull; Profundidad: 91cm</p>\r\n', 0, 0, NULL, NULL, 6, 0, 1, NULL, NULL),
(99, 'MCP1350', 'Mini cámara para carnes línea plus MCP1350', '', '<p>&bull; Utilizaci&oacute;n: Almacenamiento y refrigeraci&oacute;n de carnes</p>\r\n\r\n<p>&bull; Temperatura: 0&deg;C a 5&deg;C</p>\r\n\r\n<p>&bull; Refrigeraci&oacute;n: Aire forzado</p>\r\n\r\n<p>&bull; Controlador de temperatura electr&oacute;nico digital</p>\r\n\r\n<p>&bull; Puertas con cierre autom&aacute;tico</p>\r\n\r\n<p>&bull; Gancheras en tubo de acero galbanizado</p>\r\n\r\n<p>&bull; Patas regulables</p>\r\n\r\n<p>&bull; Volumen: 1200</p>\r\n\r\n<p>&bull; Puerta: 1</p>\r\n\r\n<p>&bull; Largo: 1,18mts</p>\r\n\r\n<p>&bull; Altura: 2,15mts</p>\r\n\r\n<p>&bull; Profundidad: 91cm</p>\r\n', 0, 0, NULL, NULL, 6, 0, 1, NULL, NULL),
(100, 'ACIE-15', 'Ablandador de Carne ACIE-15', '', '<p>&bull; Capacidad de producci&oacute;n: 150kg / hora</p>\r\n\r\n<p>&bull; Cuchillas en acero inox&nbsp;</p>\r\n\r\n<p>&bull; Gabinete y tapa en acero inox</p>\r\n\r\n<p>&bull; C&oacute;digo: ACIE-15</p>\r\n\r\n<p>&bull; Largo: 25cm</p>\r\n\r\n<p>&bull; Altura: 47cm</p>\r\n\r\n<p>&bull; Profundidad: 37cm</p>\r\n\r\n<p>&bull; Moto: 1/2 HP</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(101, 'MCIE-98', 'Moledor de Carne MCIE-98', '', '<p>&bull; C&oacute;digo: MCIE-98</p>\r\n\r\n<p>&bull; Altura: 53cm</p>\r\n\r\n<p>&bull; Largo: 39cm</p>\r\n\r\n<p>&bull; Profundidad: 83cm</p>\r\n\r\n<p>&bull; Motor: 3 HP</p>\r\n\r\n<p>&bull; Potencia: 2208W</p>\r\n\r\n<p>&bull; Producci&oacute;n m&aacute;x: 500 kg</p>\r\n\r\n<p>&bull; Discos: 5mm y 8mm</p>\r\n\r\n<p>&bull; Bandeja en acero inox</p>\r\n\r\n<p>&bull; Bocal y caracol en hierro fundido</p>\r\n\r\n<p>&bull; Estructura en chapa de acero inox</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(102, 'MCIE-22', 'Moledor de carne MCIE-22', '', '<p>&bull; C&oacute;digo: MCIE-22</p>\r\n\r\n<p>&bull; Altura: 45cm</p>\r\n\r\n<p>&bull; Largo: 33cm</p>\r\n\r\n<p>&bull; Profundidad: 70cm</p>\r\n\r\n<p>&bull; Motor: 1 HP</p>\r\n\r\n<p>&bull; Potencia: 736W</p>\r\n\r\n<p>&bull; Producci&oacute;n m&aacute;x: 300 kg</p>\r\n\r\n<p>&bull; Discos: 5mm y 8mm</p>\r\n\r\n<p>&bull; Bandeja en acero inox</p>\r\n\r\n<p>&bull; Bocal y caracol en hierro fundido</p>\r\n\r\n<p>&bull; Estructura en chapa de acero inox</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(103, 'MCIE-10', 'Moledor de carnes MCIE-10', '', '<p>&bull; C&oacute;digo: MCIE-10</p>\r\n\r\n<p>&bull; Altura: 41cm</p>\r\n\r\n<p>&bull; Largo: 31cm</p>\r\n\r\n<p>&bull; Profundidad: 53cm</p>\r\n\r\n<p>&bull; Motor: &frac12; HP</p>\r\n\r\n<p>&bull; Potencia: 368W</p>\r\n\r\n<p>&bull; Producci&oacute;n m&aacute;x: 100 kg</p>\r\n\r\n<p>&bull; Discos: 5mm y 8mm</p>\r\n\r\n<p>&bull; Bandeja en acero inox</p>\r\n\r\n<p>&bull; Bocal y caracol en hierro fundido</p>\r\n\r\n<p>&bull; Estructura en chapa de acero inox</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(104, 'MSBPE180', 'Mini sierra carnicera para carnes y cartílagos con molino MSBPE180', '', '<p>&bull; M&oacute;delo: MSBPE-180</p>\r\n\r\n<p>&bull; Altura: 80cm</p>\r\n\r\n<p>&bull; Profundidad: 62cm</p>\r\n\r\n<p>&bull; Largo: 75cm</p>\r\n\r\n<p>&bull; Motor: &frac12; HP</p>\r\n\r\n<p>&bull; Con molino</p>\r\n\r\n<p>&bull; Estructura en chapa de acero inoxidable<br />\r\n&bull; L&aacute;mina de corte de 1,80mts en acero inoxidable<br />\r\n&bull; Mesada fija en acero inox con gu&iacute;a</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(105, 'MSBE-180', 'Mini sierra carnicera para carnes y cartílagos MSBE-180', '', '<p>&bull; M&oacute;delo: MSBE-180</p>\r\n\r\n<p>&bull; Altura: 80cm</p>\r\n\r\n<p>&bull; Profundidad: 62cm</p>\r\n\r\n<p>&bull; Largo: 62cm</p>\r\n\r\n<p>&bull; Motor: &frac12; HP</p>\r\n\r\n<p>&bull; Estructura en chapa de acero inoxidable<br />\r\n&bull; L&aacute;mina de corte de 1,80mts en acero inoxidable<br />\r\n&bull; Mesada fija en acero inox con gu&iacute;a</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(106, 'STIE325', 'Sierra carnicera Inox para carnes y huesos STIE325', '', '<p>&bull; M&oacute;delo: STIE-325</p>\r\n\r\n<p>&bull; Altura: 1,85mts</p>\r\n\r\n<p>&bull; Profundidad: 90cm</p>\r\n\r\n<p>&bull; Largo: 91cm</p>\r\n\r\n<p>&bull; Motor: 2 HP</p>\r\n\r\n<p>&bull; Estructura en chapa de acero inoxidable<br />\r\n&bull; L&aacute;mina de corte de 3,25mts en acero inoxidable<br />\r\n&bull; Mesada m&oacute;vil en acero inox con gu&iacute;a<br />\r\n&bull; Poleas en hierro fundido</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(107, 'SBE282', 'Sierra carnicera para carnes y huesos SBE282', '', '<p>&bull; M&oacute;delo: SBE-282</p>\r\n\r\n<p>&bull; Altura: 1,75mts</p>\r\n\r\n<p>&bull; Profundidad: 80cm</p>\r\n\r\n<p>&bull; Largo: 79cm</p>\r\n\r\n<p>&bull; Motor: 1 HP</p>\r\n\r\n<p>&bull; Estructura en chapa de acero inoxidable<br />\r\n&bull; L&aacute;mina de corte de 2,82mts en acero inoxidable<br />\r\n&bull; Mesada m&oacute;vil en acero inox con gu&iacute;a<br />\r\n&bull; Poleas en hierro fundido</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(108, 'Embutidor', 'Embutidor de chorizos', '', '<p>&bull; Modelo: EL-8</p>\r\n\r\n<p>&bull; Capacidad por operaci&oacute;n: 8 kg</p>\r\n\r\n<p>&bull; Accionamiento manual</p>\r\n\r\n<p>&bull; Estructura en hierro fundido</p>\r\n\r\n<p>&bull; Ca&ntilde;on en acero inoxidable</p>\r\n\r\n<p>&bull; 3 Moldes embutidores</p>\r\n\r\n<p>&bull; Largo: 35cm</p>\r\n\r\n<p>&bull; Alto: 75cm</p>\r\n\r\n<p>&bull; Profundidad: 30cm</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(109, 'EAP', 'Linea EAP', '', '<p>&bull; Altura: 1,45mts</p>\r\n\r\n<p>&bull; Largo: 1,50mts, 2,00mts y 3,00mts</p>\r\n\r\n<p>&bull; Profundidad: 84cm</p>\r\n\r\n<p>&bull; Colores opcionales</p>\r\n\r\n<p><br />\r\n&nbsp;Especificaciones&nbsp;</p>\r\n\r\n<p>&bull; Utilizaci&oacute;n: Exhibidor de carnes</p>\r\n\r\n<p>&bull; Temperatura: 3&deg;C a 10&deg;C</p>\r\n\r\n<p>&bull; Refrigeraci&oacute;n: Serpentina superior y placa fr&iacute;a inferior</p>\r\n\r\n<p>&bull; Controlador de temperatura m&eacute;canica</p>\r\n\r\n<p>&bull; Ganchera superior</p>\r\n\r\n<p>&bull; Dep&oacute;sito incorporado</p>\r\n\r\n<p>&bull; Iluminaci&oacute;n fluorescente</p>\r\n\r\n<p>&bull; Obs: Vidrios sujetos a condensaci&oacute;n conforme a variaci&oacute;n de la humedad relativa del ambiente.<br />\r\n&nbsp;</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(110, 'APAS2000', 'Armario para panes APAS2000', '', '<p>&bull; Iluminaci&oacute;n fluorescente</p>\r\n\r\n<p>&bull; 100% laminado 15mm&nbsp;</p>\r\n\r\n<p>&bull; Largo: 1,00mts</p>\r\n\r\n<p>&bull; Altura: 1,87mts</p>\r\n\r\n<p>&bull; Profundidad: 67cm</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(111, 'APTU2000', 'Armario para panes APTU2000', '', '<p>&bull; Iluminaci&oacute;n fluorescente</p>\r\n\r\n<p>&bull; 100% laminado 15mm&nbsp;</p>\r\n\r\n<p>&bull; Largo: 2,00mts</p>\r\n\r\n<p>&bull; Altura: 2,00mts</p>\r\n\r\n<p>&bull; Profundidad: 75cm</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(112, 'AIPP2000', 'Isla para panes AIPP2000', '', '<p>&bull; 100% laminado 15mm&nbsp;</p>\r\n\r\n<p>&bull; Largo: 1,00mts</p>\r\n\r\n<p>&bull; Altura: 1,18mts</p>\r\n\r\n<p>&bull; Profundidad: 95cm</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(113, 'APC2000', 'Armario para panes APC2000', '', '<p>&bull; Iluminaci&oacute;n fluorescente</p>\r\n\r\n<p>&bull; 100% laminado 15mm&nbsp;</p>\r\n\r\n<p>&bull; Largo: 1,00mts</p>\r\n\r\n<p>&bull; Altura: 1,87mts</p>\r\n\r\n<p>&bull; Profundidad: 67cm</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(114, 'ASTPPG2000', 'Armario para panes ASTPPG2000', '', '<p>&bull; Iluminaci&oacute;n fluorescente</p>\r\n\r\n<p>&bull; 100% laminado 15mm&nbsp;</p>\r\n\r\n<p>&bull; Largo: 1,00mts</p>\r\n\r\n<p>&bull; Altura: 2,21mts</p>\r\n\r\n<p>&bull; Profundidad: 56cm</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(115, 'APTE1000', 'Armario para espetos APTE1000', '', '<p>&bull; Iluminaci&oacute;n fluorescente</p>\r\n\r\n<p>&bull; 100% laminado 15mm&nbsp;</p>\r\n\r\n<p>&bull; Largo: 1,00mts</p>\r\n\r\n<p>&bull; Altura: 2,21mts</p>\r\n\r\n<p>&bull; Profundidad: 55cm</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(116, 'APD1000', 'Armario de defumados APD1000', '', '<p>&bull; Iluminaci&oacute;n fluorescente</p>\r\n\r\n<p>&bull; 100% laminado 15mm&nbsp;</p>\r\n\r\n<p>&bull; Largo: 1,00mts</p>\r\n\r\n<p>&bull; Altura: 2,21mts</p>\r\n\r\n<p>&bull; Profundidad: 55cm</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(117, 'APT1000', 'Armario para temperos APT1000', '', '<p>&bull; Iluminaci&oacute;n fluorescente</p>\r\n\r\n<p>&bull; 100% laminado 15mm&nbsp;</p>\r\n\r\n<p>&bull; Largo: 1,00mts</p>\r\n\r\n<p>&bull; Altura: 2,21mts</p>\r\n\r\n<p>&bull; Profundidad: 55cm</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(118, 'APC1000', 'Armario para carbón APC1000', '', '<p>&bull; Iluminaci&oacute;n fluorescente</p>\r\n\r\n<p>&bull; 100% laminado 15mm&nbsp;</p>\r\n\r\n<p>&bull; Largo: 1,00mts</p>\r\n\r\n<p>&bull; Altura: 2,21mts</p>\r\n\r\n<p>&bull; Profundidad: 55cm</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(119, 'AAC1000', 'Bodega mixta para vinos AAC1000', '', '<p>&bull; Iluminaci&oacute;n fluorescente</p>\r\n\r\n<p>&bull; 100% laminado 15mm&nbsp;</p>\r\n\r\n<p>&bull; Largo: 1,00mts</p>\r\n\r\n<p>&bull; Altura: 2,21mts</p>\r\n\r\n<p>&bull; Profundidad: 55cm</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(120, 'AAB1000', 'Bodega tonel para vino AAB1000', '', '<p>&bull; Iluminaci&oacute;n fluorescente</p>\r\n\r\n<p>&bull; 100% laminado 15mm&nbsp;</p>\r\n\r\n<p>&bull; Largo: 1,00mts</p>\r\n\r\n<p>&bull; Altura: 2,21mts</p>\r\n\r\n<p>&bull; Profundidad: 55cm</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(121, 'AAI2000', 'Isla para vinos AAI2000', '', '<p>&bull; Iluminaci&oacute;n fluorescente</p>\r\n\r\n<p>&bull; 100% laminado 15mm&nbsp;</p>\r\n\r\n<p>&bull; Largo: 2,00mts</p>\r\n\r\n<p>&bull; Altura: 1,18mts</p>\r\n\r\n<p>&bull; Profundidad: 95cm</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(122, 'AAP1000', 'Bodega estante para vinos AAP1000', '', '<p>&bull; Iluminaci&oacute;n fluorescente</p>\r\n\r\n<p>&bull; 100% laminado 15mm&nbsp;</p>\r\n\r\n<p>&bull; Largo: 1,00mts</p>\r\n\r\n<p>&bull; Altura: 2,21mts</p>\r\n\r\n<p>&bull; Profundidad: 55cm</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(123, 'AAV1000', 'Bodega vertical para vinos AAV10000', '', '<p>&bull; Iluminaci&oacute;n fluorescente</p>\r\n\r\n<p>&bull; 100% laminado 15mm&nbsp;</p>\r\n\r\n<p>&bull; Largo: 1,00mts</p>\r\n\r\n<p>&bull; Altura: 2,21mts</p>\r\n\r\n<p>&bull; Profundidad: 55cm</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(124, 'VNPE730', 'Vitrina new panorámica estufa VNPE730', '', '<p>&bull; C&oacute;digo: &nbsp;VNPE730</p>\r\n\r\n<p>&bull; Exposici&oacute;n de productos salados</p>\r\n\r\n<p>&bull; Temperatura: &nbsp;60&deg;C</p>\r\n\r\n<p>&bull; Largo: 73cm</p>\r\n\r\n<p>&bull; Altura: &nbsp;1,13mts</p>\r\n\r\n<p>&bull; Profundidad: 70cm</p>\r\n\r\n<p>&bull; &nbsp;Patas regulables</p>\r\n\r\n<p>&bull; Resistencia el&eacute;ctrica</p>\r\n\r\n<p>&bull; Bandejas inox</p>\r\n', 0, 0, NULL, NULL, 6, 0, 1, NULL, NULL),
(125, 'VNPS1260', 'Vitrina new panorámica seca VNPS1260', '', '<p>&bull; C&oacute;digo: &nbsp;VNPS1260</p>\r\n\r\n<p>&bull; Exposici&oacute;n de productos secos</p>\r\n\r\n<p>&bull; Temperatura: &nbsp;Ambiente</p>\r\n\r\n<p>&bull; Patas regulables</p>\r\n\r\n<p>&bull; Largo: 1,26mts</p>\r\n\r\n<p>&bull; Altura: &nbsp;1,13mts</p>\r\n\r\n<p>&bull; Profundidad: 70cm</p>\r\n', 0, 0, NULL, NULL, 6, 0, 1, NULL, NULL),
(126, 'VNPRPF1260 ', 'Vitrina new panorámica refrigerada VNPRPF1260 ', '', '<p>&bull; C&oacute;digo: &nbsp;VNPRPF1260</p>\r\n\r\n<p>&bull; Exposici&oacute;n de productos refrigerados</p>\r\n\r\n<p>&bull; Temperatura: &nbsp;3&deg;C a 10&deg;C</p>\r\n\r\n<p>&bull; Largo: 1,26mts</p>\r\n\r\n<p>&bull; Altura: &nbsp;1,13mts</p>\r\n\r\n<p>&bull; Profundidad: 70cm</p>\r\n\r\n<p>&bull; Patas regulables</p>\r\n\r\n<p>&bull; Controlador de temperatura: Termostato mec&aacute;nico</p>\r\n\r\n<p>&bull; Fr&iacute;o h&uacute;medo</p>\r\n', 0, 0, NULL, NULL, 6, 0, 1, NULL, NULL),
(127, 'FTDE-10', 'Horno turbo convector FTDE-10 ', '', '<p>&bull; C&oacute;digo: FTDE-10</p>\r\n\r\n<p>&bull; Para bandejas de 58x70cm</p>\r\n\r\n<p>&bull; Termostato de 50&deg;C a 300&deg;C</p>\r\n\r\n<p>&bull; Estructura en chapa de acero</p>\r\n\r\n<p>&bull; Frente en acero inox</p>\r\n\r\n<p>&bull; Aislamiento t&eacute;rmico en lana bas&aacute;ltica</p>\r\n\r\n<p>&bull; Controlador digital con programaci&oacute;n de tiempo, temperatura y vapor.</p>\r\n\r\n<p>&bull; Trif&aacute;sico</p>\r\n\r\n<p>&bull; Motor: 1,5HP</p>\r\n\r\n<p>&bull; Potencia: 18000W</p>\r\n\r\n<p>&bull; Capacidad: 10 bandejas</p>\r\n\r\n<p>&bull; Largo: 1,02mts</p>\r\n\r\n<p>&bull; Profundidad: 1,29mts</p>\r\n\r\n<p>&bull; Altura: 1,70mts</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(128, 'FTDE-5', 'Horno turbo convector FTDE-5', '', '<p>&bull; C&oacute;digo: FTDE-5</p>\r\n\r\n<p>&bull; Para bandejas de 58x70cm</p>\r\n\r\n<p>&bull; Termostato de 50&deg;C a 300&deg;C</p>\r\n\r\n<p>&bull; Estructura en chapa de acero</p>\r\n\r\n<p>&bull; Frente en acero inox</p>\r\n\r\n<p>&bull; Aislamiento t&eacute;rmico en lana bas&aacute;ltica</p>\r\n\r\n<p>&bull; Controlador digital con programaci&oacute;n de tiempo, temperatura y vapor.</p>\r\n\r\n<p>&bull; Trif&aacute;sico</p>\r\n\r\n<p>&bull; Motor: 1/2 HP</p>\r\n\r\n<p>&bull; Potencia: 9500W</p>\r\n\r\n<p>&bull; Capacidad: 5 bandejas</p>\r\n\r\n<p>&bull; Largo: 1,02mts</p>\r\n\r\n<p>&bull; Profundidad: 1,29mts</p>\r\n\r\n<p>&bull; Altura: 1,60mts</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(129, 'FTDEM-5', 'Horno turbo convector FTDEM-5', '', '<p>&bull; C&oacute;digo: FTDEM-5</p>\r\n\r\n<p>&bull; Para bandejas de 58x70cm</p>\r\n\r\n<p>&bull; Termostato de 50&deg;C a 300&deg;C</p>\r\n\r\n<p>&bull; Estructura en chapa de acero</p>\r\n\r\n<p>&bull; Frente en acero inox</p>\r\n\r\n<p>&bull; Aislamiento t&eacute;rmico en lana bas&aacute;ltica</p>\r\n\r\n<p>&bull; Controlador digital con programaci&oacute;n</p>\r\n\r\n<p>de tiempo, temperatura y vapor.</p>\r\n\r\n<p>&bull; Monof&aacute;sico</p>\r\n\r\n<p>&bull; Motor: 1/2 HP</p>\r\n\r\n<p>&bull; Potencia: 9500W</p>\r\n\r\n<p>&bull; Capacidad: 5 bandejas</p>\r\n\r\n<p>&bull; Largo: 1,02mts</p>\r\n\r\n<p>&bull; Profundidad: 1,29mts</p>\r\n\r\n<p>&bull; Altura: 1,60mts</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(130, 'VBP-12', 'Batidora planetaria VBP-12', '', '<p>&bull; C&oacute;digo: VBP-12</p>\r\n\r\n<p>&bull; Largo: 34cm</p>\r\n\r\n<p>&bull; Altura: 75cm</p>\r\n\r\n<p>&bull; Profundidad: 65cm</p>\r\n\r\n<p>&bull; Capacidad: 12 litros</p>\r\n\r\n<p>&bull; Motor: 1/4 HP</p>\r\n\r\n<p>&bull; Cuerpo en acero inox on pintura epoxi</p>\r\n\r\n<p>&bull; Tacho en acero inox</p>\r\n\r\n<p>&bull; 3 brazos batidores</p>\r\n\r\n<p>- Globo</p>\r\n\r\n<p>- Gancho</p>\r\n\r\n<p>- Raqueta</p>\r\n\r\n<p>&bull; Rejilla protectora</p>\r\n\r\n<p>&bull; 6 Velocidades</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(131, 'VBP-05', 'Batidora planetaria VBP-05', '', '<p>&bull; C&oacute;digo: VBP-05</p>\r\n\r\n<p>&bull; Largo: 34cm</p>\r\n\r\n<p>&bull; Altura: 52cm</p>\r\n\r\n<p>&bull; Profundidad: 58cm</p>\r\n\r\n<p>&bull; Capacidad: 5 litros</p>\r\n\r\n<p>&bull; Motor: 1/4 HP</p>\r\n\r\n<p>&bull; Cuerpo en acero inox on pintura epoxi</p>\r\n\r\n<p>&bull; Tacho en acero inox</p>\r\n\r\n<p>&bull; 3 brazos batidores</p>\r\n\r\n<p>- Globo</p>\r\n\r\n<p>- Gancho</p>\r\n\r\n<p>- Raqueta</p>\r\n\r\n<p>&bull; Rejilla protectora</p>\r\n\r\n<p>&bull; 6 Velocidades</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(132, 'AC40T', 'Cámara de fermentación controlada AC40T', '', '<p>&bull; C&oacute;digo: AC40T</p>\r\n\r\n<p>&bull; Largo: 73cm</p>\r\n\r\n<p>&bull; Altura: 2,05mts</p>\r\n\r\n<p>&bull; Profundidad: 1,78mts</p>\r\n\r\n<p>&bull; 40 bandejas de 58x70cm</p>\r\n\r\n<p>&bull; Armario con sistema de retardo de fermentaci&oacute;n</p>\r\n\r\n<p>de masas (Fr&iacute;o) y aceleraci&oacute;n de fermentaci&oacute;n de masas</p>\r\n\r\n<p>(t&eacute;rmico).</p>\r\n\r\n<p>&bull; Controlador digital con funci&oacute;n de programaci&oacute;n de tiempo</p>\r\n\r\n<p>y par&aacute;metros de fr&iacute;o y calor.</p>\r\n\r\n<p>&bull; Sistema de refrigeraci&oacute;n por aire forzado</p>\r\n\r\n<p>&bull; Sistema de calentamiento por medio de 2 resistencias</p>\r\n\r\n<p>de 300w y de 700w.</p>\r\n\r\n<p>&bull; Interior revestido en aluminio corrugado</p>\r\n\r\n<p>&bull; Exterior en acero galvanizado con pintura epoxi.</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL);
INSERT INTO `tb_producto` (`id`, `referencia`, `nombre`, `descripcion_corta`, `descripcion_detallada`, `precio`, `valor_descuento`, `descripcion`, `valor_mayorista`, `id_marca`, `destaque`, `activo`, `unique_hits`, `total_hits`) VALUES
(133, 'AC20T', 'Cámara de fermentación controlada AC20T', '', '<p>&bull; C&oacute;digo: AC20T</p>\r\n\r\n<p>&bull; Largo: 73cm</p>\r\n\r\n<p>&bull; Altura: 2,05mts</p>\r\n\r\n<p>&bull; Profundidad: 1,02mts</p>\r\n\r\n<p>&bull; 20 bandejas de 58x70cm</p>\r\n\r\n<p>&bull; Armario con sistema de retardo de fermentaci&oacute;n</p>\r\n\r\n<p>de masas (Fr&iacute;o) y aceleraci&oacute;n de fermentaci&oacute;n de masas</p>\r\n\r\n<p>(t&eacute;rmico).</p>\r\n\r\n<p>&bull; Controlador digital con funci&oacute;n de programaci&oacute;n de tiempo</p>\r\n\r\n<p>y par&aacute;metros de fr&iacute;o y calor.</p>\r\n\r\n<p>&bull; Sistema de refrigeraci&oacute;n por aire forzado</p>\r\n\r\n<p>&bull; Sistema de calentamiento por medio de 2 resistencias</p>\r\n\r\n<p>de 300w y de 700w.</p>\r\n\r\n<p>&bull; Interior revestido en aluminio corrugado</p>\r\n\r\n<p>&bull; Exterior en acero galvanizado con pintura epoxi.</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(134, '1004', 'Cilindro laminador eléctrico 1004', '', '<p>&bull; 40cm con carenagen de nylon</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(135, '1002 ', 'Cilindro laminador eléctrico 1002 ', '', '<p>&bull; 28 cm con carenagen de nylon</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(136, 'Molino de pan', 'Molino de pan', '', '<p>CARACTER&Iacute;STICAS</p>\r\n\r\n<p>- C&oacute;digo fabricante: VMP-80</p>\r\n\r\n<p>- Capacidad m&aacute;xima: 80 kilos por hora</p>\r\n\r\n<p>- Estructura en chapa de acero</p>\r\n\r\n<p>- Tamizador en chapa galvanizada de 2,2mm de grosor</p>\r\n\r\n<p>- Motor de &frac12; HP</p>\r\n\r\n<p>- Estructura acero SAE1010/1020.</p>\r\n\r\n<p>- Pintura Electrost&aacute;tica.</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(137, 'MPV-35', 'Modeladora de pan Felipe y baguette MPV-35', '', '<p>- C&oacute;digo fabricante: MPV-35</p>\r\n\r\n<p>- Para pan felipe y baguette</p>\r\n\r\n<p>- Palanca graduadora de 8 niveles</p>\r\n\r\n<p>- Capacidad de modelado: 20g a&nbsp;1 kilo</p>\r\n\r\n<p>- Capacidad: 500 panes por hora</p>\r\n\r\n<p>- 3 juegos de pa&ntilde;o de felpa en lana</p>\r\n\r\n<p>- Estructura acero SAE1010/1020.</p>\r\n\r\n<p>- Pintura Electrost&aacute;tica.</p>\r\n\r\n<p>OTRAS MEDIDAS</p>\r\n\r\n<p>- C&oacute;digo fabricante: MPV-50</p>\r\n\r\n<p>- Para pan felipe y baguette</p>\r\n\r\n<p>- Palanca graduadora de 8 niveles</p>\r\n\r\n<p>- Capacidad de modelado: 20g a&nbsp;1 kilo</p>\r\n\r\n<p>- Capacidad: 1500 panes por hora</p>\r\n\r\n<p>- 3 juegos de pa&ntilde;o de felpa en lana</p>\r\n\r\n<p>- Estructura acero SAE1010/1020.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Pintura Electrost&aacute;tica.</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(138, 'DMV-30', 'Divisora de pan', '', '<p>- C&oacute;digo fabricante: DMV-30</p>\r\n\r\n<p>- Capacidad: 30 cortes por operaci&oacute;n</p>\r\n\r\n<p>- Navajas de corte en acero inoxidable</p>\r\n\r\n<p>- Mesada revestida en acero inoxidable</p>\r\n\r\n<p>- Estructura acero SAE1010/1020.</p>\r\n\r\n<p>- Pintura Electrost&aacute;tica.</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(139, 'FPV-10', 'Cortador de pan para sándwich', '', '<p>- C&oacute;digo fabricante: FPV-10</p>\r\n\r\n<p>- L&aacute;minas de corte de acero inoxidable</p>\r\n\r\n<p>- Mesada revestida en acero inox</p>\r\n\r\n<p>- Motor de &frac14; HP</p>\r\n\r\n<p>- Limite de altura de pan 18cm</p>\r\n\r\n<p>- Corte: 10mm</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(140, 'CLMV-30', 'Cilindro laminador de mesa', '', '<p>- C&oacute;digo fabricante: CLMV-30</p>\r\n\r\n<p>- Para masas livianas</p>\r\n\r\n<p>- Cilindro de 30 cm</p>\r\n\r\n<p>- Capacidad: 5kg por &nbsp;operaci&oacute;n</p>\r\n\r\n<p>- Potencia: 1/3 HP</p>\r\n\r\n<p>- Estructura acero SAE1010/1020.</p>\r\n\r\n<p>- Pintura Electrost&aacute;tica.</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(141, 'CLVT-50', 'Cilindro laminador de pie CLVT-50', '', '<p>- C&oacute;digo fabricante: CLVT-50</p>\r\n\r\n<p>- Para masas de panes y pasteler&iacute;a</p>\r\n\r\n<p>- Cilindro de 50cm</p>\r\n\r\n<p>- Capacidad: 15kg por &nbsp;operaci&oacute;n</p>\r\n\r\n<p>- Potencia: 2x1,5HP</p>\r\n\r\n<p>- Estructura acero SAE1010/1020.</p>\r\n\r\n<p>- Pintura Electrost&aacute;tica.</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(142, 'CLPV-39', 'Cilindro laminador de pie CLPV-39', '', '<p>- C&oacute;digo fabricante: CLPV-39</p>\r\n\r\n<p>- Para masas de pasteleria y confiter&iacute;a</p>\r\n\r\n<p>- Cilindro de 39 cm</p>\r\n\r\n<p>- Capacidad: 7kg por &nbsp;operaci&oacute;n</p>\r\n\r\n<p>- Potencia: 1 HP</p>\r\n\r\n<p>- Estructura acero SAE1010/1020.</p>\r\n\r\n<p>- Pintura Electrost&aacute;tica.</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(143, 'ARV-25EXP', 'Amasadora rápida 25kg', '', '<p>- C&oacute;digo fabricante: ARV-25EXP</p>\r\n\r\n<p>- Capacidad: 25kg de masa pronta en 8 minutos</p>\r\n\r\n<p>- Patas de goma con nivelaci&oacute;n de altura</p>\r\n\r\n<p>- Estructura acero SAE1010/1020.</p>\r\n\r\n<p>- Tacho y cubierta superior en acero Inoxidable.</p>\r\n\r\n<p>- Amasador en hierro fundido esta&ntilde;ado.</p>\r\n\r\n<p>- Pintura Electrost&aacute;tica.</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(144, 'ARV-15EXP', 'Amasadora rápida 15kg', '', '<p>- C&oacute;digo fabricante: ARV-15EXP</p>\r\n\r\n<p>- Capacidad: 15kg de masa pronta en&nbsp;</p>\r\n\r\n<p>8 minutos</p>\r\n\r\n<p>- Patas de goma con nivelaci&oacute;n de&nbsp;</p>\r\n\r\n<p>altura</p>\r\n\r\n<p>- Estructura acero SAE1010/1020.</p>\r\n\r\n<p>- Tacho y cubierta superior</p>\r\n\r\n<p>en acero Inoxidable.</p>\r\n\r\n<p>- Amasador en hierro fundido&nbsp;</p>\r\n\r\n<p>esta&ntilde;ado.</p>\r\n\r\n<p>- Pintura Electrost&aacute;tica.</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(145, ' ARV-05EXP', 'Amasadora rápida 5kg ', '', '<p>- C&oacute;digo fabricante: ARV-05EXP</p>\r\n\r\n<p>- Capacidad: 5kg de masa pronta en 8 minutos</p>\r\n\r\n<p>- Patas de goma con nivelaci&oacute;n de altura</p>\r\n\r\n<p>- Estructura acero SAE1010/1020.</p>\r\n\r\n<p>- Tacho y cubierta superior en acero Inoxidable.</p>\r\n\r\n<p>- Amasador en hierro fundido esta&ntilde;ado.</p>\r\n\r\n<p>- Pintura Electrost&aacute;tica.</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(146, 'VAE-40EXP', 'Amasadora espiral 40kg ', '', '<p>- C&oacute;digo fabricante: VAE-40EXP</p>\r\n\r\n<p>- Capacidad: 40kg de masa pronta&nbsp;</p>\r\n\r\n<p>- Patas de goma con nivelaci&oacute;n de altura</p>\r\n\r\n<p>- Estructura acero SAE1010/1020.</p>\r\n\r\n<p>- Tacho en acero Inoxidable.</p>\r\n\r\n<p>- Dos velocidades</p>\r\n\r\n<p>- Pintura Electrost&aacute;tica.</p>\r\n\r\n<p>- Rejilla protectora</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(147, 'VAE-25EXP', 'Amasadora espiral 25kg ', '', '<p>- C&oacute;digo fabricante: VAE-25EXP</p>\r\n\r\n<p>- Capacidad: 25kg de masa pronta</p>\r\n\r\n<p>- Patas de goma con nivelaci&oacute;n de altura</p>\r\n\r\n<p>- Estructura acero SAE1010/1020.</p>\r\n\r\n<p>- Tacho en acero Inoxidable.</p>\r\n\r\n<p>- Dos velocidades</p>\r\n\r\n<p>- Pintura Electrost&aacute;tica.</p>\r\n\r\n<p>- Rejilla protectora</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(148, 'ASRBV-25EXP', 'Amasadora semi-rápida basculante 25g', '', '<p>- C&oacute;digo fabricante: ASRBV-25EXP</p>\r\n\r\n<p>- Capacidad: 25kg de masa pronta</p>\r\n\r\n<p>- Patas de goma con nivelaci&oacute;n de altura</p>\r\n\r\n<p>- Estructura acero SAE1010/1020.</p>\r\n\r\n<p>- Tacho en acero Inoxidable.</p>\r\n\r\n<p>- Amasador en hierro fundido esta&ntilde;ado.</p>\r\n\r\n<p>- Pintura Electrost&aacute;tica.</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(149, 'ASRBV-05EXP', 'Amasadora semi-rápida basculante 5kg', '', '<p>- C&oacute;digo fabricante: ASRBV-05EXP</p>\r\n\r\n<p>- Capacidad: 5kg de masa pronta</p>\r\n\r\n<p>- Patas de goma con nivelaci&oacute;n de&nbsp;</p>\r\n\r\n<p>altura</p>\r\n\r\n<p>- Estructura acero SAE1010/1020.</p>\r\n\r\n<p>- Tacho en acero Inoxidable.</p>\r\n\r\n<p>- Amasador en hierro fundido&nbsp;</p>\r\n\r\n<p>esta&ntilde;ado.</p>\r\n\r\n<p>- Pintura Electrost&aacute;tica.</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(150, 'CQNT1000', 'Vitrina térmica 1,00mts New Titatium', '', '<p>- C&oacute;digo fabricante: CQNT1000</p>\r\n\r\n<p>- Altura: 1,28mts</p>\r\n\r\n<p>- Largo: 1,00mts</p>\r\n\r\n<p>- Profundidad: 65cm</p>\r\n\r\n<p>- Exposici&oacute;n de productos salados</p>\r\n\r\n<p>- Temperatura m&aacute;xima: 60&deg;C</p>\r\n\r\n<p>- Refrigeraci&oacute;n: Aire forzado</p>\r\n\r\n<p>- Controlador de temperatura m&eacute;canica</p>\r\n\r\n<p>- Iluminaci&oacute;n fluorescente</p>\r\n\r\n<p>- Cuerpo en acero inoxidable</p>\r\n\r\n<p>- Patas regulables</p>\r\n\r\n<p>- Puerta batiente</p>\r\n', 0, 0, NULL, NULL, 6, 0, 1, NULL, NULL),
(151, 'CQNT600', 'Vitrina térmica 60cm New Titatium', '', '<p>- C&oacute;digo fabricante: CQNT600</p>\r\n\r\n<p>- Altura: 1,28mts</p>\r\n\r\n<p>- Largo: 60cm</p>\r\n\r\n<p>- Profundidad: 65cm</p>\r\n\r\n<p>- Exposici&oacute;n de productos salados</p>\r\n\r\n<p>- Temperatura m&aacute;xima: 60&deg;C</p>\r\n\r\n<p>- Refrigeraci&oacute;n: Aire forzado</p>\r\n\r\n<p>- Controlador de temperatura m&eacute;canica</p>\r\n\r\n<p>- Iluminaci&oacute;n fluorescente</p>\r\n\r\n<p>- Cuerpo en acero inoxidable</p>\r\n\r\n<p>- Patas regulables</p>\r\n\r\n<p>- Puerta batiente</p>\r\n', 0, 0, NULL, NULL, 6, 0, 1, NULL, NULL),
(152, 'CSNT1000', 'Vitrina seca 1,00mts New Titanium', '', '<p>- C&oacute;digo fabricante: CSNT1000</p>\r\n\r\n<p>- Altura: 1,28mts</p>\r\n\r\n<p>- Largo: 1,00mts</p>\r\n\r\n<p>- Profundidad: 65cm</p>\r\n\r\n<p>- Exposici&oacute;n de productos dulces y secos</p>\r\n\r\n<p>- Iluminaci&oacute;n LED</p>\r\n\r\n<p>- Cuerpo en acero inoxidable</p>\r\n\r\n<p>- Patas regulables</p>\r\n\r\n<p>- Puerta batiente</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(153, 'CSNT600', 'Vitrina seca 60cm New Titanium ', '', '<p>- C&oacute;digo fabricante: CSNT600</p>\r\n\r\n<p>- Altura: 1,28mts</p>\r\n\r\n<p>- Largo: 60cm</p>\r\n\r\n<p>- Profundidad: 65cm</p>\r\n\r\n<p>- Exposici&oacute;n de productos dulces y secos</p>\r\n\r\n<p>- Iluminaci&oacute;n LED</p>\r\n\r\n<p>- Cuerpo en acero inoxidable</p>\r\n\r\n<p>- Patas regulables</p>\r\n\r\n<p>- Puerta batiente</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(154, 'CRNT1500', 'Vitrina refrigerada 1,50mts New Titanium', '', '<p>C&oacute;digo fabricante: CRNT1500</p>\r\n\r\n<p>- Altura: 1,28mts</p>\r\n\r\n<p>- Largo: 1,50mts</p>\r\n\r\n<p>- Profundidad: 65cm</p>\r\n\r\n<p>- Otros tama&ntilde;os: 60cm y 1,00mts</p>\r\n\r\n<p>- Exposici&oacute;n de productos fr&iacute;os, l&aacute;cteos y tortas</p>\r\n\r\n<p>- Temperatura: 3&deg;C a 10&deg;C</p>\r\n\r\n<p>- Refrigeraci&oacute;n: Aire forzado, frio seco</p>\r\n\r\n<p>- Controlador de temperatura electr&oacute;nico digital</p>\r\n\r\n<p>- Iluminaci&oacute;n LED</p>\r\n\r\n<p>- Cuerpo en acero inoxidable</p>\r\n\r\n<p>- Patas regulables</p>\r\n\r\n<p>- Puertas batientes</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(155, 'CRNT600', 'Vitrina refrigerada 60cm New Titanium', '', '<p>- C&oacute;digo fabricante: CRNT600</p>\r\n\r\n<p>- Altura: 1,28mts</p>\r\n\r\n<p>- Largo: 60cm</p>\r\n\r\n<p>- Profundidad: 65cm</p>\r\n\r\n<p>- Exposici&oacute;n de productos fr&iacute;os, l&aacute;cteos y tortas</p>\r\n\r\n<p>- Temperatura: 3&deg;C a 10&deg;C</p>\r\n\r\n<p>- Refrigeraci&oacute;n: Aire forzado, frio seco</p>\r\n\r\n<p>- Controlador de temperatura electr&oacute;nico digital</p>\r\n\r\n<p>- Iluminaci&oacute;n LED</p>\r\n\r\n<p>- Cuerpo en acero inoxidable</p>\r\n\r\n<p>- Patas regulables</p>\r\n\r\n<p>- Puertas batientes</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(156, 'CECT', 'Vitrina esquinero Línea Titanium', '', '<p>- Exposici&oacute;n de productos secos</p>\r\n\r\n<p>- Temperatura: ambiente</p>\r\n\r\n<p>- Patas regulables</p>\r\n\r\n<p>- C&oacute;digo fabricante: CECT</p>\r\n\r\n<p>- Largo: 1,33mts</p>\r\n\r\n<p>- Profundidad: 68cm</p>\r\n\r\n<p>- Altura: 1,25mts</p>\r\n\r\n<p>obs: NO INCLUYE GRANITO</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(157, 'CCTP', 'Vitrina Caja Linea Titanium', '', '<p>- Exposici&oacute;n de productos secos</p>\r\n\r\n<p>- Temperatura: ambiente</p>\r\n\r\n<p>- Caja con llave</p>\r\n\r\n<p>- Estantes en vidrio</p>\r\n\r\n<p>- Patas regulables</p>\r\n\r\n<p>- C&oacute;digo fabricante: CCTP</p>\r\n\r\n<p>- Largo: 1,00mts</p>\r\n\r\n<p>- Profundidad: 68cm</p>\r\n\r\n<p>- Altura: 1,04mts</p>\r\n\r\n<p>Obs: NO INCLUYE GRANITO</p>\r\n', 0, 0, NULL, NULL, 6, 0, 1, NULL, NULL),
(158, 'CST1000', 'Vitrina seca Linea Titanium', '', '<p>- Exposici&oacute;n de productos secos</p>\r\n\r\n<p>- Temperatura: ambiente</p>\r\n\r\n<p>- Estantes en vidrio</p>\r\n\r\n<p>- Iluminaci&oacute;n LED</p>\r\n\r\n<p>- Cuerpo en acero inoxidable</p>\r\n\r\n<p>- Patas regulables</p>\r\n\r\n<p>- C&oacute;digo fabricante: CST1000</p>\r\n\r\n<p>- Largo: 1,00mts</p>\r\n\r\n<p>- Profundidad: 68cm</p>\r\n\r\n<p>- Otros tama&ntilde;os: ,1,50mts y&nbsp;</p>\r\n\r\n<p>- 2,00mts</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(159, 'CRT1000', 'Vitrina refrigerada Linea Titanium', '', '<p>- Exposici&oacute;n deproductos frios, l&aacute;cteos y tortas</p>\r\n\r\n<p>- Temperatura: 3&deg; a 10&deg;C</p>\r\n\r\n<p>- Refrigeraci&oacute;n: Aire forzado; fr&iacute;o seco</p>\r\n\r\n<p>- Controlador de temperatura electronico digital</p>\r\n\r\n<p>- Iluminaci&oacute;n LED</p>\r\n\r\n<p>- Estantes en vidrios</p>\r\n\r\n<p>- Cuerpo en acero inoxidable</p>\r\n\r\n<p>- Patas regulables</p>\r\n\r\n<p>- C&oacute;digo fabricante: CRT1000</p>\r\n\r\n<p>- Altura: 1,25mts</p>\r\n\r\n<p>- Largo: 1,00mts</p>\r\n\r\n<p>- Profundidad: 68cm</p>\r\n\r\n<p>- Otros tama&ntilde;os: ,1,50mts y&nbsp;</p>\r\n\r\n<p>2,00mts</p>\r\n', 0, 0, NULL, NULL, 6, 0, 1, NULL, NULL),
(160, 'CQT1000', 'Vitrina térmica Linea Titanium', '', '<p>- Exposici&oacute;n de productos salados</p>\r\n\r\n<p>- Temperatura: m&aacute;xima de 60&deg;C</p>\r\n\r\n<p>- Resistencia el&eacute;ctrica blindada</p>\r\n\r\n<p>- Controlador de temperatura m&eacute;canica</p>\r\n\r\n<p>- Iluminaci&oacute;n fluorescente</p>\r\n\r\n<p>- Cuerpo en acero inoxidable</p>\r\n\r\n<p>- Patas regulables</p>\r\n\r\n<p>- Bandejas en acero inox</p>\r\n\r\n<p>- C&oacute;digo fabricante: CQT1000</p>\r\n\r\n<p>- Altura: 1,25mts</p>\r\n\r\n<p>- Largo: 1,00mts</p>\r\n\r\n<p>- Profundidad: 68cm</p>\r\n\r\n<p>- Otros tama&ntilde;os: ,1,50mts y&nbsp;</p>\r\n\r\n<p>2,00mts</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(161, 'VPCV1360', 'Vitrina panorámica esquinera VPCV1360', '', '<p>-C&oacute;digo f&aacute;bricante: VPCV1360</p>\r\n\r\n<p>-Exposici&oacute;n de productos &nbsp;secos</p>\r\n\r\n<p>-Temperatura: Ambiente</p>\r\n\r\n<p>-Patas regulables</p>\r\n\r\n<p>-Altura: 1,20mts</p>\r\n\r\n<p>-Largo: 1,36mts</p>\r\n\r\n<p>-Profundidad: 68cm</p>\r\n', 0, 0, NULL, NULL, 6, 0, 1, NULL, NULL),
(162, 'VPCX800', 'Vitrina panorámica caja VPCX800', '', '<p>-C&oacute;digo f&aacute;bricante: VPCX800</p>\r\n\r\n<p>-Exposici&oacute;n de productos &nbsp;secos</p>\r\n\r\n<p>-Caja con llave</p>\r\n\r\n<p>-Vidrio superior</p>\r\n\r\n<p>-Patas regulables</p>\r\n\r\n<p>-Altura: 1,48mts</p>\r\n\r\n<p>-Largo: 80cm</p>\r\n\r\n<p>-Profundidad: 68cm</p>\r\n', 0, 0, NULL, NULL, 6, 0, 1, NULL, NULL),
(163, 'VPE600', 'Vitrina panoramica estufa VPE600', '', '<p>-C&oacute;digo f&aacute;bricante: VPE600</p>\r\n\r\n<p>-Exposici&oacute;n de productos &nbsp;salados</p>\r\n\r\n<p>-Temperatura: m&aacute;xima hasta 60&deg;C</p>\r\n\r\n<p>-Controlador de temperatura m&eacute;canico</p>\r\n\r\n<p>-Patas regulables</p>\r\n\r\n<p>-Altura: 1,20mts</p>\r\n\r\n<p>-Largo: 60cm</p>\r\n\r\n<p>-Profundidad: 70cm</p>\r\n\r\n<p>OPCI&Oacute;N DE OTRO TAMA&Ntilde;O</p>\r\n\r\n<p>-C&oacute;digo fabricante: VPE1000</p>\r\n\r\n<p>-Altura: 1,20mts</p>\r\n\r\n<p>-Largo: 1,00mts</p>\r\n\r\n<p>-Profundidad: 70cm</p>\r\n', 0, 0, NULL, NULL, 6, 0, 1, NULL, NULL),
(164, 'VPS1200', 'Vitrina panorámica seca VPS1200', '', '<p>-C&oacute;digo f&aacute;bricante: VPS1200</p>\r\n\r\n<p>-Exposici&oacute;n de productos &nbsp;secos</p>\r\n\r\n<p>-Temperatura: ambiente</p>\r\n\r\n<p>-Patas regulables</p>\r\n\r\n<p>-Altura: 1,20mts</p>\r\n\r\n<p>-Largo: 1,20mts</p>\r\n\r\n<p>-Profundidad: 70cm</p>\r\n\r\n<p>OPCI&Oacute;N DE OTRO TAMA&Ntilde;O</p>\r\n\r\n<p>-C&oacute;digo fabricante: VPS1800</p>\r\n\r\n<p>-Altura: 1,20mts</p>\r\n\r\n<p>-Largo: 1,80mts</p>\r\n\r\n<p>-Profundidad: 70cm</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(165, 'VPRS1200', 'Vitrina panorámica refrigerada VPRS1200', '', '<p>-C&oacute;digo f&aacute;bricante: VPRS1200</p>\r\n\r\n<p>-Temperatura: 3&deg;C a 10&deg;C</p>\r\n\r\n<p>-Termostato m&eacute;canico</p>\r\n\r\n<p>-Exposici&oacute;n de productos Fr&iacute;os,l&aacute;cteos y tortas</p>\r\n\r\n<p>-Iluminaci&oacute;n LED</p>\r\n\r\n<p>-Altura: 1,20mts</p>\r\n\r\n<p>-Largo: 1,20mts</p>\r\n\r\n<p>-Profundidad: 70cm</p>\r\n\r\n<p>OPCI&Oacute;N DE OTRO TAMA&Ntilde;O</p>\r\n\r\n<p>-C&oacute;digo fabricante: VPRS1800</p>\r\n\r\n<p>-Altura: 1,20mts</p>\r\n\r\n<p>-Largo: 1,80mts</p>\r\n\r\n<p>-Profundidad: 70cm</p>\r\n', 0, 0, NULL, NULL, 6, 0, 1, NULL, NULL),
(166, 'VPR2PF1200 ', 'Vitrina panorámica doble placa fría VPR2PF1200 ', '', '<p>-C&oacute;digo f&aacute;bricante: VPR2PF1200</p>\r\n\r\n<p>-Temperatura: 3&deg;C a 10&deg;C</p>\r\n\r\n<p>-Termostato m&eacute;canico</p>\r\n\r\n<p>-Exposici&oacute;n de productos Fr&iacute;os &nbsp;y l&aacute;cteos</p>\r\n\r\n<p>-Fr&iacute;o h&uacute;medo</p>\r\n\r\n<p>-Altura: 1,20mts</p>\r\n\r\n<p>-Largo: 1,20mts</p>\r\n\r\n<p>-Profundidad: 70cm</p>\r\n\r\n<p>OPCI&Oacute;N DE OTRO TAMA&Ntilde;O</p>\r\n\r\n<p>-C&oacute;digo fabricante: VPR2PF1800</p>\r\n\r\n<p>-Altura: 1,20mts</p>\r\n\r\n<p>-Largo: 1,80mts</p>\r\n\r\n<p>-Profundidad: 70cm</p>\r\n', 0, 0, NULL, NULL, 6, 0, 1, NULL, NULL),
(167, 'CSSTP1000', 'Vitrina seca Linea Platinium', '', '<p>- C&oacute;digo f&aacute;bricante: CSSTP1000</p>\r\n\r\n<p>- Exposici&oacute;n de productos secos</p>\r\n\r\n<p>- Temperatura: ambiente</p>\r\n\r\n<p>- Estantes en vidrio</p>\r\n\r\n<p>-Iluminaci&oacute;n LED</p>\r\n\r\n<p>-Largo: 1,00mts</p>\r\n\r\n<p>-Altura: 1,27mts</p>\r\n\r\n<p>-Profundidad: 90cm</p>\r\n\r\n<p>OPCIONAL 1</p>\r\n\r\n<p>- CSSTP2000</p>\r\n\r\n<p>-Largo: 2,00mts</p>\r\n\r\n<p>-Altura: 1,27mts</p>\r\n\r\n<p>-Profundidad: 90cm</p>\r\n\r\n<p>OPCIONAL 2</p>\r\n\r\n<p>- CSSTP1500</p>\r\n\r\n<p>-Largo: 1,50mts</p>\r\n\r\n<p>-Altura: 1,27mts</p>\r\n\r\n<p>-Profundidad: 90cm</p>\r\n', 0, 0, NULL, NULL, 6, 0, 1, NULL, NULL),
(168, 'CRSTP1000', 'Vitrina refrigerada Linea Platinium ', '', '<p>- C&oacute;digo f&aacute;bricante: CRSTP1000</p>\r\n\r\n<p>- Exposici&oacute;n de productos fr&iacute;os,</p>\r\n\r\n<p>l&aacute;cteos y tortas</p>\r\n\r\n<p>- Temperatura: 3&deg;C a 10&deg;C</p>\r\n\r\n<p>- Estantes en vidrio</p>\r\n\r\n<p>- Refrigeraci&oacute;n: aire forzado</p>\r\n\r\n<p>- Iluminaci&oacute;n LED</p>\r\n\r\n<p>- Largo: 1,00mts</p>\r\n\r\n<p>- Altura: 1,27mts</p>\r\n\r\n<p>- Profundidad: 90cm</p>\r\n\r\n<p>OPCIONALES 1</p>\r\n\r\n<p>- CRSTP1500</p>\r\n\r\n<p>-Largo: 1,50mts</p>\r\n\r\n<p>-Altura: 1,27mts</p>\r\n\r\n<p>-Profundidad: 90cm</p>\r\n\r\n<p>OPCIONALES 2</p>\r\n\r\n<p>-CRSTP2000</p>\r\n\r\n<p>-Largo: 2,00mts</p>\r\n\r\n<p>-Altura: 1,27mts</p>\r\n\r\n<p>-Profundidad: 90cm</p>\r\n', 0, 0, NULL, NULL, 6, 0, 1, NULL, NULL),
(169, 'CQSTP1000', 'Vitrina térmica Linea Platinium ', '', '<p>- C&oacute;digo f&aacute;bricante: CQSTP1000</p>\r\n\r\n<p>- Exposici&oacute;n de productos salados</p>\r\n\r\n<p>- Temperatura m&aacute;xima: 60&deg;C</p>\r\n\r\n<p>- Resistencia el&eacute;ctrica blindada</p>\r\n\r\n<p>- Controlador de temperatura&nbsp;</p>\r\n\r\n<p>m&eacute;canica</p>\r\n\r\n<p>- Iluminaci&oacute;n LED</p>\r\n\r\n<p>- Largo: 1,00mts</p>\r\n\r\n<p>- Altura: 1,27mts</p>\r\n\r\n<p>- Profundidad: 90cm</p>\r\n\r\n<p>OPCIONALES 1</p>\r\n\r\n<p>- CQSTP1500</p>\r\n\r\n<p>-Largo: 1,50mts</p>\r\n\r\n<p>-Altura: 1,27mts</p>\r\n\r\n<p><br />\r\n-Profundidad: 90cm</p>\r\n\r\n<p>OPCIONALES 2</p>\r\n\r\n<p>-CQSTP2000</p>\r\n\r\n<p>-Largo: 2,00mts</p>\r\n\r\n<p>-Altura: 1,27mts</p>\r\n\r\n<p>-Profundidad: 90cm</p>\r\n', 0, 0, NULL, NULL, 6, 0, 1, NULL, NULL),
(170, 'CPSTP', 'Vitrina caja Linea Platinium ', '', '<p>- C&oacute;digo f&aacute;bricante: CPSTP</p>\r\n\r\n<p>- Exposici&oacute;n de productos secos</p>\r\n\r\n<p>- Temperatura: ambiente</p>\r\n\r\n<p>- Caja con llave</p>\r\n\r\n<p>- Estante en vidrio</p>\r\n\r\n<p>- Largo: 1,00mts</p>\r\n\r\n<p>- Altura: 1,14mts</p>\r\n\r\n<p>- Profundidad: 90cm</p>\r\n\r\n<p>- VITRINA CAJA SIN GRANITO</p>\r\n', 0, 0, NULL, NULL, 6, 0, 1, NULL, NULL),
(171, 'CSTPEF', 'Vitrina curva Linea Platinium ', '', '<p>-C&oacute;digo f&aacute;bricante: CSTPEF</p>\r\n\r\n<p>-Exposici&oacute;n de productos secos</p>\r\n\r\n<p>-Temperatura: ambiente</p>\r\n\r\n<p>-Cuerpo en acero inoxidable</p>\r\n\r\n<p>-Patas regulables</p>\r\n\r\n<p>-Largo: 1,61mts</p>\r\n\r\n<p>-Altura: 1,27mts</p>\r\n\r\n<p>-Profundidad: 90cm</p>\r\n\r\n<p>-VITRINA CURVA SIN GRANITO</p>\r\n', 0, 0, NULL, NULL, 6, 0, 1, NULL, NULL),
(172, 'VRSCT1000', 'Vitrina refrigerada Linea Show Case Titanium ', '', '<p>- C&oacute;digo f&aacute;bricante: VRSCT1000</p>\r\n\r\n<p>- Vitrina refrigerada</p>\r\n\r\n<p>- Exposici&oacute;n de fr&iacute;os y tortas</p>\r\n\r\n<p>- Temperatura : 3&deg;C 10&deg;C</p>\r\n\r\n<p>- Largo: 1,00mts</p>\r\n\r\n<p>- Altura: 84cm</p>\r\n\r\n<p>- Profundidad: 57cm</p>\r\n', 0, 0, NULL, NULL, 6, 0, 1, NULL, NULL),
(173, 'VSSCT1000', 'Vitrina seca Linea show case Titanium ', '', '<p>- C&oacute;digo f&aacute;bricante: VSSCT1000</p>\r\n\r\n<p>- Vitrina seca</p>\r\n\r\n<p>- Exposici&oacute;n de dulces y secos</p>\r\n\r\n<p>- Temperatura : Ambiente</p>\r\n\r\n<p>- Largo: 1,00mts</p>\r\n\r\n<p>- Altura: 84cm</p>\r\n\r\n<p>- Profundidad: 57cm</p>\r\n', 0, 0, NULL, NULL, 6, 0, 1, NULL, NULL),
(174, 'VQSCT1000', 'Vitrina térmica Linea show case Titanium ', '', '<p>- C&oacute;digo f&aacute;bricante: VQSCT1000</p>\r\n\r\n<p>- Vitrina t&eacute;rmica</p>\r\n\r\n<p>- Exposici&oacute;n de salados</p>\r\n\r\n<p>- Temperatura m&aacute;xima: 60&deg;C</p>\r\n\r\n<p>- Largo: 1,00mts</p>\r\n\r\n<p>- Altura: 84cm</p>\r\n\r\n<p>- Profundidad: 57cm</p>\r\n', 0, 0, NULL, NULL, 6, 0, 1, NULL, NULL),
(175, 'VRSCP1000', 'Vitrina refrigerada Linea show case Titanium ', '', '<p>- C&oacute;digo f&aacute;bricante: VRSCP1000</p>\r\n\r\n<p>- Vitrina refrigerada</p>\r\n\r\n<p>- Exposici&oacute;n de fr&iacute;os y tortas</p>\r\n\r\n<p>- Temperatura : 3&deg;C 10&deg;C</p>\r\n\r\n<p>- Largo: 1,00mts</p>\r\n\r\n<p>- Altura: 84cm</p>\r\n\r\n<p>- Profundidad: 57cm</p>\r\n', 0, 0, NULL, NULL, 6, 0, 1, NULL, NULL),
(176, 'VSSCP1000', 'Vitrina seca Linea show case Titanium ', '', '<p>- C&oacute;digo f&aacute;bricante: VSSCP1000</p>\r\n\r\n<p>- Vitrina seca</p>\r\n\r\n<p>- Exposici&oacute;n de dulces y secos</p>\r\n\r\n<p>- Temperatura : Ambiente</p>\r\n\r\n<p>- Largo: 1,00mts</p>\r\n\r\n<p>- Altura: 84cm</p>\r\n\r\n<p>- Profundidad: 57cm</p>\r\n', 0, 0, NULL, NULL, 6, 0, 1, NULL, NULL),
(177, 'VQSCP1000', 'Vitrina térmica Linea show case Titanium ', '', '<p>- C&oacute;digo f&aacute;bricante: VQSCP1000</p>\r\n\r\n<p>- Vitrina t&eacute;rmica</p>\r\n\r\n<p>- Exposici&oacute;n de salados</p>\r\n\r\n<p>- Temperatura m&aacute;xima: 60&deg;C</p>\r\n\r\n<p>- Largo: 1,00mts</p>\r\n\r\n<p>- Altura: 84cm</p>\r\n\r\n<p>- Profundidad: 57cm</p>\r\n', 0, 0, NULL, NULL, 6, 0, 1, NULL, NULL),
(178, '80', 'Caja fuerte 80', '', '<p><strong>Cofre 80</strong></p>\r\n\r\n<p>Medidas Externas: 800x380x350</p>\r\n\r\n<p>pesa:&nbsp; 140 kilos</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(179, '100', 'Caja fuerte 100', '', '<p>Cofre 100</p>\r\n\r\n<p>Medidas Externas: 960x440x380&nbsp;</p>\r\n\r\n<p>Pesa: 180 kilos</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(180, '60', 'Caja fuerte 60', '', '<p>Cofre 60</p>\r\n\r\n<p>Medidas Externas: 600x380x350</p>\r\n\r\n<p>Pesa: 120 kilos</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(181, '120', 'Caja fuerte 120', '', '<p>Cofre 120</p>\r\n\r\n<p>Medidas Externas: 1160x500x460</p>\r\n\r\n<p>Pesa: 250 kilos&nbsp;</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(182, '5705', 'Armario bajo con puertas 5705', '', '<p>- Llave en la parte interna para trabar todas las puertas</p>\r\n\r\n<p>- Puertas de correr con perfil en PS</p>\r\n\r\n<p>- 1 bandeja fija, sin divisoria interna entre las puertas</p>\r\n', 0, 0, NULL, NULL, 10, 0, 0, NULL, NULL),
(183, '90514', 'Armario bajo Credenza 90514', '', '<p>Largo: 1,20mts</p>\r\n\r\n<p>Altura: 74cm</p>\r\n\r\n<p>Profundidad: 45cm</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(184, '90528', 'Aramario alto semi abierto 90528', '', '<p>Largo: 80cm</p>\r\n\r\n<p>Altura: 1,60mts</p>\r\n\r\n<p>Profundidad: 45cm</p>\r\n', 0, 0, NULL, NULL, 10, 0, 1, NULL, NULL),
(185, 't01', 'Test 01', '', '', 50000, 0, NULL, NULL, 10, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_producto_atributo`
--

CREATE TABLE `tb_producto_atributo` (
  `id_producto` int(11) NOT NULL,
  `id_atributo` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_producto_categoria`
--

CREATE TABLE `tb_producto_categoria` (
  `id_producto` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_producto_categoria`
--

INSERT INTO `tb_producto_categoria` (`id_producto`, `id_categoria`) VALUES
(33, 1),
(33, 4),
(33, 141),
(34, 1),
(34, 4),
(34, 140),
(35, 1),
(35, 4),
(35, 142),
(36, 1),
(36, 4),
(36, 143),
(42, 1),
(42, 4),
(42, 162),
(43, 1),
(43, 4),
(43, 144),
(44, 1),
(45, 2),
(45, 7),
(45, 147),
(46, 2),
(46, 7),
(46, 145),
(47, 2),
(47, 7),
(47, 146),
(48, 2),
(48, 7),
(48, 147),
(49, 2),
(49, 7),
(50, 2),
(50, 7),
(50, 149),
(51, 2),
(52, 2),
(52, 7),
(52, 151),
(53, 2),
(53, 7),
(54, 2),
(54, 7),
(55, 1),
(55, 5),
(55, 154),
(56, 1),
(56, 5),
(56, 155),
(57, 1),
(57, 5),
(57, 156),
(58, 1),
(58, 5),
(58, 157),
(59, 1),
(59, 5),
(59, 158),
(60, 1),
(60, 5),
(60, 159),
(61, 1),
(61, 4),
(61, 142),
(62, 1),
(62, 4),
(62, 162),
(63, 1),
(63, 4),
(63, 163),
(64, 1),
(64, 4),
(64, 164),
(65, 1),
(65, 4),
(65, 165),
(66, 1),
(66, 168),
(67, 2),
(67, 7),
(67, 136),
(68, 2),
(68, 7),
(68, 170),
(69, 2),
(69, 7),
(69, 136),
(70, 2),
(70, 7),
(70, 136),
(71, 2),
(71, 7),
(71, 136),
(72, 2),
(72, 7),
(72, 136),
(73, 2),
(73, 7),
(73, 136),
(74, 2),
(74, 7),
(74, 136),
(75, 2),
(75, 7),
(75, 136),
(76, 2),
(76, 7),
(76, 136),
(77, 2),
(77, 7),
(77, 136),
(78, 2),
(78, 7),
(78, 136),
(79, 2),
(79, 7),
(79, 145),
(80, 2),
(80, 7),
(80, 145),
(81, 2),
(81, 7),
(81, 145),
(82, 2),
(82, 7),
(82, 145),
(83, 2),
(83, 7),
(83, 145),
(84, 2),
(84, 7),
(84, 145),
(85, 2),
(85, 7),
(85, 145),
(86, 2),
(86, 7),
(86, 145),
(87, 2),
(87, 7),
(87, 145),
(88, 2),
(88, 7),
(88, 145),
(89, 2),
(89, 7),
(89, 145),
(90, 2),
(90, 7),
(90, 145),
(91, 2),
(91, 7),
(91, 145),
(92, 2),
(92, 7),
(92, 145),
(93, 2),
(93, 7),
(93, 145),
(94, 2),
(94, 7),
(94, 145),
(95, 2),
(95, 7),
(95, 145),
(96, 2),
(96, 7),
(96, 146),
(97, 2),
(97, 7),
(97, 146),
(98, 2),
(98, 7),
(98, 146),
(99, 2),
(99, 7),
(99, 146),
(100, 2),
(100, 7),
(100, 146),
(101, 2),
(101, 7),
(101, 146),
(102, 2),
(102, 7),
(102, 146),
(103, 2),
(103, 7),
(103, 146),
(104, 2),
(104, 7),
(104, 146),
(105, 2),
(105, 7),
(105, 146),
(106, 2),
(106, 7),
(106, 146),
(107, 2),
(107, 7),
(107, 146),
(108, 2),
(108, 7),
(109, 2),
(109, 7),
(109, 146),
(110, 2),
(110, 7),
(110, 137),
(111, 2),
(111, 7),
(111, 137),
(112, 2),
(112, 7),
(112, 137),
(113, 2),
(113, 7),
(113, 137),
(114, 2),
(114, 7),
(114, 137),
(115, 2),
(115, 7),
(115, 137),
(116, 2),
(116, 7),
(116, 137),
(117, 2),
(117, 7),
(117, 137),
(118, 2),
(118, 7),
(118, 137),
(119, 2),
(119, 7),
(119, 137),
(120, 2),
(120, 7),
(120, 137),
(121, 2),
(121, 7),
(121, 137),
(122, 2),
(122, 7),
(122, 137),
(123, 2),
(123, 7),
(123, 137),
(124, 2),
(124, 7),
(124, 147),
(125, 2),
(125, 7),
(125, 147),
(126, 2),
(126, 7),
(126, 147),
(127, 2),
(127, 7),
(127, 147),
(128, 2),
(128, 7),
(128, 147),
(129, 2),
(129, 7),
(129, 147),
(130, 2),
(130, 7),
(130, 147),
(131, 2),
(131, 7),
(131, 147),
(132, 2),
(132, 7),
(132, 147),
(133, 2),
(133, 7),
(133, 147),
(134, 2),
(134, 7),
(134, 147),
(135, 2),
(135, 7),
(135, 147),
(136, 2),
(136, 7),
(136, 147),
(137, 2),
(137, 7),
(137, 147),
(138, 2),
(138, 7),
(138, 147),
(139, 2),
(139, 7),
(139, 147),
(140, 2),
(140, 7),
(140, 147),
(141, 2),
(141, 7),
(141, 147),
(142, 2),
(142, 7),
(142, 147),
(143, 2),
(143, 7),
(143, 147),
(144, 2),
(144, 7),
(144, 147),
(145, 2),
(145, 7),
(145, 147),
(146, 2),
(146, 7),
(146, 147),
(147, 2),
(147, 7),
(147, 147),
(148, 2),
(148, 7),
(148, 147),
(149, 2),
(149, 7),
(149, 147),
(150, 2),
(150, 7),
(150, 147),
(151, 2),
(151, 7),
(151, 147),
(152, 2),
(152, 7),
(152, 147),
(153, 2),
(153, 7),
(153, 147),
(154, 2),
(154, 7),
(154, 147),
(155, 2),
(155, 7),
(155, 147),
(156, 2),
(156, 7),
(156, 147),
(157, 2),
(157, 7),
(157, 147),
(158, 2),
(158, 7),
(158, 147),
(159, 2),
(159, 7),
(159, 147),
(160, 2),
(160, 7),
(160, 147),
(161, 2),
(161, 7),
(161, 147),
(162, 2),
(162, 7),
(162, 147),
(163, 2),
(163, 7),
(163, 147),
(164, 2),
(164, 7),
(164, 147),
(165, 2),
(165, 7),
(165, 147),
(166, 2),
(166, 7),
(166, 147),
(167, 2),
(167, 7),
(167, 147),
(168, 2),
(168, 7),
(168, 147),
(169, 2),
(169, 7),
(169, 147),
(170, 2),
(170, 7),
(170, 147),
(171, 2),
(171, 7),
(171, 147),
(172, 2),
(172, 7),
(172, 147),
(173, 2),
(173, 7),
(173, 147),
(174, 2),
(174, 7),
(174, 147),
(175, 2),
(175, 7),
(175, 147),
(176, 2),
(176, 7),
(176, 147),
(177, 2),
(177, 7),
(177, 147),
(178, 1),
(178, 4),
(178, 140),
(179, 1),
(179, 4),
(179, 140),
(180, 1),
(180, 4),
(180, 140),
(181, 1),
(181, 4),
(181, 140),
(182, 1),
(182, 4),
(182, 141),
(183, 1),
(183, 4),
(183, 141),
(184, 1),
(184, 4),
(184, 141),
(185, 1),
(185, 6),
(185, 138);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_producto_img`
--

CREATE TABLE `tb_producto_img` (
  `id` int(11) NOT NULL,
  `url` varchar(80) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `orden` int(11) NOT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_producto_img`
--

INSERT INTO `tb_producto_img` (`id`, `url`, `id_producto`, `orden`, `activo`) VALUES
(39, 'armario-bajo-con-puertas-5705-60806.jpeg', 33, 1, 1),
(40, 'caja-fuerte-40-77851.jpeg', 34, 2, 1),
(41, 'caja-fuerte-40-40519.jpeg', 34, 1, 1),
(42, 'call-center-simple-98264-26723.jpeg', 35, 1, 1),
(43, 'mesa-en-l-reuniÓn-con-pie-op-de-metal-90116-70162.jpeg', 36, 1, 1),
(44, 'cajonero-fijo-de-2-cajones-mu-30301-66675.jpeg', 38, 1, 1),
(45, 'balcÓn-de-recepciÓn-tamburato-5774-93530.jpeg', 39, 1, 1),
(46, 'balcÓn-de-recepciÓn-tamburato-5774-46980.jpeg', 39, 2, 1),
(47, 'balcÓn-de-recepciÓn-tamburato-5774-49992.jpeg', 39, 3, 1),
(48, 'estante-mÉtalico-5-bandejas-82214.jpeg', 40, 1, 1),
(49, 'mesa-angular-90007-25694.jpeg', 41, 1, 1),
(50, 'cajonero-mÓvil-3-cajones--64913.jpeg', 42, 1, 1),
(51, 'soporte-para-monitor-43292.jpeg', 43, 2, 1),
(52, 'soporte-para-monitor-68600.jpeg', 43, 1, 1),
(53, 'armario-para-panes-apas2000-75751.jpeg', 45, 1, 1),
(54, 'visacooler-frÍos-y-lÁcteos-asfl-3pp-56075.jpeg', 46, 1, 1),
(55, 'balcón-de-pasaje-línea-plus-bbp1000-74837.jpeg', 47, 1, 1),
(56, 'vitrina-new-panorámica-caja-vnpcx730-34516.jpeg', 48, 1, 1),
(57, 'isla-para-congelados-doble-acción-eip3000-30867.jpeg', 50, 1, 1),
(60, 'check-out-cote2050-38812.jpeg', 51, 1, 1),
(59, 'frutera-central-fcce-24cx-44507.jpeg', 52, 1, 1),
(61, 'licuadora-industrial-basculante-bm-122-(baja-rotación)-82341.jpeg', 53, 1, 1),
(62, 'carrito-para-supermercado-90lts-104-002-22589.jpeg', 54, 1, 1),
(64, 'persianas-horizontales-89493.jpeg', 55, 1, 1),
(65, 'persianas-verticales-40975.jpeg', 56, 1, 1),
(66, 'persianas-verticales-55243.jpeg', 56, 1, 1),
(67, 'persianas-verticales-en-tela-61439.jpeg', 57, 1, 1),
(68, 'persianas-roló-61533.jpeg', 58, 1, 1),
(69, 'Upload Error: Sorry, file already exists.', 59, 1, 0),
(70, 'persiana-double-visión--19838.jpeg', 60, 1, 1),
(71, 'persianas-romanas-55379.jpeg', 59, 2, 1),
(72, 'plataforma-de-trabajo-dupla-pie-painel-98181-43551.jpeg', 61, 1, 1),
(73, 'cajonero-fijo-de-dos-cajones-mu-30301-51120.jpeg', 62, 1, 1),
(74, 'sofá-de-espera-box-36105-2l-82539.jpeg', 63, 1, 1),
(75, 'estante-metálico-5-bandejas--23866.jpeg', 64, 1, 1),
(76, 'mesa-recta-tamburato-1700-5894--26330.jpeg', 65, 1, 1),
(77, 'amazonas-paraguay-86575.jpeg', 66, 1, 0),
(78, 'amazonas-paraguay-45907.jpeg', 66, 2, 0),
(79, 'amazonas-paraguay-28337.jpeg', 66, 3, 0),
(80, 'amazonas-paraguay-31551.jpeg', 66, 4, 0),
(81, 'amazonas-paraguay-82592.jpeg', 66, 5, 0),
(82, 'amazonas-paraguay-31869.jpeg', 66, 6, 0),
(83, 'amazonas-paraguay-95010.jpeg', 66, 7, 0),
(84, 'amazonas-paraguay-47645.jpeg', 66, 8, 0),
(86, 'amazonas-paraguay-96823.jpeg', 66, 2, 1),
(87, 'amazonas-paraguay-78168.jpeg', 66, 3, 1),
(88, 'amazonas-paraguay-95474.jpeg', 66, 4, 1),
(89, 'amazonas-paraguay-69343.jpeg', 66, 6, 1),
(90, 'enfriador-y-dosificador-de-agua-rdan-100-19397.jpeg', 67, 1, 1),
(91, 'fabricadora-de-hielo-mfg150-98824.jpeg', 68, 1, 1),
(92, 'fabricadora-de-hielo-mfg150-71989.jpeg', 69, 1, 1),
(93, 'fabricadora-de-hielo-mfg75-79042.jpeg', 70, 1, 1),
(94, 'fabricadora-de-hielo-mfg50-49233.jpeg', 71, 1, 1),
(95, 'autoservicios-para-congelados-vccg600s-94338.jpeg', 72, 1, 1),
(96, 'autoservicios-fríos-y-lácteos-asfl3000-96797.jpeg', 73, 1, 1),
(97, 'autoservicio-fríos-y-lácteos-asfl2000-53311.jpeg', 74, 1, 1),
(101, 'auto-atendimiento-abierto-conveniencia-asac1200-98824.jpeg', 76, 1, 1),
(100, 'autoservicio-fríos-y-lácteos-asfl1240-13913.jpeg', 75, 1, 1),
(103, 'auto-atendimiento-abierto-conveniencia-asac900-37568.jpeg', 77, 1, 1),
(104, 'auto-servicios-bebidas-42552.jpeg', 78, 1, 1),
(105, 'auto-servicios-bebidas-82369.jpeg', 78, 2, 1),
(106, 'auto-servicios-bebidas-34805.jpeg', 78, 3, 1),
(107, 'visa-cooler-multiuso-vcm400-76677.jpeg', 79, 1, 1),
(108, 'visa-cooler-multiuso-vcm400-55928.jpeg', 79, 2, 1),
(109, 'visa-cooler-para-cerveza-puerta-solida-vcc400s-79906.jpeg', 80, 1, 1),
(110, 'visa-cooler-para-cerveza-puerta-solida-vcc600s-14502.jpeg', 81, 1, 1),
(111, 'visa-cooler-para-cerveza-puerta-solida-vcc600s-59751.jpeg', 81, 1, 1),
(112, 'visa-cooler-extra-frio-vcexf1300-78935.jpeg', 82, 1, 1),
(113, 'visa-cooler-extra-frio-vcexf600-60862.jpeg', 83, 1, 1),
(114, 'visa-cooler-extra-frio-vcexf410-94734.jpeg', 84, 1, 1),
(115, 'visa-cooler-multiuso-vmc1300-26610.jpeg', 85, 1, 1),
(116, 'visa-cooler-multiuso-vmc3p-29429.jpeg', 86, 1, 1),
(117, 'visa-cooler-adega-home-wine-230-litros-68011.jpeg', 87, 1, 1),
(118, 'visa-cooler-adega-home-wine-130-litros-96943.jpeg', 88, 1, 1),
(119, 'visa-cooler-adega-home-wine-86-litros-89218.jpeg', 89, 1, 1),
(120, 'visa-cooler-slim-home-beer-puerta-de-vidrio-230l-25193.jpeg', 90, 1, 1),
(121, 'visa-cooler-slim-home-beer-puerta-de-vidrio-130l-36039.jpeg', 91, 1, 1),
(122, 'visa-cooler-slim-home-beer-puerta-de-vidrio-86l-58685.jpeg', 92, 1, 1),
(123, 'visa-cooler-slim-home-beer-puerta-solida-230l-23572.jpeg', 93, 1, 1),
(124, 'visa-cooler-slim-home-beer-puerta-solida-130l-94213.jpeg', 94, 1, 1),
(125, 'visa-cooler-slim-home-beer-puerta-solida-86l-41605.jpeg', 95, 1, 1),
(126, 'balcón-de-pesaje-línea-plus-bbp1000-24030.jpeg', 96, 1, 1),
(128, 'mini-cámara-para-carnes-línea-plus-mcp2800-44899.jpeg', 97, 1, 1),
(129, 'mini-cámara-para-carnes-línea-plus-mcp2800-35441.jpeg', 97, 2, 1),
(130, 'mini-cámara-para-carnes-línea-plus-mcp1800-95335.jpeg', 98, 1, 1),
(131, 'mini-cámara-para-carnes-línea-plus-mcp1800-33838.jpeg', 98, 2, 1),
(132, 'mini-cámara-para-carnes-línea-plus-mcp1350-92964.jpeg', 99, 1, 1),
(133, 'mini-cámara-para-carnes-línea-plus-mcp1350-62542.jpeg', 99, 2, 1),
(134, 'ablandador-de-carne-acie-15-14626.jpeg', 100, 1, 1),
(135, 'moledor-de-carne-mcie-98-82627.jpeg', 101, 1, 1),
(136, 'moledor-de-carne-mcie-22-10599.jpeg', 102, 1, 1),
(137, 'moledor-de-carnes-mcie-10-51730.jpeg', 103, 1, 1),
(138, 'mini-sierra-carnicera-para-carnes-y-cartílagos-con-molino-msbpe180-34829.jpeg', 104, 1, 1),
(139, 'mini-sierra-carnicera-para-carnes-y-cartílagos-msbe-180-92624.jpeg', 105, 1, 1),
(140, 'sierra-carnicera-inox-para-carnes-y-huesos-stie325-86151.jpeg', 106, 1, 1),
(141, 'sierra-carnicera-para-carnes-y-huesos-sbe282-86500.jpeg', 107, 1, 1),
(142, 'embutidor-de-chorizos-73336.jpeg', 108, 1, 1),
(143, 'linea-eap-33615.jpeg', 109, 1, 1),
(144, 'linea-eap-16809.jpeg', 109, 2, 1),
(147, 'armario-para-panes-apas2000-18122.jpeg', 110, 1, 1),
(146, 'amazonas-paraguay-85110.jpeg', 66, 1, 1),
(148, 'armario-para-panes-aptu2000-97464.jpeg', 111, 1, 1),
(149, 'isla-para-panes-aipp2000-14708.jpeg', 112, 1, 1),
(150, 'armario-para-panes-apc2000-29020.jpeg', 113, 1, 1),
(151, 'armario-para-panes-astppg2000-12013.jpeg', 114, 1, 1),
(152, 'armario-para-espetos-apte1000-73506.jpeg', 115, 1, 1),
(153, 'armario-de-defumados-apd1000-84059.jpeg', 116, 1, 1),
(154, 'armario-para-temperos-apt1000-85498.jpeg', 117, 1, 1),
(155, 'armario-para-carbón-apc1000-10183.jpeg', 118, 1, 1),
(156, 'bodega-mixta-para-vinos-aac1000-95520.jpeg', 119, 1, 1),
(157, 'bodega-tonel-para-vino-aab1000-34673.jpeg', 120, 1, 1),
(158, 'isla-para-vinos-aai2000-96890.jpeg', 121, 1, 1),
(159, 'bodega-estante-para-vinos-aap1000-91187.jpeg', 122, 1, 1),
(160, 'bodega-vertical-para-vinos-aav10000-75331.jpeg', 123, 1, 1),
(161, 'vitrina-new-panorámica-caja-vnpcx730-37046.jpeg', 48, 2, 1),
(162, 'vitrina-new-panorámica-estufa-vnpe730-82680.jpeg', 124, 1, 1),
(163, 'vitrina-new-panorámica-estufa-vnpe730-32607.jpeg', 124, 2, 1),
(164, 'vitrina-new-panorámica-seca-vnps1260-49675.jpeg', 125, 1, 1),
(165, 'vitrina-new-panorámica-seca-vnps1260-77627.jpeg', 125, 2, 1),
(166, 'vitrina-new-panorámica-refrigerada-vnprpf1260--25029.jpeg', 126, 1, 1),
(167, 'vitrina-new-panorámica-refrigerada-vnprpf1260--26341.jpeg', 126, 2, 1),
(168, 'horno-turbo-convector-ftde-10--97840.jpeg', 127, 1, 1),
(169, 'horno-turbo-convector-ftde-5-21506.jpeg', 128, 1, 1),
(170, 'horno-turbo-convector-ftde-5-46096.jpeg', 128, 1, 1),
(171, 'horno-turbo-convector-ftdem-5-70611.jpeg', 129, 1, 1),
(172, 'batidora-planetaria-vbp-12-73985.jpeg', 130, 1, 1),
(173, 'batidora-planetaria-vbp-05-48396.jpeg', 131, 1, 1),
(174, 'cámara-de-fermentación-controlada-ac40t-31458.jpeg', 132, 1, 1),
(175, 'cámara-de-fermentación-controlada-ac20t-20247.jpeg', 133, 1, 1),
(176, 'cilindro-laminador-térmico-1004-19469.jpeg', 134, 1, 1),
(177, 'cilindro-laminador-eléctrico-1002--34808.jpeg', 135, 1, 1),
(178, 'molino-de-pan-56319.jpeg', 136, 1, 1),
(179, 'modeladora-de-pan-felipe-y-baguette-mpv-35-74562.jpeg', 137, 1, 1),
(180, 'divisora-de-pan-54826.jpeg', 138, 1, 1),
(181, 'cortador-de-pan-para-sándwich-98233.jpeg', 139, 1, 1),
(182, 'cilindro-laminado-de-mesa-16739.jpeg', 140, 1, 1),
(183, 'cilindro-laminador-de-pie-clvt-50-44438.jpeg', 141, 1, 1),
(184, 'cilindro-laminador-de-pie-clpv-39-28400.jpeg', 142, 1, 1),
(185, 'amasadora-rápida-25kg-64666.jpeg', 143, 1, 1),
(186, 'amasadora-rápida-15kg-69329.jpeg', 144, 1, 1),
(187, 'amasadora-rápida-5kg--33730.jpeg', 145, 1, 1),
(188, 'amasadora-espiral-40kg--39557.jpeg', 146, 1, 1),
(189, 'amasadora-espiral-25kg--91055.jpeg', 147, 1, 1),
(190, 'amasadora-semi-rápida-basculante-25g-14989.jpeg', 148, 1, 1),
(191, 'amasadora-semi-rápida-basculante-5kg-73856.jpeg', 149, 1, 1),
(192, 'vitrina-térmica-1,00mts-new-titatium-33528.jpeg', 150, 1, 1),
(193, 'vitrina-térmica-60cm-new-titatium-69503.jpeg', 151, 1, 1),
(194, 'vitrina-seca-1,00mts-new-titanium-87615.jpeg', 152, 1, 1),
(195, 'vitrina-seca-60cm-new-titanium--77231.jpeg', 153, 1, 1),
(196, 'vitrina-refrigerada-1,50mts-new-titanium-77972.jpeg', 154, 1, 1),
(197, 'vitrina-refrigerada-60cm-new-titanium-24737.jpeg', 155, 1, 1),
(198, 'vitrina-esquinero-línea-titanium-36035.jpeg', 156, 1, 1),
(199, 'vitrina-caja-linea-titanium-68162.jpeg', 157, 1, 1),
(200, 'vitrina-seca-linea-titanium-23196.jpeg', 158, 1, 1),
(201, 'vitrina-refrigerada-linea-titanium-84781.jpeg', 159, 1, 1),
(202, 'vitrina-térmica-linea-titanium-49078.jpeg', 160, 1, 1),
(203, 'vitrina-panorámica-esquinera-vpcv1360-19669.jpeg', 161, 1, 1),
(204, 'vitrina-panorámica-caja-vpcx800-79465.jpeg', 162, 1, 1),
(205, 'vitrina-panoramica-estufa-vpe600-17006.jpeg', 163, 1, 1),
(206, 'vitrina-panorámica-seca-vps1200-60166.jpeg', 164, 1, 1),
(207, 'vitrina-panorámica-refrigerada-vprs1200-62603.jpeg', 165, 1, 1),
(208, 'vitrina-panorámica-doble-placa-fría-vpr2pf1200--21017.jpeg', 166, 1, 1),
(209, 'vitrina-seca-linea-platinium-47118.jpeg', 167, 1, 1),
(210, 'vitrina-refrigerada-linea-platinium--42532.jpeg', 168, 1, 1),
(211, 'vitrina-térmica-linea-platinium--37248.jpeg', 169, 1, 1),
(212, 'vitrina-caja-linea-platinium--36517.jpeg', 170, 1, 1),
(213, 'vitrina-curva-linea-platinium--15232.jpeg', 171, 1, 1),
(214, 'vitrina-refrigerada-linea-show-case-titanium--34203.jpeg', 172, 1, 1),
(215, 'vitrina-seca-linea-show-case-titanium--56534.jpeg', 173, 1, 1),
(216, 'vitrina-térmica-linea-show-case-titanium--44025.jpeg', 174, 1, 1),
(217, 'vitrina-refrigerada-linea-show-case-titanium--74403.jpeg', 175, 1, 1),
(218, 'vitrina-seca-linea-show-case-titanium--34945.jpeg', 176, 1, 1),
(219, 'vitrina-térmica-linea-show-case-titanium--62203.jpeg', 177, 1, 1),
(220, 'caja-fuerte-80-61144.jpeg', 178, 1, 1),
(221, 'caja-fuerte-80-25759.jpeg', 178, 2, 1),
(222, 'caja-fuerte-100-97521.jpeg', 179, 1, 1),
(223, 'caja-fuerte-100-37055.jpeg', 179, 2, 1),
(224, 'caja-fuerte-60-60665.jpeg', 180, 1, 1),
(225, 'cod180-2020-12-17-muebles-de-oficina-caja-fuerte-caja-fuerte-60-coexma-muebles-d', 180, 2, 0),
(226, 'caja-fuerte-60-37020.jpeg', 180, 3, 1),
(227, 'caja-fuerte-120-61902.jpeg', 181, 1, 1),
(228, 'caja-fuerte-120-24581.jpeg', 181, 2, 1),
(229, 'armario-bajo-con-puertas-5705-24285.jpeg', 182, 1, 1),
(230, 'armario-bajo-con-puertas-5705-91115.jpeg', 182, 2, 1),
(231, 'armario-bajo-credenza-90514-85048.jpeg', 183, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_producto_stock`
--

CREATE TABLE `tb_producto_stock` (
  `id` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `valor_minorista` int(11) DEFAULT NULL,
  `valor_mayorista` int(11) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_stock_valor`
--

CREATE TABLE `tb_stock_valor` (
  `id_atr_valor` int(11) NOT NULL,
  `id_stock` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_tiendas`
--

CREATE TABLE `tb_tiendas` (
  `id` int(11) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `activo` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_tiendas`
--

INSERT INTO `tb_tiendas` (`id`, `nombre`, `activo`) VALUES
(1, 'Muebles de Oficina', 1),
(2, 'Refrigeración & Gastronomia', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_unidades`
--

CREATE TABLE `tb_unidades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `horarios` text COLLATE utf8_unicode_ci NOT NULL,
  `img_url` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `telefonos` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `activo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_usuario`
--

CREATE TABLE `tb_usuario` (
  `id` int(11) NOT NULL,
  `usuario` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `tipo` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_usuario`
--

INSERT INTO `tb_usuario` (`id`, `usuario`, `password`, `nombre`, `tipo`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 'Muebles de Oficina', 0),
(6, 'ana', 'e10adc3949ba59abbe56e057f20f883e', 'Bar', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_usuario_cliente`
--

CREATE TABLE `tb_usuario_cliente` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `email_verificado` date DEFAULT NULL,
  `contrasena` varchar(100) NOT NULL,
  `creado_en` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_usuario_cliente`
--

INSERT INTO `tb_usuario_cliente` (`id`, `id_cliente`, `email`, `email_verificado`, `contrasena`, `creado_en`) VALUES
(5, 5, 'viawebpy@gmail.com', NULL, '202cb962ac59075b964b07152d234b70', '2020-12-30'),
(6, 6, 'leandro_carlosgonzalez@hotmail.com', NULL, '202cb962ac59075b964b07152d234b70', '2021-01-08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_vendedores`
--

CREATE TABLE `tb_vendedores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `unidad` int(11) DEFAULT NULL,
  `cargo` varchar(40) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `link_email` varchar(255) DEFAULT NULL,
  `skype` varchar(50) DEFAULT NULL,
  `link_skype` varchar(255) DEFAULT NULL,
  `telefono_a` varchar(50) DEFAULT NULL,
  `link_telefono_a` varchar(255) DEFAULT NULL,
  `telefono_b` varchar(50) DEFAULT NULL,
  `link_telefono_b` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(50) DEFAULT NULL,
  `link_whatsapp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_vendedores`
--

INSERT INTO `tb_vendedores` (`id`, `nombre`, `unidad`, `cargo`, `foto`, `email`, `link_email`, `skype`, `link_skype`, `telefono_a`, `link_telefono_a`, `telefono_b`, `link_telefono_b`, `whatsapp`, `link_whatsapp`) VALUES
(1, 'Luis Salinas', 2, 'Vendedor', 'vendedor-luis-salinas-coexma-muebles-de-oficina.png', 'luis@coexma.com.py', 'mailto:luis@coexma.com.py?Subject=Contato site', 'luis_14092', 'callto://+luis_14092', '(021)510111', 'tel:021510111', NULL, NULL, '+595 983136085', 'https://api.whatsapp.com/send?phone=595983136085'),
(2, 'Paola González ', 1, 'Vendedor', 'vendedor-paola-gonzalez-coexma-muebles-de-oficina.png', 'paola@coexma.com.py ', 'mailto:paola@coexma.com.py?Subject=Contato site', ' Paola_55 ', 'callto://+Paola_55', ' (061) 500972 ', 'tel:061500972 ', ' (061) 509035 ', ' tel:061509035 ', ' +595 986 463200 ', 'https://api.whatsapp.com/send?phone=595986463200 '),
(3, 'Lourdes Lobos', 1, 'Vendedor', 'vendedor-lourdes-lobos-coexma-muebles-de-oficina.png', ' lourdes@coexma.com.py ', 'mailto:lourdes@coexma.com.py?Subject=Contato site', ' lourdes_3137 ', 'callto://+lourdes_3137', ' (061) 500972 ', 'tel:061500972 ', ' (061) 509035 ', ' tel:061509035 ', ' +595986611003 ', 'https://api.whatsapp.com/send?phone=595986611003'),
(4, 'Marcos Oliveira', 2, 'Vendedor', 'vendedor-marcos-oliveira-coexma-muebles-de-oficina.png', 'marcos@coexma.com.py', 'mailto:marcos@coexma.com.py?Subject=Contato site', '', NULL, '(021) 510111 ', 'tel:021510111 ', ' (021) 510111 ', 'tel:021510111 ', ' +595 982 133053 ', 'https://api.whatsapp.com/send?phone=595982133053 '),
(5, 'Fernando Bastiani', 1, 'Vendedor', 'vendedor-fernando-bastiani-coexma-muebles-de-oficina.png', 'fernando@coexma.com.py', 'mailto:fernando@coexma.com.py?Subject=Contato%20site', 'fernando_14850 ', 'callto://+live:fernando_14850', '061 500 972', 'tel:061 500 972', '061 509 035', 'tel:061 509 035', '+ 595 986 782 006', 'https://api.whatsapp.com/send?phone=595986782006'),
(6, 'Cynthia Lopez\r\n', 3, 'Vendedor', 'vendedor-cynthia-lopez-coexma-muebles-de-oficina.png', 'cynthia@coexma.com.py', 'mailto:cynthia@coexma.com.py?Subject=Contato site', '.cid.71cde67d7edbe38d', 'callto://+.cid.71cde67d7edbe38d', '021 507050', 'tel:021507050', '021 507050', 'tel:021507050', '+595 983 338 230', 'https://api.whatsapp.com/send?phone=595983338230'),
(7, 'Nancy Colmán', 3, 'Vendedor', 'vendedor-nancy-colman-coexma-muebles-de-oficina.png', 'nancy@coexma.com.py', 'mailto:nancy@coexma.com.py?Subject=Contato%20site', 'nancy_9565', 'callto://+live:nancy_9565', '(021) 644 294', 'tel:021644 294', '(021) 644 294', 'tel:021644 294', '595986700180', 'https://api.whatsapp.com/send?phone=595986700180');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `estado` int(2) NOT NULL DEFAULT '0',
  `totalMonto` decimal(15,2) DEFAULT NULL,
  `hash_pedido` varchar(255) DEFAULT NULL,
  `maxDateForPayment` varchar(120) DEFAULT NULL,
  `compradorId` int(11) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_atributo`
--
ALTER TABLE `tb_atributo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_atr_valor`
--
ALTER TABLE `tb_atr_valor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_banner`
--
ALTER TABLE `tb_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_categoria`
--
ALTER TABLE `tb_categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_cliente`
--
ALTER TABLE `tb_cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_cli_direccion`
--
ALTER TABLE `tb_cli_direccion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_contacto`
--
ALTER TABLE `tb_contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_curriculm`
--
ALTER TABLE `tb_curriculm`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_curriculum`
--
ALTER TABLE `tb_curriculum`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_curriculum_experiencia`
--
ALTER TABLE `tb_curriculum_experiencia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_departamento`
--
ALTER TABLE `tb_departamento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_marca`
--
ALTER TABLE `tb_marca`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_met_envio`
--
ALTER TABLE `tb_met_envio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_met_pago`
--
ALTER TABLE `tb_met_pago`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_newsletter`
--
ALTER TABLE `tb_newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_pedido`
--
ALTER TABLE `tb_pedido`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_pedido_express`
--
ALTER TABLE `tb_pedido_express`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_ped_detalle`
--
ALTER TABLE `tb_ped_detalle`
  ADD PRIMARY KEY (`id_pedido`,`id_producto`);

--
-- Indices de la tabla `tb_ped_status`
--
ALTER TABLE `tb_ped_status`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_preguntas`
--
ALTER TABLE `tb_preguntas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_preguntas_respuestas`
--
ALTER TABLE `tb_preguntas_respuestas`
  ADD PRIMARY KEY (`id_res`);

--
-- Indices de la tabla `tb_producto`
--
ALTER TABLE `tb_producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_producto_atributo`
--
ALTER TABLE `tb_producto_atributo`
  ADD PRIMARY KEY (`id_producto`,`id_atributo`);

--
-- Indices de la tabla `tb_producto_categoria`
--
ALTER TABLE `tb_producto_categoria`
  ADD PRIMARY KEY (`id_producto`,`id_categoria`);

--
-- Indices de la tabla `tb_producto_img`
--
ALTER TABLE `tb_producto_img`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_producto_stock`
--
ALTER TABLE `tb_producto_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_stock_valor`
--
ALTER TABLE `tb_stock_valor`
  ADD PRIMARY KEY (`id_atr_valor`,`id_stock`);

--
-- Indices de la tabla `tb_unidades`
--
ALTER TABLE `tb_unidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_usuario_cliente`
--
ALTER TABLE `tb_usuario_cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_vendedores`
--
ALTER TABLE `tb_vendedores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_atributo`
--
ALTER TABLE `tb_atributo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tb_atr_valor`
--
ALTER TABLE `tb_atr_valor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tb_banner`
--
ALTER TABLE `tb_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `tb_categoria`
--
ALTER TABLE `tb_categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT de la tabla `tb_cliente`
--
ALTER TABLE `tb_cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tb_cli_direccion`
--
ALTER TABLE `tb_cli_direccion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tb_contacto`
--
ALTER TABLE `tb_contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tb_curriculm`
--
ALTER TABLE `tb_curriculm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tb_curriculum`
--
ALTER TABLE `tb_curriculum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tb_curriculum_experiencia`
--
ALTER TABLE `tb_curriculum_experiencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tb_departamento`
--
ALTER TABLE `tb_departamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tb_marca`
--
ALTER TABLE `tb_marca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `tb_met_envio`
--
ALTER TABLE `tb_met_envio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tb_met_pago`
--
ALTER TABLE `tb_met_pago`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tb_newsletter`
--
ALTER TABLE `tb_newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `tb_pedido`
--
ALTER TABLE `tb_pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `tb_pedido_express`
--
ALTER TABLE `tb_pedido_express`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `tb_ped_status`
--
ALTER TABLE `tb_ped_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tb_preguntas`
--
ALTER TABLE `tb_preguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tb_preguntas_respuestas`
--
ALTER TABLE `tb_preguntas_respuestas`
  MODIFY `id_res` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `tb_producto`
--
ALTER TABLE `tb_producto`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT de la tabla `tb_producto_img`
--
ALTER TABLE `tb_producto_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT de la tabla `tb_producto_stock`
--
ALTER TABLE `tb_producto_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `tb_unidades`
--
ALTER TABLE `tb_unidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tb_usuario`
--
ALTER TABLE `tb_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tb_usuario_cliente`
--
ALTER TABLE `tb_usuario_cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
