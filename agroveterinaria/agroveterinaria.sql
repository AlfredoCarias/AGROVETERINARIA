-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-10-2021 a las 18:50:46
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agroveterinaria`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ingreso_venta` (IN `v_id_fact` INT, `v_nit` VARCHAR(20), `v_id_prod` INT, `v_cantidad` INT, `v_precio` FLOAT(10,2), `v_total` FLOAT(10,2))  BEGIN
  INSERT INTO factura(ID_FACTURA,FECHA_FACTURA,ID_CL_FACTURA)
  VALUES(v_id_fact,NOW(),v_nit);
  INSERT INTO detalle_factura(ID_DETALLE,ID_FACTURA,ID_PRODUCTO,CANTIDAD_PRODUCTO,PRECIO_UNIDAD,TOTAL)
  VALUES('',v_id_fact,v_id_prod,v_cantidad,v_precio,v_total);
  
END$$

DELIMITER ;

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
(1, 'Alimentos para Gatos', 'Alimentos para gatos', 'img_468f6c5770a7bc2fbb15494935660b1c.jpg', '2021-08-20 03:04:04', 'alimentos-para-gatos', 1),
(2, 'Alimentos para Perros', 'Alimentos para nuestro amigo peludo', 'img_bab6b692f08b2440254722b0613dbea5.jpg', '2021-08-21 00:47:10', 'alimentos-para-perros', 1),
(3, 'Pastillas', 'Son pastillas', 'img_e7394288486892904fa457d15fae4993.jpg', '2021-10-19 19:01:45', 'pastillas', 0),
(4, 'Accesorios', 'Accesorios para mascotas', 'img_937bb778a312f103de7784f6bef0b51b.jpg', '2021-10-22 19:51:19', 'accesorios', 1),
(5, 'Medicina', 'Medicina para nuestras mascotas', 'img_f5dc0e6c6f7b8ef36c849b1ccbed5d9c.jpg', '2021-10-22 19:57:22', 'medicina', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_factura`
--

CREATE TABLE `detalle_factura` (
  `ID_DETALLE` bigint(20) NOT NULL,
  `ID_FACTURA` bigint(20) NOT NULL,
  `ID_PRODUCTO` bigint(20) NOT NULL,
  `CANTIDAD_PRODUCTO` int(11) NOT NULL,
  `PRECIO_UNIDAD` float(10,2) NOT NULL,
  `TOTAL` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `color` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `events`
--

INSERT INTO `events` (`id`, `title`, `descripcion`, `color`, `start`, `end`) VALUES
(6, 'Vacunacion Parmovirus', 'alfredoloyocarias@gmail.com', '#FFD700', '2021-10-25 00:00:00', '2021-10-25 00:00:00'),
(7, 'Comprar Concentrado', 'Comprar mas concentrado para perros', '#FF4500', '2021-10-22 00:00:00', '2021-10-22 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `ID_FACTURA` bigint(20) NOT NULL,
  `FECHA_FACTURA` datetime DEFAULT NULL,
  `ID_CL_FACTURA` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`ID_FACTURA`, `FECHA_FACTURA`, `ID_CL_FACTURA`) VALUES
(6, '2021-10-19 20:51:02', 3);

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
(19, 5, 'pro_7ef2f2a1db79fe873c52983fe0a69575.jpg'),
(20, 7, 'pro_ea63d209fcd27c866eb69059de9131bb.jpg'),
(21, 8, 'pro_6ff69100137a3adb0e2c561c84bbe907.jpg'),
(22, 8, 'pro_362ec0d0f5a431811a81aca8f1c3462d.jpg'),
(23, 9, 'pro_811c4d16a5cbb32672f02546d934e9dd.jpg'),
(24, 10, 'pro_c8d613033e3b87d1d186ca03754de67c.jpg'),
(25, 11, 'pro_c7283547202b5fc3df6d55b3957e8b8b.jpg'),
(26, 13, 'pro_37fa015611cdb208c140153980fdd62e.jpg'),
(27, 12, 'pro_0be375dc6bd972f842fb834101bd6c4c.jpg');

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
(5, 'Venta', 'Venta de Producto', 1),
(6, 'Caterogías', 'Caterogías Productos', 1),
(7, 'Citas', 'Reporte de Citas', 1),
(8, 'Calendario', 'Calendario de Citas', 1);

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
(12, 2, 1, 1, 1, 1, 1),
(13, 2, 2, 0, 0, 0, 0),
(14, 2, 3, 1, 1, 1, 0),
(15, 2, 4, 1, 1, 1, 0),
(17, 2, 6, 1, 1, 1, 0),
(30, 4, 1, 1, 0, 0, 0),
(31, 4, 2, 0, 0, 0, 0),
(32, 4, 3, 1, 1, 1, 0),
(33, 4, 4, 1, 0, 0, 0),
(35, 4, 6, 0, 0, 0, 0),
(47, 1, 1, 1, 1, 1, 1),
(48, 1, 2, 1, 1, 1, 1),
(49, 1, 3, 1, 1, 1, 1),
(50, 1, 4, 1, 1, 1, 1),
(51, 1, 5, 1, 1, 1, 1),
(52, 1, 6, 1, 1, 1, 1),
(53, 1, 7, 1, 1, 1, 1),
(54, 1, 8, 1, 1, 1, 1),
(55, 3, 1, 0, 0, 0, 0),
(56, 3, 2, 0, 0, 0, 0),
(57, 3, 3, 0, 0, 0, 0),
(58, 3, 4, 1, 0, 0, 0),
(59, 3, 5, 0, 0, 0, 0),
(60, 3, 6, 0, 0, 0, 0),
(61, 3, 7, 1, 0, 0, 0),
(62, 3, 8, 1, 0, 0, 0);

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
(1, '24091989', 'Alfredo', 'Loyo', 57164900, 'alfredoloyocarias@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'CF', 'Alfredo Loyo Carias', 'Zacapa', NULL, 1, '2021-08-20 01:34:15', 1),
(3, '84654864', 'Ricardo', 'Hernández Pérez', 4687987, 'hr@info.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '468798', 'Ricardo HP', 'Ciudad de Guatemala', NULL, 3, '2021-08-20 03:41:28', 0),
(4, '123465789', 'Jefry', 'Calderon', 456789, 'jefry@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, NULL, 4, '2021-08-21 18:07:00', 1),
(5, '123456', 'Esdras', 'Chigna', 54875421, 'esdras@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, NULL, 3, '2021-10-18 22:59:45', 1),
(6, '5456', 'Fulano', 'Mengano', 456789, 'fulano@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', NULL, NULL, NULL, NULL, 1, '2021-10-19 19:00:22', 0);

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
(1, 'Inicio', '<div class=\"p-t-80\"> <h3 class=\"ltext-103 cl5\">Nuestras marcas</h3> </div> <div> <p>Trabajamos con las mejores marcas del mundo ...</p> </div> <div class=\"row\"> <div class=\"col-md-3\"><img src=\"Assets/images/m1.png\" alt=\"Marca 1\" width=\"110\" height=\"110\" /></div> <div class=\"col-md-3\"><img src=\"Assets/images/m2.png\" alt=\"Marca 2\" /></div> <div class=\"col-md-3\"><img src=\"Assets/images/m3.png\" alt=\"Marca 3\" /></div> <div class=\"col-md-3\"><img src=\"Assets/images/m4.png\" alt=\"Marca 4\" /></div> </div>', '', '2021-07-20 02:40:15', 'inicio', 1),
(2, 'Tienda', '<p>Contenido p&aacute;gina!</p>', '', '2021-08-06 01:21:27', 'tienda', 1),
(4, 'Nosotros', '<section class=\"bg0 p-t-75 p-b-120\"> <div class=\"container\"> <div class=\"row p-b-148\"> <div class=\"col-md-7 col-lg-8\"> <div class=\"p-t-7 p-r-85 p-r-15-lg p-r-0-md\"> <h3 class=\"mtext-111 cl2 p-b-16\">Historia</h3> <p class=\"stext-113 cl6 p-b-26\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris consequat consequat enim, non auctor massa ultrices non. Morbi sed odio massa. Quisque at vehicula tellus, sed tincidunt augue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas varius egestas diam, eu sodales metus scelerisque congue. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas gravida justo eu arcu egestas convallis. Nullam eu erat bibendum, tempus ipsum eget, dictum enim. Donec non neque ut enim dapibus tincidunt vitae nec augue. Suspendisse potenti. Proin ut est diam. Donec condimentum euismod tortor, eget facilisis diam faucibus et. Morbi a tempor elit.</p> <p class=\"stext-113 cl6 p-b-26\">Donec gravida lorem elit, quis condimentum ex semper sit amet. Fusce eget ligula magna. Aliquam aliquam imperdiet sodales. Ut fringilla turpis in vehicula vehicula. Pellentesque congue ac orci ut gravida. Aliquam erat volutpat. Donec iaculis lectus a arcu facilisis, eu sodales lectus sagittis. Etiam pellentesque, magna vel dictum rutrum, neque justo eleifend elit, vel tincidunt erat arcu ut sem. Sed rutrum, turpis ut commodo efficitur, quam velit convallis ipsum, et maximus enim ligula ac ligula.</p> <p class=\"stext-113 cl6 p-b-26\">Any questions? Let us know in store at 8th floor, 379 Hudson St, New York, NY 10018 or call us on (+1) 96 716 6879</p> </div> </div> <div class=\"col-11 col-md-5 col-lg-4 m-lr-auto\"> <div class=\"how-bor1 \"> <div class=\"hov-img0\"><img src=\"https://cdn.pixabay.com/photo/2015/07/17/22/43/student-849825_1280.jpg\" alt=\"IMG\" width=\"500\" height=\"333\" /></div> </div> </div> </div> <div class=\"row\"> <div class=\"order-md-2 col-md-7 col-lg-8 p-b-30\"> <div class=\"p-t-7 p-l-85 p-l-15-lg p-l-0-md\"> <h2 class=\"mtext-111 cl2 p-b-16\"><span style=\"color: #236fa1;\">Nuestra Misi&oacute;n</span></h2> <p class=\"stext-113 cl6 p-b-26\">Mauris non lacinia magna. Sed nec lobortis dolor. Vestibulum rhoncus dignissim risus, sed consectetur erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam maximus mauris sit amet odio convallis, in pharetra magna gravida. Praesent sed nunc fermentum mi molestie tempor. Morbi vitae viverra odio. Pellentesque ac velit egestas, luctus arcu non, laoreet mauris. Sed in ipsum tempor, consequat odio in, porttitor ante. Ut mauris ligula, volutpat in sodales in, porta non odio. Pellentesque tempor urna vitae mi vestibulum, nec venenatis nulla lobortis. Proin at gravida ante. Mauris auctor purus at lacus maximus euismod. Pellentesque vulputate massa ut nisl hendrerit, eget elementum libero iaculis.</p> <div class=\"bor16 p-l-29 p-b-9 m-t-22\"> <p class=\"stext-114 cl6 p-r-40 p-b-11\">Creativity is just connecting things. When you ask creative people how they did something, they feel a little guilty because they didn\'t really do it, they just saw something. It seemed obvious to them after a while.</p> <span class=\"stext-111 cl8\"> - Steve Job&rsquo;s </span></div> </div> </div> <div class=\"order-md-1 col-11 col-md-5 col-lg-4 m-lr-auto p-b-30\"> <div class=\"how-bor2\"> <div class=\"hov-img0\"><img src=\"https://cdn.pixabay.com/photo/2015/07/17/22/43/student-849822_1280.jpg\" alt=\"IMG\" width=\"500\" height=\"333\" /></div> </div> </div> </div> </div> </section>', 'img_2f644b056a9fd3624c7595d24b1d9273.jpg', '2021-08-09 03:09:44', 'nosotros', 1),
(5, 'Contacto', '<div class=\"map\"><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3861.685802352331!2d-90.73646108521129!3d14.559951589828378!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85890e74b3771e19%3A0x68ec9eeea79fd9a7!2sEl%20Arco%20de%20Santa%20Catalina!5e0!3m2!1ses!2sgt!4v1624005005655!5m2!1ses!2sgt\" width=\"100%\" height=\"600\" allowfullscreen=\"allowfullscreen\" loading=\"lazy\"></iframe></div>', 'img_3024f13dc010ffab8c22da05ac6a32b9.jpg', '2021-08-09 03:11:08', 'contacto', 1);

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
(5, 2, '654987', 'Concentrado para Perro Adulto', '<div id=\"product\"> <div class=\"model\"> <ul> <li><span class=\"product-features\">Presentaci&oacute;n 100 libras.</span></li> <li><span class=\"product-features\">Cuenta con prote&iacute;nas, vitaminas y minerales.</span></li> <li><span class=\"product-features\">Piel sana y pelaje brillante.</span></li> <li><span class=\"product-features\">Para huesos y dientes m&aacute;s fuertes. </span></li> <li><span class=\"product-features\">Vitamina A, D3, E, K3, B1, B2,B6, B12.</span></li> <li><span class=\"product-features\">Hecho con pollo 100% natural.</span></li> </ul> </div> </div>', '340.00', 500, NULL, '2021-10-19 19:01:20', 'concentrado-para-perro-adulto', 1),
(7, 2, '25487', 'Cocentrado para cachorros', '<p>Comida para cachorros</p>', '27.00', 100, NULL, '2021-10-22 20:31:27', 'cocentrado-para-cachorros', 1),
(8, 1, '55489', 'Concentrado para Gato Adulto', '<div class=\"conditionalBox box component section box-product-detail odd col-xs-12\"> <div id=\"79816302\" class=\"component-content\"> <div class=\"paragraphSystem content\"> <div class=\"productAwareRichText richText component section default-style first odd col-xs-12 initialized\"> <div class=\"component-content\"> <div class=\"richText-content\"> <div class=\"productAwareRichText richText component section richText-product-detail-hero first odd col-xs-12 initialized\"> <div class=\"component-content\"> <div class=\"richText-content\">El alimento seco para gatos <span class=\"nowrap\">Hill&rsquo;s&trade; Science Diet&trade;</span>&nbsp;Hairball Control Adult proporciona nutrici&oacute;n para ayudar a evitar la formaci&oacute;n de bolas de pelo en gatos.</div> </div> </div> <div class=\"productAwareRichText richText component section richText-product-detail-hero odd col-xs-12 initialized\"> <div class=\"component-content\"> <div class=\"richText-content\"> <ul> <li>Vitamina E, Omega-3 y -6 para una piel y pelaje hermosos</li> <li>Prote&iacute;na de alta calidad para m&uacute;sculos magros</li> <li>Prote&iacute;na de pollo de alta calidad para una comida nutritiva, llena de sabo</li> </ul> </div> </div> </div> <p>Recomendado para: Gatos adultos de 1-6 a&ntilde;os de edad propensos a las bolas de pelo.</p> </div> </div> </div> </div> </div> </div> <div id=\"1424418889\" class=\"component-content\"> <div class=\"paragraphSystem content\"> <div class=\"productAwareRichText richText component section default-style first odd col-xs-12 initialized\"> <div class=\"component-content\"> <div class=\"richText-content\"> <p>No recomendado para: Gatitos y gatas gestantes o lactantes. Durante la gestaci&oacute;n o lactancia, las gatas deben cambiar al alimento seco para gatos Hill&rsquo;s&reg; <span class=\"nowrap\" style=\"font-size: 16px;\">Science Diet&reg;</span><span style=\"font-size: 16px;\">&nbsp;Kitten o&nbsp;</span><span class=\"nowrap\" style=\"font-size: 16px;\">Hill&rsquo;s&reg; Science Diet&reg;</span><span style=\"font-size: 16px;\">&nbsp;Kitten Indoor.</span></p> </div> </div> </div> </div> </div> <div class=\"conditionalBox box component section box-product-detail odd col-xs-12\"> <div id=\"01198877326\" class=\"component-content\"> <div class=\"paragraphSystem content\"> <div class=\"productAwareRichText richText component section default-style first odd col-xs-12 initialized\"> <div class=\"component-content\"> <div class=\"richText-content\"> <p>Informaci&oacute;n adicional: En Hill&rsquo;s, hemos estado estudiando la nutrici&oacute;n para comprender c&oacute;mo es que la fibra natural reduce c&oacute;modamente las bolas de pelo en los gatos.</p> </div> </div> </div> </div> </div> </div>', '170.00', 200, NULL, '2021-10-22 20:39:13', 'concentrado-para-gato-adulto', 1),
(9, 1, '78546', 'PRO PLAN KITTEN', '<p>F&oacute;rmula de pollo y arroz Sistema Inmune Gatitos de 0-12 meses<br />Prote&iacute;na de alta calidad, incluyendo pollo como ingrediente #1 DHA, un &aacute;cido graso omega 3, que ayuda a nutrir el desarrollo del cerebro y la visi&oacute;n Rico en antioxidantes para ayudar al desarollo del sistema inmune del gatito.</p> <p>Ingredientes 1. Pollo, 2. Arroz cervecero, 3. Harina de gluten de ma&iacute;z, 4. Harina de subproductos de pollo, 5. Grasa animal conservada con tocoferoles mixtos, 6. Harina de soja, 7. Huevo seco</p>', '170.00', 300, NULL, '2021-10-22 20:42:19', 'pro-plan-kitten', 1),
(10, 4, '54896', 'CAMA COZY PETS REDONDA CON HUELLA 22″', '<p>La cama de felpa suave Cozy Pet de 22 &ldquo;para gatos y perros peque&ntilde;os viene con estampados divertidos y tiene un &aacute;rea de dormir de felpa t&eacute;rmica suave con una aplicaci&oacute;n en forma de huella al centro. La cama se puede lavar a m&aacute;quina.</p> <ul> <li>Paredes reforzadas de poli&eacute;ster y &aacute;rea para dormir de vell&oacute;n t&eacute;rmico</li> <li>Lavable a m&aacute;quina para un f&aacute;cil cuidado.</li> <li>3 combinaciones de colore disponibles: rosa, celeste, naranja.</li> </ul>', '165.00', 50, NULL, '2021-10-22 20:47:39', 'cama-cozy-pets-redonda-con-huella-22″', 1),
(11, 4, '65325', 'CAMA OVERSTUFFED OVALADA – 34” X 27”', '<p>Una cama que tu perro amar&aacute;, con un super relleno suave y c&oacute;modo de fibra de poli&eacute;ster reciclado. Presenta micro gamuza flexible en la superficie de dormir y afelpada por fuera para contraste.</p> <ul> <li>Con relleno de fibra de poli&eacute;ster reciclado, se lava en m&aacute;quina.</li> <li>Micro gamuza flexible en la superficie de dormir.</li> <li>Ideal para razas grandes y medianas.</li> </ul>', '765.00', 20, NULL, '2021-10-22 20:49:07', 'cama-overstuffed-ovalada-–-34”-x-27”', 1),
(12, 5, '25468', 'ANTIALERGICO NATURAL CALOX BOTE 60 TABLETAS', '<ul> <li>Previene las alergias e inflamaciones de forma natural</li> <li>Fortalece sistema inmune</li> <li>Ayuda en todas las funciones del sistema digestivo</li> <li>Tabletas palatables para f&aacute;cil y pr&aacute;ctico suministro</li> <li>Sabor a H&iacute;gado</li> </ul> <p><strong>DOSIS Y ADMINISTRACI&Oacute;N:</strong> Suministre 1 Tableta por &nbsp;cada 20 Kilos de peso cada 12 horas, hasta que se detecte o elimine el agente causal de la alergia. Puede ser utilizado por tiempo indefinido ya que no se acumula en &oacute;rganos ni tejidos.</p> <p><strong>PRESENTACI&Oacute;N:</strong> Frasco por 60 Tabletas</p>', '200.00', 35, NULL, '2021-10-22 20:50:46', 'antialergico-natural-calox-bote-60-tabletas', 1),
(13, 5, '45875', 'Hairball Remedy 2.5onz', '<p>Especial para gatos y gatos bebes, ayuda a eliminar del tracto digestivo y prevenir<br />La formaci&oacute;n de bolas de pelos. Contiene omega 3,6 y 9 y vitamina E, que protege<br />la piel y el pelo.</p>', '45.00', 20, NULL, '2021-10-22 20:51:50', 'hairball-remedy-25onz', 1);

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
(2, 'Supervisor', 'Supervisor de tiendas', 0),
(3, 'Cliente', 'Clientes en general', 1),
(4, 'Vendedor', 'Operador de tienda', 1),
(5, 'Tesdt', 'asdasd', 0),
(6, 'Mirador', 'Mira', 0);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_reporte_ventas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_reporte_ventas` (
`FECHA` date
,`producto` varchar(255)
,`precio` decimal(11,2)
,`factura` bigint(20)
,`nombre` varchar(80)
,`apellido` varchar(100)
,`cliente` bigint(20)
,`cantidad` int(11)
,`total` float(10,2)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_reporte_ventas`
--
DROP TABLE IF EXISTS `vw_reporte_ventas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_reporte_ventas`  AS SELECT cast(`f`.`FECHA_FACTURA` as date) AS `FECHA`, `p`.`nombre` AS `producto`, `p`.`precio` AS `precio`, `f`.`ID_FACTURA` AS `factura`, `pr`.`nombres` AS `nombre`, `pr`.`apellidos` AS `apellido`, `pr`.`idpersona` AS `cliente`, `d`.`CANTIDAD_PRODUCTO` AS `cantidad`, `d`.`TOTAL` AS `total` FROM (((`producto` `p` join `factura` `f`) join `persona` `pr`) join `detalle_factura` `d`) WHERE `p`.`idproducto` = `d`.`ID_PRODUCTO` AND `f`.`ID_FACTURA` = `d`.`ID_FACTURA` AND `pr`.`idpersona` = `f`.`ID_CL_FACTURA` ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD PRIMARY KEY (`ID_DETALLE`),
  ADD KEY `ID_FACTURA` (`ID_FACTURA`),
  ADD KEY `ID_PRODUCTO` (`ID_PRODUCTO`);

--
-- Indices de la tabla `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`ID_FACTURA`),
  ADD KEY `ID_CL_FACTURA` (`ID_CL_FACTURA`);

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
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idrol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  MODIFY `ID_DETALLE` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `ID_FACTURA` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `imagen`
--
ALTER TABLE `imagen`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `modulo`
--
ALTER TABLE `modulo`
  MODIFY `idmodulo` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `idpermiso` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `idpersona` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `idpost` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idproducto` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `idrol` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD CONSTRAINT `detalle_factura_ibfk_1` FOREIGN KEY (`ID_FACTURA`) REFERENCES `factura` (`ID_FACTURA`),
  ADD CONSTRAINT `detalle_factura_ibfk_2` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `producto` (`idproducto`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`ID_CL_FACTURA`) REFERENCES `persona` (`idpersona`);

--
-- Filtros para la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD CONSTRAINT `imagen_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

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
