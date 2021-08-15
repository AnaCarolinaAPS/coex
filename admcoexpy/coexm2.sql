-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 09-Dez-2020 às 01:12
-- Versão do servidor: 10.4.10-MariaDB
-- versão do PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `coexma`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cms`
--

DROP TABLE IF EXISTS `cms`;
CREATE TABLE IF NOT EXISTS `cms` (
  `id` int(11) NOT NULL,
  `pagina` varchar(80) NOT NULL,
  `contenido` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_atributo`
--

DROP TABLE IF EXISTS `tb_atributo`;
CREATE TABLE IF NOT EXISTS `tb_atributo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_atributo`
--

INSERT INTO `tb_atributo` (`id`, `nombre`, `activo`) VALUES
(1, 'Colores', 1),
(3, 'Medida', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_atr_valor`
--

DROP TABLE IF EXISTS `tb_atr_valor`;
CREATE TABLE IF NOT EXISTS `tb_atr_valor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_atributo` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_banner`
--

DROP TABLE IF EXISTS `tb_banner`;
CREATE TABLE IF NOT EXISTS `tb_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(100) NOT NULL,
  `text_alt` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `orden` int(11) NOT NULL,
  `posicion` tinyint(1) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_banner`
--

INSERT INTO `tb_banner` (`id`, `img`, `text_alt`, `url`, `orden`, `posicion`, `activo`) VALUES
(12, 'banner-2020-12-05-01-23-32.jpeg', 'Test', 'categorie.php?cat=4', 1, 0, 1),
(13, 'banner-2020-12-05-01-23-45.jpeg', 'Teste', '', 1, 1, 1),
(14, 'banner-2020-12-05-01-24-01.jpeg', 'Teste', 'Teste', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_categoria`
--

DROP TABLE IF EXISTS `tb_categoria`;
CREATE TABLE IF NOT EXISTS `tb_categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) NOT NULL,
  `id_padre` int(11) DEFAULT NULL,
  `menu` tinyint(1) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `descripcion` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=170 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_categoria`
--

INSERT INTO `tb_categoria` (`id`, `nombre`, `id_padre`, `menu`, `activo`, `descripcion`) VALUES
(8, 'Proyectos', 2, 1, 1, NULL),
(7, 'Refrigeracion y Supermercado', 2, 0, 0, NULL),
(6, 'Bar', 1, 1, 1, NULL),
(5, 'Persianas', 1, 1, 1, NULL),
(4, 'Muebles', 1, 1, 1, NULL),
(3, 'Sillas', 4, 1, 1, NULL),
(2, 'Refrigeracion y Gastronomia', NULL, 1, 1, NULL),
(1, 'Muebles de Oficina', NULL, 1, 1, NULL),
(136, 'Auto Atendimento', 7, 0, 0, NULL),
(137, 'Armario P/ Panes / Bodegas', 7, 0, 0, NULL),
(138, 'Mesas', 6, 1, 1, NULL),
(9, 'Sillas Gamer', 4, 1, 1, NULL),
(141, 'Armarios', 4, 1, 1, NULL),
(140, 'Caja Fuerte', 4, 1, 1, NULL),
(142, 'Estación de Trabajo', 4, 1, 1, NULL),
(143, 'Mesas de Reuniones', 4, 1, 1, NULL),
(144, 'Complementos', 4, 1, 1, NULL),
(145, 'Visa Cooler', 7, 0, 0, NULL),
(146, 'Carnicería', 7, 0, 0, NULL),
(147, 'Panadería y Confitería', 7, 0, 0, NULL),
(148, 'Restaurante/Cocina ind. / Comercial', 7, 0, 0, NULL),
(149, 'Freezer/Isla', 7, 0, 0, NULL),
(150, 'Recepción/Check out', 7, 0, 0, NULL),
(151, 'Frutería', 7, 0, 0, NULL),
(152, 'Gatronomía', 7, 0, 0, NULL),
(153, 'Gondolas/Carritos', 7, 0, 0, NULL),
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
(168, 'Proyectos', 1, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_categoria_tienda`
--

DROP TABLE IF EXISTS `tb_categoria_tienda`;
CREATE TABLE IF NOT EXISTS `tb_categoria_tienda` (
  `id_tienda` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_ciudad`
--

DROP TABLE IF EXISTS `tb_ciudad`;
CREATE TABLE IF NOT EXISTS `tb_ciudad` (
  `id` int(11) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `id_departamento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_ciudad`
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
-- Estrutura da tabela `tb_cliente`
--

DROP TABLE IF EXISTS `tb_cliente`;
CREATE TABLE IF NOT EXISTS `tb_cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) NOT NULL,
  `apellido` varchar(80) DEFAULT NULL,
  `ruc` varchar(20) DEFAULT NULL COMMENT 'RUC, RG, CI',
  `documento` varchar(50) DEFAULT NULL,
  `razon_social` varchar(80) DEFAULT NULL,
  `mayorista` tinyint(1) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_cli_direccion`
--

DROP TABLE IF EXISTS `tb_cli_direccion`;
CREATE TABLE IF NOT EXISTS `tb_cli_direccion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) NOT NULL,
  `calle` varchar(80) NOT NULL,
  `ciudad` varchar(80) NOT NULL,
  `departamento` varchar(80) NOT NULL,
  `referencia` varchar(80) DEFAULT NULL,
  `favorito` tinyint(1) NOT NULL COMMENT '0 -> no 1 -> sí',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_contacto`
--

DROP TABLE IF EXISTS `tb_contacto`;
CREATE TABLE IF NOT EXISTS `tb_contacto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL DEFAULT current_timestamp(),
  `nombre` varchar(80) NOT NULL,
  `telefono` varchar(80) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `asunto` varchar(80) NOT NULL,
  `mensaje` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_departamento`
--

DROP TABLE IF EXISTS `tb_departamento`;
CREATE TABLE IF NOT EXISTS `tb_departamento` (
  `id` int(11) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_marca`
--

DROP TABLE IF EXISTS `tb_marca`;
CREATE TABLE IF NOT EXISTS `tb_marca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) NOT NULL,
  `url` varchar(80) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_marca`
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
-- Estrutura da tabela `tb_met_envio`
--

DROP TABLE IF EXISTS `tb_met_envio`;
CREATE TABLE IF NOT EXISTS `tb_met_envio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(80) NOT NULL,
  `costo` double DEFAULT 0,
  `default` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_met_envio`
--

INSERT INTO `tb_met_envio` (`id`, `descripcion`, `costo`, `default`) VALUES
(1, 'AEX', 45000, 1),
(2, 'Retirar en la Tienda', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_met_envio_costo`
--

DROP TABLE IF EXISTS `tb_met_envio_costo`;
CREATE TABLE IF NOT EXISTS `tb_met_envio_costo` (
  `id` int(11) DEFAULT NULL,
  `id_met_envio` int(11) DEFAULT NULL,
  `id_ciudad` int(11) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `tiempo_entrega` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_met_pago`
--

DROP TABLE IF EXISTS `tb_met_pago`;
CREATE TABLE IF NOT EXISTS `tb_met_pago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(80) NOT NULL,
  `default` int(11) DEFAULT NULL,
  `instrucciones` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_met_pago`
--

INSERT INTO `tb_met_pago` (`id`, `descripcion`, `default`, `instrucciones`) VALUES
(1, 'TARJETA / PAGO EXPRESS / PAGOPAR', 1, NULL),
(2, 'GIROS TIGO', NULL, 'Luego de la compra podes realizar el giro al 0983 112 965 y enviar el comprobante al mismo numero');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_newsletter`
--

DROP TABLE IF EXISTS `tb_newsletter`;
CREATE TABLE IF NOT EXISTS `tb_newsletter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tb_newsletter`
--

INSERT INTO `tb_newsletter` (`id`, `email`) VALUES
(1, 'richardcabrera92@hotmail.com'),
(2, 'richardcabrera92@hotmail.com'),
(3, 'richardcabrera92@hotmail.com'),
(4, 'n@gmail.com'),
(5, 'n@gmail.com'),
(6, 'n@gmail.com'),
(7, 'richardcabrera92@hotmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_pais`
--

DROP TABLE IF EXISTS `tb_pais`;
CREATE TABLE IF NOT EXISTS `tb_pais` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_pedido`
--

DROP TABLE IF EXISTS `tb_pedido`;
CREATE TABLE IF NOT EXISTS `tb_pedido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `id_cliente` int(11) NOT NULL,
  `id_met_pago` int(11) NOT NULL,
  `id_met_envio` int(11) NOT NULL,
  `id_cli_direccion` int(11) NOT NULL DEFAULT 1,
  `total` double NOT NULL,
  `id_factura` int(11) DEFAULT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  `total_envio` double DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_pedido_express`
--

DROP TABLE IF EXISTS `tb_pedido_express`;
CREATE TABLE IF NOT EXISTS `tb_pedido_express` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `mensaje` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_pedido_express`
--

INSERT INTO `tb_pedido_express` (`id`, `nombre`, `telefono`, `id_producto`, `email`, `fecha`, `mensaje`) VALUES
(7, 'sdsds', 'sdsd', 35, 'richardcabrera92@hotmail.com', NULL, 'sds'),
(8, 'sdsds', 'sdsd', 34, 'nlsito@gmail.com', '2020-12-08 00:00:00', 'rtrt');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_ped_detalle`
--

DROP TABLE IF EXISTS `tb_ped_detalle`;
CREATE TABLE IF NOT EXISTS `tb_ped_detalle` (
  `id_pedido` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `valor_unitario` double NOT NULL,
  `ctd` int(11) NOT NULL,
  `descuento` double DEFAULT NULL,
  `valor_total` double NOT NULL,
  PRIMARY KEY (`id_pedido`,`id_producto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_ped_status`
--

DROP TABLE IF EXISTS `tb_ped_status`;
CREATE TABLE IF NOT EXISTS `tb_ped_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_ped_status`
--

INSERT INTO `tb_ped_status` (`id`, `descripcion`) VALUES
(0, 'Pendiente'),
(1, 'En Revisión'),
(2, 'Aprobado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_preguntas`
--

DROP TABLE IF EXISTS `tb_preguntas`;
CREATE TABLE IF NOT EXISTS `tb_preguntas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(150) DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_preguntas`
--

INSERT INTO `tb_preguntas` (`id`, `pregunta`, `activo`) VALUES
(1, 'Cómo valora la atención recibida? El vendedor comprendió sus necesidades?', 1),
(2, 'La calidad del producto es la esperada?', 1),
(3, 'En caso de que haya adquirido muebles corporativos, está satisfecho con el montaje y la entrega?', 1),
(4, 'Cuál es la probabilidad de que vuelva a comprar nuestros productos?', 1),
(5, 'En general, está satisfecho con esta compañía?', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_preguntas_opciones`
--

DROP TABLE IF EXISTS `tb_preguntas_opciones`;
CREATE TABLE IF NOT EXISTS `tb_preguntas_opciones` (
  `id` int(11) DEFAULT NULL,
  `id_pregunta` int(11) DEFAULT NULL,
  `valor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_preguntas_opciones`
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
-- Estrutura da tabela `tb_preguntas_respuestas`
--

DROP TABLE IF EXISTS `tb_preguntas_respuestas`;
CREATE TABLE IF NOT EXISTS `tb_preguntas_respuestas` (
  `id_res` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(50) DEFAULT NULL,
  `id_pregunta` int(11) DEFAULT NULL,
  `id_respuesta` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_res`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_preguntas_respuestas`
--

INSERT INTO `tb_preguntas_respuestas` (`id_res`, `id`, `id_pregunta`, `id_respuesta`) VALUES
(11, 'e95beda15c5e83ac', 1, 4),
(12, 'e95beda15c5e83ac', 2, 6),
(13, 'e95beda15c5e83ac', 3, 10),
(14, 'e95beda15c5e83ac', 4, 15),
(15, 'e95beda15c5e83ac', 5, 18);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_producto`
--

DROP TABLE IF EXISTS `tb_producto`;
CREATE TABLE IF NOT EXISTS `tb_producto` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
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
  `total_hits` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_producto`
--

INSERT INTO `tb_producto` (`id`, `referencia`, `nombre`, `descripcion_corta`, `descripcion_detallada`, `precio`, `valor_descuento`, `descripcion`, `valor_mayorista`, `id_marca`, `destaque`, `activo`, `unique_hits`, `total_hits`) VALUES
(33, '5705', 'Armario Bajo con Puertas 5705', '', '', 0, 0, '', NULL, 10, 1, 1, NULL, NULL),
(34, '40', 'Caja Fuerte 40', '', '', 0, 0, '', NULL, 8, 1, 1, NULL, NULL),
(35, '98264', 'Call Center Simple 98264', '', '<p><strong>Caracter&iacute;sticas:</strong></p>\r\n\r\n<p>&bull; Largo: 90cm</p>\r\n\r\n<p>&bull; Alto: 1,20mts</p>\r\n\r\n<p>&bull; Profundidad: 81cm</p>\r\n', 0, 0, '', NULL, 9, 1, 1, NULL, NULL),
(36, '90116', 'MESA EN L REUNIÓN CON PIE OP DE METAL 90116', '', '', 0, 0, '', NULL, 9, 1, 1, NULL, NULL),
(37, 'MU-30301', 'CAJONERO FIJO DE 2 CAJONES MU-30301', '', '', 1000000, 0, '', NULL, 9, 0, 1, NULL, NULL),
(38, 'MU-30301', 'CAJONERO FIJO DE 2 CAJONES MU-30301', '', '', 0, 0, '', NULL, 9, 0, 1, NULL, NULL),
(39, '5774', 'BALCÓN DE RECEPCIÓN TAMBURATO 5774', '', '', 0, 0, '', NULL, 10, 0, 1, NULL, NULL),
(40, '', 'ESTANTE MÉTALICO 5 BANDEJAS', '', '', 0, 0, '', NULL, 11, 0, 1, NULL, NULL),
(41, '90007', 'MESA ANGULAR 90007', '', '', 0, 0, '', NULL, 9, 0, 1, NULL, NULL),
(42, 'Cajonero', 'Cajonero móvil 3 cajones ', '', '<p><strong>INFORMACIONES DEL PRODUCTO</strong></p>\r\n\r\n<p><br />\r\nCAJONERO M&Oacute;VIL 3 CAJONES</p>\r\n\r\n<p>C&oacute;digo: ATC4640</p>\r\n\r\n<p>Medidas</p>\r\n\r\n<p>Altura: 67cm</p>\r\n\r\n<p>Largura: 46cm</p>\r\n\r\n<p>Profundidad: 40cm</p>\r\n', 0, 0, '', NULL, 12, 0, 1, NULL, NULL),
(43, 'Soporte', 'Soporte para monitor', '', '', 0, 0, '', NULL, 10, 0, 1, NULL, NULL),
(44, '001', 'Test Armario', 'descripcion corta', '<p>descripcion detallada</p>\r\n', 50000, 0, NULL, NULL, 10, 0, 0, NULL, NULL),
(45, 'Apas2000', 'Armario para panes Apas2000', '', '<p><strong>INFORMACIONES DEL PRODUCTO</strong></p>\r\n\r\n<p>&bull; Iluminaci&oacute;n fluorescente</p>\r\n\r\n<p>&bull; 100% laminado 15mm&nbsp;</p>\r\n\r\n<p>&bull; Largo: 1,00mts</p>\r\n\r\n<p>&bull; Altura: 1,87mts</p>\r\n\r\n<p>&bull; Profundidad: 67cm</p>\r\n', 0, 0, NULL, NULL, 6, 1, 1, NULL, NULL),
(46, 'ASFL-3PP', 'Visacooler Fríos y lácteos ASFL-3PP', '', '<p><strong>INFORMACIONES DEL PRODUCTO</strong></p>\r\n\r\n<p>&bull; Controlador de temperatura&nbsp;digital.&nbsp;</p>\r\n\r\n<p>&bull; Temperatura regulable de&nbsp;3 a 10 grados.</p>\r\n\r\n<p>&bull; 4 niveles de rejilla con&nbsp;altura ajustable.</p>\r\n\r\n<p>&bull; Pies regulables.</p>\r\n\r\n<p>&bull; Iluminaci&oacute;n Led.</p>\r\n\r\n<p>&bull; Largo: 84cm</p>\r\n\r\n<p>&bull; Altura: 1,89mts</p>\r\n\r\n<p>&bull; Profundidad: 57cm</p>\r\n', 0, 0, NULL, NULL, 6, 1, 1, NULL, NULL),
(47, 'BBP1000', 'Balcón de pasaje línea plus BBP1000', '', '<p><strong>INFORMACIONES DEL PRODUCTO</strong></p>\r\n\r\n<p>&bull; Estructura en chapa de acero con pintura blanca anticorrosiva</p>\r\n\r\n<p>&bull; Largo: 1,00mts</p>\r\n\r\n<p>&bull; Altura: 84cm</p>\r\n\r\n<p>&bull; Profundidad: 71cm</p>\r\n\r\n<p>&bull; Utilizaci&oacute;n: Para balanzas</p>\r\n', 0, 0, NULL, NULL, 6, 1, 1, NULL, NULL),
(48, 'VNPCX730', 'Vitrina new panorámica caja VNPCX730', '', '<p><strong>INFORMACIONES DEL PRODUCTO</strong></p>\r\n\r\n<p>&bull; C&oacute;digo:&nbsp; VNPS1260</p>\r\n\r\n<p>&bull; Exposici&oacute;n de productos secos</p>\r\n\r\n<p>&bull; Temperatura:&nbsp; Ambiente</p>\r\n\r\n<p>&bull; Patas regulables</p>\r\n\r\n<p>&bull; Largo: 1,26mts</p>\r\n\r\n<p>&bull; Altura:&nbsp; 1,13mts</p>\r\n\r\n<p>&bull; Profundidad: 70cm</p>\r\n', 0, 0, NULL, NULL, 6, 1, 1, NULL, NULL),
(49, 'BSR-2000', 'Mesa de trabajo refrigerada c/ cuba BSR-2000', '', '<p><strong>INFORMACIONES DEL PRODUCTO</strong></p>\r\n\r\n<p>&bull; C&oacute;digo: BSR-2000</p>\r\n\r\n<p>&bull; Almacenamiento de productos refrigerados</p>\r\n\r\n<p>&bull; Temperatura: 0&deg;C a 5&deg;C</p>\r\n\r\n<p>&bull; Refrigeraci&oacute;n: Est&aacute;tica</p>\r\n\r\n<p>&bull; Controlador de temperatura electr&oacute;nico digital</p>\r\n\r\n<p>&bull; Puertas con cierre autom&aacute;tico</p>\r\n\r\n<p>&bull; Aislamiento en poliuretano inyectado</p>\r\n\r\n<p>&bull; Patas regulables</p>\r\n\r\n<p>&bull; Con cuba</p>\r\n', 0, 0, NULL, NULL, 6, 1, 1, NULL, NULL),
(50, 'EIP3000', 'Isla para congelados doble acción EIP3000', '', '<p><strong>INFORMACIONES DEL PRODUCTO</strong></p>\r\n\r\n<p><br />\r\n&bull; Utilizaci&oacute;n de productos congelados o refrigerados</p>\r\n\r\n<p>&bull; Temperatura: 0&deg;C a 7&deg;C o -18&deg;C</p>\r\n\r\n<p>&bull; Refrigeraci&oacute;n: Est&aacute;tica</p>\r\n\r\n<p>&bull; Parrilas divisorias</p>\r\n\r\n<p>&bull; Molduras en PVC</p>\r\n\r\n<p>&bull; Patas Regulables</p>\r\n\r\n<p>&bull; 4 Puertas</p>\r\n\r\n<p>&bull; Volumen: 86</p>\r\n\r\n<p>&bull; Tapa de vidrio plano</p>\r\n\r\n<p>&bull; Largo: 3,00mts</p>\r\n\r\n<p>&bull; Altura: 97cm</p>\r\n\r\n<p>&bull; Profundidad: 83cm</p>\r\n', NULL, 0, NULL, NULL, 6, 0, 1, NULL, NULL),
(51, 'COTE2050', 'Check-out COTE2050', '', '<p><strong>INFORMACIONES DEL PRODUCTO<br />\r\nCARACTER&Iacute;STICAS</strong></p>\r\n\r\n<p>&bull; Tapa de acero inoxidable</p>\r\n\r\n<p>&bull; Estructura en chapa de acero con pintura anticorrosiva</p>\r\n\r\n<p>&bull; Caja con llave</p>\r\n\r\n<p>&bull;Patas regulables</p>\r\n\r\n<p>&bull; Kit de automatizaci&oacute;n</p>\r\n\r\n<p>&bull; Altura: 93cm</p>\r\n\r\n<p>&bull; Largo: 2,05mts</p>\r\n\r\n<p>&bull; Profundidad: 1,00mts</p>\r\n', 0, 0, NULL, NULL, 6, 0, 1, NULL, NULL),
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
(67, 'PersTest', 'Teste PersiANA', 'Teste', '<p>TESTE</p>\r\n', 1000000, 1000, NULL, NULL, 10, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_producto_atributo`
--

DROP TABLE IF EXISTS `tb_producto_atributo`;
CREATE TABLE IF NOT EXISTS `tb_producto_atributo` (
  `id_producto` int(11) NOT NULL,
  `id_atributo` int(11) NOT NULL,
  PRIMARY KEY (`id_producto`,`id_atributo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_producto_categoria`
--

DROP TABLE IF EXISTS `tb_producto_categoria`;
CREATE TABLE IF NOT EXISTS `tb_producto_categoria` (
  `id_producto` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  PRIMARY KEY (`id_producto`,`id_categoria`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_producto_categoria`
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
(37, 1),
(37, 4),
(37, 162),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
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
(51, 7),
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
(67, 1),
(67, 5),
(67, 155);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_producto_img`
--

DROP TABLE IF EXISTS `tb_producto_img`;
CREATE TABLE IF NOT EXISTS `tb_producto_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(80) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `orden` int(11) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_producto_img`
--

INSERT INTO `tb_producto_img` (`id`, `url`, `id_producto`, `orden`, `activo`) VALUES
(39, 'armario-bajo-con-puertas-5705-60806.jpeg', 33, 1, 1),
(40, 'caja-fuerte-40-77851.jpeg', 34, 1, 1),
(41, 'caja-fuerte-40-40519.jpeg', 34, 2, 1),
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
(89, 'amazonas-paraguay-69343.jpeg', 66, 6, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_producto_stock`
--

DROP TABLE IF EXISTS `tb_producto_stock`;
CREATE TABLE IF NOT EXISTS `tb_producto_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `valor_minorista` int(11) DEFAULT NULL,
  `valor_mayorista` int(11) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_stock_valor`
--

DROP TABLE IF EXISTS `tb_stock_valor`;
CREATE TABLE IF NOT EXISTS `tb_stock_valor` (
  `id_atr_valor` int(11) NOT NULL,
  `id_stock` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  PRIMARY KEY (`id_atr_valor`,`id_stock`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_tiendas`
--

DROP TABLE IF EXISTS `tb_tiendas`;
CREATE TABLE IF NOT EXISTS `tb_tiendas` (
  `id` int(11) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `activo` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_tiendas`
--

INSERT INTO `tb_tiendas` (`id`, `nombre`, `activo`) VALUES
(1, 'Muebles de Oficina', 1),
(2, 'Refrigeración & Gastronomia', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_unidades`
--

DROP TABLE IF EXISTS `tb_unidades`;
CREATE TABLE IF NOT EXISTS `tb_unidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `activo` int(11) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_unidades`
--

INSERT INTO `tb_unidades` (`id`, `nombre`, `activo`) VALUES
(1, 'Ciudad del Este', 1),
(2, 'Asunción', 1),
(3, 'San Lorenzo - Gastronomia & Refrigeracion', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_usuario`
--

DROP TABLE IF EXISTS `tb_usuario`;
CREATE TABLE IF NOT EXISTS `tb_usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `tipo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_usuario`
--

INSERT INTO `tb_usuario` (`id`, `usuario`, `password`, `nombre`, `tipo`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'Muebles de Oficina', 0),
(6, 'ana', 'e10adc3949ba59abbe56e057f20f883e', 'Bar', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_usuario_cliente`
--

DROP TABLE IF EXISTS `tb_usuario_cliente`;
CREATE TABLE IF NOT EXISTS `tb_usuario_cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `email_verificado` date DEFAULT NULL,
  `contrasena` varchar(100) NOT NULL,
  `creado_en` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_vendedores`
--

DROP TABLE IF EXISTS `tb_vendedores`;
CREATE TABLE IF NOT EXISTS `tb_vendedores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `link_whatsapp` varchar(255) DEFAULT NULL,
  `espanol` int(11) NOT NULL,
  `portugues` int(11) NOT NULL,
  `ingles` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_vendedores`
--

INSERT INTO `tb_vendedores` (`id`, `nombre`, `unidad`, `cargo`, `foto`, `email`, `link_email`, `skype`, `link_skype`, `telefono_a`, `link_telefono_a`, `telefono_b`, `link_telefono_b`, `whatsapp`, `link_whatsapp`, `espanol`, `portugues`, `ingles`) VALUES
(1, 'Luis Salinas', 2, 'Vendedor', 'vendedor-luis-salinas-coexma-muebles-de-oficina.png', 'luis@coexma.com.py', 'mailto:luis@coexma.com.py?Subject=Contato site', 'luis_14092', 'callto://+luis_14092', '(021)510111', 'tel:021510111', NULL, NULL, '+595 983136085', 'https://api.whatsapp.com/send?phone=595983136085', 0, 0, 0),
(2, 'Paola González ', 1, 'Vendedor', 'vendedor-paola-gonzalez-coexma-muebles-de-oficina.png', 'paola@coexma.com.py ', 'mailto:paola@coexma.com.py?Subject=Contato site', ' Paola_55 ', 'callto://+Paola_55', ' (061) 500972 ', 'tel:061500972 ', ' (061) 509035 ', ' tel:061509035 ', ' +595 986 463200 ', 'https://api.whatsapp.com/send?phone=595986463200 ', 0, 0, 0),
(3, 'Lourdes Lobos', 1, 'Vendedor', 'vendedor-lourdes-lobos-coexma-muebles-de-oficina.png', ' lourdes@coexma.com.py ', 'mailto:lourdes@coexma.com.py?Subject=Contato site', ' lourdes_3137 ', 'callto://+lourdes_3137', ' (061) 500972 ', 'tel:061500972 ', ' (061) 509035 ', ' tel:061509035 ', ' +595986611003 ', 'https://api.whatsapp.com/send?phone=595986611003', 0, 0, 0),
(4, 'Marcos Oliveira', 2, 'Vendedor', 'vendedor-marcos-oliveira-coexma-muebles-de-oficina.png', 'marcos@coexma.com.py', 'mailto:marcos@coexma.com.py?Subject=Contato site', '', NULL, '(021) 510111 ', 'tel:021510111 ', ' (021) 510111 ', 'tel:021510111 ', ' +595 982 133053 ', 'https://api.whatsapp.com/send?phone=595982133053 ', 0, 0, 0),
(5, 'Fernando Bastiani', 1, 'Vendedor', 'vendedor-fernando-bastiani-coexma-muebles-de-oficina.png', 'fernando@coexma.com.py', 'mailto:fernando@coexma.com.py?Subject=Contato%20site', 'fernando_14850 ', 'callto://+live:fernando_14850', '061 500 972', 'tel:061 500 972', '061 509 035', 'tel:061 509 035', '+ 595 986 782 006', 'https://api.whatsapp.com/send?phone=595986782006', 0, 0, 0),
(6, 'Cynthia Lopez\r\n', 3, 'Vendedor', 'vendedor-cynthia-lopez-coexma-muebles-de-oficina.png', 'cynthia@coexma.com.py', 'mailto:cynthia@coexma.com.py?Subject=Contato site', '.cid.71cde67d7edbe38d', 'callto://+.cid.71cde67d7edbe38d', '021 507050', 'tel:021507050', '021 507050', 'tel:021507050', '+595 983 338 230', 'https://api.whatsapp.com/send?phone=595983338230', 0, 0, 0),
(7, 'Nancy Colmán', 3, 'Vendedor', 'vendedor-nancy-colman-coexma-muebles-de-oficina.png', 'nancy@coexma.com.py', 'mailto:nancy@coexma.com.py?Subject=Contato%20site', 'nancy_9565', 'callto://+live:nancy_9565', '(021) 644 294', 'tel:021644 294', '(021) 644 294', 'tel:021644 294', '595986700180', 'https://api.whatsapp.com/send?phone=595986700180', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int(11) NOT NULL,
  `estado` int(2) NOT NULL DEFAULT 0,
  `totalMonto` decimal(15,2) DEFAULT NULL,
  `hash_pedido` varchar(255) DEFAULT NULL,
  `maxDateForPayment` varchar(120) DEFAULT NULL,
  `compradorId` int(11) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
