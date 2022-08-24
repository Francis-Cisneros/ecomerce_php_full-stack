-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-07-2022 a las 04:06:37
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_chaskifarma`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` bigint(20) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `portada` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `ruta` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `descripcion`, `portada`, `datecreated`, `ruta`, `status`) VALUES
(1, 'Adultos mayores', 'Artículos de adultos mayores', 'img_c916fc99b58b332f1f25f9ff83de0e77.jpg', '2021-08-20 03:04:04', 'adultos-mayores', 1),
(2, 'Cuidado Femenino', 'Amate cuídate y quierete con nuestros productos', 'img_57513a25cbbd67e74ec06530d1abdede.jpg', '2021-08-21 00:47:10', 'cuidado-femenino', 1),
(3, 'pañales y mas', 'lo mejore', 'img_7e55968e3b0b07580a8e8b0ddf2935d5.jpg', '2022-07-23 03:19:28', 'panales-y-mas', 1),
(4, 'bebes', 'para bebes', 'img_b56ccc32e3265c71031b1fb8c6abb675.jpg', '2022-07-23 03:27:54', 'bebes', 1),
(5, 'Dermatología Cosmética', 'cuidado para la piel', 'img_a880865cf7a159490fce7e693e657fa4.jpg', '2022-07-23 16:18:22', 'dermatologia-cosmetica', 1),
(6, 'Cuidado Muscular y Articular', 'Cuidado para ti y tu familia', 'img_aa09a324adb58e9d52d745b526cd73ec.jpg', '2022-07-23 16:24:08', 'cuidado-muscular-y-articular', 1),
(7, 'Promociones Exclusivas', 'promociones', 'img_5f896dd78b09cda036c8bf7e14b80a60.jpg', '2022-07-23 17:55:28', 'promociones-exclusivas', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(200) COLLATE utf8mb4_swedish_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_swedish_ci NOT NULL,
  `mensaje` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_swedish_ci NOT NULL,
  `dispositivo` varchar(25) COLLATE utf8mb4_swedish_ci NOT NULL,
  `useragent` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `nombre`, `email`, `mensaje`, `ip`, `dispositivo`, `useragent`, `datecreated`) VALUES
(1, 'Fernando Herrera', 'toolsfordeveloper@gmail.com', 'Mensaje del primer suscriptor!', '127.0.0.1', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '2021-08-20 04:06:18'),
(2, 'Sdas', 'rakionfrancis@gmail.com', 'sdd', '::1', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-23 17:50:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `id` bigint(20) NOT NULL,
  `pedidoid` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`id`, `pedidoid`, `productoid`, `precio`, `cantidad`) VALUES
(1, 1, 2, '200.00', 1),
(2, 1, 1, '100.00', 2),
(3, 2, 1, '100.00', 3),
(4, 3, 6, '8.90', 2),
(5, 3, 4, '45.90', 1),
(6, 4, 9, '38.70', 3),
(7, 5, 9, '38.70', 1),
(8, 6, 10, '62.90', 1),
(9, 6, 9, '38.70', 1),
(10, 7, 9, '38.70', 1),
(11, 7, 10, '62.90', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_temp`
--

CREATE TABLE `detalle_temp` (
  `id` bigint(20) NOT NULL,
  `personaid` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `transaccionid` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

CREATE TABLE `imagen` (
  `id` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `img` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `imagen`
--

INSERT INTO `imagen` (`id`, `productoid`, `img`) VALUES
(1, 1, 'pro_1018ac4efefe93878b7468ce72c630a3.jpg'),
(2, 1, 'pro_f90affec1052d2bf94047cb224d16568.jpg'),
(3, 1, 'pro_053da6d3ee7d346b6577ccfef6dac02d.jpg'),
(4, 2, 'pro_04e3bbf847b466de4aed691fca982d9d.jpg'),
(12, 2, 'pro_bb8108451aa8a21610931110c19fb369.jpg'),
(13, 3, 'pro_2b1a81cfe27f85486abbf5a7f8860cd9.jpg'),
(14, 3, 'pro_ff9d29decc4d30b32e6f54f470140448.jpg'),
(15, 3, 'pro_05785de7b5aad5b8db5d41c1408eb0cc.jpg'),
(18, 4, 'pro_3d5c640e9fa4a1c470463323bce5ef6e.jpg'),
(19, 5, 'pro_5e68136a4545c4b36014e163e204e8cd.jpg'),
(20, 6, 'pro_2dc6d596c4e965c8661447700884db98.jpg'),
(21, 7, 'pro_51d05edf1f449ddbbc0411276409d299.jpg'),
(22, 8, 'pro_1d0415b8b8e9d2183b3768cbe7feba3f.jpg'),
(23, 9, 'pro_a6e9b1d2b0e8717aa1831d8ac09e3902.jpg'),
(24, 10, 'pro_a1a24e671621ab65bcf6c624922556ca.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `idmodulo` bigint(20) NOT NULL,
  `titulo` varchar(50) COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`idmodulo`, `titulo`, `descripcion`, `status`) VALUES
(1, 'Dashboard', 'Dashboard', 1),
(2, 'Usuarios', 'Usuarios del sistema', 1),
(3, 'Clientes', 'Clientes de tienda', 1),
(4, 'Productos', 'Todos los productos', 1),
(5, 'Pedidos', 'Pedidos', 1),
(6, 'Caterogías', 'Caterogías Productos', 1),
(7, 'Suscriptores', 'Suscriptores del sitio web', 1),
(8, 'Contactos', 'Mensajes del formulario contacto', 1),
(9, 'Páginas', 'Páginas del sitio web', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `idpedido` bigint(20) NOT NULL,
  `referenciacobro` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `idtransaccionpaypal` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `datospaypal` text COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `personaid` bigint(20) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `costo_envio` decimal(10,2) NOT NULL DEFAULT 0.00,
  `monto` decimal(11,2) NOT NULL,
  `tipopagoid` bigint(20) NOT NULL,
  `direccion_envio` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` varchar(100) COLLATE utf8mb4_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`idpedido`, `referenciacobro`, `idtransaccionpaypal`, `datospaypal`, `personaid`, `fecha`, `costo_envio`, `monto`, `tipopagoid`, `direccion_envio`, `status`) VALUES
(1, '4561654687', NULL, NULL, 3, '2021-08-20 03:41:57', '50.00', '450.00', 3, 'Antigua Guatemala, Antigua Guatemala', 'Completo'),
(2, NULL, '8XD37465755620710', '{\"id\":\"4S6284553D668511R\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"350.00\"},\"payee\":{\"email_address\":\"sb-6z0da4580133@business.example.com\",\"merchant_id\":\"ULNZF7CTTE748\"},\"description\":\"Compra de artículos en Tienda Virtual por $350 \",\"soft_descriptor\":\"PAYPAL *JOHNDOESTES\",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Free Trade Zone\",\"admin_area_2\":\"Guatemala City\",\"admin_area_1\":\"Guatemala City\",\"postal_code\":\"01001\",\"country_code\":\"GT\"}},\"payments\":{\"captures\":[{\"id\":\"8XD37465755620710\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"350.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2021-08-20T09:48:38Z\",\"update_time\":\"2021-08-20T09:48:38Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-iimwo4579006@personal.example.com\",\"payer_id\":\"ZTA3QXTY5JS6Q\",\"address\":{\"country_code\":\"GT\"}},\"create_time\":\"2021-08-20T09:46:25Z\",\"update_time\":\"2021-08-20T09:48:38Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/4S6284553D668511R\",\"rel\":\"self\",\"method\":\"GET\"}]}', 3, '2021-08-20 03:48:39', '50.00', '350.00', 1, 'Guatemala, Guatemala', 'Completo'),
(3, NULL, NULL, NULL, 6, '2022-07-23 15:35:19', '5.00', '68.70', 5, 'Lima, 15556', 'Pendiente'),
(4, '0000', NULL, NULL, 7, '2022-07-23 17:34:40', '5.00', '121.10', 3, 'Lima, 15556', 'Cancelado'),
(5, NULL, NULL, NULL, 1, '2022-07-23 19:20:31', '5.00', '43.70', 2, 'Lima, ate', 'Pendiente'),
(6, NULL, NULL, NULL, 1, '2022-07-23 19:27:19', '5.00', '106.60', 3, 'Lima, 15556', 'Pendiente'),
(7, '00043', NULL, NULL, 17, '2022-07-23 20:54:26', '5.00', '106.60', 3, 'Santa anita las praderas lt 123, Lima Metrolitana', 'Completo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `idpermiso` bigint(20) NOT NULL,
  `rolid` bigint(20) NOT NULL,
  `moduloid` bigint(20) NOT NULL,
  `r` int(11) NOT NULL DEFAULT 0,
  `w` int(11) NOT NULL DEFAULT 0,
  `u` int(11) NOT NULL DEFAULT 0,
  `d` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`idpermiso`, `rolid`, `moduloid`, `r`, `w`, `u`, `d`) VALUES
(3, 1, 1, 1, 1, 1, 1),
(4, 1, 2, 1, 1, 1, 1),
(5, 1, 3, 1, 1, 1, 1),
(6, 1, 4, 1, 1, 1, 1),
(7, 1, 5, 1, 1, 1, 1),
(8, 1, 6, 1, 1, 1, 1),
(9, 1, 7, 1, 1, 1, 1),
(10, 1, 8, 1, 1, 1, 1),
(11, 1, 9, 1, 1, 1, 1),
(12, 2, 1, 1, 1, 1, 1),
(13, 2, 2, 0, 0, 0, 0),
(14, 2, 3, 1, 1, 1, 0),
(15, 2, 4, 1, 1, 1, 0),
(16, 2, 5, 1, 1, 1, 0),
(17, 2, 6, 1, 1, 1, 0),
(18, 2, 7, 1, 0, 0, 0),
(19, 2, 8, 1, 0, 0, 0),
(20, 2, 9, 1, 1, 1, 1),
(21, 3, 1, 0, 0, 0, 0),
(22, 3, 2, 0, 0, 0, 0),
(23, 3, 3, 0, 0, 0, 0),
(24, 3, 4, 0, 0, 0, 0),
(25, 3, 5, 1, 0, 0, 0),
(26, 3, 6, 0, 0, 0, 0),
(27, 3, 7, 0, 0, 0, 0),
(28, 3, 8, 0, 0, 0, 0),
(29, 3, 9, 0, 0, 0, 0),
(30, 4, 1, 1, 0, 0, 0),
(31, 4, 2, 0, 0, 0, 0),
(32, 4, 3, 1, 1, 1, 0),
(33, 4, 4, 1, 0, 0, 0),
(34, 4, 5, 1, 0, 1, 0),
(35, 4, 6, 0, 0, 0, 0),
(36, 4, 7, 1, 0, 0, 0),
(37, 4, 8, 1, 0, 0, 0),
(38, 4, 9, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idpersona` bigint(20) NOT NULL,
  `identificacion` varchar(30) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `nombres` varchar(80) COLLATE utf8mb4_swedish_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `email_user` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `password` varchar(75) COLLATE utf8mb4_swedish_ci NOT NULL,
  `nit` varchar(20) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `nombrefiscal` varchar(80) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `direccionfiscal` varchar(100) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `token` varchar(100) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `rolid` bigint(20) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `identificacion`, `nombres`, `apellidos`, `telefono`, `email_user`, `password`, `nit`, `nombrefiscal`, `direccionfiscal`, `token`, `rolid`, `datecreated`, `status`) VALUES
(1, '24091989', 'Francis 2', 'Calderon', 123456, 'francis@cisneros.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'RUC', 'Giovani', 'Psj san martin mz d lt 13 san roque ate', NULL, 1, '2021-08-20 01:34:15', 1),
(2, '24091990', 'Alex', 'Arana', 456878977, 'alex@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, NULL, 2, '2021-08-20 02:58:47', 0),
(3, '84654864', 'Ricardo', 'Hernández Pérez', 4687987, 'hr@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '468798', 'Ricardo HP', 'Ciudad de Guatemala', NULL, 3, '2021-08-20 03:41:28', 0),
(4, '798465877', 'Fernando', 'Guerra', 468498, 'fer@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, NULL, 4, '2021-08-21 18:07:00', 0),
(6, '7676', 'Giovani', 'Cisneros', 975412130, 'francis@gmail.com', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', NULL, NULL, NULL, '257923361bbb2178ff30-dd6bd110a2aa61c9ba8d-0448d47d02daacfb0414-825c6b4ed4fff49498c1', 3, '2022-07-23 01:10:57', 1),
(7, NULL, 'Javier Heraldo', 'Montoya Quispe', 975412130, 'rakionfrancis@gmail.com', 'a3c3ab3c8bef8892a2398b1e81b5730f5b8e3a3b3d3036df15586e5947b8cd21', NULL, NULL, NULL, '28fa5c5d7d427606216f-a049ff8ff1a0a0c94ba0-c4bc7b198284945445b5-25a109cbc33784cc05b9', 3, '2022-07-23 17:33:24', 1),
(8, '7676703', 'HECTOR ODIN', 'DELGADO ENRIQUEZ', 987276691, 'hector@utp.edu.pe', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', NULL, NULL, NULL, NULL, 1, '2022-07-23 20:49:07', 1),
(17, '76767054', 'MARCO RAMON', 'ALCANTARA ZEVALLOS', 1234456, 'marco@gmail.com', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', NULL, NULL, NULL, NULL, 3, '2022-07-23 20:53:18', 1),
(18, '8276722', 'JUAN RAMIRO', 'QUISPE MAMANI', 987654312, 'juan@gmail.com', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', NULL, NULL, NULL, '066511af34e258c53bbc-d1e3dd4413964ecc2161-001d0028609484cf4737-90705c048ce575f4fc98', 4, '2022-07-23 20:58:15', 1),
(19, '9476703', 'MARTHA RAMONA', 'CABRERA ZEVALLOS', 95432187, 'martha@gmail.com', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', NULL, NULL, NULL, NULL, 2, '2022-07-23 21:01:04', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE `post` (
  `idpost` bigint(20) NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `contenido` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `portada` varchar(100) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `datecreate` datetime NOT NULL DEFAULT current_timestamp(),
  `ruta` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`idpost`, `titulo`, `contenido`, `portada`, `datecreate`, `ruta`, `status`) VALUES
(1, 'Inicio', '<div class=\"p-t-80\"> <h3 class=\"ltext-103 cl5\">Nuestras marcas</h3> </div> <div> <p>Trabajamos con las mejores marcas del mundo ...</p> </div> <div class=\"row\"> <div class=\"col-md-3\"><img src=\"../../../../paginas/editar/Assets/images/m3.png\" alt=\"Marca 1\" width=\"110\" height=\"110\" /></div> <div class=\"col-md-3\"><img src=\"../../../../paginas/editar/Assets/images/m2.png\" alt=\"Marca 2\" /></div> <div class=\"col-md-3\"><img src=\"../../../../paginas/editar/Assets/images/m3.png\" alt=\"Marca 3\" /></div> <div class=\"col-md-3\"><img src=\"../../../../paginas/editar/Assets/images/m4.png\" alt=\"Marca 4\" /></div> </div>', 'img_ef8c13c74506afaf34d8e9c7e36525ca.jpg', '2021-07-20 02:40:15', 'inicio', 1),
(2, 'Tienda', '<p>Contenido p&aacute;gina!</p>', 'img_69ccae0cdcb4acdae16c73e047680046.jpg', '2021-08-06 01:21:27', 'tienda', 1),
(3, 'Carrito', '<p>Contenido p&aacute;gina!</p>', 'img_92db81f2c289cc9f596dded371d9c2af.jpg', '2021-08-06 01:21:52', 'carrito', 1),
(4, 'Nosotros', '<section class=\"bg0 p-t-75 p-b-120\"> <div class=\"container\"> <div class=\"row p-b-148\"> <div class=\"col-md-7 col-lg-8\"> <div class=\"p-t-7 p-r-85 p-r-15-lg p-r-0-md\"> <h3 class=\"mtext-111 cl2 p-b-16\">Historia</h3> <p class=\"stext-113 cl6 p-b-26\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris consequat consequat enim, non auctor massa ultrices non. Morbi sed odio massa. Quisque at vehicula tellus, sed tincidunt augue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas varius egestas diam, eu sodales metus scelerisque congue. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas gravida justo eu arcu egestas convallis. Nullam eu erat bibendum, tempus ipsum eget, dictum enim. Donec non neque ut enim dapibus tincidunt vitae nec augue. Suspendisse potenti. Proin ut est diam. Donec condimentum euismod tortor, eget facilisis diam faucibus et. Morbi a tempor elit.</p> <p class=\"stext-113 cl6 p-b-26\">Donec gravida lorem elit, quis condimentum ex semper sit amet. Fusce eget ligula magna. Aliquam aliquam imperdiet sodales. Ut fringilla turpis in vehicula vehicula. Pellentesque congue ac orci ut gravida. Aliquam erat volutpat. Donec iaculis lectus a arcu facilisis, eu sodales lectus sagittis. Etiam pellentesque, magna vel dictum rutrum, neque justo eleifend elit, vel tincidunt erat arcu ut sem. Sed rutrum, turpis ut commodo efficitur, quam velit convallis ipsum, et maximus enim ligula ac ligula.</p> <p class=\"stext-113 cl6 p-b-26\">Any questions? Let us know in store at 8th floor, 379 Hudson St, New York, NY 10018 or call us on (+1) 96 716 6879</p> </div> </div> <div class=\"col-11 col-md-5 col-lg-4 m-lr-auto\"> <div class=\"how-bor1 \"> <div class=\"hov-img0\"><img src=\"https://cdn.pixabay.com/photo/2015/07/17/22/43/student-849825_1280.jpg\" alt=\"IMG\" width=\"500\" height=\"333\" /></div> </div> </div> </div> <div class=\"row\"> <div class=\"order-md-2 col-md-7 col-lg-8 p-b-30\"> <div class=\"p-t-7 p-l-85 p-l-15-lg p-l-0-md\"> <h2 class=\"mtext-111 cl2 p-b-16\"><span style=\"color: #236fa1;\">Nuestra Misi&oacute;n</span></h2> <p class=\"stext-113 cl6 p-b-26\">Mauris non lacinia magna. Sed nec lobortis dolor. Vestibulum rhoncus dignissim risus, sed consectetur erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam maximus mauris sit amet odio convallis, in pharetra magna gravida. Praesent sed nunc fermentum mi molestie tempor. Morbi vitae viverra odio. Pellentesque ac velit egestas, luctus arcu non, laoreet mauris. Sed in ipsum tempor, consequat odio in, porttitor ante. Ut mauris ligula, volutpat in sodales in, porta non odio. Pellentesque tempor urna vitae mi vestibulum, nec venenatis nulla lobortis. Proin at gravida ante. Mauris auctor purus at lacus maximus euismod. Pellentesque vulputate massa ut nisl hendrerit, eget elementum libero iaculis.</p> <div class=\"bor16 p-l-29 p-b-9 m-t-22\"> <p class=\"stext-114 cl6 p-r-40 p-b-11\">Creativity is just connecting things. When you ask creative people how they did something, they feel a little guilty because they didn\'t really do it, they just saw something. It seemed obvious to them after a while.</p> <span class=\"stext-111 cl8\"> - Steve Job&rsquo;s </span></div> </div> </div> <div class=\"order-md-1 col-11 col-md-5 col-lg-4 m-lr-auto p-b-30\"> <div class=\"how-bor2\"> <div class=\"hov-img0\"><img src=\"https://cdn.pixabay.com/photo/2015/07/17/22/43/student-849822_1280.jpg\" alt=\"IMG\" width=\"500\" height=\"333\" /></div> </div> </div> </div> </div> </section>', 'img_e9eb7a2bec3a170c5a9db830636791db.jpg', '2021-08-09 03:09:44', 'nosotros', 1),
(5, 'Contacto', '<div class=\"mapouter\"> <div class=\"gmap_canvas\"> <div class=\"mapouter\"> <div class=\"gmap_canvas\"><iframe id=\"gmap_canvas\" src=\"https://maps.google.com/maps?q=inka%20farma%20lima&amp;t=&amp;z=15&amp;ie=UTF8&amp;iwloc=&amp;output=embed\" width=\"1090\" height=\"500\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe><br /><a href=\"https://www.embedgooglemap.net\">embedgooglemap.net</a></div> </div> </div> </div>', 'img_a5bf6a4ca5f675d4d038d09918c30906.jpg', '2021-08-09 03:11:08', 'contacto', 1),
(6, 'Preguntas frecuentes', '<ol> <li><strong>&iquest;Cu&aacute;l es el tiempo de entrega de los producto? </strong>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt! Quae doloribus deserunt qui fugit illo nobis ipsum, accusamus eius perferendis beatae culpa molestias!</li> <li><strong>&iquest;C&oacute;mo es la forma de env&iacute;o de los productos?</strong> Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur.</li> <li><strong>&iquest;Cu&aacute;l es el tiempo m&aacute;ximo para solicitar un reembolso?</strong> Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt!</li> </ol> <p>&nbsp;</p> <p>Otras preguntas</p> <ul> <li><strong>&iquest;Qu&eacute; formas de pago aceptan? </strong><span style=\"color: #666666; font-family: Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt! Quae doloribus deserunt qui fugit illo nobis ipsum, accusamus eius perferendis beatae culpa molestias!</span></li> </ul>', '', '2021-08-11 01:24:19', 'preguntas-frecuentes', 1),
(7, 'Términos y Condiciones', '<p>A continuaci&oacute;n se describen los t&eacute;rmino y condiciones de la Tienda Virtual!</p> <ol> <li>Pol&iacute;tica uno</li> <li>Termino dos</li> <li>Condici&oacute;n tres</li> </ol> <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt! Quae doloribus deserunt qui fugit illo nobis ipsum, accusamus eius perferendis beatae culpa molestias!</p>', 'img_9e8750eaf31f4ecae7fb92dbe480296f.jpg', '2021-08-11 01:51:06', 'terminos-y-condiciones', 1),
(8, 'Sucursales', '<section class=\"py-5 text-center\"> <div class=\"container\"> <p>Visitanos y obten los mejores precios del mercado, cualquier art&iacute;culo que necestas para vivir mejor</p> <a class=\"btn btn-info\" href=\"../../tienda_virtual/tienda\">VER PRODUCTOS</a></div> </section> <div class=\"py-5 bg-light\"> <div class=\"container\"> <div class=\"row\"> <div class=\"col-md-4\"> <div class=\"card mb-4 box-shadow hov-img0\"><img src=\"https://abelosh.com/tienda_virtual/Assets/images/s1.jpg\" alt=\"Tienda Uno\" width=\"100%\" height=\"100%\" /> <div class=\"card-body\"> <p class=\"card-text\">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quaerat necessitatibus eligendi, soluta ipsa natus, at earum qui enim, illum doloremque, accusantium autem nemo est esse nulla neque eaque repellendus amet.</p> <p>Direcci&oacute;n: Antigua Gautemala <br />Tel&eacute;fono: 4654645 <br />Correo: info@abelosh.com</p> </div> </div> </div> <div class=\"col-md-4\"> <div class=\"card mb-4 box-shadow hov-img0\"><img src=\"https://abelosh.com/tienda_virtual/Assets/images/s2.jpg\" alt=\"Sucural dos\" width=\"100%\" height=\"100%\" /> <div class=\"card-body\"> <p class=\"card-text\">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quaerat necessitatibus eligendi, soluta ipsa natus, at earum qui enim, illum doloremque, accusantium autem nemo est esse nulla neque eaque repellendus amet.</p> <p>Direcci&oacute;n: Antigua Gautemala <br />Tel&eacute;fono: 4654645 <br />Correo: info@abelosh.com</p> </div> </div> </div> <div class=\"col-md-4\"> <div class=\"card mb-4 box-shadow hov-img0\"><img src=\"https://abelosh.com/tienda_virtual/Assets/images/s3.jpg\" alt=\"Sucural tres\" width=\"100%\" height=\"100%\" /> <div class=\"card-body\"> <p class=\"card-text\">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quaerat necessitatibus eligendi, soluta ipsa natus, at earum qui enim, illum doloremque, accusantium autem nemo est esse nulla neque eaque repellendus amet.</p> <p>Direcci&oacute;n: Antigua Gautemala <br />Tel&eacute;fono: 4654645 <br />Correo: info@abelosh.com</p> </div> </div> </div> </div> </div> </div>', 'img_d72cb5712933863e051dc9c7fac5e253.jpg', '2021-08-11 02:26:45', 'sucursales', 0),
(9, 'Not Found', '<p style=\"text-align: center;\"><br /><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;???? OOPSS NO SE ENCONTRO LO QUE BUSCAS ....</strong></p>', 'img_a9a6aadb470f369b0548144e6e982906.jpg', '2021-08-12 02:30:49', 'not-found', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idproducto` bigint(20) NOT NULL,
  `categoriaid` bigint(20) NOT NULL,
  `codigo` varchar(30) COLLATE utf8mb4_swedish_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `imagen` varchar(100) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `ruta` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `categoriaid`, `codigo`, `nombre`, `descripcion`, `precio`, `stock`, `imagen`, `datecreated`, `ruta`, `status`) VALUES
(1, 1, '2417984565', 'Chaqueta Azul', '<p><strong style=\"margin: 0px; padding: 0px; color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Lorem Ipsum</strong><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</span></p>', '100.00', 50, NULL, '2021-08-20 03:12:14', 'chaqueta-azul', 0),
(2, 1, '456879878', 'Reloj', '<p><strong style=\"margin: 0px; padding: 0px; color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Lorem Ipsum</strong><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</span></p>', '200.00', 100, NULL, '2021-08-20 03:14:10', 'reloj', 0),
(3, 2, '4658798787', 'Bocina JBL Flip 5', '<p>Wireless Bluetooth streaming. 24 hours of playtime. IPX7 waterproof. JBL Connect plus. High-capacity battery. Connector type: 3.5 millimeter stereo. Power Source Type: Battery Powered.</p>', '300.00', 100, NULL, '2021-08-21 00:48:21', 'bocina-jbl-flip-5', 0),
(4, 3, '12345', 'pañal Ninet Super Mega Talla XL - Bolsa 52 UN', '<ul> <li>Pa&ntilde;ales desechables para beb&eacute;s</li> <li>Comodidad, cuidado y protecci&oacute;n</li> <li>Ninet pa&ntilde;ales XL</li> <li>Bolsa de 52 unidades</li> <li>NSOA00086-12PE</li> <li>&nbsp;</li> </ul>', '45.90', 12, NULL, '2022-07-23 03:21:29', 'panal-ninet-super-mega-talla-xl---bolsa-52-un', 1),
(5, 4, '12645', 'Babylac Pro 2 Neuro AdvanceLata 900 G', '<p>F&oacute;rmula l&aacute;ctea de seguimiento con 41 nutrientes que ayudan a promover el desarrollo integral: * DHA, ARA, Fosfol&iacute;pidos y Colina que favorecen el desarrollo cerebral. * &Uacute;nica enriquecida con Lactoferrina, que junto con con una mezcla de Pre y Probi&oacute;ticos que ayudan a fortalecer las defensas. * Libre de Aceite de Palma que favorece la absorci&oacute;n de calcio y otros nutrientes para promover el crecimiento. * Hecha en Holanda con altos est&aacute;ndares de calidad europeos.Babylac Pro 2: Indiada para beb&eacute;s de 0 a 6 meses.</p> <p>&nbsp;</p> <ul> <li>F&oacute;rmula l&aacute;ctea infantil de seguimiento</li> <li>Babylac Pro 2 : de 6 a 12 meses</li> <li>Con el sistema Neuro Advance: DHA, ARA, Fosfol&iacute;pidos y Colina</li> <li>RS: I1000918E NAIRPA</li> </ul>', '98.00', 12, NULL, '2022-07-23 03:29:06', 'babylac-pro-2-neuro-advancelata-900-g', 1),
(6, 4, '12647', 'Colonia para Bebés Ninet', '<center><img src=\"https://inkafarmaproductimages.s3.us-west-2.amazonaws.com/imagenes/marca-descripcion/Ninet.png\" /></center><center> <p>Los productos Ninet fueron dise&ntilde;ados para ayudarte en cada etapa del desarrollo de tu beb&eacute; y con un gran compromiso con todas las familias peruanas de brindarte productos de calidad. Un mundo de experiencias y aventuras para disfrutar con tu beb&eacute;.</p> </center> <p>&nbsp;</p> <center><strong>Seguridad y cuidado infantil con Colonia para Beb&eacute;s Ninet</strong></center> <p>&nbsp;</p> <center> <p>La colonia para beb&eacute;s Ninet te brinda una suave, fresca y exquisita fragancia a lim&oacute;n. Perfuma y humecta todo el d&iacute;a.</p> </center><center><img src=\"https://dcuk1cxrnzjkh.cloudfront.net/imagenes/Imagen+descripcion/Bambo-15.png\" /></center> <p>&nbsp;</p> <center> <h3 class=\"&ldquo;heading-1&rdquo;\">Colonia con fragancia a lim&oacute;n</h3> <p>Productos que cuidan de tu beb&eacute; solo en Inkafarma</p> <p>&nbsp;</p> <ul> <li>Colonia para beb&eacute;s</li> <li>Exquisita fragancia a lim&oacute;n</li> <li>Perfuma y humecta todo el d&iacute;a</li> <li>NSOC42103-19PE</li> </ul> </center>', '8.90', 54, NULL, '2022-07-23 03:31:44', 'colonia-para-bebes-ninet', 1),
(7, 2, '126472', 'Ponstan Rd 220mg Tableta recubierta', '<ul> <li>Dolores Menstruales</li> <li>Registro Sanitario E-22422</li> </ul>', '8.25', 12, NULL, '2022-07-23 16:15:40', 'ponstan-rd-220mg-tableta-recubierta', 1),
(8, 5, '1264742', 'Baño y Shampoo Eucerin Baby - Frasco 400 ML', '<ul> <li>Limpieza para la piel y cabello de beb&eacute;s</li> <li>No irrita los ojos</li> <li>Protege y no deshidrata la piel</li> <li>NSOC72092-16CO</li> </ul> <center><img src=\"https://inkafarmaproductimages.s3.us-west-2.amazonaws.com/imagenes/marca-descripcion/Eucerin.png\" /></center><center> <p>Eucerin con m&aacute;s de 111 a&ntilde;os de ciencia visible en la piel y una de las marcas l&iacute;deres en dermocosm&eacute;tica a nivel mundial, cuenta con una extensa l&iacute;nea de productos que ofrece soluciones y tratamiento para la piel, cremas corporales, anti-arrugas, protecci&oacute;n solar, shampoos y mucho m&aacute;s. Todos los productos de Eucerin han demostrado una eficacia probada para proteger y cuidar tu piel.</p> </center> <p>&nbsp;</p> <center><strong>Eucerin para Beb&eacute;s limpieza y cuidado infantil para piel sensible Ba&ntilde;o y Shampoo</strong></center> <p>&nbsp;</p> <center> <p>Eucerin para Beb&eacute;s limpieza y cuidado infantil para piel sensible Ba&ntilde;o y Shampoo</p> </center><center><img src=\"https://inkafarmaproductimages.s3.us-west-2.amazonaws.com/imagenes/Imagen+descripcion/Eucerin-6.png\" /></center> <p>&nbsp;</p> <center></center> <p>&nbsp;</p> <p>&nbsp;</p> <center><strong>Conoce todo los productos para el aseo con Eucerin Baby</strong></center> <p>&nbsp;</p> <p>&nbsp;</p> <center>Productos probados y efectivos, libres de fragancias, parabenos y colorantes. Una piel delicada y sensible del beb&eacute; merece lo mejor.</center>', '84.50', 13, NULL, '2022-07-23 16:20:08', 'bano-y-shampoo-eucerin-baby---frasco-400-ml', 1),
(9, 6, '1264723', 'Parche Transdérmico Gutong Tiegao', '<p><strong>Composicion&nbsp;</strong></p> <p>Rosmarinus Offcinalis 40mg | Cinnamomum Camphora (L.) Siebold 40mg | Mentha Haplocalyx Briq 40mg | Ruta Graveolens 10mg | Gaultheria Procumbens 80mg</p> <p><strong>Precaucion advertencia</strong></p> <p>PRECAUCIONES: Puede producir dermatitis de contacto. ADVERTENCIAS: Si observa una reacci&oacute;n desfavorable suspenda su uso y consulte a su m&eacute;dico. No recomendado en mujeres gestantes y en per&iacute;odo de lactancia. No aplicar en casos de piel lesionada o quemaduras. No deben ser usados en las regiones faciales de infantes y ni&ntilde;os peque&ntilde;os, especialmente en el &aacute;rea nasal. Mant&eacute;ngase fuera del alcance de los ni&ntilde;os.</p>', '38.70', 6, NULL, '2022-07-23 16:25:53', 'parche-transdermico-gutong-tiegao', 1),
(10, 7, '12647543', 'Pañal Pampers Premium Care Talla XXG Bolsa 60 UN', '<ul> <li>Delicada protecci&oacute;n para la piel de tu beb&eacute;</li> <li>Canales de aire y hasta 12 horas de absorci&oacute;n</li> <li>Con loci&oacute;n hipoalerg&eacute;nica que previene irritaciones</li> <li>NSOA00163-16PE</li> </ul> <center><img src=\"https://inkafarmaproductimages.s3.us-west-2.amazonaws.com/imagenes/marca-descripcion/Pampers.png\" /></center><center> <p>Pampers llena de felicidad, salud y cuidado durante todas las etapas del desarrollo de tu beb&eacute;. Los productos Pampers, con m&aacute;s de 50 a&ntilde;os de experiencia, fueron dise&ntilde;ados especialmente para brindarte seguridad, confianza, protecci&oacute;n y alta calidad. Disfruta del amor, los sue&ntilde;os y juegos con tu beb&eacute; con Pampers.</p> </center> <p>&nbsp;</p> <center><strong>Protecci&oacute;n y seguridad con los Pa&ntilde;ales Pampers Premium Care</strong></center> <p>&nbsp;</p> <center> <p>Protege la delicada piel de tu beb&eacute; con los pa&ntilde;ales Pampers desde el primer d&iacute;a. Brinda suavidad como el algod&oacute;n y es ultra respirable, ya que cuenta con canales de aire para una piel m&aacute;s fresca y seca. Cuenta con un Indicador de Humedad que ayuda a saber cu&aacute;ndo es hora para un cambio. Elige Pampers Premium Care.</p> </center><center><img src=\"https://inkafarmaproductimages.s3.us-west-2.amazonaws.com/imagenes/Imagen+descripcion/Pampers-5.png\" /></center> <p>&nbsp;</p> <center></center> <p>&nbsp;</p> <p>&nbsp;</p> <center><strong>Descubre la L&iacute;nea de Pa&ntilde;ales Pampers Premium Care</strong></center> <p>&nbsp;</p> <p>&nbsp;</p> <center>Suave como algod&oacute;n y ultra respirable</center>', '62.90', 54, NULL, '2022-07-23 17:56:33', 'panal-pampers-premium-care-talla-xxg-bolsa-60-un', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reembolso`
--

CREATE TABLE `reembolso` (
  `id` bigint(20) NOT NULL,
  `pedidoid` bigint(20) NOT NULL,
  `idtransaccion` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `datosreembolso` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `observacion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` varchar(150) COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idrol` bigint(20) NOT NULL,
  `nombrerol` varchar(50) COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idrol`, `nombrerol`, `descripcion`, `status`) VALUES
(1, 'Administrador', 'Acceso a todo el sistema', 1),
(2, 'Supervisor', 'Supervisor de tiendas', 1),
(3, 'Cliente', 'Clientes en general', 1),
(4, 'Vendedor', 'Operador de tienda', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscripciones`
--

CREATE TABLE `suscripciones` (
  `idsuscripcion` bigint(20) NOT NULL,
  `nombre` varchar(200) COLLATE utf8mb4_swedish_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `suscripciones`
--

INSERT INTO `suscripciones` (`idsuscripcion`, `nombre`, `email`, `datecreated`) VALUES
(1, 'Roberto', 'toolsfordeveloper@gmail.com', '2021-08-20 04:05:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopago`
--

CREATE TABLE `tipopago` (
  `idtipopago` bigint(20) NOT NULL,
  `tipopago` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `tipopago`
--

INSERT INTO `tipopago` (`idtipopago`, `tipopago`, `status`) VALUES
(1, 'PayPal', 1),
(2, 'Efectivo', 1),
(3, 'Tarjeta', 1),
(4, 'Cheque', 1),
(5, 'Despósito Bancario', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidoid` (`pedidoid`),
  ADD KEY `productoid` (`productoid`);

--
-- Indices de la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productoid` (`productoid`),
  ADD KEY `personaid` (`personaid`);

--
-- Indices de la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productoid` (`productoid`);

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`idmodulo`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idpedido`),
  ADD KEY `personaid` (`personaid`),
  ADD KEY `tipopagoid` (`tipopagoid`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`idpermiso`),
  ADD KEY `rolid` (`rolid`),
  ADD KEY `moduloid` (`moduloid`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idpersona`),
  ADD KEY `rolid` (`rolid`);

--
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`idpost`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idproducto`),
  ADD KEY `categoriaid` (`categoriaid`);

--
-- Indices de la tabla `reembolso`
--
ALTER TABLE `reembolso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidoid` (`pedidoid`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idrol`);

--
-- Indices de la tabla `suscripciones`
--
ALTER TABLE `suscripciones`
  ADD PRIMARY KEY (`idsuscripcion`);

--
-- Indices de la tabla `tipopago`
--
ALTER TABLE `tipopago`
  ADD PRIMARY KEY (`idtipopago`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `imagen`
--
ALTER TABLE `imagen`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `modulo`
--
ALTER TABLE `modulo`
  MODIFY `idmodulo` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idpedido` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `idpermiso` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `idpersona` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `idpost` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idproducto` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `reembolso`
--
ALTER TABLE `reembolso`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `idrol` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `suscripciones`
--
ALTER TABLE `suscripciones`
  MODIFY `idsuscripcion` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipopago`
--
ALTER TABLE `tipopago`
  MODIFY `idtipopago` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`personaid`) REFERENCES `persona` (`idpersona`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`tipopagoid`) REFERENCES `tipopago` (`idtipopago`) ON DELETE CASCADE ON UPDATE CASCADE;

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

--
-- Filtros para la tabla `reembolso`
--
ALTER TABLE `reembolso`
  ADD CONSTRAINT `reembolso_ibfk_1` FOREIGN KEY (`pedidoid`) REFERENCES `pedido` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
