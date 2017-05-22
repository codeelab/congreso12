-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 23-05-2017 a las 00:09:42
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `congreso12`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area_logistica`
--

CREATE TABLE `area_logistica` (
  `id_logistica` int(11) NOT NULL,
  `nombre_area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dia` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `turno` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `cupo` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `area_logistica`
--

INSERT INTO `area_logistica` (`id_logistica`, `nombre_area`, `dia`, `turno`, `cupo`) VALUES
(1, 'Registro', 'Día 1', 'Mañana', 14),
(2, 'Registro', 'Día 1', 'Tarde', 7),
(3, 'Registro', 'Día 2', 'Mañana', 7),
(4, 'Mesas', 'Día 1', 'Mañana', 22),
(5, 'Mesas', 'Día 1', 'Tarde', 22),
(6, 'Mesas', 'Día 2', 'Mañana', 22),
(7, 'Logística general ', 'Día 1', 'Mañana', 4),
(8, 'Logística general ', 'Día 1', 'Tarde', 4),
(9, 'Logística general ', 'Día 2', 'Mañana', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area_tematica`
--

CREATE TABLE `area_tematica` (
  `id_tematica` int(11) NOT NULL,
  `nombre_tem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `area_tematica`
--

INSERT INTO `area_tematica` (`id_tematica`, `nombre_tem`) VALUES
(1, 'Mesa 1.- Ciencias Naturales y de Materiales'),
(2, 'Mesa 2.- Ciencias de la Ingeniería y Tecnolog'),
(3, 'Mesa 3.- Ciencias Agrícolas y Biotecnología'),
(4, 'Mesa 4.- Ciencias Sociales y Humanidades'),
(5, 'Mesa 5.- Ciencias Médicas, Biomedicina'),
(6, 'Mesa 6.- Ciencias Exactas'),
(7, 'Mesa 7.- Recursos Forestales e Hidrológicos'),
(8, 'Mesa 8.- Resilencia y Prosperidad Urbana'),
(9, 'Mesa 9.- Innovación, Competividad,'),
(10, 'Mesa 10.- Experiencias de vinculación');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion_logistica`
--

CREATE TABLE `asignacion_logistica` (
  `id_asignacion` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `sala_id` int(11) DEFAULT NULL,
  `mesa_id` int(11) DEFAULT NULL,
  `fecha_id` int(11) DEFAULT NULL,
  `dia_id` int(11) DEFAULT NULL,
  `horario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `asignacion_logistica`
--

INSERT INTO `asignacion_logistica` (`id_asignacion`, `usuario_id`, `area_id`, `sala_id`, `mesa_id`, `fecha_id`, `dia_id`, `horario_id`) VALUES
(1, 6, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clave`
--

CREATE TABLE `clave` (
  `clave` int(25) DEFAULT NULL,
  `usuario` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `clave`
--

INSERT INTO `clave` (`clave`, `usuario`) VALUES
(123, NULL),
(123, 'logistico'),
(123, 'evaluador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id_estado` int(11) NOT NULL,
  `nombre_est` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluaciones`
--

CREATE TABLE `evaluaciones` (
  `id_evaluacion` int(11) NOT NULL,
  `evaluador_id` int(11) DEFAULT NULL,
  `ponencia_id` int(11) DEFAULT NULL,
  `ponente` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `correo` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `modalidad` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `mesa` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `nivel` varchar(25) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `titulo` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `status` varchar(25) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `calificacion_1` int(11) DEFAULT NULL,
  `calificacion_2` int(11) DEFAULT NULL,
  `calificacion_3` int(11) DEFAULT NULL,
  `calificacion_4` int(11) DEFAULT NULL,
  `calificacion_5` int(11) DEFAULT NULL,
  `calificacion_6` int(11) DEFAULT NULL,
  `calificacion_7` int(11) DEFAULT NULL,
  `calificacion_8` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `evaluaciones`
--

INSERT INTO `evaluaciones` (`id_evaluacion`, `evaluador_id`, `ponencia_id`, `ponente`, `correo`, `modalidad`, `mesa`, `nivel`, `titulo`, `status`, `calificacion_1`, `calificacion_2`, `calificacion_3`, `calificacion_4`, `calificacion_5`, `calificacion_6`, `calificacion_7`, `calificacion_8`, `status_id`) VALUES
(120, 3, 3, 'Omar Campos', 'softcodec@gmail.com', 'Exposición Oral', 'Mesa 1.- Ciencias Naturales y de Materiales', 'LICENCIATURA', 'frfrrfrfrrfr', 'Enviado', 10, 10, 10, 10, 10, 10, 10, 10, 5),
(121, 3, 3, 'Omar Campos', 'softcodec@gmail.com', 'Exposición Oral', 'Mesa 1.- Ciencias Naturales y de Materiales', 'LICENCIATURA', 'frfrrfrfrrfr', 'Enviado', 7, 7, 7, 7, 7, 7, 7, 7, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultad`
--

CREATE TABLE `facultad` (
  `id_facultad` int(5) NOT NULL,
  `institucion_id` int(5) NOT NULL,
  `nombre_fac` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `facultad`
--

INSERT INTO `facultad` (`id_facultad`, `institucion_id`, `nombre_fac`) VALUES
(1, 1, 'Turismo Internacional'),
(2, 1, 'Contaduría y Finanzas'),
(3, 1, 'Producción Audiovisual'),
(4, 1, 'Multimedia Digital'),
(5, 1, 'Administración de Empresas'),
(6, 1, 'Psicología'),
(7, 1, 'Abogacía Internacional'),
(8, 1, 'Arquitectura digital'),
(9, 1, 'Lenguas Extranjeras'),
(10, 1, 'Administración en Comercio Internacional'),
(11, 2, 'Arquitectura'),
(12, 2, 'Comercio y Negocios Internacionales'),
(13, 2, 'Ciencias de la Educación'),
(14, 2, 'Administración de Empresas Turísticas'),
(15, 2, 'Diseño gráfico y digital'),
(16, 2, 'Contaduría y Finanzas'),
(17, 2, 'Derecho'),
(18, 2, 'Psicología'),
(19, 2, 'Mercadotecnia'),
(20, 2, 'Administración'),
(21, 3, 'Gastronomía'),
(22, 3, 'Nutrición'),
(23, 3, 'Odontología'),
(24, 3, 'Psicología'),
(25, 3, 'Turismo'),
(26, 3, 'Ciencias de la Comun365icación'),
(27, 3, 'Diseño de la Comunicación Gráfica'),
(28, 3, 'Ingenería Civil'),
(29, 3, 'Ing. en Sistemas Computacionales'),
(30, 3, 'Contaduría Pública y Administración de Empresas'),
(31, 3, 'Derecho'),
(32, 3, 'Mercadotecnia'),
(33, 3, 'Relaciones Comerciales Internacionales'),
(34, 4, 'Relaciones Comerciales'),
(35, 4, 'Comercio Internacional'),
(36, 4, 'Negocios Internacionales'),
(37, 4, 'Administración y Desarrollo Empresarial'),
(38, 4, 'Contador Público'),
(39, 5, 'Música y Tecnología Artística'),
(40, 5, 'Ciencias Ambientales'),
(41, 5, 'Geociencias'),
(42, 5, 'Geohistoria'),
(43, 5, 'Literatura Intercultural'),
(44, 5, 'Estudios Sociales y Gestión Local'),
(45, 5, 'Historia del Arte'),
(46, 5, 'Arte y Diseño'),
(47, 5, 'Ciencia en Materiales Sustentables'),
(48, 5, 'Tecnologías para la Información en Ciencias'),
(49, 5, 'Ecología'),
(50, 5, 'Administración en Archivos y Gestión Documental'),
(51, 6, 'Comunicación Educativa'),
(52, 6, 'Educación Artística'),
(53, 6, 'Educación Especial'),
(54, 6, 'Educación Media Especializada en Lengua Extranjera (Inglés)'),
(55, 6, 'Pedagogía'),
(56, 6, 'Psicología Educativa'),
(57, 7, 'Ing. Electrónica'),
(58, 7, 'Ing. Gestión Empresarial'),
(59, 7, 'Ing. Industrias Alimentarias'),
(60, 7, 'Ing. en Sistemas Computacionales '),
(61, 7, 'Ing. En Tecnologías de la Información y Comunicacion'),
(62, 7, 'Ing. Industrial'),
(63, 7, 'Lic en Contaduría'),
(64, 8, 'Arquitectura'),
(65, 8, 'Ing. Gestión Empresarial'),
(66, 8, 'Lic. en Administración'),
(67, 8, 'Ing. en Sistemas Computacionales'),
(68, 8, 'Ing. En Informática'),
(69, 8, 'Ing. Industrial'),
(70, 8, 'Contador Público'),
(71, 8, 'Ing. Bioquímica'),
(72, 9, 'Ing. En Tecnologías de la Información y Comunicación'),
(73, 9, 'Ing. Gestión Empresarial'),
(74, 9, 'Ing. en Administración'),
(75, 9, 'Ing. en Sistemas Computacionales '),
(76, 9, 'Ing. Electrónica'),
(77, 9, 'Ing. Industrial'),
(78, 10, 'Ing. Electrónica'),
(79, 10, 'Ing. Gestión Empresarial'),
(80, 10, 'Ing. Electromecánica'),
(81, 10, 'Ing. en Sistemas Computacionales'),
(82, 10, 'Ing. Química'),
(83, 10, 'Ing. Industrial'),
(84, 10, 'Lic. en Administración'),
(85, 10, 'Contador Público'),
(86, 11, 'Ing. Electrónica'),
(87, 11, 'Ing. Gestión Empresarial'),
(88, 11, 'Lic. en Administración'),
(89, 11, 'Ing. en Sistemas Computacionales'),
(90, 11, 'Ing. En Tecnologías de la Información y comunicación'),
(91, 11, 'Ing. Industrial'),
(92, 11, 'Contador Público'),
(93, 11, 'Ing. Bioquímica'),
(94, 11, 'Ing. Eléctrica'),
(95, 11, 'Ing. En Materiales'),
(96, 11, 'Ing. Mecánica'),
(97, 11, 'Ing. Mecatrónica'),
(98, 12, 'Ing. Informática'),
(99, 12, 'Ing. Gestión Empresarial'),
(100, 12, 'Ing. Electromecanica'),
(101, 12, 'Ing. en Sistemas Computacionales'),
(102, 12, 'Arquitectura'),
(103, 12, 'Ing. Industrial'),
(104, 12, 'Lic. en Administración'),
(105, 12, 'Contaduría Pública'),
(106, 12, 'Ing. Civil'),
(107, 13, 'Ing. en Agronomía'),
(108, 13, 'Ing. Ambiental'),
(109, 13, 'Ing. Forestal'),
(110, 13, 'Ing. en Innovación Agrícola Sustentable'),
(111, 13, 'Lic. en Administración'),
(112, 14, 'Ing. Informática'),
(113, 14, 'Ing. Gestión Empresarial'),
(114, 14, 'Ing. Bioquímica'),
(115, 14, 'Ing. en Sistemas Computacionales'),
(116, 14, 'Ing. en Innovación Agrícola Sustentable'),
(117, 14, 'Ing. Industrial'),
(118, 14, 'Contador Público'),
(119, 14, 'Ing. Civil'),
(120, 15, 'Ing. Tecnologías de la Información'),
(121, 15, 'Ing. Gestión Empresarial'),
(122, 15, 'Ing. Mecatrónica'),
(123, 15, 'Ing. en Sistemas Computacionales '),
(124, 15, 'Ing. Bioquímica'),
(125, 15, 'Ing. Industrial'),
(126, 15, 'Ing. Nanotecnología'),
(127, 16, 'Ing. Gestión Empresarial'),
(128, 16, 'Ing. en Sistemas Computacionales'),
(129, 16, 'Ing. Desarrollo Comunitario'),
(130, 17, 'Ing. Gestión Empresarial'),
(131, 17, 'Ing. en Sistemas Computacionales'),
(132, 17, 'Ing. Industrial'),
(133, 17, 'Ing. En Industrias Alimentarias'),
(134, 18, 'Ing. Gestión Empresarial'),
(135, 18, 'Ing. en Sistemas Computacionales'),
(136, 18, 'Ing. Industrial'),
(137, 18, 'Ing. Electromecánica'),
(138, 18, 'Ing. En Innovación Agrícola Sustentable'),
(139, 18, 'Arquitectura'),
(140, 19, 'Ing. Gestión Empresarial'),
(141, 19, 'Ing. en Tecnologías de la Información y Comunicación'),
(142, 19, 'Ing. Ambiental'),
(143, 19, 'Ing. En Desarrollo Comunitario'),
(144, 19, 'Ing en Administración'),
(145, 19, 'Ing. En Biomedica'),
(146, 20, 'Ing. Gestión Empresarial'),
(147, 20, 'Ing. en Tecnologías de la Información y Comunicación'),
(148, 20, 'Ing. Mecanica'),
(149, 20, 'Ing. En Desarrollo Comunitario'),
(150, 20, 'Ing. en Industrias Alimentarias'),
(151, 20, 'Ing. Industrial'),
(152, 21, 'Ing. Administración'),
(153, 21, 'Ing. en Sistemas Computacionales'),
(154, 21, 'Ing. En Geociencias'),
(155, 21, 'Ing. En Industrias Alimentarias'),
(156, 21, 'Ing. En Innovación Agrícola Sustentable'),
(157, 22, 'Ing. Industrias Alimentarias'),
(158, 22, 'Ing. Mecatrónica'),
(159, 22, 'Ing. en Sistemas Computacionales'),
(160, 22, 'Ing. Electrónica'),
(161, 22, 'Ing. Industrial'),
(162, 22, 'Ing. en Administración'),
(163, 22, 'Ing. Mecánica'),
(164, 22, 'Ing. Civil'),
(165, 23, 'Ing. Gestión Empresarial'),
(166, 23, 'Ing. Industrial'),
(167, 23, 'Ing. en Sistemas Computacionales '),
(168, 23, 'Ing. en Innovación Agrícola Sustentable'),
(169, 23, 'Ing en Energías Renovables'),
(170, 23, 'Ing. En Biomedica'),
(171, 24, 'Ing. Energía'),
(172, 24, 'Ing. Nanotecnología'),
(173, 24, 'Lic. Innovación Educativa'),
(174, 24, 'Lic Genómica Alimentaria'),
(175, 24, 'Lic. en Gestión Urbuna y Rural'),
(176, 24, 'Estudios Multiculturales'),
(177, 24, 'Gobernabilidad y Nueva Ciudadanía'),
(178, 25, 'Arte y Patrimonio Cultural'),
(179, 25, 'Desarrollo Sustentable'),
(180, 25, 'Lengua y Comunicación Intercultural'),
(181, 25, 'Gestión Comunitaria y Gobiernos Locales'),
(182, 26, 'Ing. En Logística y Transporte'),
(183, 26, 'Ing. En Seguridad y Automatización Industrial'),
(184, 26, 'Ing. En Tecnología Ambiental'),
(185, 27, 'Ing. Agroindustrial'),
(186, 27, 'Ing. Tecnologías de Manofactura'),
(187, 27, 'Lic. en Administración y Gestion de PYMES'),
(188, 28, 'TSU en Energías Renovables Área Calidad y Ahorro de Energía'),
(189, 28, 'TSU en Energías Renovables Área Sol'),
(190, 28, 'TSU en Mantenimiento Industrial'),
(191, 28, 'TSU Área Multimedia y Comercio Electrónico'),
(192, 28, 'TSU Área Sistemas Informáticos'),
(193, 28, 'TSU en Química Área Biotecnología'),
(194, 28, 'TSU en Gastronomía'),
(195, 28, 'TSU en Diseño y Moda Industrial'),
(196, 28, 'Ing. en Diseño Textil y Moda'),
(197, 28, 'Ing. en Mantenimiento Industrial'),
(198, 28, 'Ing. en Tecnologías de la Información y Comunicación'),
(199, 28, 'Ing. en Biotecnología'),
(200, 29, 'Desarrollo Agroindustrial'),
(201, 29, 'Evaluación y Desarrollo Ambiental'),
(202, 29, 'Planeación y Evaluación Educativa'),
(203, 29, 'Herbolaria y Fitoterapia'),
(204, 29, 'Seguridad Pública'),
(205, 29, 'Turismo Sustentable'),
(206, 30, 'Lic. en Administración'),
(207, 30, 'Lic. en Arquitectura'),
(208, 30, 'Lic. en Contaduría Pública'),
(209, 30, 'Lic. en Derecho'),
(210, 30, 'Lic. en Negocios Internacionales'),
(211, 30, 'Lic. en Psicología'),
(212, 30, 'Lic. en Sistemas Computacionales'),
(213, 30, 'Lic. en Pedagogía'),
(214, 31, 'Lic. en Diseño e Industria de la Moda'),
(215, 31, 'Lic. en Diseño de Imagen'),
(216, 32, 'Ing. en Mecatronica'),
(217, 32, 'Ing. Industrial y de Sistemas'),
(218, 32, 'Lic. en Arquitectura'),
(219, 32, 'Lic. en Derecho'),
(220, 32, 'Lic en Administración y Estrategia de Negocios'),
(221, 32, 'Lic. en Negocios Internacionales'),
(222, 32, 'Lic. en Mercadotecnia y Comunicación'),
(223, 33, 'Lic. en Cultura Física y Deporte'),
(224, 33, 'Lic. en Ciencias de la Nutrición'),
(225, 33, 'Lic. en Psicología'),
(226, 33, 'Lic. Psicología (Mixto)'),
(227, 33, 'Lic. en Administración'),
(228, 33, 'Lic en Negocios Internacionales'),
(229, 33, 'Lic. en Administración (Mixto)'),
(230, 33, 'Lic. en Administración en línea'),
(231, 33, 'Lic. en Medios Interactivos'),
(232, 33, 'Lic. en Historia del Arte'),
(233, 33, 'Lic. en Periodismo'),
(234, 33, 'Lic. en Turismo Cultural'),
(235, 33, 'Ing. en Videojuegos'),
(236, 34, 'Lic. en Derecho'),
(237, 34, 'Lic. en Ciencias de la Comunicación'),
(238, 34, 'Lic. en Contaduría Pública'),
(239, 34, 'Lic. en Psicología'),
(240, 34, 'Lic. en Desarrollo y Gestión Empresarial'),
(241, 34, 'Lic. en Trabajo Social'),
(242, 35, 'Lic. en Administración de Empresas'),
(243, 35, 'Lic. en Contaduría Pública'),
(244, 35, 'Lic. en Comercio y Negocios Internacionales'),
(245, 35, 'Lic. en Mercadotecnia Internacional'),
(246, 35, 'Lic. en Nutrición'),
(247, 35, 'Lic. en Psicología'),
(248, 35, 'Lic. en Gastronomía'),
(249, 35, 'Lic. en Derecho'),
(250, 35, 'Lic. en Educación y Desarrollo Humano'),
(251, 35, 'Ingeniero Arquitecto'),
(252, 35, 'Lic. en Ciencias de la Comunicación'),
(253, 35, 'Lic. en Diseño Gráfico Estratégico'),
(254, 35, 'Lic. en Animación, Arte Digital y Multimedia'),
(255, 36, 'Lic. en Administración de Empresas'),
(256, 36, 'Lic. en Contaduría Pública'),
(257, 36, 'Lic. en Comercio y Negocios Internacionales'),
(258, 36, 'Lic. en Mercadotecnia Internacional'),
(259, 36, 'Lic. en Nutrición'),
(260, 36, 'Lic. en Psicología'),
(261, 36, 'Lic. en Gastronomía'),
(262, 36, 'Lic. en Derecho'),
(263, 36, 'Lic. en Educación y Desarrollo Humano'),
(264, 36, 'Ingeniero Arquitecto'),
(265, 36, 'Ing. Industrial'),
(266, 36, 'Lic. en Diseño Gráfico Estratégico'),
(267, 37, 'Lic. en Administración de Empresas'),
(268, 37, 'Lic. en Administración de Empresas Turísticas'),
(269, 37, 'Lic. en Contabilidad y Finanzas'),
(270, 37, 'Lic. en Derecho'),
(271, 37, 'Lic. en Mercadotecnia'),
(272, 37, 'Lic. en Tecnología Educativa'),
(273, 38, 'Lic. en Administración de Empresas'),
(274, 38, 'Lic. en Administración y Dirección Empresarial'),
(275, 38, 'Lic. en Contabilidad y Finanzas'),
(276, 38, 'Lic. en Derecho'),
(277, 38, 'Lic. en Diseño e Industria del Vestido'),
(278, 38, 'Ing. en Sistemas de Información'),
(279, 39, 'Lic. en Administración de Empresas'),
(280, 39, 'Lic. en Administración de Empresas Turísticas'),
(281, 39, 'Lic. en Contabilidad y Finanzas'),
(282, 39, 'Lic. en Derecho'),
(283, 39, 'Lic. en Mercadotecnia'),
(284, 39, 'Lic. en Tecnología Educativa'),
(285, 39, 'Ing. En Sistemas de Información'),
(286, 39, 'Lic. en Diseño Gráfico Digital'),
(287, 39, 'Lic. en Ciencias y técnicas de la Comunicación'),
(288, 40, 'Lic. En Animación Digital y Videojuegos'),
(289, 40, 'Lic. En Arquitectura'),
(290, 40, 'Lic. En Derecho'),
(291, 40, 'Lic. En Fisioterapiay Rehabilitación'),
(292, 40, 'Lic. En Formación Catequética'),
(293, 40, 'Lic. En Mercadotecnia y Publicidad'),
(294, 40, 'Lic. En Negocios Internacionales'),
(295, 40, 'Ing. Industrial y sistemas organizacionales'),
(296, 41, 'Lic. en Nutrición'),
(297, 41, 'Lic. en Psicología'),
(298, 41, 'Lic. en Derecho'),
(299, 41, 'Ing. en Desarrollo de Software'),
(300, 41, 'Ing. Industrial'),
(301, 41, 'Ing. Mecatrónica'),
(302, 41, 'Lic. en Administración de empresas'),
(303, 41, 'Lic. en Administración Financiera'),
(304, 41, 'Lic. en Administración Hotelera y Turística'),
(305, 41, 'Lic. en Comercio Internacional'),
(306, 41, 'Lic. en Gastronomía'),
(307, 41, 'Lic. en Mercadotecnia'),
(308, 41, 'Lic. en Diseño Gráfico y Animación'),
(309, 41, 'Lic. en Sistemas de Computación Adiministrativa'),
(310, 42, 'Lic. en Cultura Física y Deporte'),
(311, 42, 'Lic. en Diseño de Interiores'),
(312, 42, 'Lic. en Gastronomía'),
(313, 42, 'Lic. en Lenguas Europeas'),
(314, 42, 'Lic. en Mercadotecnia y Ventas'),
(315, 42, 'Lic. en Administración'),
(316, 42, 'Lic. en Arquitectura'),
(317, 42, 'Lic. en Ciencias de la Comunicación'),
(318, 42, 'Lic. en Comercio Internacional'),
(319, 42, 'Lic. en Contaduría '),
(320, 42, 'Lic. en Derecho'),
(321, 42, 'Lic. en Diseño Gráfico '),
(322, 42, 'Ing. Industrial en Procesos y Servicios'),
(323, 42, 'Ing. En Sistemas Computacionales'),
(324, 42, 'Lic. en Nutrición '),
(325, 42, 'Lic. en Psicología'),
(326, 42, 'Lic. en Medicina'),
(327, 42, 'Ing. En Mecatrónica'),
(328, 42, 'Lic. en Optometría'),
(329, 43, 'Facultad de Ingeniería Mecánica'),
(330, 43, 'Facultad de Medicina Veterinaria y Zootecnia '),
(331, 43, 'Facultad de Odontología'),
(332, 43, 'Facultad de Psicología'),
(333, 43, 'Facultad de Enfermería y Salud Pública'),
(334, 43, 'Facultad de Arquitectura '),
(335, 43, 'Facultad de Contaduría y Ciencias Administrativas '),
(336, 43, 'Facultad de Enfermería'),
(337, 43, 'Facultad de Historia '),
(338, 43, 'Facultad de Ingeniería en Tecnología de la Madera'),
(339, 43, 'Facultad de Medicina (Dr. Ignacio Chávez) '),
(340, 43, 'Facultad de Ingeniería Química '),
(341, 43, 'Facultad de Ingeniería Civil'),
(342, 43, 'Facultad de Filosofía'),
(343, 43, 'Facultad de Economía (Vasco de Quiroga) '),
(344, 43, 'Facultad de Quimico Farmacobiología'),
(346, 43, 'Facultad de Biología'),
(347, 43, 'Facultad de Agrobiología'),
(348, 43, 'Escuela de Ciencias Agropecuarias'),
(349, 43, 'Facultad de Derecho y Ciencias Sociales'),
(350, 43, 'Facultad de Ciencias Físico Matemáticas'),
(351, 44, 'Lic. en Educación Preescolar'),
(352, 44, 'Lic. en Educación Primaria'),
(353, 44, 'Lic. en Educación Secundaria'),
(354, 45, 'Lic. en Educación Física'),
(355, 46, 'Lic. en Educación Primaria'),
(356, 47, 'Lic. en Preescolar'),
(357, 48, 'Lic. en Educación Primaria'),
(358, 49, 'Lic. en Educación Secundaria'),
(359, 50, 'Lic. en Educación Primaria'),
(360, 50, 'Lic. en Educación Especial'),
(361, 51, 'Lic. en Educación Preescolar'),
(362, 51, 'Lic. en Educación Primaria'),
(363, 52, 'Lic. en Educación Preescolar (Femenina)'),
(364, 52, 'Lic. En Educación Primaria (Mixta)'),
(365, 58, 'Subdirección de Estudios Económicos y Desarrollo Empresarial'),
(366, 68, 'Centro de Estudios Antropológicos'),
(367, 68, 'Centro de Estudios Arqueológicos'),
(368, 68, 'Centro de Estudios de las Tradiciones'),
(369, 68, 'Centro de Estudios en Geografía Humana'),
(370, 68, 'Centro de Estudios Históricos'),
(371, 68, 'Centro de Estudios Rurales'),
(372, 68, 'Proyectos Especiales'),
(373, 103, 'Departamento de Biotecnología'),
(374, 103, 'Departamento de Desarrollo Urbano y Medio Ambiente'),
(375, 103, 'Departamento de Recursos Naturales'),
(376, 104, 'Programa Energía Rural'),
(377, 106, 'Centro de Investigación Biomédica de Michoacán'),
(378, 107, 'Campo Experimental Uruapan'),
(379, 123, 'Unidad de Investigación'),
(380, 129, 'Ciencias de la Comunicación'),
(381, 129, 'Enseñanza de Lenguas Extranjeras'),
(382, 129, 'Contaduría'),
(383, 129, 'Administración con terminales'),
(384, 129, 'Enfermeria'),
(385, 129, 'Artes Escénicas y Producción de Espectáculos'),
(386, 129, 'Industria de la Moda y el Vestido'),
(387, 129, 'Ingeniería Civil'),
(388, 129, 'Animación y Arte Digital'),
(389, 129, 'Comercio Internacional'),
(390, 129, 'Administración de Empresas Turísticas'),
(391, 129, 'Diseño gráfico y publicidad'),
(392, 129, 'Ing. en Sistemas Computacionales'),
(393, 129, 'Pedagogía con terminales'),
(394, 129, 'Gastronomía'),
(395, 129, 'Derecho'),
(396, 129, 'Cultura Física, Recreación y Deporte'),
(397, 129, 'Relaciones Internacionales'),
(398, 129, 'Mercadotecnia'),
(399, 129, 'Psicología'),
(400, 129, 'Pedagogía Infantil'),
(401, 129, 'Arquitectura'),
(402, 129, 'Nutrición');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fechas`
--

CREATE TABLE `fechas` (
  `id_fecha` int(11) NOT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `fechas`
--

INSERT INTO `fechas` (`id_fecha`, `fecha`) VALUES
(1, '2017-05-26'),
(2, '2017-05-27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_genero` int(11) NOT NULL,
  `nombre_gen` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id_genero`, `nombre_gen`) VALUES
(1, 'Masculino'),
(2, 'Femenino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE `horarios` (
  `id_horario` int(11) NOT NULL,
  `hora` varchar(25) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `horarios`
--

INSERT INTO `horarios` (`id_horario`, `hora`) VALUES
(1, '8:00 - 9:00'),
(2, '9:00 - 10:30'),
(3, '10:30 - 11:30'),
(4, '11:30 - 12:30'),
(5, '12:30 - 12:45'),
(6, '12:45 - 13:00'),
(7, '13:00 - 13:15'),
(8, '13:15 - 13:30'),
(9, '13:30 - 13:45'),
(10, '13:45 - 14:00'),
(11, '14:00 - 14:15'),
(12, '14:15 - 14:30'),
(13, '14:30 - 14:45'),
(14, '14:45 - 15:00'),
(15, '15:00 - 15:15'),
(16, '15:15 - 15:30'),
(17, '15:30 - 15:45'),
(18, '15:45 - 16:00'),
(19, '16:00 - 16:15'),
(20, '16:15 - 16:30'),
(21, '16:30 - 16:45'),
(22, '16:45 - 17:00'),
(23, '17:00 - 17:15'),
(24, '17:15 - 17:30'),
(25, '17:30 - 17:45'),
(26, '17:45 - 18:00'),
(27, '18:00 - 18:15'),
(28, '18:15 - 18:30'),
(29, '18:30 - 18:45'),
(30, '18:45 - 19:00'),
(31, '19:00 - 19:15'),
(32, '19:15 - 19:30'),
(33, '19:30 - 19:45'),
(34, '19:45 - 20:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `institucion`
--

CREATE TABLE `institucion` (
  `id_institucion` int(11) NOT NULL,
  `nombre_ins` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `institucion`
--

INSERT INTO `institucion` (`id_institucion`, `nombre_ins`) VALUES
(1, 'Universidad Internacional Jefferson'),
(2, 'Universidad La Salle ULSA'),
(3, 'Universidad Latina de América UNLA'),
(4, 'Centro de Educación Contínua Unidad Morelia, IPN Campus Morelia.'),
(5, 'Escuela Nacional de Educación Superior, UNAM Campus Morelia'),
(6, 'Instituto Michoacano de Ciencias de la Educación (IMCED)'),
(7, 'Centro de Estudios Superiores Primero de Mayo (CES1DM)'),
(8, 'Instituto Tecnológico de Jiquilpan'),
(9, 'Instituto Tecnológico de La Piedad'),
(10, 'Instituto Tecnológico de Lázaro Cárdenas'),
(11, 'Instituto Tecnológico de Morelia'),
(12, 'Instituto Tecnológico de Zitácuaro'),
(13, 'Instituto Tecnológico del Valle de Morelia'),
(14, 'Instituto Tecnológico Superior de Apatzingán'),
(15, 'Instituto Tecnológico Superior de Ciudad Hidalgo'),
(16, 'Instituto Tecnológico Superior de Coalcomán'),
(17, 'Instituto Tecnológico Superior de Huetamo'),
(18, 'Instituto Tecnológico Superior de Los Reyes'),
(19, 'Instituto Tecnológico Superior de Páztcuaro'),
(20, 'Instituto Tecnológico Superior de Puruándiro'),
(21, 'Instituto Tecnológico Superior de Tacámbaro'),
(22, 'Instituto Tecnológico Superior de Uruapan'),
(23, 'Instituto Tecnológico Superior Purhépecha'),
(24, 'Universidad de la Ciénega del Estado de Michoacán de Ocampo'),
(25, 'Universidad Intercultural Indígena de Michoacán (UIIM)'),
(26, 'Universidad Politécnica de Lázaro Cárdenas'),
(27, 'Universidad Politécnica de Uruapan'),
(28, 'Universidad Tecnológica de Morelia UTM'),
(29, 'Universidad Virtual del Estado de Michoacán (UNIVIM)'),
(30, 'Centro de Estudios Superiores del Oriente de Michoacán (CESOM)'),
(31, 'Instituto Modstil'),
(32, 'Instituto Tecnológico de Estudios Superiores de Monterrey (ITSM Campus Morelia)'),
(33, 'Universidad de Morelia (UDEM)'),
(34, 'Universidad de Zamora'),
(35, 'Universidad del Valle de Atemajac (UNIVA, La Piedad)'),
(36, 'Universidad del Valle de Atemajac (UNIVA. Plantel Zamora)'),
(37, 'Universidad Interamericana para el Desarrollo (UNID. Sede Cotija)'),
(38, 'Universidad Interamericana para el Desarrollo (UNID. Sede Morelia)'),
(39, 'Universidad Interamericana para el Desarrollo (UNID. Sede Uruapan)'),
(40, 'Universidad Marista Valladolid'),
(41, 'Universidad TecMilenio, Campus Morelia'),
(42, 'Universidad Vasco de Quiroga UVAQ'),
(43, 'Universidad Michoacana de San Nicolas de Hidalgo'),
(44, 'Centro Regional de Educación Normal (CREN Arteaga)'),
(45, 'Escuela Normal de Educación Física (ENEF Morelia)'),
(46, 'Escuela Normal Indigena de Michoácan (Cherán)'),
(47, 'Escuela Normal para Educadoras de Morelia (ENE)'),
(48, 'Escuela Normal Rural \"Vasco de Quiroga\"'),
(49, 'Escuela Normal Superior de Michoácan'),
(50, 'Escuela Normal Urbana Federal \"J. Jesús Romero Flores\" (ENUF)'),
(51, 'Colegios Motolinía (Morelia)'),
(52, 'Escuela Normal Particular Incorporada \"ANÁHUAC\"'),
(53, 'Centro de Actualización del Magisterio en Michoacán (CAMM)'),
(54, 'Centro de Educación Continua, Instituto Politécnico Nacional (CECUM)'),
(55, 'Centro de Estudios Superiores del Oriente de Michoacán (CESOM)'),
(56, 'Centro Universitario de Michoacán, S.C. (CUDEM) o Centro de Estudios Superiores Nova Spania'),
(57, 'Centro de Estudios Superiores Primero de Mayo (CES1DM)'),
(58, 'Centro de Investigación y Desarrollo del Estado de Michoacán (CIDEM)'),
(59, 'Centro Regional de Educación Normal Preescolar (CRENAM- Preescolar)'),
(60, 'Centro Regional de Educación Normal Primaria (CRENAM-Primaria)'),
(61, 'Centro Regional Universitario Centro Occidente, Universidad Autónoma de Chapingo (CRUCO)'),
(62, 'Centro Universitario del Valle de Zacapu (CUVZ)'),
(63, 'Colegio de Estudios Superiores de Los Reyes'),
(64, 'Colegio Novel de Morelia'),
(65, 'Colegio Superior de Estudios para un Michoacán (COSEUM)'),
(66, 'Conservatorio de las Rosas'),
(67, 'Centro de Cooperación Regional para la Educación de los Adultos en América Latina y el Caribe (CREFAL)'),
(68, 'El Colegio de Michoacán, A.C. (COLMICH) Campus Zamora'),
(69, 'Escuela de Enfermería del Hospital de Nuestra Señora de la Salud'),
(70, 'Instituto Fausto Zenon Medina'),
(71, 'Instituto de Ciencias y Estudios Superiores de Michoacán (ICESM). Campus Morelia'),
(72, 'Instituto de Estudios Superiores de la Comunicación (IESCAC)'),
(73, 'Instituto de Estudios Superiores de México (IDESUM)'),
(74, 'Instituto Michoacano de Homeopatia'),
(75, 'Instituto Tecnológico Agropecuario No. 7 (ITA7)'),
(76, 'Instituto Tecnológico Superior de Cd. Hidalgo'),
(77, 'Normal Particular Incorporada Anáhuac, A.C.'),
(78, 'Normal Particular Motolinía'),
(79, 'Normal Rural Vasco de Quiroga'),
(80, 'Normal Superior de Michoacán'),
(81, 'Normal Superior Juana de Asbaje'),
(82, 'Normal Urbana Federal Prof. J. Jesús Romero Flores'),
(83, 'Instituto Tecnológico de Estudios Superiores de Monterrey, Campus Morelia'),
(84, 'Universidad Nacional Autónoma de México (UNAM), Campus Morelia'),
(85, 'Universidad Don Vasco, A.C.'),
(86, 'Universidad Interamericana para el Desarrollo (UNID). Sede Morelia'),
(87, 'Universidad Interamericana para el Desarrollo (UNID).Sede Cotija'),
(88, 'Universidad Interamericana para el Desarrollo (UNID). Sede Uruapan'),
(89, 'Universidad La Salle (ULSA)'),
(90, 'Universidad Latina de América (UNLA)'),
(91, 'Universidad Metropolitana Latin Campus'),
(92, 'Universidad Mexicana de Educación a Distancia (UMED)'),
(93, 'Universidad Michoacana de Oriente (UMO)'),
(94, 'Unidad UPN 161, Morelia de la Universidad Pedagógica Nacional'),
(95, 'Unidad UPN 162, Zamora de la Universidad Pedagógica Nacional'),
(96, 'Unidad UPN 163, Uruapan de la Universidad Pedagógica Nacional'),
(97, 'Unidad UPN 164, Zitácuaro de la Universidad Pedagógica Nacional'),
(98, 'Centro de Estudios Universitarios Sor Juana Ines. Campus Uruapan'),
(99, 'Centro de Estudios Universitarios Sor Juana Inés. Campus Morelia'),
(100, 'Universidad UNIVER (UNIVER)'),
(101, 'Universidad Vasco de Quiroga (UVAQ) Campus Ciudad Hidalgo'),
(102, 'Centro de Investigación e Innovación Estratégica, A.C. (CIIE)'),
(103, 'Unidad Michoacán, Instituto Politécnico Nacional (CIIDIR)'),
(104, 'Grupo Interdisciplinario de Tecnología Rural Apropiada A.C.'),
(105, 'Hospital General Dr. Miguel Silva de Morelia'),
(106, 'Instituto Mexicano del Seguro Social'),
(107, 'Instituto Nacional de Investigaciones Forestales Agrícolas y Pecuarias (INIFAP)'),
(108, 'Instituto Tecnológico Agropecuario No. 10 (ITA10)'),
(109, 'Instituto Tecnológico Agropecuario No. 16 (ITA16)'),
(110, 'Instituto Tecnológico Agropecuario No. 8 (ITA8)'),
(111, 'Instituto Tecnológico Agropecuario No. 9 (ITA9)'),
(112, 'Instituto Tecnológico Agropecuario de Michoacán (ITAM)'),
(113, 'Instituto de Ecología A.C.'),
(114, 'Universidad TecMilenio, Campus Morelia.'),
(115, 'Instituto Montrer'),
(116, 'Instituto Fray Antonio de Lisboa, S.C.'),
(117, 'Instituto Tecnológico Superior de Pátzcuaro'),
(118, 'Instituto Superior Anglo-Americano'),
(119, 'Instituto de Ciencias Teológicas y Filosóficas  \"Gabriel Méndez Plancarte\"'),
(120, 'Centro Educativo Instituto Millenium, A.C.'),
(121, 'Universidad del Valle de Atemajac (UNIVA). Plantel La Piedad'),
(122, 'Universidad del Valle de Atemajac (UNIVA). Plantel Zamora'),
(123, 'Secretaria de Salud'),
(124, 'Instituto Tecnológico de Tacámbaro'),
(125, 'El Colegio de Michoacán, A.C. (COLMICH) Campus La piedad'),
(126, 'Instituto de Ciencias y Estudios Superiores de Michoacan (ICESM). Campus Uruapan'),
(127, 'Instituto de Investigación e Innovación Organizacional'),
(128, 'Fundación cultura mesoamericana selva maya a.c.'),
(129, 'Universidad Contemporánea de las Américas (UCLA)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jovenes`
--

CREATE TABLE `jovenes` (
  `id_jovenes` int(11) NOT NULL,
  `nombre_jo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `jovenes`
--

INSERT INTO `jovenes` (`id_jovenes`, `nombre_jo`) VALUES
(1, 'Cumple'),
(2, 'No cumple');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesas`
--

CREATE TABLE `mesas` (
  `id_mesas` int(11) NOT NULL,
  `nombre_mesa` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mesas`
--

INSERT INTO `mesas` (`id_mesas`, `nombre_mesa`) VALUES
(1, 'Mesa 1-A'),
(2, 'Mesa 1-B'),
(3, 'Mesa 1-C'),
(4, 'Mesa 1-D'),
(5, 'Mesa 2-A'),
(6, 'Mesa 2-B'),
(7, 'Mesa 2-C'),
(8, 'Mesa 2-D'),
(9, 'Mesa 3-A'),
(10, 'Mesa 3-B'),
(11, 'Mesa 3-C'),
(12, 'Mesa 3-D'),
(13, 'Mesa 4-A'),
(14, 'Mesa 4-B'),
(15, 'Mesa 4-C'),
(16, 'Mesa 4-D'),
(17, 'Mesa 5-A'),
(18, 'Mesa 5-B'),
(19, 'Mesa 5-C'),
(20, 'Mesa 5-D'),
(21, 'Mesa 6-A'),
(22, 'Mesa 6-B'),
(23, 'Mesa 6-C'),
(24, 'Mesa 6-D'),
(25, 'Mesa 7-A'),
(26, 'Mesa 7-B'),
(27, 'Mesa 7-C'),
(28, 'Mesa 7-D'),
(29, 'Mesa 8-A'),
(30, 'Mesa 8-B'),
(31, 'Mesa 8-C'),
(32, 'Mesa 8-D'),
(33, 'Mesa 9-A'),
(34, 'Mesa 9-B'),
(35, 'Mesa 9-C'),
(36, 'Mesa 9-D'),
(37, 'Mesa 10-A'),
(38, 'Mesa 10-B'),
(39, 'Mesa 10-C'),
(40, 'Mesa 10-D');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modalidad`
--

CREATE TABLE `modalidad` (
  `id_modalidad` int(11) NOT NULL,
  `nombre_mod` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `id_municipio` int(11) NOT NULL,
  `nombre_mun` varchar(255) NOT NULL,
  `estado_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nacionalidad`
--

CREATE TABLE `nacionalidad` (
  `id_nacionalidad` int(11) NOT NULL,
  `nombre_nac` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel_academico`
--

CREATE TABLE `nivel_academico` (
  `id_academico` int(11) NOT NULL,
  `nombre_aca` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `nivel_academico`
--

INSERT INTO `nivel_academico` (`id_academico`, `nombre_aca`) VALUES
(1, 'LICENCIATURA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ponencias`
--

CREATE TABLE `ponencias` (
  `id_ponencias` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `tipo_trabajo_id` int(11) DEFAULT NULL,
  `titulo` mediumtext,
  `autor` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `coautores` mediumtext,
  `asesor` varchar(255) DEFAULT NULL,
  `mesa_id` int(11) DEFAULT NULL,
  `c_jovenes` int(11) DEFAULT NULL,
  `archivo_resumen` varchar(255) DEFAULT NULL,
  `archivo_extenso` varchar(255) DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `fecha_registro` date DEFAULT NULL,
  `fecha_extenso` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `ponencias`
--

INSERT INTO `ponencias` (`id_ponencias`, `usuario_id`, `tipo_trabajo_id`, `titulo`, `autor`, `coautores`, `asesor`, `mesa_id`, `c_jovenes`, `archivo_resumen`, `archivo_extenso`, `status_id`, `fecha_registro`, `fecha_extenso`) VALUES
(2, 1, 1, 'ESTA ES LA PRUEBA DE GUARDAR ', 'JOEL ALVAREZ ', 'OMAR JAIMES ', 'JULIO NAVA ', 1, 0, 'mesas/mesa1/2-resumen.pdf', 'mesas_ext/mesa1/2-extenso.pdf', 2, '2017-04-10', '2017-04-28'),
(3, 2, 1, 'frfrrfrfrrfr', 'Omar Campos', 'Joel Alvarez', 'Pedro Mata', 6, 1, 'NULL', 'NULL', 5, '2017-04-18', '2017-04-28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proceso`
--

CREATE TABLE `proceso` (
  `id_proceso` int(11) NOT NULL,
  `estado` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa`
--

CREATE TABLE `programa` (
  `id_programa` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `horario_id` int(11) DEFAULT NULL,
  `sala_id` int(11) DEFAULT NULL,
  `mesa_id` int(11) DEFAULT NULL,
  `fecha_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `programa`
--

INSERT INTO `programa` (`id_programa`, `usuario_id`, `horario_id`, `sala_id`, `mesa_id`, `fecha_id`) VALUES
(1, 5, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puesto`
--

CREATE TABLE `puesto` (
  `id_puesto` int(11) NOT NULL,
  `nombre_puesto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `puesto`
--

INSERT INTO `puesto` (`id_puesto`, `nombre_puesto`) VALUES
(1, 'administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salas`
--

CREATE TABLE `salas` (
  `id_sala` int(11) NOT NULL,
  `nombre_sala` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `salas`
--

INSERT INTO `salas` (`id_sala`, `nombre_sala`) VALUES
(1, 'SALA 1: S. MICHOACÁN'),
(2, 'SALA 2: S. MICHOACÁN'),
(3, 'SALA 3: S. MICHOACÁN'),
(4, 'SALA 4: S. MICHOACÁN'),
(5, 'SALA 5: S. MICHOACÁN'),
(6, 'SALA 6: S. MICHOACÁN'),
(7, 'SALA 7: S. MICHOACÁN'),
(8, 'SALA 8: S. GARDENIA'),
(9, 'SALA 9: S. GLADIOLA'),
(10, 'SALA 10: S. ORQUÍDEA'),
(11, 'SALA 11: S. MAGNOLIA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status`
--

CREATE TABLE `status` (
  `id_status` int(11) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `status`
--

INSERT INTO `status` (`id_status`, `status`) VALUES
(1, 'Enviado'),
(2, 'Aceptado'),
(3, 'No aceptado'),
(4, 'Cancelado'),
(5, 'Evaluado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `id_tipo` int(11) NOT NULL,
  `nombre_trabajo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`id_tipo`, `nombre_trabajo`) VALUES
(1, 'Exposición Oral'),
(2, 'Exposición en Cartel');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuarios` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `a_paterno` varchar(255) NOT NULL,
  `a_materno` varchar(255) NOT NULL,
  `edad` int(11) NOT NULL,
  `genero` int(11) NOT NULL,
  `nacionalidad` int(11) NOT NULL,
  `otra_nac` varchar(255) NOT NULL,
  `estado` int(11) NOT NULL,
  `municipio` int(11) NOT NULL,
  `otro_mun` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `institucion` int(11) NOT NULL,
  `otra_ins` varchar(255) NOT NULL,
  `facultad` int(11) NOT NULL,
  `otra_fac` varchar(255) NOT NULL,
  `nivel` int(11) NOT NULL,
  `otro_nivel` varchar(255) NOT NULL,
  `mesa` int(11) NOT NULL,
  `modalidad` int(11) NOT NULL,
  `area_id` int(11) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `puesto` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `token` varchar(60) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  `request_token` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `nombre`, `a_paterno`, `a_materno`, `edad`, `genero`, `nacionalidad`, `otra_nac`, `estado`, `municipio`, `otro_mun`, `email`, `institucion`, `otra_ins`, `facultad`, `otra_fac`, `nivel`, `otro_nivel`, `mesa`, `modalidad`, `area_id`, `password`, `username`, `puesto`, `token`, `created_at`, `request_token`) VALUES
(1, 'Joel', 'Alvarez', 'Garcia', 31, 1, 1, 'null', 1, 1, 'null', 'informatica.cecti@gmail.com', 1, 'null', 2, 'null', 1, 'null', 1, 1, NULL, '74b5421ef14cc5d43b3380f99fc152d0017d9db0', 'ponente', 'ponente', 'b6a92c63074228dd1a0b066c84912190', '2017-05-19 13:47:58.480917', '2017-05-22 22:54:47'),
(2, 'Joel', 'Alvarez', 'Garcia', 31, 1, 1, '', 1, 1, '', 'admin@gmail.com', 1, '', 1, '', 1, '', 1, 1, NULL, '0eb5d4bdcd0cf425c08038262401da27ec289e69', 'evaluador', 'evaluador', NULL, '2017-05-19 13:47:58.480917', '2017-05-19 13:51:32'),
(3, 'Joel', 'Alvarez', 'Garcia', 22, 1, 1, '', 1, 1, '', 'admin@gmail.com', 1, '', 2, '', 1, '', 1, 1, NULL, '0596f5b01421e625a67a2d71623af1b9c55f8e24', 'encuentro', 'encuentro', NULL, '2017-05-19 13:47:58.480917', '2017-05-19 13:51:32'),
(4, 'Joel', 'Alvarez', 'Garcia', 31, 1, 1, '', 1, 1, '', 'admin@admin.com', 1, '', 2, '', 1, '', 5, 1, NULL, '522b7eb4f3f66fea0ea9f755b53dd0fcb1775454', 'relator', 'relator', NULL, '2017-05-19 13:47:58.480917', '2017-05-19 13:51:32'),
(5, 'Joel', 'Alvarez', 'Garcia', 31, 1, 1, '', 1, 1, '', 'admin@admin.com', 1, '', 2, '', 1, '', 6, 1, NULL, 'b676cb087863bdc7422e410a77524aac8e65ed6a', 'moderador', 'moderador', NULL, '2017-05-19 13:47:58.480917', '2017-05-19 13:51:32'),
(6, 'Joel', 'Alvarez', 'Garcia', 31, 1, 1, '', 1, 1, '', 'admin@admin.com', 1, '', 2, '', 1, '', 0, 0, 1, '6e3f09910883b77e92de878e220e8cf0ed65b502', 'logistico', 'logistico', NULL, '2017-05-19 13:47:58.480917', '2017-05-19 13:51:32'),
(7, 'Norma Eliza', 'Valencia', 'Guzman', 26, 1, 1, '', 1, 1, '', 'admin@admin.com', 1, '', 2, '', 1, '', 1, 1, NULL, '55e5b6b1299763ee823c9648c03637dac1235563', 'asistente', 'asistente', NULL, '2017-05-19 13:47:58.480917', '2017-05-19 13:51:32');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `area_logistica`
--
ALTER TABLE `area_logistica`
  ADD PRIMARY KEY (`id_logistica`);

--
-- Indices de la tabla `area_tematica`
--
ALTER TABLE `area_tematica`
  ADD PRIMARY KEY (`id_tematica`);

--
-- Indices de la tabla `asignacion_logistica`
--
ALTER TABLE `asignacion_logistica`
  ADD PRIMARY KEY (`id_asignacion`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indices de la tabla `evaluaciones`
--
ALTER TABLE `evaluaciones`
  ADD PRIMARY KEY (`id_evaluacion`);

--
-- Indices de la tabla `facultad`
--
ALTER TABLE `facultad`
  ADD PRIMARY KEY (`id_facultad`);

--
-- Indices de la tabla `fechas`
--
ALTER TABLE `fechas`
  ADD PRIMARY KEY (`id_fecha`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_genero`);

--
-- Indices de la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`id_horario`);

--
-- Indices de la tabla `institucion`
--
ALTER TABLE `institucion`
  ADD PRIMARY KEY (`id_institucion`);

--
-- Indices de la tabla `jovenes`
--
ALTER TABLE `jovenes`
  ADD PRIMARY KEY (`id_jovenes`);

--
-- Indices de la tabla `mesas`
--
ALTER TABLE `mesas`
  ADD PRIMARY KEY (`id_mesas`);

--
-- Indices de la tabla `modalidad`
--
ALTER TABLE `modalidad`
  ADD PRIMARY KEY (`id_modalidad`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`id_municipio`);

--
-- Indices de la tabla `nacionalidad`
--
ALTER TABLE `nacionalidad`
  ADD PRIMARY KEY (`id_nacionalidad`);

--
-- Indices de la tabla `nivel_academico`
--
ALTER TABLE `nivel_academico`
  ADD PRIMARY KEY (`id_academico`);

--
-- Indices de la tabla `ponencias`
--
ALTER TABLE `ponencias`
  ADD PRIMARY KEY (`id_ponencias`);

--
-- Indices de la tabla `proceso`
--
ALTER TABLE `proceso`
  ADD PRIMARY KEY (`id_proceso`);

--
-- Indices de la tabla `programa`
--
ALTER TABLE `programa`
  ADD PRIMARY KEY (`id_programa`);

--
-- Indices de la tabla `puesto`
--
ALTER TABLE `puesto`
  ADD PRIMARY KEY (`id_puesto`);

--
-- Indices de la tabla `salas`
--
ALTER TABLE `salas`
  ADD PRIMARY KEY (`id_sala`);

--
-- Indices de la tabla `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuarios`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `area_logistica`
--
ALTER TABLE `area_logistica`
  MODIFY `id_logistica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `area_tematica`
--
ALTER TABLE `area_tematica`
  MODIFY `id_tematica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `asignacion_logistica`
--
ALTER TABLE `asignacion_logistica`
  MODIFY `id_asignacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `evaluaciones`
--
ALTER TABLE `evaluaciones`
  MODIFY `id_evaluacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;
--
-- AUTO_INCREMENT de la tabla `fechas`
--
ALTER TABLE `fechas`
  MODIFY `id_fecha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id_horario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT de la tabla `institucion`
--
ALTER TABLE `institucion`
  MODIFY `id_institucion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;
--
-- AUTO_INCREMENT de la tabla `mesas`
--
ALTER TABLE `mesas`
  MODIFY `id_mesas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT de la tabla `modalidad`
--
ALTER TABLE `modalidad`
  MODIFY `id_modalidad` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `id_municipio` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `nacionalidad`
--
ALTER TABLE `nacionalidad`
  MODIFY `id_nacionalidad` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `nivel_academico`
--
ALTER TABLE `nivel_academico`
  MODIFY `id_academico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `ponencias`
--
ALTER TABLE `ponencias`
  MODIFY `id_ponencias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `proceso`
--
ALTER TABLE `proceso`
  MODIFY `id_proceso` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `programa`
--
ALTER TABLE `programa`
  MODIFY `id_programa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `puesto`
--
ALTER TABLE `puesto`
  MODIFY `id_puesto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `salas`
--
ALTER TABLE `salas`
  MODIFY `id_sala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `status`
--
ALTER TABLE `status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `id_tipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
