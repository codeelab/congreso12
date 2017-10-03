-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 03-10-2017 a las 02:36:22
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
-- Estructura de tabla para la tabla `alertas`
--

CREATE TABLE `alertas` (
  `id_alerta` int(11) NOT NULL,
  `asigna_alerta` int(11) DEFAULT NULL,
  `fecha_inicio_resumen` date NOT NULL,
  `fecha_cierre_resumen` date NOT NULL,
  `fecha_inicio_estado` date NOT NULL,
  `fecha_cierre_estado` date NOT NULL,
  `fecha_inicio_extenso` date NOT NULL,
  `fecha_cierre_extenso` date NOT NULL,
  `fecha_inicio_evaluacion` date NOT NULL,
  `fecha_cierre_evaluacion` date NOT NULL,
  `fecha_cierre_asistente` date NOT NULL,
  `fecha_inicio_constancia` date NOT NULL,
  `fecha_cierre_constancia` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `alertas`
--

INSERT INTO `alertas` (`id_alerta`, `asigna_alerta`, `fecha_inicio_resumen`, `fecha_cierre_resumen`, `fecha_inicio_estado`, `fecha_cierre_estado`, `fecha_inicio_extenso`, `fecha_cierre_extenso`, `fecha_inicio_evaluacion`, `fecha_cierre_evaluacion`, `fecha_cierre_asistente`, `fecha_inicio_constancia`, `fecha_cierre_constancia`) VALUES
(1, 1, '2017-06-26', '2017-09-07', '2017-08-28', '2017-09-11', '2017-09-14', '2017-09-21', '2017-09-18', '2017-09-28', '2017-10-07', '2017-09-01', '2018-02-28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area_apoyo`
--

CREATE TABLE `area_apoyo` (
  `id_area_apoyo` int(11) NOT NULL,
  `nombre_area_apoyo` text CHARACTER SET utf8 COLLATE utf8_spanish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `area_apoyo`
--

INSERT INTO `area_apoyo` (`id_area_apoyo`, `nombre_area_apoyo`) VALUES
(1, 'Registro'),
(2, 'Mesas'),
(3, 'Logística general');

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
(2, 'Mesa 2.- Ciencias de la Ingeniería y Tecnología'),
(3, 'Mesa 3.- Ciencias Agrícolas y Biotecnología'),
(4, 'Mesa 4.- Ciencias Sociales y Humanidades'),
(5, 'Mesa 5.- Ciencias Médicas, Biomedicina y Salud'),
(6, 'Mesa 6.- Ciencias Exactas'),
(7, 'Mesa 7.- Recursos Forestales e Hidrológicos, Sanidad, Medio Ambiente, Cambio Climático y Ecotecnias.'),
(8, 'Mesa 8.- Resilencia y Prosperidad Urbana; Desarrollo Humano, Educación de Calidad y Acceso a la Salud.'),
(9, 'Mesa 9.- Innovación, Competitividad, Desarrollo Regional, Desarrollo Agroalimentario y Tecnologías de la Información.'),
(10, 'Mesa 10.- Políticas Públicas y Experiencias de Vinculación e Integración del Conocimiento con las Necesidades del Estado.');

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clave`
--

CREATE TABLE `clave` (
  `id_clave` int(11) NOT NULL,
  `clave` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `clave`
--

INSERT INTO `clave` (`id_clave`, `clave`, `usuario`) VALUES
(1, '3v4luad0r', 'evaluador'),
(2, 'm0d3r4d0R', 'moderador'),
(3, 'R3l4t0R', 'relator'),
(4, 'l0g1stic0', 'logistico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id_estado` int(11) NOT NULL,
  `nombre_est` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id_estado`, `nombre_est`) VALUES
(1, 'AGUASCALIENTES'),
(2, 'BAJA CALIFORNIA'),
(3, 'BAJA CALIFORNIA SUR'),
(4, 'CAMPECHE'),
(5, 'COAHUILA'),
(6, 'CHIAPAS'),
(7, 'CHIHUAHUA'),
(8, 'DISTRITO FEDERAL'),
(9, 'DURANGO'),
(10, 'GUANAJUATO'),
(11, 'GUERRERO'),
(12, 'HIDALGO'),
(13, 'JALISCO'),
(14, 'ESTADO DE MEXICO'),
(15, 'MICHOACAN'),
(16, 'MORELOS'),
(17, 'NAYARIT'),
(18, 'NUEVO LEON'),
(19, 'OAXACA'),
(20, 'PUEBLA'),
(21, 'QUERETARO'),
(22, 'QUINTANA ROO'),
(23, 'SAN LUIS POTOSI'),
(24, 'SINALOA'),
(25, 'SONORA'),
(26, 'TABASCO'),
(27, 'TAMAULIPAS'),
(28, 'TLAXCALA'),
(29, 'VERACRUZ'),
(30, 'YUCATAN'),
(31, 'ZACATECAS');

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
  `calificacion_9` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(402, 129, 'Nutrición'),
(403, 130, 'Ing. en Gestión Empresarial'),
(404, 130, 'Ing. Electrónica'),
(405, 130, 'Ing. Industrias Alimentarias'),
(406, 130, 'Ing. Sistemas Computacionales'),
(407, 130, 'Ing. Tecnologías de la Información y Comunicaciones'),
(408, 130, 'Ing. Industrial'),
(409, 130, 'Contador Público'),
(410, 130, 'Licenciatura en Contaduría'),
(411, 43, 'Instituto de Investigaciones Químico Biológicas'),
(412, 43, 'Instituto de Investigaciones Agropecuarias y Forestales'),
(413, 43, 'Instituto de Física y Matemáticas'),
(414, 43, 'Instituto de Investigaciones Económicas y Empresariales'),
(415, 43, 'Instituto de Investigaciones Filosóficas “Luis Villoro”'),
(416, 43, 'Instituto de Investigaciones Históricas'),
(417, 43, 'Instituto de Investigación en Metalurgia y Materiales'),
(418, 43, 'Instituto de Investigaciones sobre los Recursos Naturales'),
(419, 43, 'Doctorado en Ciencias en el Área de Física'),
(420, 43, 'Programa Conjunto de Doctorado en Matemáticas'),
(421, 43, 'Doctorado en Ciencias en Ingeniería Física'),
(422, 125, 'Centro de Estudios Antropológicos'),
(423, 125, 'Centro de Estudios Históricos'),
(424, 125, 'Centro de Estudios Rurales'),
(425, 125, 'Centro de Estudios de las Tradiciones'),
(426, 125, 'Centro de Estudios Arqueológicos'),
(427, 125, 'Centro de Estudios en Geografía Humana'),
(428, 125, 'Doctorado en Ciencias Sociales'),
(429, 125, 'Laboratorio de Análisis y Diagnóstico del Patrimonio (LADIPA)'),
(430, 131, 'Área de Psicología'),
(431, 115, 'Lic. en Administración Educativa'),
(432, 115, 'Lic. en Ciencias de la Comunicación'),
(433, 115, 'Lic. en Contaduría Pública y Finanzas'),
(434, 115, 'Lic. en Desarrollo Infantil'),
(435, 115, 'Lic. en Educación'),
(436, 115, 'Lic. en Educación Física y Deportes'),
(437, 115, 'Lic. en Idiomas'),
(438, 115, 'Lic. en Multimedia Digital'),
(439, 115, 'Lic. en Psicología'),
(440, 115, 'Lic. en Pedagogía'),
(441, 115, 'Lic. en Arquitectura'),
(442, 115, 'Lic. en Relaciones Comerciales Internacionales'),
(443, 115, 'Lic. en Administración de Empresas'),
(444, 115, 'Lic. en Ciencias Computacionales y de Comunicación'),
(445, 115, 'Lic. en Derecho'),
(446, 115, 'Lic. en Ecología y Medio Ambiente'),
(447, 115, 'Lic. en Educación Media Superior'),
(448, 115, 'Lic. en Ingeniería Financiera'),
(449, 115, 'Lic. en Mercadotecnia y Publicidad'),
(450, 115, 'Lic. en Nutrición'),
(451, 115, 'Lic. en Turismo'),
(452, 115, 'Ing. en Audio y Producción Musical'),
(453, 115, 'Lic. en Diseño Gráfico'),
(454, 107, 'Campo Experimental Valle de Apatzingán'),
(455, 28, 'Ingeniería Mecánica'),
(456, 132, 'Otro'),
(457, 85, 'Administración'),
(458, 85, 'Arquitectura'),
(459, 85, 'Contaduría'),
(460, 85, 'Derecho'),
(461, 85, 'Diseño y Comunicación Visual'),
(462, 85, 'Informática'),
(463, 85, 'Ingeniería Civil'),
(464, 85, 'Pedagogía'),
(465, 85, 'Psicología'),
(466, 85, 'Trabajo Social');

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
(42, 'Universidad Vasco de Quiroga (UVAQ)'),
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
(106, 'Instituto Mexicano del Seguro Social (IMSS)'),
(107, 'Instituto Nacional de Investigaciones Forestales Agrícolas y Pecuarias (INIFAP)'),
(108, 'Instituto Tecnológico Agropecuario No. 10 (ITA10)'),
(109, 'Instituto Tecnológico Agropecuario No. 16 (ITA16)'),
(110, 'Instituto Tecnológico Agropecuario No. 8 (ITA8)'),
(111, 'Instituto Tecnológico Agropecuario No. 9 (ITA9)'),
(112, 'Instituto Tecnológico Agropecuario de Michoacán (ITAM)'),
(113, 'Instituto de Ecología A.C.'),
(114, 'Universidad TecMilenio, Campus Morelia.'),
(115, 'Universidad Montrer'),
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
(129, 'Universidad Contemporánea de las Américas (UCLA)'),
(130, 'Instituto Tecnológico de Estudios Superiores de Zamora'),
(131, 'Centro de Rehabilitación e Inclusión Infantil Michoacán (CRIT)'),
(132, 'Otro');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`id_municipio`, `nombre_mun`, `estado_id`) VALUES
(1, 'Acuitzio', 15),
(2, 'Aguililla', 15),
(3, 'Alvaro Obregón', 15),
(4, 'Angamacutiro', 15),
(5, 'Angangueo', 15),
(6, 'Apatzingán', 15),
(7, 'Aporo', 15),
(8, 'Aquila', 15),
(9, 'Ario', 15),
(10, 'Arteaga', 15),
(11, 'Briseñas', 15),
(12, 'Buenavista', 15),
(13, 'Carácuaro', 15),
(14, 'Charapan', 15),
(15, 'Charo', 15),
(16, 'Cherán', 15),
(17, 'Chilchota', 15),
(18, 'Chinicuila', 15),
(19, 'Chucándiro', 15),
(20, 'Churintzio', 15),
(21, 'Churumuco', 15),
(22, 'Coahuayana', 15),
(23, 'Coalcomán de Vázquez Pallares', 15),
(24, 'Coeneo', 15),
(25, 'Cojumatlán de Régules', 15),
(26, 'Contepec', 15),
(27, 'Copándaro', 15),
(28, 'Cotija', 15),
(29, 'Cuitzeo', 15),
(30, 'Ecuandureo', 15),
(31, 'Epitacio Huerta', 15),
(32, 'Erongarícuaro', 15),
(33, 'Gabriel Zamora', 15),
(34, 'Hidalgo', 15),
(35, 'Huandacareo', 15),
(36, 'Huaniqueo', 15),
(37, 'Huetamo', 15),
(38, 'Huiramba', 15),
(39, 'Indaparapeo', 15),
(40, 'Irimbo', 15),
(41, 'Ixtlán', 15),
(42, 'Jacona', 15),
(43, 'Jiménez', 15),
(44, 'Jiquilpan', 15),
(45, 'José Sixto Verduzco', 15),
(46, 'Juárez', 15),
(47, 'Jungapeo', 15),
(48, 'La Huacana', 15),
(49, 'La Piedad', 15),
(50, 'Lagunillas', 15),
(51, 'Lázaro Cárdenas', 15),
(52, 'Los Reyes', 15),
(53, 'Madero', 15),
(54, 'Maravatío', 15),
(55, 'Marcos Castellanos', 15),
(56, 'Morelia', 15),
(57, 'Morelos', 15),
(58, 'Múgica', 15),
(59, 'Nahuatzen', 15),
(61, 'Nocupétaro', 15),
(62, 'Nuevo Parangaricutiro', 15),
(63, 'Nuevo Urecho', 15),
(64, 'Numarán', 15),
(65, 'Ocampo', 15),
(66, 'Pajacuarán', 15),
(67, 'Panindícuaro', 15),
(68, 'Paracho', 15),
(69, 'Parácuaro', 15),
(70, 'Pátzcuaro', 15),
(71, 'Penjamillo', 15),
(72, 'Peribán', 15),
(73, 'Purépero', 15),
(74, 'Puruándiro', 15),
(75, 'Queréndaro', 15),
(76, 'Quiroga', 15),
(77, 'Sahuayo', 15),
(78, 'Salvador Escalante', 15),
(79, 'San Lucas', 15),
(80, 'Santa Ana Maya', 15),
(81, 'Senguio', 15),
(82, 'Susupuato', 15),
(83, 'Tacámbaro', 15),
(85, 'Tancí­taro', 15),
(86, 'Tangamandapio', 15),
(87, 'Tangancícuaro', 15),
(88, 'Tanhuato', 15),
(89, 'Taretan', 15),
(90, 'Tarímbaro', 15),
(91, 'Tepalcatepec', 15),
(92, 'Tingüindí­n', 15),
(93, 'Tingambato', 15),
(94, 'Tiquicheo de NicolÃ¡s Romer', 15),
(95, 'Tlalpujahua', 15),
(96, 'Tlazazalca', 15),
(97, 'Tocumbo', 15),
(98, 'Tumbiscatío', 15),
(99, 'Turicato', 15),
(100, 'Tuxpan', 15),
(101, 'Tuzantla', 15),
(102, 'Tzintzuntzan', 15),
(103, 'Tzitzio', 15),
(104, 'Uruapan', 15),
(105, 'Venustiano Carranza', 15),
(106, 'Villamar', 15),
(107, 'Vista Hermosa', 15),
(108, 'Yurécuaro', 15),
(109, 'Zacapu', 15),
(110, 'Zamora', 15),
(111, 'Zinánparo', 15),
(112, 'Zinapécuaro', 15),
(113, 'Ziracuaretiro', 15),
(114, 'Zitácuaro', 15),
(115, 'Aguascalientes', 1),
(116, 'Mexicali', 2),
(117, 'La Paz', 3),
(118, 'Campeche', 4),
(119, 'Saltillo', 5),
(120, 'Tuxtla Gutiérrez', 6),
(121, 'Chihuahua', 7),
(122, 'Ciudad de México', 8),
(123, 'Durango', 9),
(124, 'Guanajuato', 10),
(125, 'Chilpancingo', 11),
(126, 'Pachuca', 12),
(127, 'Guadalajara', 13),
(128, 'Toluca', 14),
(129, 'Cuernavaca', 16),
(130, 'Tepic', 17),
(131, 'Monterrey', 18),
(132, 'Oaxaca', 19),
(133, 'Puebla', 20),
(134, 'Querétaro', 21),
(135, 'Chetumal', 22),
(136, 'San Luis Potosí', 23),
(137, 'Culiacán', 24),
(138, 'Hermosillo', 25),
(139, 'Villahermosa', 26),
(140, 'Ciudad Victoria', 27),
(141, 'Tlaxcala', 28),
(142, 'Xalapa', 29),
(143, 'Mérida', 30),
(144, 'Zacatecas', 31);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nacionalidad`
--

CREATE TABLE `nacionalidad` (
  `id_nacionalidad` int(11) NOT NULL,
  `nombre_nac` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `nacionalidad`
--

INSERT INTO `nacionalidad` (`id_nacionalidad`, `nombre_nac`) VALUES
(1, 'Mexicano'),
(2, 'Extranjero');

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
(1, 'Licenciatura'),
(2, 'Maestría'),
(3, 'Doctorado'),
(4, 'Otro');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `ponencias`
--

INSERT INTO `ponencias` (`id_ponencias`, `usuario_id`, `tipo_trabajo_id`, `titulo`, `autor`, `coautores`, `asesor`, `mesa_id`, `c_jovenes`, `archivo_resumen`, `archivo_extenso`, `status_id`, `fecha_registro`, `fecha_extenso`) VALUES
(1, 102, 1, NULL, NULL, NULL, NULL, 4, 1, 'mesas/mesa4/1-resumen.pdf', NULL, 2, '2017-07-04', NULL),
(2, 120, 2, 'Las moléculas lipídicas de la semilla de aguacate nativo mexicano (Persea americana var. drymifolia) inducen apoptosis en células de cáncer de colon', 'Mónica Lara Márquez', 'Carla Isabel Tena Fuentes, Rafael Salgado Garciglia, Alejandra Ochoa Zarzosa', 'Joel Edmundo López Meza', 5, 1, 'mesas/mesa5/2-resumen.pdf', 'mesas_ext/mesa5/2-extenso.pdf', 2, '2017-07-07', NULL),
(31, 226, 1, 'EL IMPACTO PSICO-EMOCIONAL EN FAMILIAS VÍCTIMAS DE HOMICIDIO EN ZAMORA DE HIDALGO', 'Luis Manuel Meza López', 'Federico Pérez García', 'Federico Pérez García ', 4, 1, 'mesas/mesa4/31-resumen.pdf', NULL, 2, '2017-07-22', NULL),
(29, 1, 1, 'IMPACTO LEGISLATIVO EN LA ATENCIÓN DE VIOLENCIA ESCOLAR MICHOACÁN', 'Carlos Arreola Fernández , José Egberto Bedolla Becerril,Carlos Arreola Fernández , José Egberto Bedolla Becerril,Carlos Arreola Fernández , José Egberto Bedolla Becerril ', 'Francisco Salguero Ruiz', 'Víctor Antonio Acevedo Valerio', 8, 1, 'mesas/mesa8/29-resumen.pdf', 'mesas_ext/mesa8/29-extenso.pdf', 2, '2017-07-21', NULL),
(7, 117, 1, 'FABRICACIÓN Y CARACTERIZACIÓN DE UN MATERIAL COMPUESTO FABRICADO POR FUNDICIÓN CON AGITACIÓN', 'Carlos Arreola Fernández , José Egberto Bedolla Becerril ', 'Víctor Hugo López Morelos', 'José Egberto Bedolla Becerril', 1, 0, 'mesas/mesa1/7-resumen.pdf', NULL, 2, '2017-07-11', NULL),
(10, 140, 1, 'DETECCIÓN DE OBSTÁCULOS EN TIEMPO REAL MEDIANTE VISIÓN ESTÉREO APLICADO A LA NAVEGACIÓN AUTÓNOMA EN UN ROBOT MÓVIL', 'Alejandro Méndez Navarro, José Jorge Rodríguez Hernández, Diana Salamanca González, Rosendo Rodriguez Arceo', 'Diana Salamanca González, Rosendo Rodriguez Arceo', 'Alejandro Méndez Navarro, José Jorge Rodríguez Hernández', 2, 0, 'mesas/mesa2/10-resumen.pdf', NULL, 2, '2017-07-11', NULL),
(20, 150, 1, 'OBTENCIÓN DE NANOESTRUCTURAS DE CARBONO A PARTIR DE ANTRACENO ', 'Carmen Judith Gutiérrez García', 'Jael Madai Ambriz Torres, José de Jesús Contreras Navarrete , Francisco Gabriel Granados Martínez, Luis Fernando Ortega Varela, María de Lourdes Mondragón Sánchez, Francisco Méndez Ruíz, Lada Domratcheva Lvova.', 'Lada Domratcheva Lvova', 2, 0, 'mesas/mesa2/20-resumen.pdf', 'mesas_ext/mesa2/20-extenso.pdf', 2, '2017-07-12', NULL),
(21, 119, 1, 'Polimorfismos en el gen pe_pgrs18 en cepas de Mycobacterium tuberculosis aisladas  en Michoacán y Querétaro y su asociación con el genotipo y datos clínicos.', 'Eva Nelida Jimenez Ruiz', 'Ana Laura Guillén Nepita,  Erandi Frutos Hernández , Andrea Monserrat Negrete Paz, Vázquez Marrufo Gerardo.', 'Vázquez Garcidueñas Ma. Soledad', 5, 1, 'mesas/mesa5/21-resumen.pdf', 'mesas_ext/mesa5/21-extenso.pdf', 2, '2017-07-12', NULL),
(19, 133, 1, 'Análisis de compuestos poliamida 6/MWCNTs funcionalizados', 'José de Jesús Contreras Navarrete', 'Jael Madai Ambriz Torres, Carmen Judith Gutiérrez García, Francisco Gabriel Granados Martínez, Diana Litzajaya García Ruiz, Nelly Flores Ramírez, Lada Domratcheva Lvova', 'Lada Domratcheva Lvova', 2, 0, 'mesas/mesa2/19-resumen.pdf', 'mesas_ext/mesa2/19-extenso.pdf', 2, '2017-07-12', NULL),
(855, 1203, 1, 'OPTIMIZACIÓN DE CONDICIONES DE PRODUCCIÓN DE CARBÓN ACTIVADO CON H3PO4 MEDIANTE LA METODOLOGÍA DE SUPERFICIE DE RESPUESTA', 'Kathia Amital Lemus Sagrero', 'Guillermo Andrade Espinosa; José Diego Bárcenas Torres; Omar Augusto Sánchez Ortiz', 'Guillermo Andrade Espinosa', 2, 1, 'mesas/mesa2/855-resumen.pdf', 'mesas_ext/mesa2/855-extenso.pdf', 2, '2017-09-06', NULL),
(852, 1284, 1, 'Nocion de la madre en niños institucionalizados ', 'Diana Laura García Silva ', 'María del Carmen Chavez Manzo ', 'María del Carmen Manzo ', 4, 1, 'mesas/mesa4/852-resumen.pdf', NULL, 2, '2017-09-06', NULL),
(17, 148, 1, 'ANÁLISIS TÉCNICO-ECONÓMICO DE LA APLICACIÓN DE MICRO-COGENERACIÓN DE UN ORC ACTIVADO POR GASES RESIDUALES EN UNA VIVIENDA', 'Edson Guzmán Crisantos , Gerardo Rocha Rodríguez', 'Carlos Rubio Maya, Víctor Manuel Ambriz Díaz', 'Víctor Manuel Ambriz Díaz', 2, 1, 'mesas/mesa2/17-resumen.pdf', 'mesas_ext/mesa2/17-extenso.pdf', 2, '2017-07-12', NULL),
(22, 152, 1, 'Redes atencionales y uso de estrategia de agrupación en memoria episódica en consumidores de cristal de metanfetamina.  ', 'Cecilia Salas González ', 'Esteban Gudayol Ferré , Erwin Rogelio Villuendas González y Araceli Karla Murillo Servín', 'Esteban Gudayol Ferré', 4, 1, 'mesas/mesa4/22-resumen.pdf', 'mesas_ext/mesa4/22-extenso.pdf', 2, '2017-07-12', NULL),
(23, 128, 2, 'Análisis bioinfórmático del efecto de mutaciones en el gen katG de cepas de Mycobacterium tuberculosis de Michoacán y Querétaro, sobre la estructura y función de la proteína codificada ', 'Adrián Sierra Maya', 'Ana Laura Guillén Nepita; Andrea Monserrat Negrete Paz; Gerardo Vázquez Marrufo; Gloria Alicia Figueroa Aguilar; Ma. Soledad Vázquez Garcidueñas', 'Ma. Soledad Vázquez Garcidueñas', 5, 1, 'mesas/mesa5/23-resumen.pdf', 'mesas_ext/mesa5/23-extenso.pdf', 2, '2017-07-14', NULL),
(24, 135, 1, 'CAPACIDAD ANTIOXIDANTE TOTAL (CAT) EN JÓVENES CON ANTECEDENTE DE PREMATUREZ', 'Diana Carolina Villalpando Sánchez', 'Nallely González Avianeda', 'Anel Gómez García', 5, 0, 'mesas/mesa5/24-resumen.pdf', 'mesas_ext/mesa5/24-extenso.pdf', 2, '2017-07-14', NULL),
(25, 131, 1, 'Efecto del estrés crónico sobre la expresión del sistema vasopresinérgico cerebral durante las etapas tempranas de la vida', 'Angelica Roque', 'Roberto Ruiz, Juan josé Valdéz-Alarcón, Limei Zhang', 'Naima Lajud', 5, 1, 'mesas/mesa5/25-resumen.pdf', 'mesas_ext/mesa5/25-extenso.pdf', 2, '2017-07-17', NULL),
(26, 186, 1, 'ACOPLAMIENTO MOLECULAR Y SÍNTESIS DE NUEVOS TETRAZOLES 1-5 DISUSTITUIDOS CON POTENCIAL ACTIVIDAD ANTI CANCERIGENA', 'Abel Suárez Castro', 'Carlos J. Cortés García, Rocío Gamez Montaño y Luis Chacón García', 'Luis Chacón García', 6, 0, 'mesas/mesa6/26-resumen.pdf', NULL, 2, '2017-07-18', NULL),
(27, 203, 1, 'Influencia de la tecnología en la comunicación familiar ', 'Karina Nava Mondragón, María del Carmen Silva Aguilar', 'Liliana Halina García Silva', 'Liliana Halina García Silva', 4, 1, 'mesas/mesa4/27-resumen.pdf', 'mesas_ext/mesa4/27-extenso.pdf', 2, '2017-07-20', NULL),
(30, 101, 1, 'SOLUCIÓN EXTRAJUDICIAL DE CONFLICTOS ENTRE MARCAS Y NOMBRES DE DOMINIO', 'Vanessa Chávez Zárate', 'Víctor Antonio Acevedo Valerio', 'Víctor Antonio Acevedo Valerio', 9, 1, 'mesas/mesa9/30-resumen.pdf', 'mesas_ext/mesa9/30-extenso.pdf', 2, '2017-07-21', NULL),
(32, 141, 1, 'FUNCIONALIZACIÓN DE SOPORTES NANOESTRUCTURADOS PARA LA OBTENCIÓN DE MATERIALES HÍBRIDOS QUITOSANO/COLÁGENO', 'Alejandra Pérez Nava, Janett Betzabe González Campos', 'Josué David Mota Morales', 'Janett Betzabe González Campos', 6, 0, 'mesas/mesa6/32-resumen.pdf', 'mesas_ext/mesa6/32-extenso.pdf', 2, '2017-07-23', NULL),
(33, 169, 2, 'BIODEGRADACION DE LIGNINA DE BAGAZO DE AGAVE POR ACCIÓN ENZIMÁTICA DE Trametes versicolor', 'JOSE MARTIN CARLOS-PEREZ', 'LIZBETH PASAYE-ANAYA', 'JAIME SAUCEDO-LUNA, GERARDO VAZQUEZ-MARRUFO', 3, 0, 'mesas/mesa3/33-resumen.pdf', 'mesas_ext/mesa3/33-extenso.pdf', 2, '2017-07-24', NULL),
(58, 112, 2, 'ANÁLISIS DE LA VIRULENCIA DE DOS GENOTIPOS DE Salmonella enterica AISLADOS DE ALIMENTOS EN MICHOACÁN', 'Adrián Gómez Baltazar', 'Ma. Soledad Vázquez Garcidueñas, Alejandra Ochoa Zarzosa y Gerardo Vázquez Marrufo', 'Gerardo Vázquez Marrufo', 5, 1, 'mesas/mesa5/58-resumen.pdf', 'mesas_ext/mesa5/58-extenso.pdf', 2, '2017-08-01', NULL),
(35, 237, 1, 'CARACTERIZACIÓN DE LOS EFECTOS DEL ESTRÉS EN ETAPAS TEMPRANAS SOBRE LA NEUROGÉNESIS HIPOCAMPAL Y SU RELACIÓN CON LA CONDUCTA TIPO DEPRESIVA Y EL RIESGO METABÓLICO EN DIFERENTES ETAPAS DE LA VIDA', 'Roberto Ruiz González ', 'Angélica Roque, Edel Pineda y Naima Lajud', 'Naima Lajud Avila ', 5, 0, 'mesas/mesa5/35-resumen.pdf', 'mesas_ext/mesa5/35-extenso.pdf', 2, '2017-07-24', NULL),
(36, 145, 2, 'ANÁLISIS ESTRUCTURAL DE LAS ENZIMAS HIDROXIMICOLATO SINTASA Y CICLOPROPANO SINTASA DE CEPAS CAUSANTES DE TUBERCULOSIS MENÍNGEA EN MICHOÁCAN.', 'Andrea Monserrat Negrete Paz', 'Ana Laura Guillén Nepita, Gerardo Vázquez Marrufo, Martin Graña, Ma. Soledad Vázquez Garcidueñas', ' Ma. Soledad Vázquez Garcidueñas', 5, 1, 'mesas/mesa5/36-resumen.pdf', 'mesas_ext/mesa5/36-extenso.pdf', 2, '2017-07-25', NULL),
(37, 238, 2, '“CARACTERIZACIÓN DE ALEACIONES Ti-13%Ta-X%Sn POR MICROSCOPIA ELECTRÓNICA DE BARRIDO (MEB) PARA APLICACIONES BIOMÉDICAS”', 'LUIS BEJAR GÓMEZ', 'ABRAHAM ALBERTO MEJÍA HERNÁNDEZ, ARISOTO MEDINA FLORES, ENGELBER HUAPE PADILLA, MANUEL ALEJANDRO PANIAGUA ORTIZ', 'LUIS BEJAR GÓMEZ', 2, 0, 'mesas/mesa2/37-resumen.pdf', 'mesas_ext/mesa2/37-extenso.pdf', 2, '2017-07-26', NULL),
(38, 115, 1, 'ESCENARIOS CLIMÁTICOS EN LA REGIÓN AGUACATERA DE MICHOACÁN, MÉXICO, 2025-2075.', 'Alba María Ortega Gómez, Carlos Francisco Ortiz Paniagua y Priscila Ortega Gómez', 'Carlos Francisco Ortiz Paniagua y Priscila Ortega Gómez', 'Carlos Francisco Ortiz Paniagua ', 7, 1, 'mesas/mesa7/38-resumen.pdf', 'mesas_ext/mesa7/38-extenso.pdf', 2, '2017-07-27', NULL),
(39, 292, 1, 'Polimorfismos en genes asociados al desarrollo del esmalte de una población de adultos ', 'Claudia Ivett Guillen Reyes', 'Julieta De la vega Calderón, José Alfonso Martínez Lastiri.', ' Ma. Soledad Vázquez Garcidueñas', 5, 1, 'mesas/mesa5/39-resumen.pdf', 'mesas_ext/mesa5/39-extenso.pdf', 2, '2017-07-27', NULL),
(40, 129, 1, 'BÚSQUEDA DE VARIACIONES EN EL GEN rpoB DE Mycobacterium tuberculosis, Y SU EFECTO IN SILICO SOBRE LA FUNCIÓN DE LA PROTEÍNA CODIFICADA', 'José Rubén Soto Armas', 'Ana Laura Guillén-Nepita, Andrea Monserrat Negrete Paz, Gerardo Vázquez-Marrufo, Gloria Alicia Figueroa-Aguilar y Ma. Soledad Vázquez-Garcidueñas', 'Ma. Soledad Vázquez-Garcidueñas', 5, 1, 'mesas/mesa5/40-resumen.pdf', 'mesas_ext/mesa5/40-extenso.pdf', 2, '2017-07-28', NULL),
(41, 246, 1, 'FORMULACION Y VALOR NUTRICIONAL DE UN CEREAL A BASE DE AVENA (Avena sativa.) CON BERENJENA (Solanum melongena) ALGACHOFA (Cynara scolymus) Y JENJIBRE (Zingiber officiale).', 'Angelica Arleth Aguirre Mendoza, Karen Violeta Valencia Gutierrez, Elizabeth Reyes Valdes', 'Angelica Arleth Aguirre Mendoza, Karen Violeta Valencia Gutierrez, Elizabeth Reyes Valdes', 'Elizabeth Reyes Valdes', 3, 1, 'mesas/mesa3/41-resumen.pdf', NULL, 2, '2017-07-28', NULL),
(42, 247, 1, 'FORMULACION Y VALOR NUTRICIONAL DE UN CEREAL A BASE DE AVENA (Avena sativa.) CON BERENJENA (Solanum melongena) ALGACHOFA (Cynara scolymus) Y JENJIBRE (Zingiber officiale).', 'Angelica arleth Aguirre Mendoza , Karen Violeta Valencia Gutiérrez, Elizabeth Reyes Valdes', 'Angelica arleth Aguirre Mendoza, Karen Violeta Valencia Gutiérrez, Elizabeth Reyes Valdes', ' Elizabeth Reyes Valdes', 3, 1, 'mesas/mesa3/42-resumen.pdf', NULL, 2, '2017-07-28', NULL),
(43, 297, 1, 'Participación social y rol familiar del adulto mayor que asiste al INAPAM', 'Beatriz Barrera Posadas', 'Estefanía López Luna', 'Liliana Halina Gárcia Silva', 4, 1, 'mesas/mesa4/43-resumen.pdf', NULL, 3, '2017-07-28', NULL),
(44, 293, 1, 'Obtención de nanopartículas de plata mediante síntesis verde utilizando radiación solar y extracto de Loeselia Mexicana.', 'Rodrigo Herrero Calvillo', 'Gerardo Antonio Rosas Trejo', 'Gerardo Antonio Rosas Trejo', 1, 0, 'mesas/mesa1/44-resumen.pdf', 'mesas_ext/mesa1/44-extenso.pdf', 2, '2017-07-28', NULL),
(164, 498, 1, 'OBTENCIÓN DE DESPLAZAMIENTOS EN TRES DIMENSIONES PARA TÚNELES CIRCULARES A PARTIR DE UN NOMOGRAMA GENERADO EN ELEMENTOS FINITOS', 'Fernando Viveros Viveros, Luisa N. Equihua Anguiano ', 'Fernando Viveros Viveros , Eleazar Arreygue Rocha, Carlos Chávez Negrete', 'Luisa N. Equihua-Anguiano ', 2, 1, 'mesas/mesa2/164-resumen.pdf', NULL, 2, '2017-08-09', NULL),
(47, 323, 2, 'Caracterización y Optimización de la Técnica de Malteo de Cebada para la Producción de Malta Cervecera', 'José Francisco Lázaro luna ', 'Rosa Maria Garcia Martinez ', 'Rosa Maria Garcia Martinez ', 3, 1, 'mesas/mesa3/47-resumen.pdf', NULL, 3, '2017-07-28', NULL),
(48, 322, 1, 'ESTUDIO QUÍMICO PRELIMINAR DEL EXTRACTO HEXÁNICO DE TALLOS DE Aristolochia sp', 'Lidia Beiza-Granados, Nereyda Mondragón-Arroyo.', 'Andrea Rivera-Trigueros,  Hugo A. García-Gutiérrez  , José L. Salvador-Hernández,  Juan D. Hernández-Hernández,  Rosa E. del Río,   Luisa U. Román-Marín.', 'Lidia Beiza Granados', 6, 1, 'mesas/mesa6/48-resumen.pdf', 'mesas_ext/mesa6/48-extenso.pdf', 2, '2017-07-28', NULL),
(49, 287, 2, 'EL ENRIQUECIMIENTO AMBIENTAL AUMENTA LA NEUROGÉNESIS HIPOCAMPAL DESPUÉS DE UNA LESIÓN', 'Luis Arturo Díaz Chávez, Naima Lajud', 'Corina Bondi, Anthony E. Kline', 'Dra. Naima Lajud Ávila', 5, 1, 'mesas/mesa5/49-resumen.pdf', 'mesas_ext/mesa5/49-extenso.pdf', 2, '2017-07-28', NULL),
(50, 290, 1, 'ESTRÉS DURANTE ETAPAS TEMPRANAS DE LA VIDA Y SU RELACION CON LA DIETA ALTA EN FRUCTOSA', 'Edel Pineda López ', 'Roberto Ruiz-González , Angélica Roque , Naima Lajud  Avila', 'Naima Lajud Avila', 5, 0, 'mesas/mesa5/50-resumen.pdf', 'mesas_ext/mesa5/50-extenso.pdf', 2, '2017-07-28', NULL),
(68, 318, 1, 'CARACTERIZACIÓN FILOGENÉTICA DE BACTERIAS PRESENTES EN EL PROCESO DE FERMENTACIÓN DEL MEZCAL', 'Venecia Solórzano Villanueva, ', 'Fernando Covián Nares, Teresa Itandehui Garambullo Peña, y Juan Carlos González-Hernández', 'Juan Carlos González-Hernández', 3, 0, 'mesas/mesa3/68-resumen.pdf', 'mesas_ext/mesa3/68-extenso.pdf', 2, '2017-08-01', NULL),
(52, 319, 1, '“EVALUACIÓN FERMENTATIVA Y MODELADO EN DISEÑOS MIXTOS DE LEVADURAS AISLADAS DE MEZCALERAS ARTESANALES DEL ESTADO DE MICHOACÁN”', 'Sánchez-Heredia Pedro', 'Contreras-Méndez Andrea,   Pérez-Hernández Elia, Chávez-Parga Ma.del Carmen y González-Hernández Juan Carlos ', 'González-Hernández Juan Carlos ', 3, 0, 'mesas/mesa3/52-resumen.pdf', 'mesas_ext/mesa3/52-extenso.pdf', 2, '2017-07-30', NULL),
(54, 155, 2, 'Análisis de la activación de la vía AtTOR/S6K inducida por ciclodipéptidos producidos por Pseudomonas aeruginosa', 'Omar González López , Jesús Campos García , Homero Reyes de la Cruz', 'Jesús Campos García , Homero Reyes de la Cruz', 'Homero Reyes de la Cruz', 3, 1, 'mesas/mesa3/54-resumen.pdf', NULL, 2, '2017-07-31', NULL),
(55, 337, 1, 'DISPERSIÓN DE NANOESTRUCTURAS DE CARBONO EN MATRICES POLIMÉRICAS A TRAVÉS DEL USO DE CAMPOS MAGNÉTICOS', 'Francisco Gabriel Granados Martínez', 'Diana Litzajaya García Ruiz, José de Jesús Contreras Navarrete, Jael Madaí Ambriz Torres, Carmen Judith Gutiérrez García, María Remedios Cisneros Magaña, María de Lourdes Mondragón Sánchez, Lada Domratcheva Lvova', 'Lada Domratcheva Lvova', 2, 0, 'mesas/mesa2/55-resumen.pdf', 'mesas_ext/mesa2/55-extenso.pdf', 2, '2017-07-31', NULL),
(56, 225, 1, 'COMPARATIVA TECNICO-ECONOMICA DE UN SISTEMA DE POLIGENERACION EN CASCADA ACTIVADO CON DIFERENTES FUENTES DE ENERGIA TERMICA', 'Marco Antonio Ruiz Gonzalez', 'Silvia Lizeth Corona Ruiz, Víctor Ambriz Díaz', 'Carlos Rubio Maya', 2, 1, 'mesas/mesa2/56-resumen.pdf', 'mesas_ext/mesa2/56-extenso.pdf', 2, '2017-07-31', NULL),
(57, 230, 1, 'IDENTIFICACION Y TRATAMIENTO DE LAS DESCARGAS DE AGUA RESIDUAL AL RIO GRANDE DE MORELIA TRAMO ATAPANEO – LAGO DE CUITZEO', 'María Magdalena Cuevas Ruiz', 'Sergio Eduardo Cazarez Rodríguez, Julio Cardiel Díaz', 'Constantino Domínguez Sánchez', 7, 0, 'mesas/mesa7/57-resumen.pdf', NULL, 2, '2017-07-31', NULL),
(59, 334, 1, 'VULNERABILIDAD DEL AGUA SUBTERRÁNEA DE LOS ACUÍFEROS ZACAPU Y PASTOR ORTIZ MEDIANTE LA METODOLOGÍA DRASTIC ', 'Juan Antonio Corona Ramírez', 'Omar Lucas Urbina', 'Sonia Tatiana Sánchez Quispe', 7, 1, 'mesas/mesa7/59-resumen.pdf', 'mesas_ext/mesa7/59-extenso.pdf', 2, '2017-08-01', NULL),
(60, 286, 1, 'Localización de zonas propicias a recarga artificial del acuífero Morelia-Queréndaro', 'Azucena Karen Alvarado Pérez', 'Sonia Tatiana Sánchez Quispe, Omar Lucas Urbina', 'Sonia Tatiana Sánchez Quispe', 7, 1, 'mesas/mesa7/60-resumen.pdf', NULL, 2, '2017-08-01', NULL),
(62, 184, 1, 'Caracterización fisicoquímica y morfológica de las fibras de raquis de banano para su uso industrial', 'María Guadalupe González Gutiérrez, Rafael Alejandro Vivanco Estrada ,', 'Jahir Antonio Barajas Estrada', 'Rafael Alejandro Vivanco Estrada ', 9, 1, 'mesas/mesa9/62-resumen.pdf', 'mesas_ext/mesa9/62-extenso.pdf', 2, '2017-08-01', NULL),
(100, 184, 1, 'EFECTO DEL TIPO DE CUBIERTA EN LA LUZ FOTOSINTÉTICAMENTE ACTIVA (PAR) INCIDENTE SOBRE EL CULTIVO DE ARÁNDANO DESARROLLADO EN ZAMORA, MICHOACÁN', 'Rafael Alejandro Vivanco Estrada , Gerardo Cárdenas Ornelas , Ivan Salazar Barajas, Héctor Soto Maldonado, Silva Angélica Peña Gil, Javier Gómez Avalos, Antonio Yépez Silva', 'Gerardo Cárdenas Ornelas ', 'Rafael Alejandro Vivanco Estrada ', 9, 0, 'mesas/mesa9/100-resumen.pdf', 'mesas_ext/mesa9/100-extenso.pdf', 2, '2017-08-06', NULL),
(70, 184, 1, 'SELECCIÓN DE LUZ ARTIFICIAL PARA EL DESARROLLO DE FRESA DE VIVERO', 'Juan Carlos Guzmán Ruiz , David Fernando Guzmán Ruiz, Salvador Guzmán Ruiz, Rafael Alejandro Vivanco Estrada ', 'Rafael Alejandro Vivanco Estrada ', 'Rafael Alejandro Vivanco Estrada ', 9, 0, 'mesas/mesa9/70-resumen.pdf', 'mesas_ext/mesa9/70-extenso.pdf', 2, '2017-08-02', NULL),
(71, 351, 1, 'CARACTERIZACIÓN MOLECULAR Y FERMENTATIVA DE BACTERIAS AISLADAS DEL AGUAMIEL', 'Miriam Aguilar Pineda', 'Evelyn Vázquez Chávez', 'Juan Carlos González Hernández', 3, 1, 'mesas/mesa3/71-resumen.pdf', 'mesas_ext/mesa3/71-extenso.pdf', 2, '2017-08-02', NULL),
(66, 184, 1, 'EVALUACIÓN DE LA MODIFICACIÓN ESTRUCTURAL DEL POLIESTIRENO EXPANDIDO (EPS) COMO INSERTO TRONCAL Y SU USO EN LA APLICACIÓN DE NUTRIENTES EN AGUACATE', 'Ángeles Paola González Moreno, Pedro Hernández , Rafael Alejandro Vivanco Estrada , Maribel Pacheco Gomez', 'Pedro Hernández , Rafael Alejandro Vivanco Estrada', 'Rafael Alejandro Vivanco Estrada', 9, 1, 'mesas/mesa9/66-resumen.pdf', 'mesas_ext/mesa9/66-extenso.pdf', 2, '2017-08-01', NULL),
(67, 331, 2, 'DESARROLLO EMBRIONARIO DE RANA CRIOLLA (LITHOBATES MEGAPODA TAYLOR, 1942) DEL LAGO DE CUITZEO, MICHOACÁN, MÉXICO, EN CONDICIONES SEMI-CONTROLADAS', 'Veronica Avalos Carrillo ', 'María Virginia Segura Garcia y Tohtli Zubieta Rojas', 'María Virginia Segura Garcia', 1, 1, 'mesas/mesa1/67-resumen.pdf', NULL, 2, '2017-08-01', NULL),
(118, 318, 2, 'ANÁLISIS DE LA RESPIRACIÓN CELULAR EN LEVADURAS NO CONVENCIONALES MEDIANTE UN SISTEMA DE ADQUISICIÓN DE DATOS', 'Ulises Yair Alcántar Calderón', 'Juan Alfonso Salazar Torres, Luis Alberto Madrigal Pérez, Teresa Itandehui Garambullo Peña, Juan Carlos González-Hernández* ', 'Juan Carlos González-Hernández ', 3, 0, 'mesas/mesa3/118-resumen.pdf', 'mesas_ext/mesa3/118-extenso.pdf', 2, '2017-08-07', NULL),
(72, 143, 1, 'ESTUDIO COMPARATIVO DEL CRECIMIENTO VEGETAL INDUCIDOS POR AZOSPIRILLUM', 'Manuel Méndez Gómez , Elda Castro Mercado , Ernesto García Pineda ', 'Manuel Méndez Gómez , Elda Castro Mercado , Ernesto García Pineda ', ' Ernesto García Pineda ', 3, 0, 'mesas/mesa3/72-resumen.pdf', 'mesas_ext/mesa3/72-extenso.pdf', 2, '2017-08-02', NULL),
(73, 138, 1, 'MODIFICACIONES EPIGENÉTICAS DE LA HISTONA 3 ASOCIADAS A LA ACTIVIDAD CITOTÓXICA DE LA DEFENSINA -TIONINA (Capsicum chinense) SOBRE CÉLULAS DE CÁNCER DE MAMA MCF-7', 'María Teresa Arceo Martínez', 'Zoraya Palomera Sánchez, Alejandra Ochoa Zarzosa, Joel Edmundo López Meza', 'Joel Edmundo López Meza', 5, 0, 'mesas/mesa5/73-resumen.pdf', 'mesas_ext/mesa5/73-extenso.pdf', 2, '2017-08-02', NULL),
(74, 373, 2, 'Alteraciones de conducta en ratas hembras adultas expuestas neonatalmente a un doble reto estrés – inmune', 'Duran Juárez Sergio Gabriel y Hernández Velázquez Martha Guadalupe', 'Saavedra Pimentel Luis Miguel', 'Torner Luz', 5, 1, 'mesas/mesa5/74-resumen.pdf', 'mesas_ext/mesa5/74-extenso.pdf', 2, '2017-08-02', NULL),
(75, 328, 1, 'ADECUACION DE LA CEDULA DE EVALUACION NUTRICIA ND-07 UTILIZADA PARA REALIZAR EL TAMIZAJE NUTRICIONAL DE LOS PACIENTES DEL SERVICIO DE CIRUGÍA DEL HOSPITAL GENERAL REGIONAL N.1 CHARO, MICHOACÁN', 'Karla Alejandra Ponce Vega ', 'Ana Gabriela Campos Arroyo', 'Roberto Armando Román Gámez ', 5, 1, 'mesas/mesa5/75-resumen.pdf', 'mesas_ext/mesa5/75-extenso.pdf', 2, '2017-08-02', NULL),
(77, 198, 1, 'VARIACION ESPACIAL DE LA CALIDAD DEL AGUA DEL LAGO DE ZIRAHUÉN, MICHOACÁN MÉXICO', 'Marco Antonio Lara López ', 'Ruben Hernández Morales', 'Ruben Hernández Morales', 7, 0, 'mesas/mesa7/77-resumen.pdf', NULL, 2, '2017-08-03', NULL),
(78, 228, 1, 'EXPRESION HETEROLOGA Y CARACTERIZACION BIOQUIMICA DE LAS LIPASAS EXTRACELULARES DE Kluyveromyces marxianus ITMLB03', 'Ricardo Martínez Corona', 'Carlos Cortés Penagos, Luis Alberto Madrigal Pérez', 'Juan Carlos González Hernández', 3, 1, 'mesas/mesa3/78-resumen.pdf', 'mesas_ext/mesa3/78-extenso.pdf', 2, '2017-08-03', NULL),
(79, 371, 1, 'EVALUACIÓN DE LA ACTIVIDAD LIPÁSICA EN BACTERIAS DEGRADADORAS DE COV\'s', 'Nieto-Moreno Mónica Irais', 'Conde-Barajas Eloy , Negrete-Rodríguez María de la Luz Xochilt  y González-Hernández Juan Carlos ', 'González-Hernández Juan Carlos ', 3, 1, 'mesas/mesa3/79-resumen.pdf', 'mesas_ext/mesa3/79-extenso.pdf', 2, '2017-08-03', NULL),
(80, 362, 2, 'SÍNTESIS, CARACTERIZACIÓN Y EVALUACIÓN CATALÍTICA EN LA HDS DE DBT DE CATALIZADORES DE NiMoW SOPORTADOS EN HMS PURA Y MODIFICADA CON ALUMINIO', 'Pedro Jovanni Vázquez Salas, Rafael Huirache Acuña', 'Gabriel Alonso Núñez, Trino Armando Zepeda Partida, José Luis García Fierro, Bárbara Teresa García Pawelec, Eric Manuel Rivera Muñoz', 'Rafael Huiracha Acuña', 1, 1, 'mesas/mesa1/80-resumen.pdf', 'mesas_ext/mesa1/80-extenso.pdf', 2, '2017-08-03', NULL),
(81, 340, 2, 'EFECTO DE CICLODIPÉPTIDOS SOBRE LA ACTIVACIÓN DE LA PROTEÍNA S6K DE MAÍZ (ZmS6K)', 'Iván Corona Sánchez', 'Jesús Campos García, Homero Reyes de la Cruz', 'Homero Reyes de la Cruz', 3, 1, 'mesas/mesa3/81-resumen.pdf', NULL, 2, '2017-08-03', NULL),
(85, 404, 1, 'EVALUACIÓN DEL POTENCIAL ANTIOXIDANTE, CUANTIFICACIÓN DE FENOLES TOTALES Y SÍNTESIS DE NANOPARTÍCULAS DE ORO CON TARAXACUM OFFICINALE.', 'Amalia Inés Del Moral Gómez', 'Gerardo Antonio Rosas Trejo', 'Gerardo Antonio Rosas Trejo', 1, 0, 'mesas/mesa1/85-resumen.pdf', 'mesas_ext/mesa1/85-extenso.pdf', 2, '2017-08-03', NULL),
(86, 198, 2, 'VARIACIÓN ESPACIAL Y TEMPORAL DEL POTENCIAL DE CRECIMIENTO ALGAL EN EL LAGO DE ZIRAHUÉN, MICHOACÁN MEXICO', 'Marco Antonio Lara López', 'Rubén Hernández Morales , Fernando W. Bernal Brooks , Laura Dávalos-Lind , Owen T. Lind ', 'Ruben Hernández Morales', 7, 0, 'mesas/mesa7/86-resumen.pdf', NULL, 2, '2017-08-03', NULL),
(84, 401, 1, 'DETERMINACIÓN DE LA ACTIVIDAD ANTIOXIDANTE DE CHILE HABANERO (Capsicum chinense Cv. CHOCOLATE) Y SU RELACIÓN CON LOS PRINCIPALES COMPUESTOS ACTIVOS', 'Rafael Ayala Ponce', 'Rafael Torres-Martínez, Salvador Manzo-Ávalos, Alfredo Saavedra-Molina, Alejandra Hernández-García, Rafael Salgado-Garciglia', 'DR. RAFAEL SALGADO GARCIGLIA', 3, 1, 'mesas/mesa3/84-resumen.pdf', 'mesas_ext/mesa3/84-extenso.pdf', 2, '2017-08-03', NULL),
(87, 409, 2, 'EFECTO DE LA PROLACTINA SOBRE LA RESPUESTA INMUNE CEREBRAL Y PERIFÉRICA DE RATAS NEONATAS', 'GUADALUPE ZINZUN IXTA', 'LUZ TORNER', 'ALEJANDRA OCHOA ZARZOSA', 5, 1, 'mesas/mesa5/87-resumen.pdf', 'mesas_ext/mesa5/87-extenso.pdf', 2, '2017-08-04', NULL),
(89, 390, 1, 'SÍNTESIS Y CARACTERIZACIÓN DE NANOPARTÍCULAS DE PLATA A PARTIR DE LA PLANTA LAVANDULA ANGUSTIFOLIA Y SU EVALUACIÓN CITOTÓXICA EN LEVADURAS', 'Mario Alejandro Villalpando Nieves ', 'Gerardo Antonio Rosas Trejo', 'Gerardo Antonio Rosas Trejo', 1, 0, 'mesas/mesa1/89-resumen.pdf', 'mesas_ext/mesa1/89-extenso.pdf', 2, '2017-08-04', NULL),
(91, 419, 1, 'PRODUCCIÓN DE LIPASAS CON Kluyveromyces marxianus INDUCIDA CON ACEITE DE AGUACATE EN BIORREACTOR, EFECTO DE LA AIREACIÓN Y AGITACIÓN', 'Julio Iván Orozco Palma ', 'Osvaldo Morales Torres', 'Ricardo Martínez Corona , José Fernando Covian Nares, Juan Carlos González-Hernández ', 3, 0, 'mesas/mesa3/91-resumen.pdf', 'mesas_ext/mesa3/91-extenso.pdf', 2, '2017-08-04', NULL),
(92, 375, 1, 'ANÁLISIS DE LA MAXIMIZACIÓN DE UNA RED DE AGUA POTABLE', 'Perla Rubí Perez Lugo', 'Perla Rubi Perez Lugo', 'Benjamin Lara Ledesma', 2, 1, 'mesas/mesa2/92-resumen.pdf', NULL, 2, '2017-08-04', NULL),
(93, 376, 1, 'ANÁLISIS DE LA MINIMIZACIÓN DE UNA RED DE AGUA POTABLE', 'Luis Francisco Ramírez Rochin', 'Luis Francisco Ramírez Rochin', 'Benjamín Lara Ledesma', 2, 1, 'mesas/mesa2/93-resumen.pdf', NULL, 2, '2017-08-04', NULL),
(94, 350, 1, 'Caracterización bioquímica y expresión heteróloga de los genes LIP2, YOR059C y YDR444W codificantes de lipasas putativas de Kluyveromyces marxianus.', 'Adán Ríos Cruz. Erik Celestino Espinosa Luna.', 'Ricardo Martínez Corona', 'Juan Carlos Gonzáles Hernández', 3, 1, 'mesas/mesa3/94-resumen.pdf', 'mesas_ext/mesa3/94-extenso.pdf', 2, '2017-08-05', NULL),
(95, 201, 2, 'ULTRASONIDO Y ANISOTROPÍA EN MADERA DE Thuja plicata Y Acer saccharum', 'Javier Ramón Sotomayor Castellanos, José María Villaseñor Aguilar', 'jJosé María Villaseñor Aguilar', 'Javier Ramón Sotomayor Castellanos', 2, 0, 'mesas/mesa2/95-resumen.pdf', NULL, 2, '2017-08-05', NULL),
(96, 201, 2, 'RETENCIÓN DE SALES DE BORO EN LA MADERA Y SU EFECTO EN EL MÓDULO DE ELASTICIDAD DINÁMICO', 'Javier Ramón Sotomayor Castellanos, Sonia Correa Jurado', 'Sonia Correa Jurado', 'Javier Ramón Sotomayor Castellanos', 2, 0, 'mesas/mesa2/96-resumen.pdf', NULL, 2, '2017-08-05', NULL),
(97, 201, 2, 'MÓDULOS DE RIGIDEZ DINÁMICOS DE SIETE MADERAS MEXICANAS DETERMINADOS POR VIBRACIONES EN TORSIÓN', 'Javier Ramón Sotomayor Castellanos', 'Javier Ramón Sotomayor Castellanos', 'Javier Ramón Sotomayor Castellanos', 2, 0, 'mesas/mesa2/97-resumen.pdf', NULL, 2, '2017-08-05', NULL),
(98, 427, 1, 'Modelación del sistema acuífero ubicado al poniente de Morelia', 'José Pérez Villarreal, Jorge Alejandro Ávila Olivera, Isabel Israde Alcántara', 'Jorge Alejandro Ávila Olivera, Isabel Israde Alcántara', 'Jorge Alejandro Ávila Olivera, Isabel Israde Alcántara', 7, 1, 'mesas/mesa7/98-resumen.pdf', 'mesas_ext/mesa7/98-extenso.pdf', 2, '2017-08-05', NULL),
(99, 426, 2, 'PREPARACIÓN DEL BUTIRATO Y 2-ETILBUTIRATO DE MEDICARPINA Y SU ACTIVIDAD INHIBITORIA SOBRE Trametes versicolor', 'Fredy G.Morales Palacios', 'Tomas A. Fregoso Aguilar, Jorge A. Mendoza Perez, Pedro Navarro Santos, José G. Rutiaga Quiñones, Rafael Herrera Bucio', 'Rafael Herrera Bucio', 6, 1, 'mesas/mesa6/99-resumen.pdf', 'mesas_ext/mesa6/99-extenso.pdf', 2, '2017-08-06', NULL),
(101, 326, 1, 'Caracterización bioquímica de las lipasas extracelulares de Kluyveromyces marxianus usando aceite de aguacate como agente inductor ', 'Jessica Nyx Pérez Castillo, Francisco Javier Banderas Martínez', 'Ricardo Martínez Corona', 'Juan Carlos González Hernández', 3, 1, 'mesas/mesa3/101-resumen.pdf', 'mesas_ext/mesa3/101-extenso.pdf', 2, '2017-08-06', NULL),
(102, 438, 1, 'Atmósferas emocionales: los miedos sociales', 'Federico Pérez García', 'Federico Pérez García', 'Maya Aguiluz', 4, 0, 'mesas/mesa4/102-resumen.pdf', 'mesas_ext/mesa4/102-extenso.pdf', 2, '2017-08-06', NULL),
(332, 441, 1, 'CUANTIFICACIÓN DE LA CONTAMINACIÓN ACÚSTICA EN EL CINE: CASOS DE ESTUDIO EN MORELIA', 'María Belem Teresa Echeverría Toriz ', 'Luis Armando Ochoa Franco, Anaid Ochoa Echeverría', 'María Belem Teresa Echeverría Toriz', 5, 1, 'mesas/mesa5/332-resumen.pdf', 'mesas_ext/mesa5/332-extenso.pdf', 2, '2017-08-11', NULL),
(104, 178, 1, 'SOPORTES NANOESTRUCTURADOS BASE PVA FUNCIONALIZADOS CON CATALIZADORES BASE PIRROLILQUINONA-TETRAZOL', 'José Ismael Rangel Ortiz', 'Luis Chacón García, Mario Valle Sánchez', 'Janett Betzabe González Campos', 6, 1, 'mesas/mesa6/104-resumen.pdf', 'mesas_ext/mesa6/104-extenso.pdf', 2, '2017-08-06', NULL),
(105, 168, 1, 'CONTAMINACIÓN ACÚSTICA EN EL CRUCERO VIAL DE LA SALIDA A SALAMANCA EN LA CD. DE MORELIA', 'Luis Ochoa Franco,  Belem Echeverría Toriz , Ezequiel García Rodríguez y Patricia Manríquez Zavala', 'Patricia Manríquez Zavala', 'Luis Ochoa Franco', 7, 0, 'mesas/mesa7/105-resumen.pdf', NULL, 3, '2017-08-06', NULL),
(106, 314, 1, 'MODELACIÓN  SUPERFICIAL DE LA CUENCA PARACHO – NAHUATZEN POR MEDIO DEL MODELO DE TÉMEZ', 'katya Onchi Ramos', 'María del Mar Navarro Farfán', 'Sonia Tatiana Sánchez Quispe', 7, 0, 'mesas/mesa7/106-resumen.pdf', NULL, 2, '2017-08-07', NULL),
(107, 391, 2, 'ASPECTOS DE LA BIOLOGÍA DE LA RANA CRIOLLA (LITHOBATES MEGAPODA) (TAYLOR,1942) DEL LAGO DE CUITZEO, MICH.', 'Tohtli Zubieta Rojas ', 'Ma. Virginia Segura García', 'Tohtli Zubieta Rojas', 1, 0, 'mesas/mesa1/107-resumen.pdf', NULL, 2, '2017-08-07', NULL),
(110, 461, 2, 'DISTRIBUCIÓN VERTICAL DE LA CLOROFILA PLANCTÓNICA EN LA PRESA EL GALLO, MICHOACÁN, MÉXICO.', 'María Guadalupe González Medina', 'Rubén Hernández Morales  Antonio Campos Mendoza ', 'Rubén Hernández Morales', 7, 1, 'mesas/mesa7/110-resumen.pdf', 'mesas_ext/mesa7/110-extenso.pdf', 2, '2017-08-07', NULL),
(109, 170, 1, 'CBERESPACIO, INTIMIDAD Y DERECHO AL OLVIDO: UNA POLÉMICA SOLUCIÓN A UN IMPOSIBLE DILEMA', 'TERESA MARIA GERALDES DA CUNHA LOPES', 'STEPHANY RODRIGUEZ HERNANDEZ', 'TERESA MARIA GERALDES DA CUNHA LOPES', 4, 1, 'mesas/mesa4/109-resumen.pdf', 'mesas_ext/mesa4/109-extenso.pdf', 2, '2017-08-07', NULL),
(111, 461, 1, ' DISTRIBUCIÓN VERTICAL DEL OXÍGENO DISUELTO EN LA PRESA EL GALLO,  MICHOACÁN-GUERRERO, MÉXICO.', 'María Guadalupe González Medina', 'Rubén Hernández Morales  Antonio Campos Mendoza ', 'Rubén Hernández Morales', 7, 1, 'mesas/mesa7/111-resumen.pdf', 'mesas_ext/mesa7/111-extenso.pdf', 2, '2017-08-07', NULL),
(112, 191, 1, ' USO POTENCIAL DEL AGUA DE LA MICROCUENCA DEL RIO TEUCHITLÁN, JALISCO, MÉXICO CON BASE EN LOS CRITERIOS ECOLOGICOS DE LA CALIDAD DEL AGUA.', 'Ricardo Palencia Sánchez ', ' Rubén Hernández Morales , Omar Domínguez Domínguez', 'Rubén Hernández Morales', 7, 1, 'mesas/mesa7/112-resumen.pdf', 'mesas_ext/mesa7/112-extenso.pdf', 2, '2017-08-07', NULL),
(113, 191, 2, 'LIMITACIÓN NUTRIMENTAL DEL AGUA DEL RIO TEUCHITLÁN, JALISCO, MÉXICO.', 'Ricardo Palencia Sánchez ', ' Rubén Hernández Morales, Omar Domínguez Domínguez', 'Rubén Hernández Morales', 7, 1, 'mesas/mesa7/113-resumen.pdf', 'mesas_ext/mesa7/113-extenso.pdf', 2, '2017-08-07', NULL),
(564, 953, 1, 'REDUCTORES DE DESPLAZAMIENTO', 'Saul Isac Ambrocio Ascencion', 'Manuel Jara Díaz', 'Manuel Jara Díaz', 2, 1, 'mesas/mesa2/564-resumen.pdf', 'mesas_ext/mesa2/564-extenso.pdf', 2, '2017-08-23', NULL),
(565, 1016, 1, 'EVALUACIÓN FÍSICO-MECÁNICA Y POR DURABILIDAD DE MATRICES CEMENTICIAS CON SUSTITUCIONES ORGÁNICAS COMO MATERIALES DE RESTAURACIÓN', 'V. H. Blancas Herrera ', 'E. M. Alonso Guzmán, W. Martínez Molina, H. L. Chávez García, C. Lara Gómez, F. M. Gonzáles Valdez, S. C. Arguello Hernández, C. Bernabé Reyes, F. Bautista Leon', 'W. Martínez Molina', 2, 1, 'mesas/mesa2/565-resumen.pdf', 'mesas_ext/mesa2/565-extenso.pdf', 2, '2017-08-23', NULL),
(115, 316, 1, 'Modelación de la Gestión de Recursos Hídricos de la Cuenca del Río Tepalcatepec', 'Liliana Iveth Almonte Chavez, Iván González Arreguín', 'Iván González Arreguín', 'Sonia Tatiana Sánchez Quispe', 7, 1, 'mesas/mesa7/115-resumen.pdf', 'mesas_ext/mesa7/115-extenso.pdf', 2, '2017-08-07', NULL),
(116, 456, 1, 'Análisis de \"Huérfanos\": Melchor Ocampo como el Jesucristo del Estado Mexicano. ', 'Diego Armando Bello Nieto', '-', 'Fernando del Collado', 4, 1, 'mesas/mesa4/116-resumen.pdf', 'mesas_ext/mesa4/116-extenso.pdf', 2, '2017-08-07', NULL),
(117, 471, 1, 'CONCRETO DURABLE', 'Alumna Edith Abigail Medina Benítez', 'M. C. Javier García Hurtado, Mtro. Macario Esquivel Sánchez y M.C.T.C. Everardo Marín Maya  ', 'M. C. Javier García Hurtado', 6, 1, 'mesas/mesa6/117-resumen.pdf', 'mesas_ext/mesa6/117-extenso.pdf', 2, '2017-08-07', NULL),
(119, 424, 1, 'PRODUCCIÓN DE POLIHIDROXIALCANOATOS A PARTIR DE ACEITE DE CANOLA RESIDUAL Y Cupriavidus necátor.', 'Gabriela Jazmín Chávez Martínez, Diana Belém Alanis Gutierrez', 'Juan Carlos González Hernández', 'Juan Carlos González Hernández', 3, 1, 'mesas/mesa3/119-resumen.pdf', 'mesas_ext/mesa3/119-extenso.pdf', 2, '2017-08-08', NULL),
(123, 473, 2, 'LA INTERACCIÓN DE UN PSEUDOESCALAR CON DOS BOSONES Z EN EL MODELO DEL HIGGS MÁS PEQUEÑO', 'Eligio Cruz Albaro, Fernando Iguazú Ramírez Zavaleta', 'Jorge Isidro Aranda Sánchez, Javier Montaño Domínguez, Eduardo Salvador Tututi Hernández', 'Fernando Iguazú Ramírez Zavaleta', 6, 0, 'mesas/mesa6/123-resumen.pdf', 'mesas_ext/mesa6/123-extenso.pdf', 2, '2017-08-08', NULL),
(124, 473, 2, 'LA INTERACCIÓN DE UN PSEUDOESCALAR CON UN FOTÓN Y UN BOSÓN Z EN EL MODELO DEL HIGGS MÁS PEQUEÑO', 'Eligio Cruz Albaro, Fernando Iguazú Ramírez Zavaleta', 'Jorge Isidro Aranda Sánchez, Javier Montaño Domínguez, Eduardo Salvador Tututi Hernández', 'Fernando Iguazú Ramírez Zavaleta', 6, 0, 'mesas/mesa6/124-resumen.pdf', 'mesas_ext/mesa6/124-extenso.pdf', 2, '2017-08-08', NULL),
(125, 473, 2, 'ESTUDIO DE LA INTERACCIÓN DE UN PSEUDOESCALAR CON DOS GLUONES EN UN MODELO EXTENDIDO', 'Eligio Cruz Albaro, Fernando Iguazú Ramírez Zavaleta', 'Jorge Isidro Aranda Sánchez, Javier Montaño Domínguez, Eduardo Salvador Tututi Hernández', 'Fernando Iguazú Ramírez Zavaleta', 6, 0, 'mesas/mesa6/125-resumen.pdf', 'mesas_ext/mesa6/125-extenso.pdf', 2, '2017-08-08', NULL),
(126, 200, 1, 'Análisis comparativo de la actividad enzimática de b-glucosidasa en levaduras no convencionales para la producción de ácido elágico a partir de frutillas. ', 'Juan David Ramírez-Conejo', 'Isaac Naim Rendón Castañeda, Anahí Márquez-López, Ma. Del Carmen Chávez-Parga, Dora Cecilia Valencia Flores, Mariana Álvarez Navarrete, Juan Carlos González-Hernández. ', 'Juan Carlos González-Hernández', 3, 1, 'mesas/mesa3/126-resumen.pdf', 'mesas_ext/mesa3/126-extenso.pdf', 2, '2017-08-08', NULL),
(127, 394, 1, 'Estudio con elemento finito del comportamiento de terrenos cársticos ante la aplicación de cargas estáticas.', 'Alain Conrado Palafox', 'Luisa Equihua Anguiano, Eleazar Arreygue Rocha', 'Luisa Equihua Anguiano ', 2, 1, 'mesas/mesa2/127-resumen.pdf', 'mesas_ext/mesa2/127-extenso.pdf', 2, '2017-08-08', NULL),
(128, 455, 1, 'MODELO DE PRODUCCIÓN PISCÍCOLA SUSTENTABLE EN EL EJIDO DE TANAQUILLO MICHOACÁN', 'MARÍA VERÓNICA GABRIEL LICIANO', 'RODRIGO MONCAYO ESTRADA', 'CARLOS ESCALERA GALLARDO', 9, 0, 'mesas/mesa9/128-resumen.pdf', 'mesas_ext/mesa9/128-extenso.pdf', 2, '2017-08-08', NULL),
(129, 473, 2, 'ESTUDIO DEL ACOPLAMIENTO ENTRE UN PSEUDOESCALAR Y DOS FOTONES EN UN MODELO EXTENDIDO', 'David Espinosa Gómez, Fernando Iguazú Ramírez Zavaleta', 'Jorge Isidro Aranda Sánchez, Javier Montaño Domínguez, Eduardo Salvador Tututi Hernández', 'Fernando Iguazú Ramírez Zavaleta', 6, 0, 'mesas/mesa6/129-resumen.pdf', 'mesas_ext/mesa6/129-extenso.pdf', 2, '2017-08-08', NULL),
(130, 393, 2, 'Estudios de la actividad antioxidante in vitro del aceite de Satureja macrostema y en Saccharomyces cerevisiae como modelo de sistema biológico', 'Adrián Ávalos Rangel', 'Donovan J. Peña Montes y Alfredo Saavedra Molina ', 'Rafael Salgado Garciglia ', 5, 1, 'mesas/mesa5/130-resumen.pdf', 'mesas_ext/mesa5/130-extenso.pdf', 2, '2017-08-08', NULL),
(131, 473, 2, 'ESTUDIO DEL ACOPLAMIENTO ENTRE UN PSEUDOESCALAR Y DOS BOSONES W', 'David Espinosa Gómez, Fernando Iguazú Ramírez Zavaleta', 'Jorge Isidro Aranda Sánchez, Javier Montaño Domínguez, Eduardo Salvador Tututi Hernández', 'Fernando Iguazú Ramírez Zavaleta', 6, 0, 'mesas/mesa6/131-resumen.pdf', 'mesas_ext/mesa6/131-extenso.pdf', 2, '2017-08-08', NULL),
(132, 329, 1, 'MODELACIÓN SUPERFICIAL DE LA CUENCA DEL RÍO SANTIAGO POR MEDIO DEL MÉTODO DE TÉMEZ', 'Evelyn Lizet Ramos Velázquez , Adrián Ávalos Barrientos ', 'Sonia Tatiana Sánchez Quispe , María del Mar Navarro Farfán ', 'Sonia Tatiana Sánchez Quispe', 7, 1, 'mesas/mesa7/132-resumen.pdf', 'mesas_ext/mesa7/132-extenso.pdf', 2, '2017-08-08', NULL),
(133, 482, 1, 'Gestión de Residuos Sólidos Urbanos del Centro Turístico Integralmente Planeado ubicado en Ixtapa Zihuatanejo', 'Lorena Anahi Robles Herrejón', 'Ezequiel García Rodríguez', 'Ezequiel García Rodriguez', 7, 0, 'mesas/mesa7/133-resumen.pdf', NULL, 2, '2017-08-08', NULL),
(134, 484, 1, 'Propuesta metodológica para la implementación de sistemas de captación de agua de lluvia para establecimiento de plantaciones forestales comerciales', 'Jonathan Zacarías Calderón', 'Ezequiel García Rodríguez, Ricardo Ruiz Chávez', 'Luis Ochoa Franco', 7, 0, 'mesas/mesa7/134-resumen.pdf', 'mesas_ext/mesa7/134-extenso.pdf', 2, '2017-08-08', NULL),
(135, 478, 1, 'Evaluación de tres dietas comerciales en la supervivencia y crecimiento de crías de acúmara (Algansea lacustris Steindachner 1895)', 'Felipe-Paulino, L.P.', 'R.A. Jasso-Rueda, J. A. Tello-Ballinas', 'R.A. Jasso-Rueda, J. A. Tello-Ballinas', 1, 1, 'mesas/mesa1/135-resumen.pdf', NULL, 2, '2017-08-08', NULL),
(136, 341, 1, 'EVALUACIÓN DE PARÁMETROS CINÉTICOS MICROBIANOS Y BIOENERGÉTICOS DE CEPAS AISLADAS DEL PROCESO  ARTESANAL FERMENTATIVO DE JUGO DE Agave cupreata', 'Ada Estela Cedeño Tinoco, Paloma Medai Reyes López', 'Juan Alfonso Salazar Torres, Juan Carlos Gonzáles-Hernández', 'Juan Carlos González-Hernández', 3, 1, 'mesas/mesa3/136-resumen.pdf', NULL, 2, '2017-08-08', NULL),
(137, 491, 2, 'REDES NEURONALES ARTIFICIALES HIBRIDAS PARA EL CONTROL DE TEMPERATURA DE PROCESOS INTERMITENTES', 'Francisco Javier Sanchez Ruiz', 'Luis Ignacio Salcedo Estrada', 'Francisco Javier Sanchez Ruiz', 2, 0, 'mesas/mesa2/137-resumen.pdf', 'mesas_ext/mesa2/137-extenso.pdf', 2, '2017-08-08', NULL),
(138, 342, 1, 'POTENCIAL DE CONTAMINACIÓN DEL AGUA SUBTERRÁNEA EN MORELIA, MICHOACÁN', 'AMAYRANI CITLALY PEDRAZA PÉREZ, JORGE ALEJANDRO ÁVILA OLIVERA', 'ISABEL ISRADE ALCÁNTARA, MARÍA ALCALÁ DE JESÚS', 'JORGE ALEJANDRO ÁVILA OLIVERA', 7, 0, 'mesas/mesa7/138-resumen.pdf', 'mesas_ext/mesa7/138-extenso.pdf', 2, '2017-08-08', NULL),
(140, 464, 1, 'RECONOCIMIENTO DEL ESQUEMA DE GESTIÓN DEL AGUA  EN COMUNIDADES RURALES DE ZAMORA, MICHOACÁN ', 'Renné Ibeth López Chacón ', 'Jorge Alejandro Ávila Olivera, Josefina M. Cendejas Guízar', 'Jorge Alejandro Ávila Olivera', 10, 0, 'mesas/mesa10/140-resumen.pdf', 'mesas_ext/mesa10/140-extenso.pdf', 2, '2017-08-08', NULL),
(141, 387, 1, 'EFECTO DEL EXTRACTO DE CALLISTEMON CITRINUS EN UN MODELO DE CARCINOGENESIS COLONICA EXPERIMENTAL', 'Alejandro López Mejía , Patricia Ríos Chávez ', 'Daniel Godínez Hernández , Blanca Nateras Marín ', 'Patricia Ríos Chavez ', 5, 0, 'mesas/mesa5/141-resumen.pdf', 'mesas_ext/mesa5/141-extenso.pdf', 2, '2017-08-08', NULL),
(148, 188, 2, 'PRUEBAS BIOQUÍMICAS EN LA DETERMINACIÓN DE BACTERIAS ENTÉRICAS EN FUENTES DE AGUA POTABLE DEL MUNICIPIO DE SENGUIO. ', 'Diego Everardo Patiño Téllez', 'Rubén Hernández Morales ', 'Rubén Hernández Morales ', 7, 0, 'mesas/mesa7/148-resumen.pdf', NULL, 2, '2017-08-08', NULL),
(149, 473, 2, 'CÁLCULO DE LA INTENSIDAD DEL ACOPLAMIENTO Z\'bs USANDO EL DECAIMIENTO DE UN MESÓN A PARES DE MUONES', 'David Espinosa Gómez, Fernando Iguazú Ramírez Zavaleta', 'Jorge Isidro Aranda Sánchez, Javier Montaño Domínguez, Eduardo Salvador Tututi Hernández', 'Fernando Iguazú Ramírez Zavaleta', 6, 0, 'mesas/mesa6/149-resumen.pdf', 'mesas_ext/mesa6/149-extenso.pdf', 2, '2017-08-08', NULL),
(143, 188, 1, 'EVALUACIÓN MICROBIOLÓGICA Y SU IMPACTO EN LA CALIDAD DEL AGUA EN FUENTES DE AGUA POTABLE DE SENGUIO, MICHOACÁN ', 'Diego Everardo Patiño Téllez', 'Rubén Hernández Morales ', 'Rubén Hernández Morales ', 7, 0, 'mesas/mesa7/143-resumen.pdf', NULL, 2, '2017-08-08', NULL),
(144, 193, 2, 'EVALUACIÓN MICROBIOLOGICA DE LOS MANANTIALES DE LA ZARCITA Y LA ANGOSTURA EN ZACAPU, MICHOACÁN.', 'Iván Quezadas Vivian', 'Rubén Hernández Morales, Martina Medina Nava', 'Rubén Hernández Morales', 7, 0, 'mesas/mesa7/144-resumen.pdf', 'mesas_ext/mesa7/144-extenso.pdf', 2, '2017-08-08', NULL),
(145, 231, 1, 'MODELACIÓN SUBTERRÁNEA DE LOS ACUÍFEROS PRESENTES EN LA CUENCA DEL RÍO TEPALCATEPEC', 'SERGIO ALEJANDRO CORTÉS ALCARAZ', 'IVÁN GONZÁLEZ ARREGUÍN', 'SONIA TATIANA SÁNCHEZ QUISPE', 7, 1, 'mesas/mesa7/145-resumen.pdf', 'mesas_ext/mesa7/145-extenso.pdf', 2, '2017-08-08', NULL),
(146, 197, 2, 'VARIACIÓN DE LA CARGA NUTRIMENTAL Y SU RELACIÓN CON LA PRODUCTIVIDAD ACUÁTICA EN LOS RÍOS EL SALTO Y PUERCO EN EL MPIO. DE OCAMPO, MICHOACÁN.', 'Angela Castro Ortíz , ', 'Rubén Hernández Morales, María del Rosario Ortega Murillo', 'Rubén Hernández Morales', 7, 0, 'mesas/mesa7/146-resumen.pdf', NULL, 2, '2017-08-08', NULL),
(147, 197, 1, 'VARIACIÓN ALTITUDINAL DE LA CALIDAD DEL AGUA DE LOS RÍOS EL SALTO Y PUERCO EN EL MUNICIPIO DE OCAMPO, MICHOACÁN', 'Angela Castro Ortíz , ', 'Rubén Hernández Morales, María del Rosario Ortega Murillo', 'Rubén Hernández Morales', 7, 0, 'mesas/mesa7/147-resumen.pdf', NULL, 2, '2017-08-08', NULL),
(151, 358, 1, 'DETERMINACIÓN DE ELAGITANINOS A PARTIR DE FRUTILLAS FRESA (Fragaria sp.) Y ZARZAMORA (Rubus sp.)', 'Stolishnaya Macías Pureco', 'Fernando Ayala Flores, Anahí Márquez López, Ma. Del Carmen Chávez Parga, Juan Carlos González Hernández', 'Juan Carlos González Hernández', 3, 0, 'mesas/mesa3/151-resumen.pdf', 'mesas_ext/mesa3/151-extenso.pdf', 2, '2017-08-08', NULL),
(152, 460, 1, 'DISEÑO Y CONSTRUCCIÓN DE UN CALENTADOR SOLAR APLICANDO  CANALES PARABÓLICOS COMPUESTOS', 'Pablo Magaña García', 'Mauricio González Avilés', 'Mauricio González Avilés', 7, 1, 'mesas/mesa7/152-resumen.pdf', 'mesas_ext/mesa7/152-extenso.pdf', 2, '2017-08-08', NULL),
(153, 352, 1, 'EFECTO ANTIOXIDANTE DE LA HOJA Y FLOR DE CALLISTEMON CITRINUS SOBRE CÉLULAS RENALES EN RATAS WISTAR TRATADAS CON 1,2-DIMETILHIDRAZINA.', 'Luis Gerardo Ortega Pérez, Patricia Ríos Chávez, Daniel Godínez Hernández, Blanca Nateras Marin.', '-', 'Patricia Ríos Chávez', 5, 1, 'mesas/mesa5/153-resumen.pdf', 'mesas_ext/mesa5/153-extenso.pdf', 2, '2017-08-08', NULL),
(154, 473, 2, 'ESTIMACIÓN NUMÉRICA DEL MOMENTO DIPOLAR CROMOMAGNÉTICO DEL QUARK TOP CON VIOLACIÓN DE SABOR', 'Brenda Quezadas Vivian, Fernando Iguazú Ramírez Zavaleta', 'Jorge Isidro Aranda Sánchez, Javier Montaño Domínguez, Eduardo Salvador Tututi Hernández', 'Fernando Iguazú Ramírez Zavaleta', 6, 0, 'mesas/mesa6/154-resumen.pdf', 'mesas_ext/mesa6/154-extenso.pdf', 2, '2017-08-08', NULL),
(155, 473, 2, 'ESTUDIO NUMÉRICO DEL MOMENTO DIPOLAR MAGNÉTICO DEL TAU CON VIOLACIÓN DE SABOR', 'Brenda Quezadas Vivian, Fernando Iguazú Ramírez Zavaleta', 'Jorge Isidro Aranda Sánchez, Javier Montaño Domínguez, Eduardo Salvador Tututi Hernández', 'Fernando Iguazú Ramírez Zavaleta', 6, 0, 'mesas/mesa6/155-resumen.pdf', 'mesas_ext/mesa6/155-extenso.pdf', 2, '2017-08-08', NULL),
(156, 493, 2, 'DETERMINACIÓN FISICOQUÍMICA DEL CAUCE PRINCIPAL DEL RÍO PURUNGUEO EN UN GRADIENTE ALTITUDINAL', 'Ángel Sebastián Sánchez Ríos, Idolina Molina León', 'Miriam Cristina Ayala Ruiz, Ricardo Miguel Pérez Munguía, María del Carmen Arias Valencia, Raúl Ojeda Castillo, Salvador Durán Suárez', 'Idolina Molina León', 7, 1, 'mesas/mesa7/156-resumen.pdf', 'mesas_ext/mesa7/156-extenso.pdf', 2, '2017-08-08', NULL),
(160, 499, 2, 'RESILIENCIA URBANA EN PLANTELES EDUCATIVOS CON PELIGRO DE INUNDACIÓN EN LA CIUDAD DE MORELIA, MICHOACÁN ', 'ALMA YOSELIN MÁRQUEZ ZACARÍAS', 'JESÚS ARTURO MUÑIZ JÁUREGUI, NÉSTOR CORONA MORALES', 'JESÚS ARTURO MUÑIZ JÁUREGUI', 8, 1, 'mesas/mesa8/160-resumen.pdf', NULL, 2, '2017-08-09', NULL),
(159, 486, 1, 'Calixpirroles Ramificados: Proyección al Reconocimiento Iónico Ditópico', 'Mario Valle Sánchez', '', 'Luis Chacón García', 6, 0, 'mesas/mesa6/159-resumen.pdf', 'mesas_ext/mesa6/159-extenso.pdf', 2, '2017-08-09', NULL),
(163, 345, 2, 'EFECTOS DE LOS POLIFENOLES EN EL ORGANISMO', 'Orozco Montes Francisco Manuel', 'López-Rodríguez M ; Vázquez-Hernández, A.   y Fenton-Navarro, B.', 'Fenton-Navarro, B.', 5, 1, 'mesas/mesa5/163-resumen.pdf', 'mesas_ext/mesa5/163-extenso.pdf', 2, '2017-08-09', NULL),
(165, 110, 1, 'Modelado del sistema reactivo presente en los sistemas de lubricación de motores a diésel', 'Saúl Domínguez García', 'Luis Béjar Gómez ', 'Rafael Maya Yescas  ', 2, 1, 'mesas/mesa2/165-resumen.pdf', 'mesas_ext/mesa2/165-extenso.pdf', 2, '2017-08-09', NULL),
(167, 193, 1, 'VARIACIÓN ESPACIAL DE LA CALIDAD DEL AGUA EN LA LAGUNA DE ZACAPU, MICHOACÁN', 'Iván Quezadas Vivian', 'Rubén Hernández Morales, Martina Medina Nava', 'Rubén Hernández Morales', 7, 0, 'mesas/mesa7/167-resumen.pdf', 'mesas_ext/mesa7/167-extenso.pdf', 2, '2017-08-09', NULL),
(605, 1052, 2, 'Identificación y caracterización de microorganismos en el suelo del Cerro del Toscano, Sahuayo Michoacán.', 'Mendez Horta Cesar Dario, Reyez Sanchez Jose Osvaldo', 'Avalos Flores Hector', 'Avalos Flores Hector', 7, 1, 'mesas/mesa7/605-resumen.pdf', 'mesas_ext/mesa7/605-extenso.pdf', 2, '2017-08-24', NULL),
(604, 365, 1, 'RETENCIÓN DE RESIDUOS DE PLAGUICIDA EN SUELOS ADICIONADOS CON BIOCHAR DE MEZQUITE (Prosopis laevigata)', 'Zaira Carrillo Cacho', 'Miriam Arroyo Damián, Martha Alicia Velázquez Machuca ', 'Miriam Arroyo Damián, Martha Alicia Velázquez Machuca ', 3, 1, 'mesas/mesa3/604-resumen.pdf', 'mesas_ext/mesa3/604-extenso.pdf', 2, '2017-08-24', NULL),
(176, 288, 1, 'Análisis comparativo de la actividad enzimática de Tanasa en levaduras no-convencionales para la producción de ácido elágico', ' Anahí Márquez- López , Juan David  Ramírez-Conejo  , Isaac Naím Rendón-Castañeda ,  y Juan Carlos González-Hernández      ', 'Ma. Del Carmen Chávez-Parga  , Dora Cecillia Valencia Flores  , Miguel Angel Zamudio Jaramillo ', 'Juan Carlos González-Hernández   ', 3, 1, 'mesas/mesa3/176-resumen.pdf', 'mesas_ext/mesa3/176-extenso.pdf', 2, '2017-08-09', NULL),
(175, 525, 1, 'IMPLEMENTACIÓN DE BUENAS PRÁCTICAS DE MANUFACTURA EN UNA EMPRESA DE PRODUCTOS LÁCTEOS', 'Alejandro Morales Guerrero', 'Rocío Sarai Aguilera Gutiérrez', 'Alejandra Gallegos León', 2, 1, 'mesas/mesa2/175-resumen.pdf', 'mesas_ext/mesa2/175-extenso.pdf', 2, '2017-08-09', NULL),
(171, 336, 1, 'GENERACIÓN DE VECTORES PARA LA EXPRESIÓN HETERÓLOGA DEL GEN DE OLEOSINA PaOLE DE AGUACATE NATIVO MEXICANO (Persea americana var. drymifolia).', 'Cinthya Estefani López Aguilar ', 'Fernando Sánchez Albarran, Luis María Suárez Rodríguez', 'Rodolfo López Gómez', 3, 1, 'mesas/mesa3/171-resumen.pdf', 'mesas_ext/mesa3/171-extenso.pdf', 2, '2017-08-09', NULL),
(172, 187, 1, 'FORMACIÓN DE BIOPELÍCULAS DE Vibrio cholerae EXPUESTAS A METALES NANOESTRUCTURADOS.', 'Luis Erick Arroyo-Sesento Anaid Meza-Villezcas', ' Oscar Raymond-Herrera  , Oscar Eugenio Jaime-Acuña  , Alejandro Huerta-Saquero ', 'Anaid Meza-Villezcas', 1, 1, 'mesas/mesa1/172-resumen.pdf', 'mesas_ext/mesa1/172-extenso.pdf', 2, '2017-08-09', NULL),
(177, 489, 1, 'ArcelorMittal en México: Integración y Gestión Industrial', 'Marielisa Barragán Merlo', 'Jorge Martínez Aparicio', 'Jorge Martínez Aparicio', 4, 0, 'mesas/mesa4/177-resumen.pdf', NULL, 2, '2017-08-09', NULL),
(308, 443, 1, 'CONOCIMIENTO ACTUAL DEL GÉNERO HELVELLA (HELVELLACEAE: ASCOMYCOTA) EN MICHOACÁN', 'Arubi Monserrat Becerril-Navarrete ', 'Víctor Manuel Gómez-Reyes', 'Víctor Manuel Gómez-Reyes', 1, 1, 'mesas/mesa1/308-resumen.pdf', 'mesas_ext/mesa1/308-extenso.pdf', 2, '2017-08-10', NULL),
(179, 116, 1, 'GENES bla EN CEPAS DE Salmonella enterica AISLADAS DE ALIMENTOS EN MICHOACÁN DURANTE 2008-2014.', 'Elda Araceli Hernández Díaz', 'Vázquez Garcidueñas Ma. Soledad, Figueroa Aguilar Gloria Alicia', 'Vázquez Marrufo Gerardo', 5, 1, 'mesas/mesa5/179-resumen.pdf', 'mesas_ext/mesa5/179-extenso.pdf', 2, '2017-08-09', NULL),
(180, 172, 1, '“PARTICIPACIÓN DE LA FOSFOLIPASA D DURANTE LA INTERACCIÓN DE AZOSPIRILLUM BRASILENSE CON LA PLANTA DE TRIGO”', 'Roberto Daniel Iñaki Durán Baltazar, Elda Castro Mercado, Ernesto García Pineda.', 'Elda Castro Mercado, Ernesto García Pineda.', 'Ernesto García Pineda', 3, 0, 'mesas/mesa3/180-resumen.pdf', 'mesas_ext/mesa3/180-extenso.pdf', 2, '2017-08-09', NULL),
(181, 531, 1, 'Síntesis verde de nanopartículas bimetálicas Ag@Pt utilizando el extracto acuoso de Schinus Molle L. y evaluación de su actividad catalítica.', 'Fabian Mares Briones', 'Gerardo Antonio Rosas Trejo', 'Gerardo Antonio Rosas Trejo', 1, 1, 'mesas/mesa1/181-resumen.pdf', 'mesas_ext/mesa1/181-extenso.pdf', 2, '2017-08-09', NULL),
(182, 488, 2, 'ESTUDIO DE LA ACTIVIDAD ANTIOXIDANTE DEL EXTRACTO HEXÁNICO DE ERYNGIUM CARLINAE EN HÍGADO DE RATAS DIABÉTICAS.', 'Fabiola Itzel Loeza Torrero', 'Donovan Javier Peña Montes, Maribel Huerta Cervantes, Alfredo Saavedra Molina', 'Alfredo Saavedra Molina', 5, 1, 'mesas/mesa5/182-resumen.pdf', 'mesas_ext/mesa5/182-extenso.pdf', 2, '2017-08-09', NULL),
(183, 284, 1, 'Efecto de Azospirillum Brasilense sobre la fosfolipasa C durante su interacción con la planta de trigo', 'Jesús Ismael Ávila López, Elda Castro Mercado, Ernesto García Pineda', 'Elda Castro Mercado, Ernesto García Pineda', 'Ernesto García Pineda', 3, 1, 'mesas/mesa3/183-resumen.pdf', 'mesas_ext/mesa3/183-extenso.pdf', 2, '2017-08-09', NULL),
(184, 113, 1, '“BIOSÍNTESIS DE NANOPARTÍCULAS BIMETÁLICAS PLATA-ORO, EMPLEANDO EL EXTRACTO DE LA PLANTA HAMELIA PATENS”', 'karina del carmen chávez gómez', '.', 'Gerardo Antonio Rosas Trejo', 1, 1, 'mesas/mesa1/184-resumen.pdf', 'mesas_ext/mesa1/184-extenso.pdf', 2, '2017-08-09', NULL),
(830, 1183, 1, 'EDAD RELACIONADA CON GENOTOXICIDAD EN LINFOCITOS MONONUCLEADOS Y BINUCLEADOS EN PROFESIONALES DE ENFERMERÍA EXPUESTOS A CITOSTÁTICOS', 'Ma. Lilia Alicia Alcántar-Zavala ', 'Elva Rosa Valtierra-Oba, Ma. De Jesús Ruiz-Recéndiz, Graciela González-Villegas, Alma Rosa Picazo-Carranza y Mayra Itzel Huerta-Baltazar', 'Ma. Lilia Alicia Alcántar-Zavala', 5, 0, 'mesas/mesa5/830-resumen.pdf', 'mesas_ext/mesa5/830-extenso.pdf', 2, '2017-09-04', NULL),
(188, 511, 1, 'LA DEUDA DE LOS DERECHO HUMANOS EN MÉXICO: POSTURA Y CRÍTICA EN LA IMPLEMENTACIÓN DE GARANTÍAS SOCIALES', 'Humberto Hernández Salazar', 'No', 'Dra. Susana Madrigal Guerrero', 10, 1, 'mesas/mesa10/188-resumen.pdf', 'mesas_ext/mesa10/188-extenso.pdf', 2, '2017-08-09', NULL),
(230, 545, 1, 'Diseño y simulación de un robot móvil tipo hexápodo', 'Franjo Christophe Peñafiel Aguilar, Gerardo Loreto Gómez', 'Jesús Lanuza Lucatero', 'Gerardo Loreto Gómez', 2, 1, 'mesas/mesa2/230-resumen.pdf', 'mesas_ext/mesa2/230-extenso.pdf', 2, '2017-08-10', NULL);
INSERT INTO `ponencias` (`id_ponencias`, `usuario_id`, `tipo_trabajo_id`, `titulo`, `autor`, `coautores`, `asesor`, `mesa_id`, `c_jovenes`, `archivo_resumen`, `archivo_extenso`, `status_id`, `fecha_registro`, `fecha_extenso`) VALUES
(190, 467, 1, 'CONOCIMIENTO TRADICIONAL DE LOS HONGOS SILVESTRES COMESTIBLES Y VENENOSOS DE DOS LOCALIDADES DEL MUNICIPIO DE PÁTZCUARO, MICHOACÁN.', 'Mariela Salinas-Rodríguez , Víctor Manuel Gómez-Reyes ', 'Víctor Manuel Gómez-Reyes ', 'Víctor Manuel Gómez-Reyes ', 1, 1, 'mesas/mesa1/190-resumen.pdf', NULL, 2, '2017-08-09', NULL),
(191, 458, 1, 'ESTRUCTURACIÓN E IMPLEMENTACIÓN DE PARÁMETROS DE HIDROLOGÍA URBANA PARA LA GUÍA PARA LA REPRESENTACIÓN DE DOCUMENTACIÓN TÉCNICA EN SOLICITUDES DE PERMISO DE OBRA EN CUERPOS DE AGUA PROPIEDAD DE LA NACIÓN', 'Juan Armando Arias Martínez', 'Sonia Tatiana Sánchez Quispe, Manuel Servin Arreygue, Rafa Izaguirre Hernández', 'Sonia Tatiana Sanchez Quispe', 7, 1, 'mesas/mesa7/191-resumen.pdf', 'mesas_ext/mesa7/191-extenso.pdf', 2, '2017-08-09', NULL),
(192, 245, 1, 'Estimación del escurrimiento superficial de la cuenca del lago de Cuitzeo con el modelo HBV', 'Oliver Castro Jiménez ', 'Luis Daniel Oseguera Toledo', 'Sonia Tatiana Sánchez Quispe', 7, 1, 'mesas/mesa7/192-resumen.pdf', 'mesas_ext/mesa7/192-extenso.pdf', 2, '2017-08-09', NULL),
(193, 552, 1, 'Identificación de las Redes de Innovación de la Zarzamora  para el Desarrollo Regional de Michoacán ', 'Zoe Infante Jiménez, Priscila Ortega Gómez y Carlos Ortiz Paniagua', 'Priscila Ortega Gómez y Carlos Ortiz Paniagua', 'Zoe Infante Jiménez', 9, 1, 'mesas/mesa9/193-resumen.pdf', 'mesas_ext/mesa9/193-extenso.pdf', 2, '2017-08-09', NULL),
(194, 173, 1, 'RESPUESTAS BIOQUÍMICAS A LIPOPOLISACÁRIDOS DE BACTERIAS PROMOTORAS DEL CRECIMIENTO VEGETAL Y DE PATÓGENAS EN PLÁNTULAS DE TRIGO.', 'Alma Alejandra Hernández Esquivel , Elda Castro Mercado , Ernesto García Pineda. ', 'Elda Castro Mercado , Ernesto García Pineda. ', 'Ernesto García Pineda. ', 3, 1, 'mesas/mesa3/194-resumen.pdf', NULL, 3, '2017-08-09', NULL),
(196, 553, 2, 'Diseño de secador solar tipo tobera', 'Manuel Jesús Arjona Pérez', 'Ivan Vera Romero', 'Ivan Vera Romero', 2, 0, 'mesas/mesa2/196-resumen.pdf', 'mesas_ext/mesa2/196-extenso.pdf', 2, '2017-08-09', NULL),
(199, 564, 1, 'EFECTO DEL TIPO DE SUSTRATO Y RUTINAS DE FERTILIZACIÓN SOBRE EL CRECIMIENTO Y CONTENIDO DE ESTEVIÓSIDOS EN ESTEVIA (Stevia rebaudiana)', 'Ma. Guadalupe Baez Magaña', 'Alejandra Hernández García, Rafael Salgado Garciglia', 'RAFAEL SALGADO GARCIGLIA', 3, 1, 'mesas/mesa3/199-resumen.pdf', 'mesas_ext/mesa3/199-extenso.pdf', 2, '2017-08-09', NULL),
(200, 529, 1, 'PROCESOS COGNITIVOS DE ATENCIÓN EN PERSONAS CON ENFERMEDAD RENAL CRONICA, EN HEMODIÁLISIS', 'YESIKA ESTEFANÍA VALDOVINOS GÓMEZ', 'Erwin Rogelio Villuendas González, Esteve Gudayol Ferré, Luis Alfonso Mariscal Ramírez, Fabiola González Betanzos', 'Erwin Rogelio Villuendas González', 5, 1, 'mesas/mesa5/200-resumen.pdf', NULL, 2, '2017-08-09', NULL),
(201, 412, 1, 'Determinación de Ocratoxina A (OTA) en muestras de maíz y sus derivados.', 'Adriana Palacios Morales ', 'Wilmer Castillo Najar, Virginia A. Robinson Fuentes', 'Virginia A. Robinson Fuentes', 3, 1, 'mesas/mesa3/201-resumen.pdf', 'mesas_ext/mesa3/201-extenso.pdf', 2, '2017-08-09', NULL),
(202, 267, 1, 'Estrategias Metodológicas que disminuyen la  Deserción Escolar ', 'Erika Montserrat Hernández Tapia', 'Carmen Judith Guerrero Garcia', 'DR. Alberto Díaz Vazquez', 4, 1, 'mesas/mesa4/202-resumen.pdf', 'mesas_ext/mesa4/202-extenso.pdf', 2, '2017-08-09', NULL),
(599, 396, 2, 'VALIDACIÓN DE MATERIALES DE ARROZ DE GRANO  LARGO Y DELGADO EN MICHOACÁN ', 'Juan Carlos Álvarez Hernández, Luis Mario Tapia Vargas  ', 'Luis Mario Tapia Vargas', 'Juan Carlos Álvarez Hernández', 3, 1, 'mesas/mesa3/599-resumen.pdf', 'mesas_ext/mesa3/599-extenso.pdf', 2, '2017-08-24', NULL),
(277, 524, 1, 'La ecuación discreta generalizada de Schroedinger y sus eigenvalores de transmisión', 'Abdon E. Choque Rivero', 'no', 'no', 6, 0, NULL, NULL, 4, '2017-08-10', NULL),
(494, 638, 2, 'ESTABILIDAD DE TALUDES, MEDIDAS PARA MITIGAR DESLIZAMIENTOS DE LADERAS.', 'Rafael Soto-Espitia', 'Carlos Chávez Negrete, Pedro A. Lopez Monrroy ', 'Rafael Soto-Espitia', 2, 1, 'mesas/mesa2/494-resumen.pdf', 'mesas_ext/mesa2/494-extenso.pdf', 2, '2017-08-15', NULL),
(256, 325, 1, 'EFECTO DEL TRATAMIENTO TÉRMICO T6 SOBRE LAS PROPIEDADES DE RESISTENCIA A LA CORROSIÓN Y AL DESGASTE DE UNA ALEACIÓN DE ALUMINIO A319 ', 'Cristina Monserrat Valadez Hernández', 'Ma de Jesús Soria Aguilar ,Salvador Valtierra Gallardo , Evelyn Campos Hernández , Josefina García Guerra , Emmanuel José Gutiérrez Castañeda ', 'MA DE JESUS SORIA AGUILAR. JOSEFINA GARCIA GUERRA', 2, 0, 'mesas/mesa2/256-resumen.pdf', 'mesas_ext/mesa2/256-extenso.pdf', 2, '2017-08-10', NULL),
(205, 561, 1, 'TRANSFERENCIA DE CONOCIMIENTO EN EL SECTOR FRUTÍCOLA DE MICHOACÁN EN EL ACTUAL CONTEXTO DE LA ECONOMÍA INTERNACIONAL', 'Priscila Ortega Gómez, Zoe T. Infante Jiménez, Angélica G. Zamudio de la Cruz', '-', '-', 9, 0, 'mesas/mesa9/205-resumen.pdf', 'mesas_ext/mesa9/205-extenso.pdf', 2, '2017-08-09', NULL),
(207, 436, 1, 'ESTIMACIÓN DE OCRATOXINA A POR INGESTA ALIMENTARIA EN MUJERES EMBARAZADAS DEL HOSPITAL DE LA MUJER DE MORELIA, MICHOACÁN', 'Karen Fabiola Tena Rojas', 'Virginia A. Robinson Fuentes. ', ' Virginia A. Robinson Fuentes. ', 5, 1, 'mesas/mesa5/207-resumen.pdf', 'mesas_ext/mesa5/207-extenso.pdf', 2, '2017-08-09', NULL),
(208, 367, 1, 'FÁBRICA DE SOFTWARE', 'ITZEL HERNÁNDEZ ROMERO; MIGUEL ÁNGEL SILVA PÉREZ; NOEL ENRIQUE RODRÍGUEZ MAYA', 'MIGUEL ÁNGEL SILVA PÉREZ', 'NOEL ENRIQUE RODRÍGUEZ MAYA', 2, 1, 'mesas/mesa2/208-resumen.pdf', NULL, 2, '2017-08-09', NULL),
(209, 244, 1, 'MODELACIÓN SUPERFICIAL DEL SISTEMA DE RECURSOS HÍDRICOS DE LA CUENCA DEL RÍO TEPALCATEPEC CON EL SOFTWARE EVALHID', 'Kenia Cristell Castorena Castrejón ', 'Iván González Arreguín', 'Sonia Tatiana Sánchez Quispe', 7, 1, 'mesas/mesa7/209-resumen.pdf', 'mesas_ext/mesa7/209-extenso.pdf', 2, '2017-08-09', NULL),
(379, 423, 1, 'COMPONENTES DE UN SISTEMA TÍPICO DE CAPTACIÓN DE AGUA DE LLUVIA EN EDIFICACIONES DE ZONAS URBANAS ', 'Gabriel Arreola Sánchez', 'Luis Armando Ochoa Franco, Ezequiel García Rodriguez, Ricardo Ruiz Chávez', 'Luis Armando Ochoa Franco', 7, 1, 'mesas/mesa7/379-resumen.pdf', 'mesas_ext/mesa7/379-extenso.pdf', 2, '2017-08-11', NULL),
(920, 1089, 2, 'PATÓGENICIDAD IN VITRO DE HONGOS FITOPATÓGENOS EN TOMATE (LYCOPERSICUM ESCULENTUM MILL) DEL MUNICIPIO DE VILLAMAR MICHOACÁN', 'Adán Víctor Navarro', 'Verónica Núñez Oregel', 'Verónica Núñez Oregel', 3, 0, 'mesas/mesa3/920-resumen.pdf', 'mesas_ext/mesa3/920-extenso.pdf', 2, '2017-08-25', NULL),
(309, 695, 1, 'DETERMINACIÓN DE OCRATOXINA A EN CAFÉ COMERCIALIZADO EN LA CIUDAD DE MORELIA MICHOACÁN', 'Wilmer Castillo Najar', 'Virginia Angélica Robinson Fuentes ', 'Virginia Angélica Robinson Fuentes', 3, 0, 'mesas/mesa3/309-resumen.pdf', 'mesas_ext/mesa3/309-extenso.pdf', 2, '2017-08-10', NULL),
(216, 317, 1, 'DERECHO AL BIENESTAR SOCIAL A PARTIR DE UN MEDIO AMBIENTE ADECUADO', 'Grecia Atenea Huape Padilla', 'Laura Leticia Padilla Gil ', 'Laura Leticia Padilla Gil ', 4, 0, 'mesas/mesa4/216-resumen.pdf', NULL, 2, '2017-08-10', NULL),
(217, 444, 1, 'LA GASTRONOMÍA REGIONAL EN MICHOACÁN:  Una compilación literaria.', 'Guadalupe Monserrat Escutia Zendejas , Estefanía Torres Flores, Jesús Alejando Álvarez Palomares, Fernando García Ramos, María del Socorro Figueroa Béjar, Guillermo Iván Figueroa Béjar, Mario Figueroa Cárdenas .', 'Guadalupe Monserrat Escutia Zendejas , Estefanía Torres Flores, Jesús Alejando Álvarez Palomares, Fernando García Ramos, María del Socorro Figueroa Béjar, Guillermo Iván Figueroa Béjar, Mario Figueroa Cárdenas .', 'DR. MARIO FIGUEROA CÁRDENAS', 4, 0, 'mesas/mesa4/217-resumen.pdf', NULL, 2, '2017-08-10', NULL),
(215, 593, 1, 'CONDICIONES PARA UN TOMADOR DE DECISIONES DOMINANTE EN EL DISEÑO DE SISTEMAS DE AIRE ACONDICIONADO BASADOS EN AGUA DE MAR (SWAC)', 'Ilse María Hernández Romero', 'Luis Fabián Fuentes Cortés', 'Fabricio Nápoles Rivera', 2, 1, 'mesas/mesa2/215-resumen.pdf', 'mesas_ext/mesa2/215-extenso.pdf', 2, '2017-08-10', NULL),
(224, 533, 1, 'PLAN DE LOGÍSTICA HUMANITARIA BASADO EN UN PROBLEMA LOCALIZACIÓN-ASIGNACIÓN P-MEDIANA ', 'Christian Uriel Becerra Zambrano  , A. Guerrero-Campanur  ', 'Francisco Jesús Arévalo Carrasco , Gilberto Chávez Esquivel  ', 'A. Guerrero-Campanur', 7, 0, 'mesas/mesa7/224-resumen.pdf', 'mesas_ext/mesa7/224-extenso.pdf', 2, '2017-08-10', NULL),
(225, 125, 1, 'EL EXTRACTO DE AGUACATE INHIBE LA INTERNALIZACIÓN DE Staphylococcus aureus Y REGULA LA RESPUESTA INMUNE INNATA DE LAS CÉLULAS DE EPITELIO MAMARIO BOVINO ', 'Marisol Báez-Magaña ', 'Rafael Salgado-Garciglia , Alejandra Ochoa-Zarzosa, Joel Edmundo López-Meza', 'Joel Edmundo López-Meza', 3, 0, NULL, NULL, 4, '2017-08-10', NULL),
(275, 370, 1, 'ANÁLISIS COMPARATIVO ENTRE MATEMÁTICAS Y OTRAS ÁREAS DEL EXANI-II PARA EGRESADOS DEL BACHILLERATO.', 'Joaquín Estevéz Delgado, Nancy Cambrón Muñoz, Bricia Elena Corona Pacheco y Erozaida Leyva jimenez', 'Joaquín Estevéz Delgado, Nancy Cambrón Muñoz, Bricia Elena Corona Pacheco y Erozaida Leyva jimenez', 'Joaquín Estevez Delgado', 6, 0, 'mesas/mesa6/275-resumen.pdf', 'mesas_ext/mesa6/275-extenso.pdf', 2, '2017-08-10', NULL),
(223, 515, 2, 'FALTA DE ORIENTACIÓN VACIONAL HACIA LAS MATERIAS DE PROGRAMACIÓN EN LOS PRIMEROS SEMESTRES DEL ÁREA DE SYC EN EL ITLP', 'Nicolás Jasso García', 'Héctor Oceguera Soto , Isela Navarro Alatorre , J. Guadalupe Ramos Díaz', 'M.E. Jose Mariano Ambris Tovar', 4, 1, 'mesas/mesa4/223-resumen.pdf', NULL, 3, '2017-08-10', NULL),
(226, 125, 1, 'EL EXTRACTO DE AGUACATE INHIBE LA INTERNALIZACIÓN DE Staphylococcus aureus Y REGULA LA RESPUESTA INMUNE INNATA DE LAS CÉLULAS DE EPITELIO MAMARIO BOVINO ', 'Marisol Báez-Magaña ', 'Rafael Salgado-Garciglia , Alejandra Ochoa-Zarzosa, Joel Edmundo López-Meza', 'Joel Edmundo López-Meza', 3, 0, NULL, NULL, 4, '2017-08-10', NULL),
(227, 125, 1, 'EL EXTRACTO DE AGUACATE INHIBE LA INTERNALIZACIÓN DE Staphylococcus aureus Y REGULA LA RESPUESTA INMUNE INNATA DE LAS CÉLULAS DE EPITELIO MAMARIO BOVINO ', 'Marisol Báez-Magaña ', 'Rafael Salgado-Garciglia , Alejandra Ochoa-Zarzosa, Joel Edmundo López-Meza', 'Joel Edmundo López-Meza', 3, 0, 'mesas/mesa3/227-resumen.pdf', 'mesas_ext/mesa3/227-extenso.pdf', 2, '2017-08-10', NULL),
(228, 522, 1, 'ANALISIS ESPACIAL Y TEMPORAL DE LOS FRACCIONAMIENTOS ABIERTOS Y CERRADOS EN LA CIUDAD DE MORELIA', 'Leslly García Sierra  , Erna Martha López Granados ', 'Manuel Eduardo Mendoza Cantú', 'Erna Martha López Granados ', 8, 1, 'mesas/mesa8/228-resumen.pdf', NULL, 2, '2017-08-10', NULL),
(229, 624, 1, 'ACTITUDES PSICOPATOLÓGICAS EN NIÑOS COMO CAUSA DEL SINDROME DE ALIENACIÓN PARENTAL ', 'JENNYFER VICTORIA IBARRA CARMONA & ANA CECILIA SOTO SAENZ', 'LILIANA HALINA GARCIA SILVA ', 'LILIANA HALINA GARCIA SILVA', 4, 1, 'mesas/mesa4/229-resumen.pdf', 'mesas_ext/mesa4/229-extenso.pdf', 2, '2017-08-10', NULL),
(231, 632, 1, 'MODELO DE FITORREMEDIACIÓN CON INCORPORACIÓN DE AIRE PARA RIOS CONTAMINADOS ', 'Mauricio Corona Ávalos  , Luis Daniel Oseguera Toledo y Constantino Domínguez Sánchez', 'Mauricio Corona Ávalos  , Luis Daniel Oseguera Toledo y Constantino Domínguez Sánchez', 'DR. Constantino Domínguez Sánchez', 7, 1, 'mesas/mesa7/231-resumen.pdf', NULL, 2, '2017-08-10', NULL),
(232, 126, 1, 'Las defensinas de plantas γ-tionina y PaDef inducen apoptosis por rutas distintas en la línea celular de leucemia K562', 'Luis José Flores Álvarez', 'Alejandra Ochoa Zarzosa, Joel Edmundo López Meza', 'Joel Edmundo López Meza ', 5, 0, 'mesas/mesa5/232-resumen.pdf', 'mesas_ext/mesa5/232-extenso.pdf', 2, '2017-08-10', NULL),
(233, 634, 1, 'OBTENCIÓN DE COMPUESTOS NUTRACÉUTICOS CON PROPIEDADES ANTIOXIDANTES Y MICROBICIDAS PRESENTES EN LA CÁSCARA Y SEMILLA DE Moringa oleífera PROCEDENTE DE MICHOACÁN', 'Juan Roberto Hernandez Parrales y Miriam Veronica Cervantes Castro', 'Juan Carlos Gonzalez Hernandez', 'Juan Carlos Gonzalez Hernandez', 3, 1, 'mesas/mesa3/233-resumen.pdf', 'mesas_ext/mesa3/233-extenso.pdf', 2, '2017-08-10', NULL),
(236, 533, 1, 'PROBLEMA MULTIOBJETIVO DE PLAN AGREGADO DE PRODUCCIÓN.  ', 'A. Guerrero-Campanur ', 'Francisco Jesús Arévalo Carrasco , Gilberto Chávez Esquivel', 'A. Guerrero-Campanur ', 2, 1, 'mesas/mesa2/236-resumen.pdf', NULL, 2, '2017-08-10', NULL),
(235, 619, 1, 'ACTUALIZACION DEL SISTEMA SUPERFICIAL PARA LA OBTENCION DE LA RECARGA DE LOS ACUIFEROS ZACAPU Y PASTOR ORTIZ', 'Luis Francisco Blancas Baca', 'Omar Lucas Urbina', 'Sonia Tatiana Sánchez Quispe', 7, 1, 'mesas/mesa7/235-resumen.pdf', 'mesas_ext/mesa7/235-extenso.pdf', 2, '2017-08-10', NULL),
(237, 629, 1, 'MODELACIÓN SUPERFICIAL DE LA CUENCA DEL RÍO EL COLOMO POR MEDIO DEL MÉTODO DE TÉMEZ', 'Karla Itzel Lázaro Lázaro, Ulises Franco Huerta', 'María del Mar Navarro Farfán', 'Sonia Tatiana Sánchez Quispe ', 7, 1, 'mesas/mesa7/237-resumen.pdf', NULL, 2, '2017-08-10', NULL),
(239, 295, 1, 'VULNERACION DEL DERECHOS HUMANO AL BIENESTAR POR LAS AUTORIZACIONES DE LOS ASENTAMIENTOS HUMANOS EN ZONAS DE RIESGO EN MORELIA', 'Laura Leticia Padilla Gil ', 'Grecia Atenea Huape Padilla, Perla Araceli Barbosa Muñoz', 'Laura Leticia Padilla Gil', 7, 0, 'mesas/mesa7/239-resumen.pdf', NULL, 2, '2017-08-10', NULL),
(910, 475, 1, 'DISEÑO DE UNA PLATAFORMA EXPERIMENTAL PARA SU APLICACIÓN EN CURSOS DE SISTEMAS DE CONTROL', 'Gerardo Loreto Gómez', 'Isahi Sánchez Suarez, Raúl Alvarado Guerra', 'Gerardo Loreto Gómez', 2, 1, 'mesas/mesa2/240-resumen.pdf', 'mesas_ext/mesa2/910-extenso.pdf', 2, '2017-07-04', NULL),
(338, 722, 1, 'COMPARACION IN VIVO DEL APARATO NAM(modelador naso-alveolar) VS NAM MODIFICADO.', 'Oscar Zaragoza Juarez', 'Oscar Zaragoza Juárez', 'Dr. Antonio Sánchez Pérez', 5, 1, 'mesas/mesa5/338-resumen.pdf', NULL, 3, '2017-08-11', NULL),
(242, 182, 1, 'FUNCIONAMIENTO HIDRÁULICO DE ALTERNATIVAS PARA LA PROTECCIÓN CONTRA INUNDACIONES', 'SALVADOR GARCIA ENRIQUEZ , CAROLINA MIGUEL GONZALEZ', ' MIGUEL A. RODRIGUEZ VELAZQUEZ', 'CONSTANTINO DOMÍNGUEZ SÁNCHEZ', 7, 1, 'mesas/mesa7/242-resumen.pdf', 'mesas_ext/mesa7/242-extenso.pdf', 2, '2017-08-10', NULL),
(243, 631, 2, 'ESTUDIO DE LA DINÁMICA NO LINEAL DE LA INTERACCIÓN ENTRE UN SISTEMA POBLACIONAL DEL TIPO HOLDING II CON UN SISTEMA POBLACIONAL DEL TIPO HOLDING III', 'Yunuen Vidal Sánchez', 'Gabriel Arroyo Correa ', 'Gabriel Arroyo Correa', 6, 1, 'mesas/mesa6/243-resumen.pdf', NULL, 2, '2017-08-10', NULL),
(244, 199, 2, 'USO POTENCIAL DEL AGUA DE LOS MANANTIALES DE TEUCHITLÁN, JALISCO, MÉXICO.', 'Jorge David Reyna Duque', 'Rubén Hernández Morales, Omar Dominguez Dominguez', 'Rubén Hernández Morales', 7, 1, 'mesas/mesa7/244-resumen.pdf', NULL, 2, '2017-08-10', NULL),
(245, 640, 1, 'Efecto crónico del nitrato de sodio en el crecimiento de crìas  de tilapia nilòtica (Oreochromis niloticus)', 'Jonathan Quiroz Bedolla', 'Rebeca Aneli Rueda Jasso y Antonio Campos Mendoza ', 'Rebeca Aneli Rueda Jasso', 1, 1, 'mesas/mesa1/245-resumen.pdf', NULL, 2, '2017-08-10', NULL),
(246, 631, 2, 'ESTUDIO DE LA DINÁMICA NO LINEAL DE LA INTERACCIÓN ENTRE DOS CADENAS DE OSCILADORES CAÓTICOS ACOPLADAS POR UN ELEMENTO NO CAÓTICO', 'Alicia Campos Hernández', 'Gabriel Arroyo Correa ', 'Gabriel Arroyo Correa', 6, 1, 'mesas/mesa6/246-resumen.pdf', 'mesas_ext/mesa6/246-extenso.pdf', 2, '2017-08-10', NULL),
(247, 218, 1, 'ESPECIES INDICADORAS DE LA CALIDAD DEL AGUA EN EL COMPLEJO HIDROGRÁFICO DE TEUCHITLÁN, JALISCO', 'Daniel Vazquez Diaz ', 'Ruben Hernandez Morales, Omar Domínguez Domínguez', 'Ruben Hernandez Morales ', 7, 1, 'mesas/mesa7/247-resumen.pdf', 'mesas_ext/mesa7/247-extenso.pdf', 2, '2017-08-10', NULL),
(418, 595, 1, 'CARACTERIZACIÓN DEL CRECIMIENTO DE E. COLI EN REACTOR DE TANQUE AGITADO EN UN SISTEMA TERMOINDUCIDO', 'Jesús Antonio Rauda Ceja', 'Greta Isabel Reynoso Cereceda, Mauricio Alberto Trujillo Roldán, Norma Adriana Valdez Cruz', 'Mauricio Alberto Trujillo Roldan', 3, 1, 'mesas/mesa3/418-resumen.pdf', NULL, 3, '2017-08-11', NULL),
(249, 218, 2, 'ESTADO TRÓFICO DE LA PRESA DE LA VEGA, CON BASE EN LAS ASOCIACIONES DE LA COMUNIDAD FITOPLANCTONICA', 'Daniel Vazquez Diaz ', 'Ruben Hernandez Morales, Omar Domínguez Domínguez', 'Ruben Hernandez Morales ', 7, 1, 'mesas/mesa7/249-resumen.pdf', 'mesas_ext/mesa7/249-extenso.pdf', 2, '2017-08-10', NULL),
(250, 199, 1, 'VARIACIÓN ESPACIAL DE LA CALIDAD DEL AGUA EN MANANTIALES DEL RÍO TEUCHITLÁN, JALISCO, MÉXICO', 'Jorge David Reyna Duque', 'Rubén Hernández Morales, Omar Dominguez Dominguez', 'Rubén Hernández Morales', 7, 1, 'mesas/mesa7/250-resumen.pdf', NULL, 2, '2017-08-10', NULL),
(251, 449, 2, 'ANÁLISIS DEL PROCESO DE OBTENCIÓN DE BREA A PARTIR DE LA RESINA DE PINO PARA SU CLARIFICACIÓN', 'HILLARY MICHELLE ÁLVAREZ PÉREZ Y MANUELA YELENI MORENO CARBAJAL', 'JUAN CARLOS GONZÁLEZ HERNÁNDEZ', 'JUAN CARLOS GONZÁLEZ HERNÁNDEZ', 1, 1, 'mesas/mesa1/251-resumen.pdf', 'mesas_ext/mesa1/251-extenso.pdf', 2, '2017-08-10', NULL),
(252, 647, 2, 'ESTUDIO TEMPORAL Y ESPECTRAL DE LAS VARIACIONES DE LA TEMPERATURA Y LA HUMEDAD EN UN ÁREA DE MORELIA MICHOACÁN', 'Carlos Mendoza Pérez', ' Gabriel Arroyo Correa ,  Misael Vieyra Rios , José Vega Cabrera.', 'Carlos Mendoza Pérez.', 6, 1, 'mesas/mesa6/252-resumen.pdf', 'mesas_ext/mesa6/252-extenso.pdf', 2, '2017-08-10', NULL),
(255, 170, 1, 'LIBERTAD DE EXPRESIÓN VERSUS PROPIEDAD INTELECTUAL EN INTERNET.UN ESTUDIO COMPARATIVO', 'TERESA MARIA GERALDES DA CUNHA LOPES', 'DAVID HERNANDEZ RAYA ', 'TERESA MARIA GERALDES DA CUNHA LOPES ', 4, 1, 'mesas/mesa4/255-resumen.pdf', 'mesas_ext/mesa4/255-extenso.pdf', 2, '2017-08-10', NULL),
(257, 181, 1, 'GENERACIÓN Y CARACTERIZACIÓN DE UNA VARIANTE DE COLONIA PEQUEÑA DE Staphylococcus aureus: EVALUACIÓN DE LA PERSISTENCIA EN CÉLULAS EPITELIALES MAMARIAS BOVINAS', 'Frutis-Murillo Minerva', ' Ochoa-Zarzosa Alejandra, López-Meza Joel Edmundo', 'López-Meza Joel Edmundo', 3, 0, 'mesas/mesa3/257-resumen.pdf', 'mesas_ext/mesa3/257-extenso.pdf', 2, '2017-08-10', NULL),
(258, 617, 1, 'CAX17', 'JUAN CARLOS VELAZQUEZ BECERRIL, HUMBERTO MALDONADO ARIAS.', 'ESTEPHANY GONZALEZ ISLAS', 'ING CARLOS MEDINA TELLO, DRA MINERVA CRISTINA GARCIA VARGAS', 2, 1, 'mesas/mesa2/258-resumen.pdf', 'mesas_ext/mesa2/258-extenso.pdf', 2, '2017-08-10', NULL),
(259, 654, 1, 'EFECTO DEL TIEMPO DE TRATAMIENTO TÉRMICO DE ENVEJECIDO SOBRE LAS PROPIEDADES MECÁNICAS DE UNA ALEACIÓN A319 TRATADA PREVIAMENTE EN SOLUCIÓN', 'Evelyn Campos Hernández', 'Ma de Jesús Soria Aguilar , Salvador Valtierra Gallardo , Cristina Monserrat Valadez Hernández , Josefina García Guerra , Francisco Raúl Carrillo Pedroza', 'MA DE JESUS SORIA AGUILAR ', 2, 0, 'mesas/mesa2/259-resumen.pdf', 'mesas_ext/mesa2/259-extenso.pdf', 2, '2017-08-10', NULL),
(260, 618, 1, 'CAX17', 'HUMBERTO MALDONADO ARIAS, JUAN CARLOS VELAZQUEZ BECERRIL', 'ESTEPHANY GONZALEZ ISLAS', 'ING CARLOS MEDINA TELLO, DRA MINERVA CRISTINA GARCIA VARGAS', 2, 1, 'mesas/mesa2/260-resumen.pdf', NULL, 2, '2017-08-10', NULL),
(263, 658, 2, 'VALORACIÓN DE LA HARINA DE RESIDUOS DE PESCADO EN LA ALIMENTACIÓN DE POLLOS DE ENGORDA', 'Teresa Manzo Cervantes , Miriam Arroyo Damián', 'Teresa Manzo Cervantes , Miriam Arroyo Damián', 'Miriam Arroyo Damián', 9, 1, 'mesas/mesa9/263-resumen.pdf', 'mesas_ext/mesa9/263-extenso.pdf', 2, '2017-08-10', NULL),
(262, 514, 1, 'TALLER AMBIENTAL PARA LA FACULTAD DE DERECHO Y CS. SOCIALES', 'Leticia Sesento Garcia', 'Laura Leticia Padilla Gil, Griselda Sesento Garía', 'Leticia Sesento Garcia', 4, 1, 'mesas/mesa4/262-resumen.pdf', NULL, 3, '2017-08-10', NULL),
(264, 586, 1, 'ALIMENTACIÓN DE  PESCADO BLANCO (Chirostoma estor) CON DIFERENTES DIETAS INERTES', 'María Gabriela Rauda-Robles1', ' Margarita Hernández-Martínez1, Armando Alejo-González1 y Juan Antonio Tello-Ballinas1', 'M. en C. Margarita Hernández MartÍnez', 3, 1, 'mesas/mesa3/264-resumen.pdf', NULL, 2, '2017-08-10', NULL),
(265, 650, 2, 'EL MOVIMIENTO DE COMERCIO JUSTO Y EL DESARROLLO LOCAL. El caso de AMPES, La Ruta Natural y Slow-Food en Morelia, Michoacán  ', 'Karina Eréndira Torres González ', 'Carlos Federico Cabrera Tapia', 'Dr Carlos Federico Cabrera Tapia', 9, 1, 'mesas/mesa9/265-resumen.pdf', 'mesas_ext/mesa9/265-extenso.pdf', 2, '2017-08-10', NULL),
(274, 462, 1, 'EFECTO DEL EDULCORANTE (STEVIA) EN EL DESARROLLO DE PSEUDOBULBOS DE Cuitlauzina pendula IN VITRO', 'Juan Christian Altamirano López , Agustín Iván Cabezas Aguilar', 'Vania Marilyn Marín Rangel, Alma Teresa Miranda Quiroz ', 'David García Hernández', 3, 1, 'mesas/mesa3/274-resumen.pdf', 'mesas_ext/mesa3/274-extenso.pdf', 2, '2017-08-10', NULL),
(373, 660, 1, 'El ácido fólico regula el desarrollo de la raíz y modifica la respuesta hormonal en Arabidopsis thaliana.', 'Juan Angel Ayala-Rodríguez', 'Salvador Barrera-Ortiz, León-Francisco Ruiz- Herrera, José López Bucio', 'José López Bucio', 3, 1, 'mesas/mesa3/373-resumen.pdf', NULL, 3, '2017-08-11', NULL),
(287, 478, 1, 'Exposición crónica del caracol de lodo neozelandés (Potamopyrgus antipodarum) a los nitratos.', 'Rebeca A. Rueda-Jasso', 'Hickey, C.W.;  A.M., Albert y G.R., Craig', 'Rebeca A. Rueda-Jasso', 1, 0, 'mesas/mesa1/287-resumen.pdf', NULL, 2, '2017-08-10', NULL),
(268, 541, 1, 'SÍNTESIS DE COMPUESTOS HIBRIDOS NITROGENADOS VÍA UNA REACCIÓN DE UGI-AZIDA/POST-CONDENSACIÓN', 'CESIA MANUELLA AGUILAR MORALES, LUIS CHACÓN GARCÍA, CARLOS JESÚS CORTES GARCÍA', '-', 'LUIS CHACÓN GARCÍA, CARLOS JESÚS CORTES GARCÍA', 6, 1, 'mesas/mesa6/268-resumen.pdf', 'mesas_ext/mesa6/268-extenso.pdf', 2, '2017-08-10', NULL),
(269, 472, 1, 'NUEVO RECONOCEDOR DITOPICO, DERIVADO DE PIRROLILQUINONAS', 'Gabriela Rodríguez Valdez , Luis Chacón García ', '.', 'Luis Chacón García', 6, 1, 'mesas/mesa6/269-resumen.pdf', 'mesas_ext/mesa6/269-extenso.pdf', 2, '2017-08-10', NULL),
(270, 644, 1, 'Valoración económica de externalidades negativas en la región Oeste del Lago de Cuitzeo, Michoacán', 'Rafael Trueba Regalado ', 'Carlos Francisco Ortiz Paniagua ', 'Carlos Francisco Ortiz Paniagua ', 7, 0, 'mesas/mesa7/270-resumen.pdf', 'mesas_ext/mesa7/270-extenso.pdf', 2, '2017-08-10', NULL),
(271, 183, 1, 'Estudio hidrológico para la evaluación de alternativas de protección contra inundaciones', 'Carolina Miguel González, Salvador García Enriquez', 'Sergio Eduardo Cázarez Rodríguez', 'Constantino Dominguez Sánchez ', 7, 1, 'mesas/mesa7/271-resumen.pdf', 'mesas_ext/mesa7/271-extenso.pdf', 2, '2017-08-10', NULL),
(272, 550, 1, 'Maquina-704', 'Luis Enrique Marin Arroyo y José Carlos Delgado Garduño', 'Miguel Angel Garcia Perez', 'Everado Marin Maya y Minerva Cristina Vargas Garcia ', 2, 0, 'mesas/mesa2/272-resumen.pdf', NULL, 2, '2017-08-10', NULL),
(273, 592, 2, 'MAQUINA-704', 'LUIS ENRIQUE MARIN ARROYO, JOSE CARLOS GARDUÑO DELGADO', 'MIGUEL ANGEL PEREZ GARCIA', 'EVERARDO MARIN MAYA, MINERVA CRISTINA GARCIA VARGAS', 2, 1, 'mesas/mesa2/273-resumen.pdf', NULL, 2, '2017-08-10', NULL),
(592, 490, 2, '¿POR QUE MIGRAR DE IPv4 A IPv6?', 'HECTOR OCEGUERA SOTO', 'J. GUADALALUPE RAMOS DIAZ, ISELA NAVARRO ALATORRE, NICOLAS JASSO GARCIA', 'JOSE JUAN CABEZA ORTEGA', 2, 1, 'mesas/mesa2/592-resumen.pdf', 'mesas_ext/mesa2/592-extenso.pdf', 2, '2017-08-24', NULL),
(593, 646, 1, 'Implementación del método S.L.P. en una empresa panificadora de la región de Michoacán.', 'Jesús Fernando Padilla Magaña', ' Isahi Sánchez Suarez , América Vega Huerta, Yessenia G. García Manzo', 'Jesús Fernando Padilla Magaña', 2, 1, 'mesas/mesa2/593-resumen.pdf', 'mesas_ext/mesa2/593-extenso.pdf', 2, '2017-08-24', NULL),
(279, 643, 1, 'CRECIMIENTO, SUPERVIVENCIA Y MUERTE DE LOS NEGOCIOS EN MÉXICO, A PARTIR DE DATOS LONGITUDINALES', 'Diana Areli Mora Zimbrón ', 'Karina García Orozco', 'Diana Areli Mora Zimbrón', 4, 1, 'mesas/mesa4/279-resumen.pdf', 'mesas_ext/mesa4/279-extenso.pdf', 2, '2017-08-10', NULL),
(280, 524, 1, 'La ecuación discreta generalizada de Schroedinger y sus eigenvalores de transmisión', 'Abdon E. Choque Rivero', 'ninguno', 'ninguno', 6, 0, 'mesas/mesa6/280-resumen.pdf', 'mesas_ext/mesa6/280-extenso.pdf', 2, '2017-08-10', NULL),
(282, 370, 1, 'LA RAZÓN DE COMPACIDAD DE LA SOLUCIÓN INTERIOR SCHWARZSCHILD EN GRAVEDAD DE RASTALL', 'Joaquín Estevéz Delgado, GABINO ESTEVEZ DELGADO YNancy Cambrón Muñoz', 'Joaquín Estevéz Delgado, GABINO ESTEVEZ DELGADO YNancy Cambrón Muñoz', 'Joaquín Estevez Delgado', 6, 0, 'mesas/mesa6/282-resumen.pdf', 'mesas_ext/mesa6/282-extenso.pdf', 2, '2017-08-10', NULL),
(288, 591, 2, 'ANÁLISIS DE SEMEN Y DETECCIÓN DE PATÓGENOS DEL COMPLEJO ABORTIVO BOVINO EN LA COSTA SUR DE JALISCO', 'EDGAR IVAN GONZALEZ JIMENEZ HORACIO ALVALEZ GALLARDO', 'JOSE HERRERA CAMACHO DAVID URBAN DUARTE ', 'JOSE HERRERA CAMACHO ', 3, 1, 'mesas/mesa3/288-resumen.pdf', NULL, 3, '2017-08-10', NULL),
(285, 574, 1, 'TÉCNICAS AVANZADAS EN MICROSCOPÍA ELECTRÓNICA  PARA LA CARACTERIZACIÓN DEL NOPAL.', 'José Manuel Rivera Garnica', 'Ma. Guadalupe Rojas Torres ', 'Ma. Guadalupe Rojas Torres', 3, 1, 'mesas/mesa3/285-resumen.pdf', 'mesas_ext/mesa3/285-extenso.pdf', 2, '2017-08-10', NULL),
(289, 680, 2, 'CARACTERIZACIÓN LIMNOLÓGICA DE SITIOS CON POTENCIAL ACUÍCOLA EN LA PRESA DEL GALLO, MICHOACÁN-GUERRERO, MÉXICO', 'Patricia Juárez González  ', 'Rubén Hernández Morales y Antonio Campos Mendoza ', 'Rubén Hernández Morales', 7, 1, 'mesas/mesa7/289-resumen.pdf', 'mesas_ext/mesa7/289-extenso.pdf', 2, '2017-08-10', NULL),
(290, 680, 1, 'USO POTENCIAL DE LA PRESA EL GALLO, MICHOACÁN-GUERRERO, MÉXICO', 'Patricia Juárez González  ', 'Rubén Hernández Morales y Antonio Campos Mendoza', 'Rubén Hernández Morales', 7, 1, 'mesas/mesa7/290-resumen.pdf', 'mesas_ext/mesa7/290-extenso.pdf', 2, '2017-08-10', NULL),
(291, 562, 1, 'REACCIONES DE ACOPLAMIENTO OXIDATIVO DE ÁCIDOS ARILBORONICOS A 1,4-NAFTOQUINONAS CATALIZADAS POR NITRATO DE CERIO (IV) Y AMONIO (CAN).', 'Abelardo Gutiérrez Hernández ', 'Abraham García Zavala ', 'Claudia Araceli Contreras Celedon', 6, 1, 'mesas/mesa6/291-resumen.pdf', 'mesas_ext/mesa6/291-extenso.pdf', 2, '2017-08-10', NULL),
(292, 353, 2, 'MECANISMO DE ACCIÓN DE LOS FLAVONOIDES EN LA DIABETES', 'ANDREA GISSEL RICO PEDRAZA', 'Edgar Vázquez Contreras, Graciela Letechipía Vallejo, Sergio Gutiérrez Castellanos, Aarón Vázquez Hernández', 'Bertha Fenton Navarro', 5, 1, 'mesas/mesa5/292-resumen.pdf', 'mesas_ext/mesa5/292-extenso.pdf', 2, '2017-08-10', NULL),
(293, 642, 2, 'Estudios de la actividad antioxidante del extracto hexánico de Eryngium carlinae en cerebro de ratas diabéticas.', 'Jesús Leonel Morales Cervantes ', 'Rocío Alvarado Mayo, Donovan J. Peña Montes, Maribel Huerta Cervantes, Alfredo Saavedra Molina', 'Alfredo Saavedra Molina', 5, 1, 'mesas/mesa5/293-resumen.pdf', NULL, 2, '2017-08-10', NULL),
(294, 645, 2, 'Estudios de la actividad antioxidante del extracto hexanico de Eryngium carlinae en riñón de ratas diabéticas.', 'Rocío Alvarado Mayo', 'Jesús Leonel Morales Cervantes , Donovan J. Peña Montes, Maribel Huerta Cervantes, Alfredo Saavedra Molina', 'Alfredo Saavedra Molina', 5, 1, 'mesas/mesa5/294-resumen.pdf', NULL, 2, '2017-08-10', NULL),
(296, 359, 1, 'ESTUDIO DE VULNERABILIDAD DEL ADOLESCENTE  EN EL BACHILLERATO NICOLAÍTA', 'Víctor Fernando Nieto del Valle', 'Celia América Nieto del Valle', 'No contamos con asesor', 4, 1, 'mesas/mesa4/296-resumen.pdf', 'mesas_ext/mesa4/296-extenso.pdf', 2, '2017-08-10', NULL),
(297, 430, 2, 'OPTIMIZACIÓN DE SEÑALES ELECTROFORÉTICAS DE MEZCLAS DE TRICHODERMA SPP POR ELECTROFORESIS CAPILAR ', 'Lilia Yunuen Salazar Alcantar', 'Virginia A. Robinson Fuentes', 'Virginia A. Robinson Fuentes', 3, 0, 'mesas/mesa3/297-resumen.pdf', 'mesas_ext/mesa3/297-extenso.pdf', 2, '2017-08-10', NULL),
(298, 370, 1, 'EL EXAMEN EXANI-II Y LA EQUIDAD DE GÉNERO', 'Joaquín Estévez Delgado , Nancy Cambrón Muñoz , Bricia Elena Corona Pacheco', 'Joaquín Estévez Delgado , Nancy Cambrón Muñoz , Bricia Elena Corona Pacheco', 'Joaquín Estévez Delgado ', 6, 0, 'mesas/mesa6/298-resumen.pdf', 'mesas_ext/mesa6/298-extenso.pdf', 2, '2017-08-10', NULL),
(299, 686, 1, 'VULNERACIÓN AL DERECHO HUMANO AL AGUA SALUBRE, ORIGINADA POR LA CORROSIÓN POR INFILTRACIÓN DE LA LLUVIA ÁCIDA EN TANQUES Y BOMBAS DEL SISTEMA DE AGUA POTABLE, EN MORELIA, MICHOACÁN.', 'Engelbert Huape Padilla, Luis Béjar Gómez, Laura Leticia Padilla Gil, Grecia Atenea Huape Padilla', 'Luis Béjar Gómez, Laura Leticia Padilla Gil, Grecia Atenea Huape Padilla', 'Engelbert Huape Padilla', 7, 0, 'mesas/mesa7/299-resumen.pdf', NULL, 2, '2017-08-10', NULL),
(300, 359, 1, 'POTENCIA RELATIVA  DE LA BANDA DE FRECUENCIA DEL APRENDIZAJE', 'Víctor Fernando Nieto del Valle', 'No cuento con co-autor', 'Dr. Rafael Herrera Álvarez', 8, 1, 'mesas/mesa8/300-resumen.pdf', 'mesas_ext/mesa8/300-extenso.pdf', 2, '2017-08-10', NULL),
(301, 363, 1, 'Evaluación de las tecnologías de extensión del tiempo de maduración post-cosecha de la Persea americana Mil', 'Jonatan Sahian Ponce-Ávila, Soemy Lisset Ponce-Becerra, Braulio Sánchez-Aguilar, José Diego Bárcenas-Torres', ' Israel Aguilera-Navarrete.', 'José Diego Bárcenas-Torres', 3, 1, 'mesas/mesa3/301-resumen.pdf', NULL, 3, '2017-08-10', NULL),
(302, 233, 1, 'ESTIMACIÓN DEL ESCURRIMIENTO SUPERFICIAL DE LA CUENCA DEL LAGO DE CUITZEO CON EL MODELO DE TEMEZ', 'Jaime Emmanuel del Toro García', 'Luis Daniel Oseguera Toledo', 'Sonia Tatiana Sánchez Quispe', 7, 1, 'mesas/mesa7/302-resumen.pdf', 'mesas_ext/mesa7/302-extenso.pdf', 2, '2017-08-10', NULL),
(303, 503, 1, 'LÍQUENES EPIFITOS COMO BIOINDICADORES DE LA CALIDAD DEL AIRE EN EL BOSQUE CUAUHTÉMOC, MORELIA, MICH.', 'Violeta Rangel-Osornio, Marlene Gómez-Peralta, Víctor Manuel Gómez-Reyes, María del Rosario Gregorio-Cipriano, Salvador Guzmán-Díaz, Dulce Noemi Rios-Ureña ', 'Marlene Gómez-Peralta, Víctor Manuel Gómez-Reyes, María del Rosario Gregorio-Cipriano, Salvador Guzmán-Díaz, Dulce Noemi Rios-Ureña ', 'Marlene Gómez-Peralta', 7, 0, 'mesas/mesa7/303-resumen.pdf', NULL, 2, '2017-08-10', NULL),
(307, 338, 1, 'ANÁLISIS DE LA EXPRESIÓN DIFERENCIAL DE LA DEFENSINA PaDef DE AGUACATE NATIVO MEXICANO (Persea americana var. drymifolia)', 'Rosa Isela Salinas Espinosa', '.', 'Rodolfo López Gómez', 3, 1, 'mesas/mesa3/307-resumen.pdf', 'mesas_ext/mesa3/307-extenso.pdf', 2, '2017-08-10', NULL),
(305, 682, 1, 'DISEÑO Y CONSTRUCCIÓN DE UN ROBOT SEGUIDOR DE LÍNEAS DE TRANSMISIÓN DIFERENCIAL CON AUTOCALIBRACIÓN DE DETECCIÓN Y CONTROL PD', 'Gabriel Casarrubias Guerrero , Guillermo Capistrano Zuñiga Neria , Isaac Barrera García', 'Eric González Vallejo', 'Eric González Vallejo', 2, 1, 'mesas/mesa2/305-resumen.pdf', 'mesas_ext/mesa2/305-extenso.pdf', 2, '2017-08-10', NULL),
(306, 501, 2, 'DISEÑO Y CONSTRUCCIÓN DE UN CALENTADOR SOLAR CON DOS TUBOS DE VACÍO CONSIDERANDO UN CANAL PARABÓLICO COMPUESTO (CPC)', 'Fernando juan torres ', 'Mauricio Gonzalez avilés ', 'Mauricio Gonzales avilés ', 7, 0, 'mesas/mesa7/306-resumen.pdf', NULL, 2, '2017-08-10', NULL),
(310, 383, 1, 'APLICACIÓN DE UNA BIOPELÍCULA PARA EXTENDER EL TIEMPO DE MADURACIÓN Y VIDA ÚTIL DE LA PERSEA AMERICANA MIL.', 'Braulio Sánchez-Aguilar, Soemy Lisset Ponce-Becerra, Jonatan Sahian Ponce-Ávila, José Diego Bárcenas-Torres, Israel Aguilera-Navarrete', 'Israel Aguilera-Navarrete', 'José Diego Bárcenas-Torres', 9, 1, 'mesas/mesa9/310-resumen.pdf', 'mesas_ext/mesa9/310-extenso.pdf', 2, '2017-08-10', NULL),
(311, 569, 1, 'CULTIVO, CARACTERIZACIÓN E INHIBICIÓN DE HONGOS MICROBIANOS EN MAÍZ DEL MUNICIPIO DE PURUÁNDIRO MICHOACÁN', 'Héctor Enrique Cedillo Díaz', 'Ma. Guadalupe Rojas Torres, Ana Laura Reyes Robles,  José Manuel Rivera Garnica  ', 'Ma. Guadalupe Rojas Torres', 3, 1, 'mesas/mesa3/311-resumen.pdf', NULL, 2, '2017-08-10', NULL),
(312, 503, 1, 'EFECTO DE LAS EMISIONES DE UNA INDUSTRIA PAPELERA SOBRE TRASPLANTES DE LÍQUENES (PRIMERA ETAPA).', 'Violeta Rangel-Osornio , Víctor Manuel Gómez-Reyes , Dulce Noemi Rios Ureña , Marlene Gómez-Peralta , Yazmín Carreón-Abud', 'Víctor Manuel Gómez-Reyes , Dulce Noemi Rios Ureña , Marlene Gómez-Peralta , Yazmín Carreón-Abud', 'Victor Manuel Gómez Reyes', 7, 0, 'mesas/mesa7/312-resumen.pdf', 'mesas_ext/mesa7/312-extenso.pdf', 2, '2017-08-10', NULL),
(313, 673, 1, 'ELABORACIÓN DE UN PRODUCTO A BASE DE UN PASTA DE HIGO (FICUS CARICA L.)', 'Ana Karen Díaz Romero; Yuritzy Brigit Valdés García', 'Ana Karen Díaz Romero; Yuritzy Brigit Valdés García', 'Ma. Lourdes Aguilar Yépez', 9, 1, NULL, NULL, 4, '2017-08-10', NULL),
(314, 673, 1, 'ELABORACIÓN DE UN PRODUCTO A BASE DE UN PASTA DE HIGO (FICUS CARICA L.)', 'Ana Karen Díaz Romero, Yuritzy Brigit Valdés García', 'Ana Karen Díaz Romero, Yuritzy Brigit Valdés García', 'Ma. Lourdes  Aguilar Yépez', 9, 1, 'mesas/mesa9/314-resumen.pdf', 'mesas_ext/mesa9/314-extenso.pdf', 2, '2017-08-10', NULL),
(315, 578, 1, 'Adiciones regioselectivas de anilinas a 1,4-naftoquinonas.', 'Abraham García Zavala', 'Abelardo Gutiérrez Hernández', 'Claudia Araceli Contreras Celedon', 6, 1, 'mesas/mesa6/315-resumen.pdf', 'mesas_ext/mesa6/315-extenso.pdf', 2, '2017-08-10', NULL),
(316, 234, 1, 'EVALUACIÓN DE LA CALIDAD DEL AGUA DE LOS MANANTIALES DE TEUCHITLÁN, JALISCO.', 'ESTELA RUBI AVILA OJEDA', 'RUBEN HERNÁNDEZ MORALES, OMAR DOMÍNGUEZ DOMÍNGUEZ', 'RUBEN HERNÁNDEZ MORALES ', 7, 1, 'mesas/mesa7/316-resumen.pdf', NULL, 2, '2017-08-10', NULL),
(806, 609, 1, 'RELACIÓN ENTRE EXCLUSIÓN SOCIAL Y ESTADO NUTRICIONAL DEL ADULTO MAYOR MICHOACANO', 'Carlos Amadeo García Ayala', 'Andrea Malváez Llano Aline Huerta Álvarez  Mónica Paulina Rodríguez Padilla ', 'Carlos Amadeo García Ayala', 5, 0, 'mesas/mesa5/806-resumen.pdf', NULL, 2, '2017-08-26', NULL),
(318, 232, 1, 'MODELACIÓN DE LOS ACUÍFEROS DE ZACAPU Y PASTOR ORTIZ EN MODFLOW', 'José Antonio Yáñez Moreno ', 'Omar Lucas Urbina , Jorge Sagrero Tinoco ', 'Sonia Tatiana Sánchez Quispe ', 7, 1, 'mesas/mesa7/318-resumen.pdf', 'mesas_ext/mesa7/318-extenso.pdf', 2, '2017-08-10', NULL),
(319, 448, 2, 'EFECTO DEL NICORANDIL Y EL EJERCICIO SOBRE LA FATIGA DEL MÚSCULO ESQUELÉTICO ', 'Daniela García García', 'Mariana Gómez Barroso, Koré Montserrat Moreno Calderón, Paulina Maldonado Padilla, Rocío Montoya Pérez', 'Rocío del Carmen Montoya Pérez', 5, 1, 'mesas/mesa5/319-resumen.pdf', NULL, 2, '2017-08-10', NULL),
(320, 239, 2, 'Técnica de Análisis de Ángulo de Contacto', 'Narciso Calderón González , Nelly Flores Ramírez', 'Salomón Ramiro Vásquez García', 'Nelly Flores Ramírez', 2, 1, 'mesas/mesa2/320-resumen.pdf', 'mesas_ext/mesa2/320-extenso.pdf', 2, '2017-08-10', NULL),
(321, 633, 1, 'FORMULACIÓN Y CARACTERIZACION DE GOMITAS ELABORADAS A BASE DE NOPAL (OPUNTIA FICUS INDICA L)', 'Alejandro García Cervantes', 'Ma. Guadalupe Rojas Torres, José Manuel Rivera Garnica', 'Ma. Guadalupe Rojas Torres', 2, 1, 'mesas/mesa2/321-resumen.pdf', 'mesas_ext/mesa2/321-extenso.pdf', 2, '2017-08-10', NULL),
(322, 240, 2, 'Potencial metanogénico in vitro en borregos del rastrojo de maíz tratado con cepas de basidiomicetes ', 'Yveet Sierra Aguilar', 'José Herrera Camacho, Daniel Val Arreola, Gerardo Vazquez Marrufo', 'Jose Herrera Camacho', 7, 1, 'mesas/mesa7/322-resumen.pdf', 'mesas_ext/mesa7/322-extenso.pdf', 2, '2017-08-10', NULL),
(325, 510, 1, 'SÍNTESIS DE COMPUESTOS HÍBRIDOS DE TETRAZOLES 1,5-DISUSTITUIDOS OBTENIDOS POR RMC UGI-AZIDA/POST-CONDENSACIÓN', 'ISRAEL NIÑO PANTOJA', 'CARLOS JESÚS CORTES GARCÍA', 'LUIS CHACÓN GARCÍA ', 6, 1, 'mesas/mesa6/325-resumen.pdf', 'mesas_ext/mesa6/325-extenso.pdf', 2, '2017-08-11', NULL),
(545, 374, 1, 'Participación de la subunidad Gpb1 de proteínas G heterotriméricas en la virulencia de Mucor circinelloides', 'Marco Iván Valle Maldonado', ' Nancy Yadira Reyes Mares, Alberto Patiño Medina,  Irvin Eduardo Jácome Galarza, Rafael Ortiz-Alvarado, Martha Isela Ramírez-Díaz, Carlos Pérez-Arqués, Victoriano Garre ', 'Víctor Meza Carmen', 5, 1, 'mesas/mesa5/545-resumen.pdf', 'mesas/mesa5/545-extenso.pdf', 2, '2017-08-21', '2017-09-25'),
(328, 192, 1, 'Cepas hepatotóxicas del género Microcystis en el lago de Zirahuén, Michoacán, México.', 'Alexis Pineda Reyes', 'Rubén Hernández Morales, María Silvia Aguilera Ríos', 'Rubén Hernández Morales', 7, 1, 'mesas/mesa7/328-resumen.pdf', 'mesas_ext/mesa7/328-extenso.pdf', 2, '2017-08-11', NULL),
(327, 192, 2, 'Variación espacial de la comunidad Fitoplanctónica en el lago de Zirahuén, Michoacán, México.', 'Alexis Pineda Reyes', 'Rubén Hernández Morales, María Silvia Aguilera Ríos', 'Rubén Hernández Morales', 7, 1, 'mesas/mesa7/327-resumen.pdf', 'mesas_ext/mesa7/327-extenso.pdf', 2, '2017-08-11', NULL),
(329, 714, 1, 'CARACTERIZACION DEL SIMPORTADOR XILOSA-H+ EN Debaryomyces hansenii Y Kluyveromyces marxianus', 'Karina Orozco Natividad', 'Sandra Montserrat Ruiz Moreno', 'Juan Alfonso Salazar Torres, Juan Carlos González Hernández', 3, 1, 'mesas/mesa3/329-resumen.pdf', 'mesas_ext/mesa3/329-extenso.pdf', 2, '2017-08-11', NULL),
(330, 601, 1, 'EVALUACIÓN DE LA POROSIDAD EFECTIVA DE UNA MEZCLA DE CONCRETO HIDRÁULICO CON CENIZA DE BAGAZO DE CAÑA COMO SUSTITUTO PARCIAL DEL CEMENTO PORTLAND', 'Emmanuel González Castro', 'Wilfrido Martínez Molina, Elia Mercedes Alonso Guzmán, Hugo Luis Chávez García, Cindy Lara Gómez, Sandra del Carmen Arguello Hernández, Isaías Trujillo Calderón.', 'Wilfrido Martínez Molina', 2, 1, 'mesas/mesa2/330-resumen.pdf', 'mesas_ext/mesa2/330-extenso.pdf', 2, '2017-08-11', NULL),
(333, 315, 1, 'OPTIMIZACIÓN DE UN SISTEMA DE GENERACIÓN DE BIOGÁS A PARTIR DE LAS EXCRETAS DE GANADO Y SU USO EN LA GENERACIÓN DE ENERGÍA', 'Pascual Eduardo Murillo Alvarado ', 'Pascual Eduardo Murillo Alvarado ', 'Pascual Eduardo Murillo Alvarado ', 2, 1, 'mesas/mesa2/333-resumen.pdf', 'mesas_ext/mesa2/333-extenso.pdf', 2, '2017-08-11', NULL),
(334, 180, 1, 'SOPORTES POLÍMERICOS PARA SALES METÁLICAS CON POTENCIAL CATALÍTICO', 'Estefania Reyes Mercado', 'Yliana López Castro, Juan Pablo García Merinos', 'J. Betzabe González Campos ', 6, 1, 'mesas/mesa6/334-resumen.pdf', 'mesas_ext/mesa6/334-extenso.pdf', 2, '2017-08-11', NULL),
(335, 693, 1, 'Implementación y Control Óptimo de un Convertidor de Potencia de AC-DC', 'Guillermo Capistrano Zuñiga Neria; Gabriel Casarrubias Guerrero; Hector Roman Medina Parra', 'Miguel Angel Martinez Figueroa', 'Miguel Angel Martinez Figueroa', 2, 1, 'mesas/mesa2/335-resumen.pdf', 'mesas_ext/mesa2/335-extenso.pdf', 2, '2017-08-11', NULL),
(336, 435, 2, 'EFECTO DEL NICORANDIL Y EL EJERCICIO SOBRE LOS NIVELES DE LIPOPEROXIDACIÓN EN CEREBRO Y MÚSCULO CARDIACO DE RATAS', 'Arturo Kenzuke Nakamura García', 'Mariana Gómez Barroso, Koré Montserrat Moreno Calderón, Alfredo Saavedra Molina, Rocío Montoya Pérez', 'Rocío Montoya Pérez', 5, 0, 'mesas/mesa5/336-resumen.pdf', NULL, 2, '2017-08-11', NULL),
(337, 711, 1, 'LIXIVIADOS OBTENIDOS DE TIRADEROS ABIERTOS SUSCEPTIBLES DE SER UTILIZADOS COMO FERTILIZANTES AGRÍCOLAS EN MICHOACÁN, MÉXICO.', 'MARÍA DEL SOCORRO FIGUEROA BÉJAR Y GUILLERMO IVÁN FIGUEROA BÉJAR', 'MARÍA DEL SOCORRO FIGUEROA BÉJAR Y GUILLERMO IVÁN FIGUEROA BÉJAR', 'DR. MARIO FIGUEROA CÁRDENAS', 9, 1, 'mesas/mesa9/337-resumen.pdf', NULL, 2, '2017-08-11', NULL),
(339, 538, 1, 'SÍNTESIS DE INDOLES A PARTIR DE DERIVADOS PIRRÓLICOS', 'Josue Valentin Escalera, DC. Luis Chacón García, Dra. Martha Estrella García-Pérez', '.', 'DC. Luis Chacón García', 6, 1, 'mesas/mesa6/339-resumen.pdf', 'mesas_ext/mesa6/339-extenso.pdf', 2, '2017-08-11', NULL),
(340, 168, 1, 'CONTAMINACIÓN ACÚSTICA EN EL CRUCERO VIAL DE LA SALIDA A SALAMANCA EN LA CD. DE MORELIA', 'Luis Ochoa Franco,  Belem Echeverría Toriz , Ezequiel García Rodríguez y Patricia Manríquez Zavala', 'Patricia Manríquez Zavala', 'Luis Ochoa Franco', 7, 1, 'mesas/mesa7/340-resumen.pdf', 'mesas_ext/mesa7/340-extenso.pdf', 2, '2017-08-11', NULL),
(341, 727, 1, 'Análisis de la influencia del tipo de molienda en la fabricación de aleaciones Al-Mg obtenidas por aleado mecánico', 'David Mendoza Cachú', 'Cecilia Mercado Zúñiga', 'Gerardo A. Rosas Trejo', 1, 0, 'mesas/mesa1/341-resumen.pdf', 'mesas_ext/mesa1/341-extenso.pdf', 2, '2017-08-11', NULL),
(495, 530, 2, 'DIAGNÓSTICO DE LA FERTILIDAD DEL SUELO DE LA UNIVERSIDAD DE LA CIENEGA DEL ESTADO DE MICHOACÁN', 'Monserrat Ramírez Flores', 'Víctor Manuel Sánchez Ceja', 'Verónica Núñez Oregel', 3, 0, 'mesas/mesa3/495-resumen.pdf', 'mesas_ext/mesa3/495-extenso.pdf', 2, '2017-08-15', NULL),
(343, 731, 1, 'Alteraciones de la conducta de las crías de tilapia (Oreochromis niloticus) por efecto de la toxicidad crónica del nitrato sódico.', 'Alma Alejandra Gracía Mendoza', 'Rebeca Aneli Rueda Jasso, Antonio Campos Mendoza ', 'Rebeca Aneli Rueda Jasso', 1, 1, 'mesas/mesa1/343-resumen.pdf', NULL, 2, '2017-08-11', NULL),
(346, 428, 1, 'METODOLOGIA PARA LA DETERMINACION DE LAS DEMANDAS HIDRICAS DE LOS CULTIVOS APLICADO AL DISEÑO DE PRESAS.', '.Bautista Martinez Alex Felipe  ', ' Ramírez Cázarez Zayet Joel , Molina González Elíseo ', 'Constantino Domínguez Sánchez', 2, 0, 'mesas/mesa2/346-resumen.pdf', NULL, 2, '2017-08-11', NULL),
(347, 734, 1, 'DIAGNÓSTICO, ANÁLISIS Y PROPUESTA DE MEJORA PARA UNA EMPRESA DE LA REGIÓN LERMA-CHAPALA DEL ESTADO DE MICHOACÁN', 'Jorge Armando Ramos Frutos  , Alejandro Rosas Flores', 'Vicente Campos Contreras', 'Juan Carlos Barragán Barajas', 9, 0, 'mesas/mesa9/347-resumen.pdf', NULL, 2, '2017-08-11', NULL),
(348, 729, 1, 'REVISIÓN DE LAS NORMATIVAS NACIONALES E INTERNACIONALES DE CALIDAD DE AGUA PARA LOS COMPUESTOS NITROGENADOS', 'Gerardo García Maldonado', 'Rebeca Aneli Rueda Jasso', 'Rebeca Aneli Rueda Jasso', 1, 1, 'mesas/mesa1/348-resumen.pdf', 'mesas_ext/mesa1/348-extenso.pdf', 2, '2017-08-11', NULL),
(349, 737, 1, 'ORGANIZACIÓN SOCIAL DEL CUIDADO Y SU IMPLICACIÓN EN LA VIDA ECONÓMICA DE LAS MUJERES Y LOS HOMBRES.', 'Karina García Orozco', 'Diana Areli Mora Zimbrón', 'Karina García Orozco', 4, 1, 'mesas/mesa4/349-resumen.pdf', 'mesas_ext/mesa4/349-extenso.pdf', 2, '2017-08-11', NULL),
(350, 151, 2, 'EFECTO DE LOS LIPOPOLISACÁRIDOS DE AZOSPIRILLUM BRASILENSE SP 245 SOBRE EL CRECIMIENTO DEL TRIGO (Triticum aestivum) EN CONDICIONES DE INVERNADERO', 'Ernesto García Pineda ', 'Elda Castro Mercado y Estefania Chávez Herrera', 'Ernesto García Pineda ', 3, 0, 'mesas/mesa3/350-resumen.pdf', NULL, 3, '2017-08-11', NULL),
(351, 407, 1, 'EVALUACIÓN DE LA ACTIVIDAD DE CITOCININAS EN EXTRACTOS DE Moringa oleífera CON ENSAYOS DE SENESCENCIA EN HOJAS DE FRIJOL', 'Diana Angélica Carrillo Gutiérrez', 'Ma. Lourdes Aguilar Yépez, Eliel Rafael Romero García', 'José Fernando Covián Nares', 3, 1, 'mesas/mesa3/351-resumen.pdf', 'mesas_ext/mesa3/351-extenso.pdf', 2, '2017-08-11', NULL),
(352, 347, 1, 'OBTENCIÓN DE ADUCTOS DE HECK MEDIANTE RADIACIÓN DE MICROONDAS', 'J. Carlos Jiménez Cruz', 'Ramón Guzmán Mejía, Gabriela Rodríguez García, J. Betzabe Gonzáles Campos', 'Judit A. Aviña Verduzco', 6, 0, 'mesas/mesa6/352-resumen.pdf', 'mesas_ext/mesa6/352-extenso.pdf', 2, '2017-08-11', NULL),
(353, 744, 1, 'BIOPRODUCCIÓN DE ETANOL POR MEDIO DE FERMENTACIÓN CON Aspergillus Niger A PARTIR DE RESIDUOS DE PAPEL', 'MAIRENI CORTÉS CORNEJO , I.Q. DENNIS YULIEL ARREGUÍN ZARAGOZA ', 'Q.F.B. RUBÉN PÉREZ PÉREZ3, D.C. MAURICIO N. CHÁVEZ AVILÉS4', ' I.Q. DENNIS YULIEL ARREGUÍN ZARAGOZA ', 2, 1, 'mesas/mesa2/353-resumen.pdf', 'mesas_ext/mesa2/353-extenso.pdf', 2, '2017-08-11', NULL),
(354, 718, 1, 'EVOLUCIÓN DE LAS PROPIEDADES MECÁNICAS Y MICROESTRUCTURALES DE UNA SUPERALEACIÓN DE COBALTO-CROMO-MOLIBDENO ASTM F75', 'Carlos Javier Villarreal Monrreal', 'Ma. de Jesús Soria Aguilar, Josefina García Guerra, Emmanuel José Gutiérrez Castañeda, Francisco Raúl Carrillo Pedroza', 'Ma. de Jesús Soria Aguilar, Josefina García Guerra', 2, 1, 'mesas/mesa2/354-resumen.pdf', 'mesas_ext/mesa2/354-extenso.pdf', 2, '2017-08-11', NULL),
(355, 454, 2, 'EFECTO DEL ABRIDOR DEL CANAL KATP Y ELEJERCICIO SOBRE LA LIPOPEROXIDACIÓN DEL MÚSCULO ESQUÉLITICO DE RATAS.', 'Joyce Elizabeth Ordaz Vazquez', 'Mariana Gómez Barroso, Kore Monserrat Moreno Calderón, Christian Cortés Rojo,', 'Rocío Montoya Pérez', 5, 1, 'mesas/mesa5/355-resumen.pdf', NULL, 2, '2017-08-11', NULL),
(356, 744, 2, 'REMOCIÓN DE COLORANTES CONTAMINANTES DEL PROCESO DE DESTINTADO DE RESIDUOS DE PAPEL', 'ANA ESPERANZA ROSALES SOLÍS,  DENNIS YULIEL ARREGUÍN ZARAGOZA', 'SALVADOR OROZCO MONTES, . MAURICIO N. CHÁVEZ AVILÉS', 'IQ DENNIS YULIEL ARREGUÍN ZARAGOZA', 2, 1, 'mesas/mesa2/356-resumen.pdf', 'mesas_ext/mesa2/356-extenso.pdf', 2, '2017-08-11', NULL),
(357, 732, 1, 'Generación de biogás mediantes procesos biológicos', 'Alondra Vaca Marin, Llarely Marbella Martinez Venegas', 'Minerva García Vargas', 'Minerva García Vargas', 2, 1, 'mesas/mesa2/357-resumen.pdf', NULL, 2, '2017-08-11', NULL),
(358, 744, 1, 'REMOCIÓN DE COLORANTE ROJO CONGO POR ADSORCIÓN CON CARBÓN OBTENIDO DE LA PIEL DE AGUACATE (Persea americana) ACTIVADO CON RADIACIÓN DE MICROONDAS Y H2O2 PARA EFLUENTES INDUSTRIALES', 'ROSA ISELA ROSALES ALANIS, CELIA MALDONADO, DENNIS YULIEL ARREGUÍN ZARAGOZA', 'QFB RUBENPEREZ PEREZ', 'IQ. DENNIS YULIEL ARREGUÍN ZARAGOZA', 2, 0, 'mesas/mesa2/358-resumen.pdf', 'mesas_ext/mesa2/358-extenso.pdf', 2, '2017-08-11', NULL),
(359, 594, 1, 'Envolventes de ruptura de estribos ante cargas verticales y horizontales', 'José Miguel López Zepeda ', 'Luisa Nicte Equihua Anguiano, Eleazar Arreygue Rocha ', 'Luisa Nicte Equihua Anguiano', 2, 1, 'mesas/mesa2/359-resumen.pdf', 'mesas_ext/mesa2/359-extenso.pdf', 2, '2017-08-11', NULL),
(360, 636, 1, 'IMPLEMENTACIÓN DEL MODELO SWAT EN LA SUBCUENCA DEL RÍO CUPATITZIO', 'Orlando Lemus Rodríguez  ', 'Ricardo Ruiz Chávez,  Luis Armando Ochoa Franco , Ezequiel García Rodríguez ', 'Ricardo Ruiz Chávez', 7, 1, 'mesas/mesa7/360-resumen.pdf', 'mesas_ext/mesa7/360-extenso.pdf', 2, '2017-08-11', NULL),
(361, 691, 1, 'NUEVO AGENTE CAUSAL DE PUDRICIÓN DE RAÍZ EN MAÍZ EN MÉXICO', 'Alfredo Reyes-Tena', 'Rebeca Vallejo-González,  Ricardo Santillán-Mendoza, Gerardo Rodríguez-Alvarado, John Larsen.', ' Sylvia P. Fernández-Pavía ', 3, 0, 'mesas/mesa3/361-resumen.pdf', 'mesas_ext/mesa3/361-extenso.pdf', 2, '2017-08-11', NULL),
(362, 728, 1, 'Caracterización fisiológica de una levadura termotolerante con potencial para la producción de bioetanol', 'Nancy Gabriela Castañeda Córdova', 'Melchor Arellano Plaza, Rosa Elvira Nuñez Anita, Alfredo Saavedra Molina', 'Jorge A. Mejía Barajas', 3, 1, 'mesas/mesa3/362-resumen.pdf', NULL, 2, '2017-08-11', NULL),
(515, 505, 1, 'EFECTO ANTIFUNGICO DE EXTRACTO ETANOLICO DE RUTA  GRAVEOLENS SOBRE COLLETROTRICHUM GLOESPOROIDES ', 'Jose Vicente Salome Medina, Alma Teresa Miranda Quiroz , Agustin Ivan Aguilar Cabezas, David García Hernández  Vania Marilyn Marín Rangel, Silvia Patricia Fernandez Pavia ', 'Jose Vicente Salome Medina, Alma Teresa Miranda Quiroz , Agustin Ivan Aguilar Cabezas, David García Hernández  Vania Marilyn Marín Rangel, Silvia Patricia Fernandez Pavia ', ' Alma Teresa Miranda Quiroz', 3, 1, 'mesas/mesa3/515-resumen.pdf', NULL, 3, '2017-08-17', NULL),
(364, 477, 1, 'CONSERVADOR NATURAL A PARTIR DE EXTRACTOS DE PLANTAS Y ESPECIAS. ', 'Juan Jesús Infante Santos ; Luis Alberto Villafan Aguilar', '-', 'Luz María Basurto González ', 9, 1, 'mesas/mesa9/364-resumen.pdf', 'mesas_ext/mesa9/364-extenso.pdf', 2, '2017-08-11', NULL),
(365, 160, 1, 'EFECTO DE LOS COMPUESTOS FENÓLICOS DEL FRIJOL EN LA TOLERANCIA AL ESTRÉS OXIDATIVO EN  Caenorhabditis elegans', 'Alejandra Yitzel Guzmán Hernández ', 'Marysol Rubio Landa', 'Josué Altamirano Hernández ', 5, 0, 'mesas/mesa5/365-resumen.pdf', 'mesas_ext/mesa5/365-extenso.pdf', 2, '2017-08-11', NULL),
(377, 527, 1, 'NANOFIBRAS DE QUITINA ELECTROCONDUCTORAS  OBTENIDAS MEDIANTE ELECTROHILADO', 'MARTHA PATRICIA ZAPATA PEREZ', 'SALOMON RAMIRO VAZQUEZ GARCIA, NELLY FLORES RAMIREZ', 'SALOMON RAMIRO VAZQUEZ GARCIA', 1, 1, 'mesas/mesa1/377-resumen.pdf', 'mesas_ext/mesa1/377-extenso.pdf', 2, '2017-08-11', NULL),
(368, 672, 2, 'EVALUACIÓN DE LA CARBONATACIÓN EN MORTERO DE CEMENTO SUSTITUIDO CON CENIZA DE LADRILLO, A EDAD DE 180 DÍAS.', 'Job Daniel Alvarez Pita', 'Elia Mercedes Alonso Guzmán, Wilfrido Martínez Molina, Hugo Luis Chávez García, Cindy Lara Gómez, Sandra del Carmen Argüello Hernández, Cipriano Bernabé Reyes, Víctor Hugo Blancas Herrera, Fidel Bautista Leon', 'Hugo Luis Chávez García', 1, 1, 'mesas/mesa1/368-resumen.pdf', NULL, 2, '2017-08-11', NULL),
(369, 167, 1, 'Aislamiento y caracterización de rizabacterias promotoras de crecimiento en plantas de Agave pulquero', 'Daniel Ángel Avila Torres', 'Víctor Meza Carmen, Josué Altamirano Hernández', 'Josué Altamirano Hernández', 3, 0, 'mesas/mesa3/369-resumen.pdf', 'mesas_ext/mesa3/369-extenso.pdf', 2, '2017-08-11', NULL),
(370, 752, 1, 'DETERMINACIÓN DE METALES PESADOS EN CENIZAS DEL VOLCÁN POPOCATÉPETL Y COLIMA Y SU IMPACTO AMBIENTAL', 'Samara Janette Reyes Pérez', 'Eduardo Manzanares Acuña', 'Eduardo Manzanares Acuña', 2, 1, 'mesas/mesa2/370-resumen.pdf', 'mesas_ext/mesa2/370-extenso.pdf', 2, '2017-08-11', NULL),
(371, 754, 1, 'Bioestimulación integral de suelo contaminado por aceite residual automotriz', 'Daniel Filomeno Hernández-Valencia y Juan Manuel Sánchez-Yáñez', 'Blanca Celeste, Saucedo Martinez, Lillian Bribiesca Rodríguez, Diana Cecilia Maya Cortez ', ' Juan Manuel Sánchez-Yáñez', 3, 1, 'mesas/mesa3/371-resumen.pdf', NULL, 3, '2017-08-11', NULL),
(372, 523, 1, 'Burkholderia phytofirmans COPE52 PROMUEVE EL CRECIMIENTO DE PLANTAS DE ARÁNDANO (Vaccinium spp.)', 'Miguel Contreras Pérez', 'María del Carmen Rocha Granados', 'Gustavo Santoyo Pizano', 3, 1, 'mesas/mesa3/372-resumen.pdf', 'mesas_ext/mesa3/372-extenso.pdf', 2, '2017-08-11', NULL),
(374, 528, 1, 'ANÁLISIS Y SU FUNCIONALIZACION DE NANOTUBOS DE TIO2 EN UN ARREGLO TIPO MEMBRANA ', 'Bernardo Núñez Mendoza', ' Nelly Flores Ramírez', 'Salomón Ramiro Vázquez García', 1, 1, 'mesas/mesa1/374-resumen.pdf', 'mesas_ext/mesa1/374-extenso.pdf', 2, '2017-08-11', NULL),
(375, 285, 2, 'GESTIÓN DE DATOS DEL SISTEMA DE INFORMACIÓN HIDROLÓGICA DEL MUNICIPIO DE MORELIA', 'Daniel Rodriguez Licea, Sonia Tatiana Sánchez Quispe', 'Daniel Rodriguez Licea, Sonia Tatiana Sánchez Quispe', 'Sonia Tatiana Sánchez Quispe', 2, 1, 'mesas/mesa2/375-resumen.pdf', 'mesas_ext/mesa2/375-extenso.pdf', 2, '2017-08-11', NULL),
(376, 504, 1, 'SUSTITUCIÓN DE UN ANÁLISIS 3D, POR UNO EN CONDICIONES AXISIMÉTRICAS PARA TÚNELES EN HERRADURA', 'Iván Rubio Saldaña, Luisa Equihua Anguiano ', 'Eleazar Arreygue Rocha, Carlos Chávez Negrete', 'Luisa Equihua Anguiano ', 2, 0, 'mesas/mesa2/376-resumen.pdf', 'mesas_ext/mesa2/376-extenso.pdf', 2, '2017-08-11', NULL);
INSERT INTO `ponencias` (`id_ponencias`, `usuario_id`, `tipo_trabajo_id`, `titulo`, `autor`, `coautores`, `asesor`, `mesa_id`, `c_jovenes`, `archivo_resumen`, `archivo_extenso`, `status_id`, `fecha_registro`, `fecha_extenso`) VALUES
(378, 480, 1, 'QUESO ANÁLOGO INSTANTÁNEO CON COMPONENTES DE ORIGEN VEGETAL', 'Luis Alberto Villafan Aguilar, Juan Jesús Infante Santos', '-', 'Luz María Basurto Gonzáles, Jorge Sahagún Partida', 9, 1, 'mesas/mesa9/378-resumen.pdf', 'mesas_ext/mesa9/378-extenso.pdf', 2, '2017-08-11', NULL),
(442, 798, 2, 'HELMINTOS PARÁSITOS DE LA ICTIOFAUNA DE LOS MANANTIALES Y CUERPOS DE AGUA ALEDAÑOS EN TEUCHITLÁN, JALISCO.', 'Alondra Alvarez Pèrez ', ' David Tafolla-Venegas, Omar Domínguez-Domínguez, Martina Medina-Nava y Ruben  Hernández-Morales. ', 'David Tafolla Venegas', 1, 0, 'mesas/mesa1/442-resumen.pdf', 'mesas_ext/mesa1/442-extenso.pdf', 2, '2017-08-11', NULL),
(382, 749, 1, 'DE LA ACUALCULTURA AL AMBIENTE NATURAL LA REPRODUCCIÓN EN CAUTIVERIO DEL PESCADO BLANCO DE PÁTZCUARO (Chirostoma estor)', 'Armando González Alejo1', 'Isaí Betancourt Resendes2, Margarita Hernández Martínez1, A. Correa Sandoval4, Zumac T Méndez Carranco3 e Isidro R Valencia Betancourt4', 'M. en C. Isidro Rafael Valencia Betancourt', 1, 1, 'mesas/mesa1/382-resumen.pdf', NULL, 2, '2017-08-11', NULL),
(383, 491, 2, 'MODELO DE CAJA GRIS PARA EL DISEÑO DE ARQUITECTURAS DE REDES NEURONALES ARTIFICIALES', 'Francisco Javier Sanchez Ruiz', 'Luis Ignacio Salcedo Estrada', 'Francisco Javier Sanchez Ruiz', 2, 0, 'mesas/mesa2/383-resumen.pdf', 'mesas_ext/mesa2/383-extenso.pdf', 2, '2017-08-11', NULL),
(384, 760, 1, 'ANALISIS ÓPTICO DE UN NANO-COMPOSITO OLIGOMERICO BuPMMALi/NPM', 'Christian Vianey Paz Lopez', 'Salomón Ramiro Vásquez García, María Guadalupe Pineda Pimentel, Ana Karen García Rueda, Nelly Flores Ramírez ', 'Salomón Ramiro Vásquez García', 1, 1, NULL, NULL, 3, '2017-08-11', NULL),
(385, 760, 1, 'ANALISIS ÓPTICO DE UN NANO-COMPOSITO OLIGOMERICO BuPMMALi/NPM', 'Christian Vianey Paz Lopez', 'Salomón Ramiro Vásquez García, María Guadalupe Pineda Pimentel, Ana Karen García Rueda, Nelly Flores Ramírez ', 'Salomón Ramiro Vásquez García', 1, 1, NULL, NULL, 3, '2017-08-11', NULL),
(386, 760, 1, 'ANALISIS ÓPTICO DE UN NANO-COMPOSITO OLIGOMERICO BuPMMALi/NPM', 'Christian Vianey Paz Lopez', 'Salomón Ramiro Vásquez García, María Guadalupe Pineda Pimentel, Ana Karen García Rueda, Nelly Flores Ramírez ', 'Salomón Ramiro Vásquez García', 1, 0, NULL, NULL, 3, '2017-08-11', NULL),
(387, 760, 1, 'ANALISIS ÓPTICO DE UN NANO-COMPOSITO OLIGOMERICO BuPMMALi/NPM', 'Christian Vianey Paz Lopez', 'Salomón Ramiro Vásquez García, María Guadalupe Pineda Pimentel, Ana Karen García Rueda, Nelly Flores Ramírez ', 'Salomón Ramiro Vásquez García', 1, 0, 'mesas/mesa1/387-resumen.pdf', 'mesas_ext/mesa1/387-extenso.pdf', 2, '2017-08-11', NULL),
(388, 762, 1, 'NANOTUBOS DE TiO2 DOPADOS CON FIERRO (Fe), OBTENIDOS POR ANODIZACIÓN ELECTROQUÍMICA', 'Ana Karen García Rueda', 'Salomón Ramiro Vásquez García, José Luis Rico Cerda  , Nelly Flores Ramírez , Leandro García González', 'Salomón Ramiro Vásquez García', 1, 1, 'mesas/mesa1/388-resumen.pdf', 'mesas_ext/mesa1/388-extenso.pdf', 2, '2017-08-11', NULL),
(389, 476, 2, 'Cuantificación de compuestos fenólicos totales y flavonoides en extractos elaborados a partir de plantas maleza del cerro El Toscano', 'Diana Laura Valencia García,  Ma. Guadalupe Sánchez Saavedra', 'José Miguel Moreno Ortiz, Monserrat Vásquez Sánchez', 'Ma. Guadalupe Sánchez Saavedra', 3, 1, 'mesas/mesa3/389-resumen.pdf', 'mesas_ext/mesa3/389-extenso.pdf', 2, '2017-08-11', NULL),
(390, 720, 2, 'Análisis del suelo al suroeste de la cuenca del lago de Cuitzeo', 'Valeria González Miranda', 'Jorge Alejandro Ávila Olivera, María Alcalá de Jesús, Alberto Gómez-Tagle Chávez, Efraín Gómez Moreno', 'Jorge Alejandro Ávila Olivera', 7, 1, 'mesas/mesa7/390-resumen.pdf', NULL, 2, '2017-08-11', NULL),
(391, 621, 1, 'EVALUACIÓN DE LOS MÉTODOS PROBABILÍSTICOS APLICADOS A LA HIDROLOGÍA SUPERFICIAL', 'eliso molina gonzalez', 'alex felipe bautista', 'constantino dominguez', 2, 1, NULL, NULL, 4, '2017-08-11', NULL),
(392, 621, 1, 'EVALUACIÓN DE LOS MÉTODOS PROBABILÍSTICOS APLICADOS A LA HIDROLOGÍA SUPERFICIAL', 'eliso molina gonzalez', 'alex felipe bautista', 'constantino dominguez', 2, 1, 'mesas/mesa2/392-resumen.pdf', 'mesas_ext/mesa2/392-extenso.pdf', 2, '2017-08-11', NULL),
(393, 764, 1, 'Análisis del transporte de fósforo como contaminante en acuíferos', 'Cuauhtémoc Reyes Torres, Jorge Luis Sagrero Tinoco', ' Omar Lucas Urbina', ' Sonia Tatiana Sánchez Quispe', 7, 1, 'mesas/mesa7/393-resumen.pdf', 'mesas_ext/mesa7/393-extenso.pdf', 2, '2017-08-11', NULL),
(394, 616, 2, 'MICROESPECTROSCOPIA RAMAN PARA LA CARACTERIZACIÓN E IDENTIFICACIÓN DE BACTERIAS ANAEROBIAS', ' Deyadira Guzmán-Othón', 'Gustavo Dávila-Vázquez, Jorge Bravo-Madrigal, Jesús Cervantes-Martínez', 'Jesús Cervantes-Martínez', 2, 1, 'mesas/mesa2/394-resumen.pdf', NULL, 2, '2017-08-11', NULL),
(399, 763, 1, 'SANEAMIENTO DE AGUA RESIDUAL, POR MEDIO DE UN HUMEDAL ARTIFICIAL, EN UNA CASA', 'Diana Esquivel Urrieta', 'Gloria Lariza Ayala Ramírez, Martha Beatriz Rendón López', 'Gloria Lariza Ayala Ramírez', 7, 1, 'mesas/mesa7/399-resumen.pdf', NULL, 2, '2017-08-11', NULL),
(396, 738, 1, 'Efecto de la adición de antioxidantes en una levadura termotolerante', 'Itzel de Jesús Espino Plancartetzel de Jesús Espino Plancarte', 'Melchor Arellano Plaza, Carlos Ruben Sosa Aguirre,  Alfredo Saavedra Molina ', 'Jorge Arturo Mejía Barajas ', 3, 1, 'mesas/mesa3/396-resumen.pdf', NULL, 2, '2017-08-11', NULL),
(397, 551, 1, 'DIVERSIDAD GENÉTICA DE Fusarium AISLADO DE MALFORMACIONES DE ÁRBOLES EN ZONAS URBANAS DE LA CUENCA BAJA DEL RÍO BALSAS, REGIÓN TIERRA CALIENTE', 'Amelia Cristina Montoya Martínez', ' Ricardo Santillán Mendoza, Gerardo Vázquez Marrufo, Juan Carlos Montero Castro, Julieta Benítez Malvido, Alejandro Soto Plancarte, Sylvia Patricia Fernández Pavía, Gerardo Rodríguez Alvarado ', 'Gerardo Rodríguez Alvarado ', 3, 0, 'mesas/mesa3/397-resumen.pdf', 'mesas_ext/mesa3/397-extenso.pdf', 2, '2017-08-11', NULL),
(400, 516, 1, 'INSTRUMENTO DE INTELIGENCIA EMOCIONAL EN EL TRABAJO', 'Monica Jaramillo Jaramillo ', 'Noel Enrique Rodríguez Maya', 'SIN ASESOR', 4, 1, 'mesas/mesa4/400-resumen.pdf', NULL, 2, '2017-08-11', NULL),
(401, 780, 1, 'ANALISIS DEL TRANSPORTE DE NITRATOS EN ACUÍFERO ZACAPU Y PASTOR ORTÍZ MEDIANTE MT3D', 'Jorge Sagrero Tinoco  , Cuauhtémoc Reyes Torres', 'Omar Lucas Urbina', 'Sonia Tatiana Sánchez Quispe', 7, 1, 'mesas/mesa7/401-resumen.pdf', 'mesas_ext/mesa7/401-extenso.pdf', 2, '2017-08-11', NULL),
(402, 786, 1, 'USO DE TELEDETECCIÓN PARA LA DETERMINACIÓN DE LA SIMILITUD HIDROLÓGICA', 'Roberto Alexander Zavala Ruiz  , Luis Daniel Oseguera Toledo , Sonia Tatiana Sánchez Quispe ', 'Roberto Alexander Zavala Ruiz  , Luis Daniel Oseguera Toledo , Sonia Tatiana Sánchez Quispe ', 'Sonia Tatiana Sánchez Quispe', 7, 1, 'mesas/mesa7/402-resumen.pdf', NULL, 2, '2017-08-11', NULL),
(403, 582, 1, 'TRATAMIENTO DE ALFA-BENCIL-NCA CON HALOGENUROS DE ALQUILO EN PRESENCIA DE LDA Y HMDSLi', 'María Guadalupe Medina Muñoz', 'Judit A. Aviña Verduzco, Ramón Guzmán Mejía, Pedro Navarro Santos , Juan Pablo García Merinos. ', 'Judit A. Aviña Verduzco', 6, 0, 'mesas/mesa6/403-resumen.pdf', 'mesas_ext/mesa6/403-extenso.pdf', 2, '2017-08-11', NULL),
(419, 778, 1, '“Trichoderma spp. Nativo de la Rizósfera Silvestre de Zarzamora para control de Fusarium oxysporum”', 'Alexis Gerardo Ruiz Benitez', 'Alexis Gerardo Ruiz Benitez', 'Dr. Ángel Rebollar Alviter, QFB. Norma García Montañez', 3, 1, 'mesas/mesa3/419-resumen.pdf', 'mesas_ext/mesa3/419-extenso.pdf', 2, '2017-08-11', NULL),
(405, 792, 1, 'ANALISIS EXPERIMENTAL Y SIMULACIÓN DE LA INTERACCIÓN ENTRE NANOWHISKERS DE CELULOSA / POLI(ACRILATO DE BUTILO)', 'María Guadalupe Pineda Pimentel ', 'Nelly Flores Ramírez, Salomón Ramiro Vásquez García, Juan Carlos Farías Sánchez, Cristian Vianey Paz López, Ana Karen García Rueda', 'Nelly Flores Ramírez', 1, 1, 'mesas/mesa1/405-resumen.pdf', 'mesas_ext/mesa1/405-extenso.pdf', 2, '2017-08-11', NULL),
(406, 779, 2, 'ELABORACION DE UNA BOTANA DE NOPAL (Opuntia Spp.), ENRIQUECIDA CON SALVADO DE TRIGO Y ADICIONADA CON JENGIBRE (Zinger Officinale).', 'Alejandra Ramírez López, Abel Suarez Castro, Elizabeth Reyes Valdes', 'Alejandra Ramírez López, Abel Suarez Castro,  Elizabeth Reyes Valdes', 'Abel Suarez Castro,  Elizabeth Reyes Valdes', 3, 1, 'mesas/mesa3/406-resumen.pdf', 'mesas_ext/mesa3/406-extenso.pdf', 2, '2017-08-11', NULL),
(407, 782, 2, 'LOS GENES QUE CODIFICAN ENZIMAS SACAROSA-FOSFATO SINTASAS (SPS), SON REGULADOS DIFERENCIALMENTE POR ESTRÉS OSMÓTICO EN  Arabidopsis thaliana L.', 'María Gloria Solís-Guzmán ', 'Patricia Ríos-Chávez', ' Miguel Martínez-Trujillo', 3, 0, 'mesas/mesa3/407-resumen.pdf', NULL, 2, '2017-08-11', NULL),
(408, 781, 1, 'CARACTERIZACIÓN DEL EFECTO DE LA SOBREEXPRESIÓN DEL GEN YUCCA4 Y SU INTERACCIÓN CON ÁCIDO ABSCÍSICO EN Arabidopsis thaliana.', 'Aarón Giovanni Munguía Rodríguez', 'José López Bucio', 'Miguel Martínez Trujillo', 3, 1, 'mesas/mesa3/408-resumen.pdf', NULL, 2, '2017-08-11', NULL),
(409, 535, 2, 'PARTICIPACIÓN DEL CALCIO EN EL EFECTO VASORRELAJANTE DE LA BIOTINA', 'Ricardo Espino García', 'Blanca Nateras Marín, Daniel Godínez Hernández, Zurisaddai Hernández Gallegos, Asdrúbal Aguilera Méndez', 'Asdrúbal Aguilera Méndez', 5, 1, 'mesas/mesa5/409-resumen.pdf', 'mesas_ext/mesa5/409-extenso.pdf', 2, '2017-08-11', NULL),
(411, 386, 1, 'COMPARATIVA DE MODELOS PROBABILÍSTICOS PARA LA DETERMINACIÓN DE LA VIDA ÚTIL DE UN PAVIMENTO FLEXIBLE.', 'JOSE OMAR MELCHOR BARRIGA, CARLOS CHÁVEZ NEGRETE, NELIO PASTOR GÓMEZ', 'JOSE OMAR MELCHOR BARRIGA, CARLOS CHÁVEZ NEGRETE, NELIO PASTOR GÓMEZ', 'CARLOS CHÁVEZ NEGRETE', 2, 1, 'mesas/mesa2/411-resumen.pdf', 'mesas_ext/mesa2/411-extenso.pdf', 2, '2017-08-11', NULL),
(412, 679, 1, 'Evaluación in vitro de extracto acuoso de la semilla neem (Azadirachta indica Juss) sobre la mortalidad de larvas de garrapata Rhipicephalus (Boophilus) microplus', 'Andrés Santiago-Hernandez', 'Gabriela Timpacamú-Aguilar , Juan J. Mosqueda-Gualindo, José Herrera-Camacho', 'José Herrera-Camacho, Gabriela Tipacamu-Aguilar', 7, 1, 'mesas/mesa7/412-resumen.pdf', NULL, 2, '2017-08-11', NULL),
(415, 547, 2, 'EVALUACIÓN DEL EFECTO DE LA RELACIÓN AGV’S /ALCALINIDAD EN LA PRODUCCIÓN DE BIOGAS EN UN REACTOR UASB, EMPLEANDO COMO SUTRATO RESIDUOS ALIMENTICIOS.', 'Iris Sandoval Rojas', 'Edgar Daniel Alanís Silva., Claudia Palomares Rodríguez, José Apolinar Cortés, Ma Del Carmen Chávez Parga', 'Ma Del Carmen Chávez Parga', 2, 1, 'mesas/mesa2/415-resumen.pdf', 'mesas_ext/mesa2/415-extenso.pdf', 2, '2017-08-11', NULL),
(416, 546, 1, 'Reflectancia Espectral de Especies Pioneras del Bosque Tropical Seco', 'Antonio López Chavez, Mariana Yolotl Alvarez Añorve y Luis Daniel Avila Cabadilla ', 'Mariana Yolotl Alvarez Añorve y Luis Daniel Avila Cabadilla ', 'Mariana Yolotl Alvarez Añorve', 1, 1, 'mesas/mesa1/416-resumen.pdf', NULL, 2, '2017-08-11', NULL),
(420, 750, 1, 'PRODUCCIÓN DE BIOETANOL MEDIANTE SACARIFICACIÓN Y FERMENTACIÓN SIMULTÁNEA UTILIZANDO UNA LEVADURA TERMOTOLERANTE Y BAGAZO DE CAÑA', 'Reynaldo Solorio Salgado', 'Melchor Arellano Plaza , Jesús Campos García, Alfredo Saavedra Molina', 'Jorge Arturo Mejía Barajas', 3, 1, 'mesas/mesa3/420-resumen.pdf', NULL, 2, '2017-08-11', NULL),
(421, 206, 1, 'Utilización de lignina residual de paja de trigo para bioconversión en fitohormonas', 'Andrea Robles Mendoza', 'Zoila Torres Valencia, Blanca Celeste Saucedo-Martinez', 'Juan Manuel Sánchez-Yáñez', 3, 0, 'mesas/mesa3/421-resumen.pdf', 'mesas_ext/mesa3/421-extenso.pdf', 2, '2017-08-11', NULL),
(423, 588, 1, 'Evaluación de tres dietas comerciales en la supervivencia y crecimiento de crías de acúmara (Algansea lacustris Steindachner 1895)', 'FELIPE PAULINO LAURA PATRICIA', 'R.A. Jasso-Rueda, J. A. Tello-Ballinas', 'R.A. Jasso-Rueda,', 1, 1, 'mesas/mesa1/423-resumen.pdf', 'mesas_ext/mesa1/423-extenso.pdf', 2, '2017-08-11', NULL),
(426, 806, 2, 'FORMULACIÓN, ANÁLISIS BROMATOLÓGICO Y DETERMINACIÓN DE HIERRO EN TOSTADAS DE HABA (Vicia faba L.) COMO ALIMENTO FUNCIONAL FORTIFICADO CON HIERRO', 'Ingrid Rubí Romero Campuzano', 'Abel Suárez Castro', 'Abel Suárez Castro', 3, 1, NULL, NULL, 4, '2017-08-11', NULL),
(427, 806, 2, 'FORMULACIÓN, ANÁLISIS BROMATOLÓGICO Y DETERMINACIÓN DE HIERRO EN TOSTADAS DE HABA (Vicia faba L.) COMO ALIMENTO FUNCIONAL FORTIFICADO CON HIERRO', 'Ingrid Rubí Romero Campuzano', 'Abel Suárez Castro', 'Abel Suárez Castro', 3, 1, NULL, NULL, 4, '2017-08-11', NULL),
(428, 806, 2, 'FORMULACIÓN, ANÁLISIS BROMATOLÓGICO Y DETERMINACIÓN DE HIERRO EN TOSTADAS DE HABA (Vicia faba L.) COMO ALIMENTO FUNCIONAL FORTIFICADO CON HIERRO', 'Ingrid Rubí Romero Campuzano', 'Abel Suárez Castro', 'Abel Suárez Castro', 3, 1, NULL, NULL, 4, '2017-08-11', NULL),
(429, 807, 2, 'Bioensayo de toxicidad en plantas con suelo contaminado con cromo VI', 'Betsabé Sinaí Cardiel Zalapa, Mónica Alvarado Herrejón, Miguel Martínez Trujillo, Yazmín Carreón Abúd', '-', 'Yazmín Carreón Abúd', 3, 0, 'mesas/mesa3/429-resumen.pdf', 'mesas_ext/mesa3/429-extenso.pdf', 2, '2017-08-11', NULL),
(430, 806, 2, 'FORMULACIÓN, ANÁLISIS BROMATOLÓGICO Y DETERMINACIÓN DE HIERRO EN TOSTADAS DE HABA (Vicia faba L.) COMO ALIMENTO FUNCIONAL FORTIFICADO CON HIERRO', 'Ingrid Rubí Romero Campuzano', 'Abel Suárez Castro', 'Abel Suárez Castro', 3, 1, 'mesas/mesa3/430-resumen.pdf', NULL, 3, '2017-08-11', NULL),
(431, 630, 1, 'EL TRAMADOL PUEDE CONTRARRESTAR LA PRONOCICEPCION INDUCIDA POR EL TOLUENO EN LA PRUEBA DE FORMALINA EN RATAS', 'Miguel Angel Torres Santana', 'Claudia Cervantes Durán,  Marcia Yvette Gauthereau Torres,  Luis Fernando Ortega Varela.', 'Marcia Yvette Gauthereau Torres', 5, 1, 'mesas/mesa5/431-resumen.pdf', 'mesas_ext/mesa5/431-extenso.pdf', 2, '2017-08-11', NULL),
(432, 805, 1, 'EFECTOS DEL RIEGO CON SOLUCIONES DE TRES COLORANTES TEXTILES SOBRE EL ESTADIO VEGETATIVO DEL MAÍZ (ZEA MAYS L., HÍBRIDO BD-33)', 'Esteban de Jesús Silva Barriga', 'Crisanto Velázquez Becerra', 'Rosenda Aguilar Aguilar', 7, 1, 'mesas/mesa7/432-resumen.pdf', 'mesas_ext/mesa7/432-extenso.pdf', 2, '2017-08-11', NULL),
(433, 332, 2, 'COMPARACIÓN ENTRE EL CONSUMO DE GLUCOSA EN CONDICIONES BASALES Y DURANTE EL TEST DE RAVEN EN ESTUDIANTES DE MEDICINA DE LA UNIVERSIDAD VASCO DE QUIROGA', 'Alexel Becerril Möller', 'Abel Suárez Castro', 'Abel Suárez Castro', 5, 1, 'mesas/mesa5/433-resumen.pdf', NULL, 2, '2017-08-11', NULL),
(434, 417, 1, 'BIOSÍNTESIS Y CARACTERIZACIÓN DE NANOPARTÍCULAS DE PLATA Y SU EFECTO EN EL CRECIMIENTO EN LEVADURAS', 'José Luis Landeros Páramo', ' Francisco Alfredo Saavedra Molina', 'Gerardo Antonio Rosas Trejo ', 1, 1, 'mesas/mesa1/434-resumen.pdf', 'mesas_ext/mesa1/434-extenso.pdf', 2, '2017-08-11', NULL),
(435, 812, 1, 'SISTEMA DE CAPTACIÓN DE AGUA DE LLUVIA COMO PRODUCTOR DE ENERGÍA ELÉCTRICA A TRAVÉS DE HIDROGENERADORES', 'Luis Sergio Calderón Puga, Mariana Méndez Paredes, Anel Vargas Santiago, ', 'Luis Bernardo López Sosa, Mauricio González Avilés.', 'Luis Bernardo López Sosa', 7, 1, 'mesas/mesa7/435-resumen.pdf', 'mesas_ext/mesa7/435-extenso.pdf', 2, '2017-08-11', NULL),
(436, 446, 1, 'ESTUDIO HIDROLÓGICO SUPERFICIAL DEL RÍO GRANDE DE MORELIA', 'JUAN ÁNGEL SAUCEDO GARCÍA', 'JOSÉ GUADALUPE GARCÍA CONTRERAS, MARISELA MENDOZA MARTÍNEZ ', 'SONIA TATIANA SÁNCHEZ QUISPE', 7, 1, 'mesas/mesa7/436-resumen.pdf', 'mesas_ext/mesa7/436-extenso.pdf', 2, '2017-08-11', NULL),
(437, 641, 1, 'ANÁLISIS DEL CICLO DE VIDA DE UN SECADOR DE BIOMASA FORESTAL MADERABLE', 'Alfonso Chang Martínez', 'Carlos A. García Bustamante, Alberto Beltrán Morales, José Núñez Gonzalez, Bernardo López Sosa, Mario Morales Máximo', 'Carlos Alberto García Bustamante', 7, 1, 'mesas/mesa7/437-resumen.pdf', 'mesas_ext/mesa7/437-extenso.pdf', 2, '2017-08-11', NULL),
(438, 243, 1, 'Determinacion de la recarga en los acuiferos de Zacapu y Pastor Ortiz , mediante el modelo de Témez', 'Victor Hugo Nava Silva', 'Omar Lucas Urbina, Luis Francisco Blancas Baca', 'Sonia Tatiana Sanchez Quispe', 2, 0, 'mesas/mesa2/438-resumen.pdf', 'mesas_ext/mesa2/438-extenso.pdf', 2, '2017-08-11', NULL),
(439, 132, 1, 'DESARROLLO DE ECUACIONES DE PREDICCIÓN PARA MÓDULOS ELÁSTICOS DE CAPAS DE MATERIALES EN PAVIMENTOS FLEXIBLES APLICABLES A CARRETERAS MEXICANAS: PROPUESTA METODOLOGICA DE REVISIÓN ', 'Carlos Adolfo Coria Gutiérrez', 'Luis Daniel Árciga Ramírez', 'Carlos Adolfo Coria Gutiérrez', 2, 0, 'mesas/mesa2/439-resumen.pdf', NULL, 2, '2017-08-11', NULL),
(440, 175, 1, 'Obtención y aplicación de isotiocianatos en la síntesis de tioureas bifuncionales', 'Juan Antonio Rivas Loaiza, Yliana López Castro, Heraclio López Ruiz, Susana Rojas Lima, Juan Pablo García Merinos', '', 'Yliana López Castro', 6, 1, 'mesas/mesa6/440-resumen.pdf', 'mesas_ext/mesa6/440-extenso.pdf', 2, '2017-08-11', NULL),
(441, 377, 1, 'Evaluación de la actividad antifúngica de los extraíbles de teca contra Trametes versicolor', 'Gabriela Benítez Rocha', 'Rafael Herrera Bucio, Crisanto Velázquez Becerra', 'Crisanto Velázquez Becerra', 7, 1, 'mesas/mesa7/441-resumen.pdf', 'mesas_ext/mesa7/441-extenso.pdf', 2, '2017-08-11', NULL),
(581, 157, 1, 'MODIFICACIONES EN EL ANILLO B DEL COLESTEROL PARA LA OBTENCION DE NUEVOS AZAESTEROIDES', 'Isaí Flavio López-Márquez, C. Ovidio Pérez-Gómez, J. Pablo García-Merinos, Ramón Guzmán-Mejía, Rosa E. del Río, Rosa Santillan, Norberto Farfán, Yliana López. ', 'Isaí Flavio López-Márquez, C. Ovidio Pérez-Gómez , J. Pablo García-Merinos , Ramón Guzmán-Mejía , Rosa E. del Río , Rosa Santillán  , Norberto Farfán  , Yliana López ', 'Yliana López Castro', 6, 0, 'mesas/mesa6/581-resumen.pdf', 'mesas_ext/mesa6/581-extenso.pdf', 2, '2017-08-23', NULL),
(518, 933, 1, 'CARACTERIZACIÓN DE CEPAS MUTANTES  treS y treS/acdS DE Pseudomonas sp. UW4  Y SU EFECTO EN LA INTERACCIÓN CON PLANTAS SOMETIDAS A ESTRÉS SALINO', 'Elizabeth Zetter, Ma. del Carmen Orozco, Bernard R. Glick, Gustavo Santoyo', 'Ma. del Carmen Orozco, Bernard R. Glick, Gustavo Santoyo', 'Gustavo Santoyo', 3, 1, 'mesas/mesa3/518-resumen.pdf', NULL, 3, '2017-08-18', NULL),
(446, 813, 2, 'REMOCIÓN DE ARSÉNICO DE DISOLUCIONES ACUOSAS MEDIANTE UN COMPÓSITO DE QUITOSANO MODIFICADO CON NANOPARTÍCULAS DE HIERRO', 'Sandra Manzo Valencia ', 'Ruth Alfaro Cuevas-Villanueva', 'Raúl Cortés Martínez', 7, 0, 'mesas/mesa7/446-resumen.pdf', NULL, 2, '2017-08-11', NULL),
(447, 811, 1, 'EFECTO DE HONGOS MICORRÍCICOS ARBUSCULARES EN PLANTAS DE TOMATE INFECTADAS CON Fusarium', 'Mariela Correa Suárez1, Manuela Ángel Restrepo2, Yazmín Carreón Abud3', 'Mariela Correa Suárez1, Manuela Ángel Restrepo2, Yazmín Carreón Abud3', 'Yazmín Carreón Abud ', 3, 1, NULL, NULL, 4, '2017-08-11', NULL),
(448, 811, 1, 'EFECTO DE HONGOS MICORRÍCICOS ARBUSCULARES EN PLANTAS DE TOMATE INFECTADAS CON Fusarium sp.', 'Mariela Correa Suárez1, Manuela Ángel Restrepo2, Yazmín Carreón Abud3', 'Mariela Correa Suárez1, Manuela Ángel Restrepo2, Yazmín Carreón Abud3', 'Yazmín Carreón Abud', 3, 1, 'mesas/mesa3/448-resumen.pdf', NULL, 3, '2017-08-11', NULL),
(449, 558, 1, 'Fusarium mexicanum Y F. pseudocircinatum AGENTES CAUSALES DE LA MALFORMACIÓN EN CAOBA (Swietenia macrophylla)', 'Ricardo Santillán Mendoza', 'Gerardo Vázquez Marrufo, Juan C. Montero Castro, Julieta Benítez Malvido, Alejandro Soto Plancarte, Sylvia P. Fernández Pavía, Gerardo Rodríguez Alvarado', 'Gerardo Rodríguez Alvarado', 3, 0, 'mesas/mesa3/449-resumen.pdf', 'mesas_ext/mesa3/449-extenso.pdf', 2, '2017-08-11', NULL),
(450, 585, 1, 'AGOTAMIENTO HÍDRICO SUBTERRÁNEO  DEL ACUÍFERO MORELIA-QUERÉNDARO', 'Daniel Mauricio Araiza Salcedo', 'Azucena Karen Alvarado Pérez, Sonia Tatiana Sánchez Quispe ', 'Jorge Alejandro Ávila Olivera', 7, 1, 'mesas/mesa7/450-resumen.pdf', 'mesas_ext/mesa7/450-extenso.pdf', 2, '2017-08-11', NULL),
(550, 982, 1, 'ESTANDARIZACIÓN DE TIEMPOS Y OPERACIONES EN ÁREA DE SERVICIO NISSAN AUTOCOM     ALFA S.A.P.I. DE C.V. URUAPAN', 'Gilberto Chávez, Esquivel, Francisco Martín Valencia Rincón', 'Francisco Jesús Arévalo Carrasco', 'Gilberto Chávez Esquivel', 2, 1, 'mesas/mesa2/550-resumen.pdf', 'mesas_ext/mesa2/550-extenso.pdf', 2, '2017-08-22', NULL),
(607, 1043, 1, 'México ante la Comisión para la Cooperación Ambiental de América del Norte', 'Celia América Nieto del Valle', 'no tiene co-autores', 'Celia América Nieto del Valle', 4, 1, 'mesas/mesa4/607-resumen.pdf', 'mesas_ext/mesa4/607-extenso.pdf', 2, '2017-08-24', NULL),
(452, 388, 1, 'INSPECCIÓN Y EVALUACIÓN DE LOS PUENTES VEHICULARES DE MORELIA', 'Hugo Hernández Barrios , Uriel Villegas Malagón ', 'Hugo Hernández Barrios , Uriel Villegas Malagón', 'Hugo Hernández Barrios', 2, 1, 'mesas/mesa2/452-resumen.pdf', 'mesas_ext/mesa2/452-extenso.pdf', 2, '2017-08-11', NULL),
(453, 833, 2, 'SISTEMA ALTERNATIVO DE AIRE ACONDICIONADO DESARROLLADO CON INDICADORES DE SUSTENTABILIDAD', 'Carolina Magaña Espinosa, Itzel Gracia García ', 'Mauricio González Avilés', 'Mauricio González Avilés', 7, 1, 'mesas/mesa7/453-resumen.pdf', 'mesas_ext/mesa7/453-extenso.pdf', 2, '2017-08-11', NULL),
(454, 189, 1, 'EVALUACIÓN DE LA PRESENCIA Y ACTIVIDAD DE GIBERELINAS Y AUXINAS EN EXTRACTOS DE Moringa oleifera', 'PAOLA ATZIRI GOMEZ PALEO', 'CINDY ZACARÍAS CONEJO; TERESA ITANDEHUI GARAMBULLO PEÑA; JUAN CARLOS GONZÁLEZ-HERNÁNDEZ', 'JOSÉ FERNANDO COVIÁN NARES', 3, 1, 'mesas/mesa3/454-resumen.pdf', 'mesas_ext/mesa3/454-extenso.pdf', 2, '2017-08-11', NULL),
(455, 217, 1, 'BIOCONVERSIÓN DE LIGNINA RESIDUAL DE PAJA DE TRIGO EN SUSTANCIAS PROMOTORAS DE CRECIMIENTO VEGETAL', 'Alma Cecilia Sáenz Mercado', 'Zoila Torres Valencia y Blanca Celeste Saucedo-Martínez', 'Juan Manuel Sánchez.Yáñez', 3, 1, 'mesas/mesa3/455-resumen.pdf', NULL, 3, '2017-08-11', NULL),
(456, 826, 1, 'EFECTO DE LA PRESENCIA DE MERCURIO, PLOMO, COBRE Y CADMIO SOBRE EL CRECIMIENTO DE LA BIOMASA EN LODOS DE TRATAMIENTO AEROBIO DE AGUAS RESIDUALES', 'Mario Alberto Pérez Méndez, Guadalupe Selene Fraga Cruz', 'Virgilio Ledesma Yturry', 'Rafael Maya Yescas', 7, 1, 'mesas/mesa7/456-resumen.pdf', 'mesas_ext/mesa7/456-extenso.pdf', 2, '2017-08-11', NULL),
(750, 555, 2, 'ESTRUCTURA MORFOLÓGICA Y PREFERENCIA DE HÁBITAT DE LA COMUNIDAD DEL FITOPLANCTON EN EL LAGO DE CUITZEO, MICHOACAN, MÉXICO', 'Marisol Martínez-Martínez1', 'Rubén Hernández-Morales2, Martina Medina-Nava3 ', 'Rubén Hernández-Morales2', 7, 0, 'mesas/mesa7/750-resumen.pdf', 'mesas_ext/mesa7/750-extenso.pdf', 2, '2017-08-25', NULL),
(458, 837, 1, 'SISTEMA  DE ILUMINACIÓN GENERADA POR LA BIOLUMINISCENCIA DE LA LUCIFERINA', 'Jonathan Alejandro García Loyola Andrea Medina Madrid Luis Antonio Torres Villalobos  ', 'Mauricio González Avilés', 'Mauricio González Avilés', 7, 1, 'mesas/mesa7/458-resumen.pdf', 'mesas_ext/mesa7/458-extenso.pdf', 2, '2017-08-11', NULL),
(459, 832, 2, 'Dinámica de carbono y fósforo del suelo en sistemas agrícolas', 'Gabriela Rios Diaz ', 'Yunuen Tapia Torres y Felipe García Oliva ', 'Yunuen Tapia Torres', 3, 1, 'mesas/mesa3/459-resumen.pdf', NULL, 3, '2017-08-11', NULL),
(460, 842, 1, 'EVALUACION DEL EFECTO DE LOS HONGOS MICORRIZICOS ARBUSCULARES (HMA) SOBRE EL CRECIMIENTO DE PLANTAS DE CEBOLLA (Allium cepa) SUPLEMENTADAS CON ABONO ORGANICO', ' Sandra García-Rueda1, Juana Rodríguez-Morales2, Laura A. Hernández-Camargo3, Mónica Herrejón-Alvarado4, Miguel Martínez –Trujillo5, Yazmín Carreón Abud6. ', 'Sandra García-Rueda1, Juana Rodríguez-Morales2, Laura A. Hernández-Camargo3, Mónica Herrejón-Alvarado4, Miguel Martínez –Trujillo5, Yazmín Carreón Abud6. ', 'Yazmin Carreon Abud', 3, 1, 'mesas/mesa3/460-resumen.pdf', 'mesas_ext/mesa3/460-extenso.pdf', 2, '2017-08-11', NULL),
(468, 717, 1, 'Inhibición de la glucoamilasa y la a-amilasa por extractos de Morus alba y Morus nigra.', 'Esteban Gaona Sanchez', ' Doc. Jose Luis Montañez Soto, Doc. Ana Esther Jimenez Alonzo,  Doc. Nahúm Castellanos Perez Doc. Ana Velia Coria Tellez,Ing. Fabián Gaona Sánchez', ' Doc. Jose Luis Montañez Soto', 5, 1, 'mesas/mesa5/468-resumen.pdf', NULL, 2, '2017-08-11', NULL),
(462, 845, 1, 'DISEÑO DE UN SECADOR DE BIOMASA FORESTAL CON APROVECHAMEINTO DE FUENTES RENOVABLES DE ENERGÍA', 'Mario Morales Máximo  María de los Ángeles Molina Diego Carlos Alberto García Bustamante Luis Bernardo López Sosa', 'Alberto Beltran Morales José Núñez', 'Carlos Alberto García Bustamante', 7, 1, 'mesas/mesa7/462-resumen.pdf', 'mesas_ext/mesa7/462-extenso.pdf', 2, '2017-08-11', NULL),
(469, 839, 2, 'ANÁLISIS ESTADÍSTICO SOBRE LA VIABILIDAD DE IMPLEMENTAR  LA PLATAFORMA SESWEB 3.1 A NIVEL LICENCIATURA', 'Julio Cesar Mendoza Rojas, Priscila Jocelyn Gallaga Ruiz, Jaime León Aguilar, ', 'Joaquín Estévez Delgado,  Jesús Iván Mejía Navarro', 'Julio Cesar Mendoza Rojas', 6, 1, 'mesas/mesa6/469-resumen.pdf', 'mesas_ext/mesa6/469-extenso.pdf', 2, '2017-08-11', NULL),
(470, 839, 2, 'ANÁLISIS ESTADÍSTICO DE HABILIDADES EN EL USO DE INTERNET Y PLATAFORMAS VIRTUALES COMO HERRAMIENTAS EDUCATIVAS EN ESTUDIANTES DE LICENCIATURA', 'Julio Cesar Mendoza Rojas, Priscila Jocelyn Gallaga Ruiz, Jaime León Aguilar', 'Jorge  Iván Martínez Daza  y Kristal Hernández Calderón', 'Julio Cesar Mendoza Rojas', 6, 1, 'mesas/mesa6/470-resumen.pdf', 'mesas_ext/mesa6/470-extenso.pdf', 2, '2017-08-12', NULL),
(465, 114, 1, 'INCREMENTO DE LA MICRODUREZA DE UNA ALEACIÓN Al-Mg MEDIANTE NANOTUBOS DE CARBONO', 'ISMAEL SANTOS RAMOS', 'GERARDO ANTONIO ROSAS TREJO, CECILIA MERCADO ZUÑIGA', ' JUAN ZARATE MEDINA', 1, 0, 'mesas/mesa1/465-resumen.pdf', 'mesas_ext/mesa1/465-extenso.pdf', 2, '2017-08-11', NULL),
(716, 751, 1, 'Identificación de rizobacterias promotoras del crecimiento vegetal y su relación con  la respuesta a auxinas en Arabidopsis', 'Elizabeth García Cárdenas', 'Randy Ortiz Castro, Salvador Barrera Ortiz, Eduardo Valencia Cantero y José López Bucio.', 'José López Bucio', 3, 1, 'mesas/mesa3/716-resumen.pdf', NULL, 3, '2017-08-25', NULL),
(717, 843, 2, 'ESTUDIO DE LOS EFECTOS PROMOVIDOS POR LA ADMINISTRACIÓN INTRACEREBROVENTRICULAR DEL FAVONOIDE KAEMPFEROL SOBRE EL BALANCE ENERGÉTICO EN RATÓN', 'Blanca V. Carrillo Tello  , Pedro A. Romero Juárez ', 'Saraí Avelino Castillo , Luz Torner , Rafael Medina Navarro , Jailane S. Aquino , Ana E. Toscano , Rosalío Mercado Camargo , Héctor E. Martínez Flores , Omar Guzmán Quevedo', 'Omar Guzmán Quevedo', 5, 1, 'mesas/mesa5/717-resumen.pdf', 'mesas_ext/mesa5/717-extenso.pdf', 2, '2017-08-25', NULL),
(467, 831, 1, 'EFECTO DE LA ADICIÓN DE ÁCIDOS GRASOS EN UN PROCESO DE FERMENTACIÓN', 'Abraham Sauno Contreras ', 'Alfredo Saavedra, Carlos Sosa, Jesus Campos, Rosa Elvira, Melchor Arellano', 'Jorge Arturo Mejía ', 3, 1, 'mesas/mesa3/467-resumen.pdf', NULL, 3, '2017-08-11', NULL),
(583, 848, 1, 'ACTIVACION CENTRAL DEL RECEPTOR NUCLEAR REV-ERBα  PROMUEVE UN BALANCE ENERGETICO POSITIVO E INTOLERANCIA A  LA GLUCOSA DEPENDIENDO DEL ESTADO ENERGETICO', 'Omar Guzmán Quevedo ', 'Tássia K. Borba2 , Kelli N. Ferraz-Pereira3 , Lígia C. Galindo4 , Raquel Da Silva  Aragão3 , Ana E. Toscano5 , Gabino Estévez Delgado1 , Raul Manhães-de-Castro', 'Omar Guzmán Quevedo', 5, 0, 'mesas/mesa5/583-resumen.pdf', 'mesas_ext/mesa5/583-extenso.pdf', 2, '2017-08-23', NULL),
(472, 819, 2, '“Formulación de una harina con actividad hipoglicemiante a partir de extractos de morera.”', 'Ing. Fabián Gaona Sánchez, M.C. Esteban Gaona Sanchez1', 'Doc. Nahúm Castellanos Perez,Doc. Ana Velia Coria Tellez,Doc. Ana Esther Jimenez Alonzo', 'Doc. Nahúm Castellanos Perez', 5, 1, 'mesas/mesa5/472-resumen.pdf', NULL, 3, '2017-08-12', NULL),
(507, 418, 2, 'Macroinvertebrados Bentónicos y su relación con parámetros ambientales como indicadores de calidad del agua en el río Cupatitzio, Michoacán', 'Luis Fernando Gudiño Sosa', 'Carlos Escalera Gallardo , Gustavo Cruz Cárdenas , Marco Antonio Chávez Tinoco , Rodrigo Moncayo Estrada , Janete Morán Ramírez', 'Carlos Escalera Gallardo , Gustavo Cruz Cárdenas ', 7, 1, 'mesas/mesa7/507-resumen.pdf', 'mesas_ext/mesa7/507-extenso.pdf', 2, '2017-08-16', NULL),
(474, 767, 1, 'RESTRICCIONES DE ACCESO E IMPARTICIÓN DE JUSTICIA COLECTIVA EN MATERIA AMBIENTAL', 'LUIS ROBERTO AYALA AYALA', 'BENJAMÍN REVUELTA VAQUERO', 'BENJAMÍN REVUELTA VAQUERO ', 4, 1, 'mesas/mesa4/474-resumen.pdf', 'mesas_ext/mesa4/474-extenso.pdf', 2, '2017-08-12', NULL),
(535, 854, 1, 'EFECTO DE TIEMPO DE PERMANENCIA DEL TRATAMIENTO ISOTÉRMICO SOBRE LAS FASES FINALES EN UN ACERO DE MICROESTRUCTURA COMPLEJA (COMPLEX PHASE STEEL)”', 'Humberto Prado Lázaro', 'Juan Manuel Prado Lázaro', 'Pedro Garníca González', 2, 1, 'mesas/mesa2/535-resumen.pdf', 'mesas_ext/mesa2/535-resumen.pdf', 2, '2017-08-19', NULL),
(477, 809, 1, 'APERTURA REGIOSELECTIVA DEL ANILLO F DE 25R-23-ESPIROSAPOGENINAS', ' Alejandro Corona-Díaz,  ', 'J. Pablo García-Merinos, María Eugenia Ochoa, Gabriela Rodríguez-García, Rosa Santillan, Judit A. Aviña-Verduzco, Rosa E. del Río, Yliana López.', 'Yliana López', 6, 0, 'mesas/mesa6/477-resumen.pdf', 'mesas_ext/mesa6/477-extenso.pdf', 2, '2017-08-13', NULL),
(478, 219, 1, 'PERFIL SOCIODEMOGRÁFICO Y PSICOSOCIAL DE LOS CUIDADORES DE NIÑOS CON DISCAPACIDAD DE CRIT MICHOACÁN ', 'Yolanda Huerta Ramírez ', 'María Elena Rivera Heredia ', 'María Elena Rivera Heredia ', 4, 1, 'mesas/mesa4/478-resumen.pdf', NULL, 2, '2017-08-13', NULL),
(580, 174, 1, 'OBTENCIÓN Y CARACTERIZACIÓN DE COMPUESTOS ESTEROIDALES CON SISTEMAS CARBONÍLICOS α,β-INSATURADOS', 'Daniela Flores-Abad , J. Pablo García-Merinos,  Gabriela Rodríguez-García,  J. Betzabe Gónzalez-Campos,  Mario A. Gómez-Hurtado,  Rosa E. del Río,  Yliana López. ', 'Daniela Flores-Abad , J. Pablo García-Merinos,  Gabriela Rodríguez-García,  J. Betzabe Gónzalez-Campos,  Mario A. Gómez-Hurtado,  Rosa E. del Río,  Yliana López. ', 'Yliana López Castro', 6, 0, 'mesas/mesa6/580-resumen.pdf', 'mesas_ext/mesa6/580-extenso.pdf', 2, '2017-08-23', NULL),
(480, 863, 2, 'ESTRUCTURA  DE BANDAS DE  UN CRISTAL FONÓNICO DENTRO DE UNA GUÍA DE ONDAS EN 3D IMPLEMENTANDO EL MÉTODO DE LA FUNCIÓN DE GREEN PERIÓDICA', 'Claudia Guillén Gallegos', ' Hugo Alva Medrano, Alberto Mendoza Suárez, Héctor Pérez Aguilar', 'Héctor Pérez Aguilar', 6, 1, 'mesas/mesa6/480-resumen.pdf', 'mesas_ext/mesa6/480-extenso.pdf', 2, '2017-08-14', NULL),
(482, 170, 1, 'LIBERTADES, VIOLENCIAS Y CULTURAS DIGITALES', 'Tomás Hamlet Escutia Monroy ', 'Teresa Maria Geraldes Da Cunha Lopes', 'Teresa Maria Geraldes Da Cunha Lopes', 4, 1, 'mesas/mesa4/482-resumen.pdf', 'mesas_ext/mesa4/482-extenso.pdf', 2, '2017-08-14', NULL),
(483, 676, 1, 'BIOPLÁSTICOS A PARTIR DE CARBOXIMETILCELULOSA CON ANTIOXIDANTES NATURALES', 'Emilio Coria Orozco', 'Lada Domratcheva Lvova, Salomón Ramiro Vásquez García', 'Nelly Flores Ramírez ', 1, 1, 'mesas/mesa1/483-resumen.pdf', NULL, 2, '2017-08-14', NULL),
(484, 544, 1, 'Competitividad de las empresas de la zona centro de Uruapan, Michoacán bajo la percepción de los consumidores', 'América Vega Huerta', 'Isahi Sánchez Suárez, Jesús Fernando Padilla Magaña', 'Laura Alejandra Mata Amezcua', 9, 1, 'mesas/mesa9/484-resumen.pdf', 'mesas_ext/mesa9/484-extenso.pdf', 2, '2017-08-14', NULL),
(485, 664, 1, '“EFECTO DEL NH4NO3, KNO3 Y Ca(NO3)2 EN LA CALIDAD DE BROTES DE Stevia rebaudiana BERTONI PROPAGADOS in vitro”.', 'Marbella Salas García y Gilberto espinoza Quiroz', 'Alejandro Romero Bautista, Adriana Fernández Pérez y Abraham García Chávez', 'Gilberto Espinoza Quiroz', 3, 0, NULL, NULL, 4, '2017-08-14', NULL),
(486, 664, 1, '“EFECTO DEL NH4NO3, KNO3 Y Ca(NO3)2 EN LA CALIDAD DE BROTES DE Stevia rebaudiana BERTONI PROPAGADOS in vitro”.', 'Marbella Salas García y Gilberto espinoza Quiroz', 'Alejandro Romero Bautista, Adriana Fernández Pérez y Abraham García Chávez', 'Gilberto Espinoza Quiroz', 3, 0, 'mesas/mesa3/486-resumen.pdf', NULL, 2, '2017-08-14', NULL),
(487, 882, 1, 'Del héroe mítico-literario al héroe televisivo. La resignificación de la figura del narcotraficante y la apropiación de valores por parte de niños que cursan la educación básica.', 'Janelory Yunuen Barbosa Garibo', 'ninguno', 'Cecilia López Ridaura', 4, 1, 'mesas/mesa4/487-resumen.pdf', 'mesas_ext/mesa4/487-extenso.pdf', 2, '2017-08-14', NULL),
(489, 888, 1, 'EVALUACIÓN DE LA ACTIVIDAD MICROBIANA EN UN REACTOR DE LECHO MÓVIL PARA EL TRATAMIENTO DE EFLUENTES ACUÍCOLAS, POR TÉCNICAS RESPIROMÉTRICAS', 'Estefany Durán Rojas', 'María del Carmen Cano Correa ', 'Isaías Negra Jiménez  y  Julio César Orantes Ávalos ', 3, 1, 'mesas/mesa3/489-resumen.pdf', 'mesas_ext/mesa3/489-extenso.pdf', 2, '2017-08-14', NULL),
(490, 885, 1, 'INHIBICIÓN DE LA ACTIVIDAD BACTERIANA DE LA BIOMASA DE UN BIORREACTOR CON MEMBRANAS SUMERGIDAS, CAUSADA POR UN COLORANTE DE LA INDUSTRIA TEXTIL', 'Andrea Itzayana Barbosa Martínez, Diana Isela Loeza Barragán, Victor Hugo Hipólito Zenteno, Isaías Negra Jiménez, Julio César Orantes Ávalos', 'Diana Isela Loeza Barragán, Victor Hugo Hipólito Zenteno ', 'Isaías Negra Jiménez, Julio César Orantes Ávalos', 3, 1, 'mesas/mesa3/490-resumen.pdf', 'mesas_ext/mesa3/490-extenso.pdf', 2, '2017-08-14', NULL),
(491, 870, 1, 'Efectos favorables emanados de la aplicación de las acciones colectivas en materia ambiental', 'Jessica Bravo Ramírez', 'Jessica Bravo Ramírez', 'Benjamín Revuelta Vaquero', 4, 1, 'mesas/mesa4/491-resumen.pdf', 'mesas_ext/mesa4/491-extenso.pdf', 2, '2017-08-14', NULL),
(492, 761, 1, 'EL RECURSO DE REVISIÓN EN MATERIA AMBIENTAL', 'Itzel Sotomayor Ocampo', 'Laura Leticia Padilla Gil', 'Laura Leticia Padilla Gil', 4, 1, 'mesas/mesa4/492-resumen.pdf', 'mesas_ext/mesa4/492-extenso.pdf', 2, '2017-08-14', NULL),
(493, 876, 1, 'NIVELES DE LOMBRICOMPOSTA Y FERTILIZACIÓN QUÍMICA EN MAIZ MEJORADO CON TRES DENSIDADES DE POBLACIÓN BAJO CONDICIONES DE TEMPORAL', 'José Eduardo  Yépez Torres', 'Juan Manuel Corona Martínez', 'José Eduardo Yépez Torres', 3, 0, 'mesas/mesa3/493-resumen.pdf', 'mesas_ext/mesa3/493-extenso.pdf', 2, '2017-08-15', NULL),
(496, 158, 1, 'Síntesis y caracterización de nuevos derivados de etinilestradiol, conteniendo grupos cromóforos.', 'Juan L. Cortes-Muñoz', 'J. Pablo García-Merinos, María Eugenia Ochoa, J. Betzabe González-Campos, Judit A. Aviña Verduzco, Rosa Santillan,  Yliana López.', 'Yliana López', 6, 1, 'mesas/mesa6/496-resumen.pdf', 'mesas_ext/mesa6/496-extenso.pdf', 2, '2017-08-15', NULL),
(497, 867, 2, 'RESISTENCIA A ANTIBIÓTICOS, MOVILIDAD Y FORMACIÓN DE BIOPELÍCULAS EN Escherichia coli ASOCIADA A MASTITIS BOVINA', 'Valentín Toro Castillo, José Emmanuel Torres Flores', 'Cristián Omar Munguía Magdaleno, Luis Enrique Flores Pantoja, Pedro Damián Loeza Lara, Rafael Jiménez Mejía', 'Rafael Jiménez Mejía', 3, 1, 'mesas/mesa3/497-resumen.pdf', 'mesas_ext/mesa3/497-extenso.pdf', 2, '2017-08-15', NULL),
(498, 566, 1, 'Estudio numérico de una guía de ondas de cristal fotónico que contiene inclusiones con superficies conductoras rugosas', 'José Eduardo Medina Magallón', 'Héctor Pérez Aguilar , Petr Zhevandrov Bolshakova, Alberto Mendoza Suárez', 'Héctor Pérez Aguilar', 6, 1, 'mesas/mesa6/498-resumen.pdf', NULL, 3, '2017-08-15', NULL),
(499, 893, 1, 'SEMBLANZA DE LA OFERTA DE INSTALACIONES FOTOVOLTAICAS EN LA CIUDAD DE MORELIA ', 'Paulo Navarrete Gonzalez, Luis Ochoa Franco y Ezequiel García Rodriguez', 'Paulo Navarrete Gonzalez, Luis Ochoa Franco y Ezequiel García Rodriguez', 'Luis Ochoa Franco', 7, 1, 'mesas/mesa7/499-resumen.pdf', 'mesas_ext/mesa7/499-extenso.pdf', 2, '2017-08-15', NULL),
(500, 864, 1, 'EFECTO DEL ESTRÉS SALINO SOBRE LOS COMPONENTES LIPÍDICOS DE MEMBRANA  EN RIZOBACTERIAS Y SU INTERACCIÓN CON PLANTAS DE Solanum lycopersicum L.', 'Daniel Rojas Solis', 'Christian Sohlenkamp ', 'Gustavo Santoyo Pizano', 3, 1, 'mesas/mesa3/500-resumen.pdf', NULL, 2, '2017-08-16', NULL),
(501, 796, 1, 'Análisis de la componente fuera de plano del vector de sensibilidad utilizando interferometría electrónica de moteado', 'Ana Karen Reyes', 'J. A. Rayas, Tobias Scherbaum, Gustavo  Adolfo Gómez, Héctor Pérez', 'Amalia Martínez García', 6, 1, 'mesas/mesa6/501-resumen.pdf', 'mesas_ext/mesa6/501-extenso.pdf', 2, '2017-08-16', NULL),
(502, 757, 2, 'AISLAMIENTO DE HONGOS ASOCIADOS A CEBOLLA ', 'Marlene Díaz-Celaya', ' Adanely Jiménez-Villegas, Alfredo Reyes-Tena, Nuria Gómez-Dorantes, Gerardo Rodríguez-Alvarado ', ' Gerardo Rodríguez-Alvarado ', 3, 0, 'mesas/mesa3/502-resumen.pdf', 'mesas_ext/mesa3/502-extenso.pdf', 2, '2017-08-16', NULL),
(505, 111, 1, 'Desarrollo de un modelo para el tratamiento anaeróbico de vinazas con recuperación de biogás.', 'Andrea Bocanegra Martínez, Rafael Maya Yescas', ' Agustín Jaime Castro Montoya, Ma. del Carmen Chávez Parga, José Apolinar Cortés, Gladys Jiménez García', 'Rafael Maya Yescas', 2, 1, 'mesas/mesa2/505-resumen.pdf', 'mesas_ext/mesa2/505-extenso.pdf', 2, '2017-08-16', NULL),
(504, 726, 1, 'METAGENÓMICA DE AMBIENTES EXTREMOS:  ESTUDIO DE CASO ARARÓ, MICHOACÁN', 'Cristina Mariana Prieto Barajas  ', 'Eduardo Valencia-Cantero', 'Gustavo Santoyo', 1, 0, 'mesas/mesa1/504-resumen.pdf', 'mesas_ext/mesa1/504-extenso.pdf', 2, '2017-08-16', NULL),
(506, 743, 1, 'ESTUDIO NUMÉRICO DE LA DEPENDENCIA ANGULAR DE ESTRUCTURAS FOTÓNICAS BIDIMENSIONALES DE RED HEXAGONAL CON SUPERFICIES RUGOSAS', 'Victor Castillo Gallardo', 'Luis Eduardo Puente Díaz, Héctor Pérez Aguilar, Alberto Mendoza Suárez', 'Héctor Pérez Aguilar', 6, 1, 'mesas/mesa6/506-resumen.pdf', 'mesas_ext/mesa6/506-extenso.pdf', 2, '2017-08-16', NULL),
(508, 250, 2, 'Efecto de niveles crecientes de sustitución de harina de chaya (Cnidoscolus chayamansa) en la estabilidad de alimentos isoproteicos de uso acuícola. ', 'Marco Antonio Chávez Tinoco', 'Carlos Escalera Gallardo , Claudia Lydia Treviño Santacruz,Luis Fernando Gudiño Sosa,  ', 'Carlos Escalera Gallardo , Claudia Lydia Treviño Santacruz ', 3, 0, 'mesas/mesa3/508-resumen.pdf', 'mesas_ext/mesa3/508-extenso.pdf', 2, '2017-08-16', NULL),
(510, 919, 1, 'OPTIMIZACIÓN DE LA CADENA DE SUMINISTRO PARA LA PRODUCCIÓN DE BIODIESEL A PARTIR DE LA JATROPHA L. CURCAS EN EL ESTADO DE MICHOACÁN', 'Rogelio Elicea Manzo , ', 'Pascual Eduardo Murillo Alvarado ', 'Pascual Eduardo Murillo Alvarado ', 6, 1, 'mesas/mesa6/510-resumen.pdf', NULL, 2, '2017-08-17', NULL),
(511, 758, 1, 'MORTERO ELABORADO CON MUCÍLAGO DE NOPAL PARA EL REVESTIMIENTO DE LA INFRAESTRUCTURA DE CONCRETO REFORZADO EN EL PUERTO DE LÁZARO CÁRDENAS, MICHOACÁN', 'Fidel Bautista León', 'Elia Mercedes Alonso Guzmán, Wilfrido Martínez Molina, Hugo Luis Chávez García, Cindy Lara Gómez, Sandra del Carmen Argüello Hernández, Cipriano Bernabé Reyes, Victor Hugo Blancas Herrera, José Wilbert Viveros Ramos, Job Daniel Álvarez Pita', 'Wilfrido Martínez Molina', 2, 1, 'mesas/mesa2/511-resumen.pdf', 'mesas_ext/mesa2/511-extenso.pdf', 2, '2017-08-17', NULL),
(512, 596, 1, 'ESTUDIO DEL EFECTO DE LA BIOTINA EN LA ESTEATOSIS HEPÁTICA ', 'Alfonso Characu Rueda Rocha, Asdrúbal Aguilera Méndez', 'Clotilde Guajardo lópez', 'Asdrúbal Aguilera Méndez', 5, 1, 'mesas/mesa5/512-resumen.pdf', 'mesas_ext/mesa5/512-extenso.pdf', 2, '2017-08-17', NULL),
(513, 924, 1, 'RESPUESTA ÓPTICA DE UN CF2D FINITO CON SUPERFICIES LISAS Y ALEATORIAMENTE RUGOSAS', 'Luis Eduardo Puente Díaz', ' Victor Castillo Gallardo, Héctor Pérez Aguilar, Alberto Mendoza Suárez', 'Héctor Pérez Aguilar', 6, 1, 'mesas/mesa6/513-resumen.pdf', 'mesas_ext/mesa6/513-extenso.pdf', 2, '2017-08-17', NULL),
(514, 815, 1, 'EFECTO DE LA RESTRICCIÓN PROTEÍCO CALORÍCA SOBRE LA ACTIVIDAD DE LA BOMBA DE SODIO Y POTASIO EN RATAS DE LA PRIMERA GENERACIÓN', 'ROSALIO MERCADO CAMARGO', 'MAXIMINO FLORES MÁRQUEZ; MAYRA YUNNUEN RÍOS LEÓN; OSCAR VILLICAÑA VALENCIA; CLAUDIA SUSANA BAUTISTA GARCÍA', 'ROSALIO MERCADO CAMARGO ', 5, 1, 'mesas/mesa5/514-resumen.pdf', 'mesas_ext/mesa5/514-extenso.pdf', 2, '2017-08-17', NULL),
(516, 890, 1, 'ENSILADO DE PASTO MARALFALFA (Pennisetum purpureum) Y BROZA DE ESPÁRRAGO (Aspáragus officinalis) COMO ALTERNATIVA DE ALIMENTO PARA EL GANADO', 'Alejandro Romero Bautista y Pedro Tapia Morón, ', 'Juan Manuel Robledo Verduzco y  Felipe Magaña Gutiérrez', 'Alejandro Romero Bautista', 3, 1, 'mesas/mesa3/516-resumen.pdf', NULL, 2, '2017-08-18', NULL),
(517, 932, 1, 'La autoimagen en el comunicado “Entre la luz y la sombra” del Subcomandante Marcos como despedida y bienvenida al Insurgente Galeano. Estudios del discurso y teoría de la relevancia ', 'Diana Patricia Ferreyra Corral ', '.', '.', 4, 0, 'mesas/mesa4/517-resumen.pdf', 'mesas_ext/mesa4/517-extenso.pdf', 2, '2017-08-18', NULL),
(519, 935, 1, 'EFECTO DEL CERATRAP EN EL CONTROL DE MOSCAS DE LA FRUTA (DIPTERA: TEPHRITIDAE)', 'MARIO A. MIRANDA SALCEDO', 'PABLO MONTOYA GERARDO Y JOSE PABLO LIEDO FERNANDEZ', 'JOSE PABLO LIEDO FERNANDEZ', 3, 1, NULL, NULL, 4, '2017-08-18', NULL),
(520, 935, 1, 'EFECTO DEL CERATRAP EN EL CONTROL DE MOSCAS DE LA FRUTA (DIPTERA: TEPHRITIDAE)', 'MARIO A. MIRANDA SALCEDO', 'PABLO MONTOYA GERARDO Y JOSE PABLO LIEDO FERNANDEZ', 'JOSE PABLO LIEDO FERNANDEZ', 3, 1, NULL, NULL, 4, '2017-08-18', NULL),
(521, 935, 1, 'EFECTO DEL CERATRAP EN EL CONTROL DE MOSCAS DE LA FRUTA (DIPTERA: TEPHRITIDAE)', 'MARIO A. MIRANDA SALCEDO', 'PABLO MONTOYA GERARDO Y JOSE PABLO LIEDO FERNANDEZ', 'JOSE PABLO LIEDO FERNANDEZ', 3, 1, 'mesas/mesa3/521-resumen.pdf', NULL, 3, '2017-08-18', NULL),
(522, 935, 1, 'DISTRIBUCION DE LA ESCAMA BLANCA Aulacaspis tubercularis NEWSTEAD (HEMIPTERA: DIASPIDIDAE) DEL MANGO EN MICHOACAN, MEXICO', 'MARIO A. MIRANDA SALCEDO', 'MARIO A. URIAS LOPEZ', 'MARIO A. URIAS LOPEZ', 3, 1, 'mesas/mesa3/522-resumen.pdf', NULL, 3, '2017-08-18', NULL),
(523, 935, 1, 'MANEJO DE Diaphorina citri KUWAYAMA (HEMIPTERA: LIVIIDAE) EN EL VALLE DE APATZINGAN, MICHOACAN', 'MARIO A. MIRANDA SALCEDO', 'JOSE ISABEL LOPEZ ARROYO', 'JOSE ISABEL LOPEZ ARROYO', 3, 1, 'mesas/mesa3/523-resumen.pdf', NULL, 3, '2017-08-18', NULL),
(524, 793, 2, 'Trayectorias caóticas basadas en un escáner ultrasónico', 'JORGE ISIDRO ARANDA SÁNCHEZ', 'KARLA FERNÁNDEZ RAMÍREZ, ARTURO BALTAZAR HERREJÓN', 'JORGE ISIDRO ARANDA SÁNCHEZ', 6, 0, 'mesas/mesa6/524-resumen.pdf', 'mesas_ext/mesa6/524-extenso.pdf', 2, '2017-08-18', NULL),
(918, 389, 1, 'Estabilidad de un puente en funcion de la profundidad de socavacion', 'Jorge Garcia Dominguez', 'Jorge Garcia Dominguez', 'Hugo Hernandez Barrios', 2, 1, 'mesas/mesa2/918-resumen.pdf', 'mesas_ext/mesa2/918-extenso.pdf', 2, '2017-08-11', '2017-09-22'),
(526, 793, 2, 'Análisis de vibraciones en objetos sólidos usando ultrasonido', 'JORGE ISIDRO ARANDA SÁNCHEZ', 'FERNANDO IGUAZÚ RAMÍREZ ZAVALETA, ARTURO BALTAZAR HERREJÓN', 'JORGE ISIDRO ARANDA SÁNCHEZ', 6, 0, 'mesas/mesa6/526-resumen.pdf', 'mesas_ext/mesa6/526-extenso.pdf', 2, '2017-08-18', NULL),
(527, 793, 2, 'Análisis de características mecánicas de sistemas esferoidales', 'JORGE ISIDRO ARANDA SÁNCHEZ', 'FERNANDO IGUAZÚ RAMÍREZ ZAVALETA, ARTURO BALTAZAR HERREJÓN', 'JORGE ISIDRO ARANDA SÁNCHEZ', 6, 0, 'mesas/mesa6/527-resumen.pdf', 'mesas_ext/mesa6/527-extenso.pdf', 2, '2017-08-18', NULL),
(528, 793, 2, 'Estudio de señales ultrasónicas a través de la Transformada Wavelet Continua y Teoría de Bayes', 'JORGE ISIDRO ARANDA SÁNCHEZ', 'FERNANDO IGUAZÚ RAMÍREZ ZAVALETA, ARTURO BALTAZAR HERREJÓN', 'JORGE ISIDRO ARANDA SÁNCHEZ', 6, 0, 'mesas/mesa6/528-resumen.pdf', 'mesas_ext/mesa6/528-extenso.pdf', 2, '2017-08-18', NULL),
(529, 577, 1, 'Diversidad de visitantes florales de Agave cupreata cultivado y silvestre en el municipio de madero Michoacan.', 'Maria del Rosario Arreola Gomez', 'Eduardo Mendoza', 'Eduardo Mendoza', 7, 0, 'mesas/mesa7/529-resumen.pdf', NULL, 2, '2017-08-18', NULL),
(534, 940, 2, 'CARACTERIZACIÓN FISICOQUÍMICA DEL MANANTIAL DE CHIQUIMITIO, MORELIA, MICHOACÁN, MÉXICO.', 'Sofía Montserrat Tapia Rodríguez , Wendy Zurita Valencia , Rubén Hernández Morales ', 'Sofía Montserrat Tapia Rodríguez , Wendy Zurita Valencia , Rubén Hernández Morales ', 'Rubén Hernández Morales ', 7, 0, 'mesas/mesa7/534-resumen.pdf', 'mesas_ext/mesa7/534-extenso.pdf', 2, '2017-08-18', NULL),
(533, 940, 2, 'VARIACIÓN DE LA CALIDAD DEL AGUA DEL DISTRIBUIDOR HIDRÁULICO DE LA PRESA DE COINTZIO Y SUS FUENTES DE DISPOSICIÓN FINAL.', 'Victoria Raya García , Wendy Zurita Valencia , Rubén Hernández Morales ', 'Victoria Raya García , Wendy Zurita Valencia , Rubén Hernández Morales ', 'Rubén Hernández Morales ', 7, 0, 'mesas/mesa7/533-resumen.pdf', 'mesas_ext/mesa7/533-extenso.pdf', 2, '2017-08-18', NULL),
(532, 880, 1, 'EFECTO ANTIMICROBIANO DE EXTRACTOS ANTOCIÁNICOS DE FRESA CONTRA BACTERIAS FITOPATÓGENAS', 'Jesús Armando Lucas Bautista', ' Hortencia Gabriela Mena Violante, María del Rocío Ramírez Jiménez, Ernesto Oregel Zamudio, María Valentina Angoa Pérez, Guadalupe Oyoque Salcedo, Jorge Molina Torres.', 'Hortencia Gabriela Mena Violante', 3, 1, 'mesas/mesa3/532-resumen.pdf', NULL, 3, '2017-08-18', NULL),
(536, 716, 2, 'EVALUACIÓN DE CRUZAS TRILINEALES SOBRESALIENTES DE MAÍZ EN EL VALLE DE APATZINGÁN', 'Alejandra Mondragòn Flores', 'Alejandro Ledesma Miramontes, Ivone Alemàn de La Torre', 'Josè Luis Ramìrez Dìaz', 3, 1, 'mesas/mesa3/536-resumen.pdf', 'mesas_ext/mesa3/536-extenso.pdf', 2, '2017-08-19', NULL),
(537, 945, 1, 'PREVENCIÓN DE ACCIDENTES MEDIANTE EL USO Y APLICACIÓN DE UN CINTURÓN DE SEGURIDAD AUTÓNOMO EN VEHÍCULOS AUTOMOTORES', 'Dr. Jorge Alejandro Osuna Villanueva', ', Omar Cortes Sánchez2, Luis Felipe Islas Becerra3, Homero Pineda Pineda4', 'Dr. Jorge Alejandro Osuna Villanueva', 2, 1, 'mesas/mesa2/537-resumen.pdf', NULL, 2, '2017-08-20', NULL),
(538, 945, 1, 'EL MÉTODO DE PROYECTOS UNA OPCIÓN METODOLÓGICA PARA DESARROLLAR EL APRENDIZAJE SIGNIFICATIVO EN ESTUDIANTES VISUALES, AUDITIVOS Y QUINESTESICOS', 'Dr. Jorge Alejandro Osuna Villanueva1', 'Dr. Jorge Alejandro Osuna Villanueva1', 'Dr. Jorge Alejandro Osuna Villanueva1', 8, 1, 'mesas/mesa8/538-resumen.pdf', NULL, 3, '2017-08-20', NULL),
(539, 945, 1, 'SISTEMA ELECTRO-MECÁNICO PARA LEVANTAR VEHÍCULOS DE SERVICIO LIGERO, CONTROLADO MEDIANTE UN SMARTPHONE, TABLET O PC', 'Dr. Jorge Alejandro Osuna Villanueva1', 'Omar Cortes Sánchez2, Luis Felipe Islas Becerra3, Homero Pineda Pineda4', 'Dr. Jorge Alejandro Osuna Villanueva1', 2, 1, 'mesas/mesa2/539-resumen.pdf', NULL, 2, '2017-08-20', NULL),
(540, 925, 1, 'SELECCIÓN DE LA FORMA FUNCIONAL ÓPTIMA PARA UN MODELO PROBABILISTA DE MULTI-PELIGRO', 'Juan Manuel Santana Flores , José Ángel Espino Herrera , Bertha Alejandra Olmos Navarrete ', 'José Ángel Espino Herrera , Bertha Alejandra Olmos Navarrete ', 'Bertha Alejandra Olmos Navarrete', 2, 0, 'mesas/mesa2/540-resumen.pdf', 'mesas_ext/mesa2/540-extenso.pdf', 2, '2017-08-20', NULL),
(541, 795, 1, 'ANÁLISIS Y EVALAUCIÓN DE PUENTES VIRREINALES EN MICHOACÁN', ' Josué de Jesús García Chávez ', 'Wilfrido Martínez Molina  , Andrés A. Torres Acosta ', 'Elia Mercedes Alonso Guzmán', 2, 1, 'mesas/mesa2/541-resumen.pdf', NULL, 2, '2017-08-20', NULL),
(542, 540, 1, 'LOS SISTEMAS URBANOS DE DRENAJE SOSTENIBLE COMO CONTROL DE INUNDACIONES', 'LENIN HERNÁNDEZ FERREYRA', 'EZEQUIEL GARCÍA RODRÍGUEZ', 'EZEQUIEL GARCÍA RODRÍGUEZ', 7, 0, 'mesas/mesa7/542-resumen.pdf', NULL, 2, '2017-08-21', NULL),
(543, 748, 1, 'DEMANDA DE DUCTILIDAD DE CURVATURA EN LAS PILAS DE PUENTES CONSIDERANDO LA NO LINEALIDAD DE CONTACTO', 'Samuel Montufar Vieyra ', 'Manuel Jara Díaz ', ' Manuel Jara Díaz ', 2, 1, 'mesas/mesa2/543-resumen.pdf', NULL, 2, '2017-08-21', NULL),
(544, 920, 1, 'ACCIÓN CONCOMITANTE DE METHYLOBACTERIUM EXTORQUENS EN LA FIJACIÓN DE NITRÓGENO URÉICO DE APLICACIÓN FOLIAR EN PLANTAS DE FRIJOL (PHASEOLUS VULGARIS L.)', 'JESÚS ADRIÁN BARAJAS GONZÁLEZ', 'SIGIFREDO LÓPEZ DÍAZ, GUSTAVO ACEVEDO HERNÁNDEZ, OSVALDO ADRIÁN CASTELLANOS HERNÁNDEZ', 'SIGIFREDO LÓPEZ DÍAZ', 3, 1, 'mesas/mesa3/544-resumen.pdf', 'mesas_ext/mesa3/544-extenso.pdf', 2, '2017-08-21', NULL),
(546, 836, 2, 'EFECTO DE UN DOBLE RETO ESTRESOR – INMUNOACTIVADOR EN ETAPA NEONATAL SOBRE LAS CONDUCTAS EMOCIONAL Y APRENDIZAJE DE LA RATA ADULTA', 'Luis Miguel Saavedra Pimentel', 'Alejandra Ochoa Zarzoza, Luz Torner', 'Luz Torner', 5, 0, 'mesas/mesa5/546-resumen.pdf', 'mesas_ext/mesa5/546-extenso.pdf', 2, '2017-08-21', NULL),
(547, 187, 2, 'DESCRIPCIÓN MORFO-BATIMETRÍCA DEL EMBALSE “EL GALLO” DEL ESTADO DE GUERRERO, MÉXICO.', 'Luis Erick Arroyo-Sesento  ,   ', 'Rubén Hernández-Morales  , Antonio Campos-Mendoza', 'Rubén Hernández-Morales', 7, 1, 'mesas/mesa7/547-resumen.pdf', 'mesas_ext/mesa7/547-extenso.pdf', 2, '2017-08-21', NULL),
(608, 712, 1, 'Diseño de Prensa Hidráulica para Vulcanizado de Caucho por Moldeo de Compresión.', 'Renato González Bernal', 'Irene Monserrat Irepan Aviles, Juan José Piña Castillo, Jesús Cirilo Trujillo Jiménez', 'Renato González Bernal', 2, 0, 'mesas/mesa2/608-resumen.pdf', 'mesas_ext/mesa2/608-extenso.pdf', 2, '2017-08-24', NULL),
(549, 638, 2, 'EXPERIENCIA DE VINCULACIÓN ACADÉMICA DENTRO DEL ÁREA DE LA INGENIERÍA CIVIL  ', 'Cyntia E. García Díaz & Rafael Soto-Espitia', 'José Luis Molina Pérez, Humberto Pérez Pedreros, Gonzalo Alfonso Valdés Vida ', 'Rafael Soto-Espitia', 10, 1, 'mesas/mesa10/549-resumen.pdf', 'mesas_ext/mesa10/549-extenso.pdf', 2, '2017-08-22', NULL),
(552, 631, 2, 'EFECTO DE UN CICLO LÍMITE EN LA DINÁMICA DE LA INTERACCIÓN ENTRE DOS CADENAS DE OSCILADORES CAÓTICOS', 'Karla Ivonne Serrano Arévalo', 'Gabriel Arroyo Correa ', 'Gabriel Arroyo Correa', 6, 1, 'mesas/mesa6/552-resumen.pdf', 'mesas_ext/mesa6/552-extenso.pdf', 2, '2017-08-22', NULL),
(553, 628, 1, 'TRANSFERENCIA DE CONOCIMIENTO E IMPACTOS JURÍDICO-AMBIENTALES EN LA PRODUCCIÓN DE AGUACATE DE LA MESETA P´URHEPECHA, MICHOACÁN ', 'Reyna Celeste Ascencio Ortega; Priscila Ortega Gómez', 'sin co-autores', 'Priscila Ortega Gómez', 9, 1, 'mesas/mesa9/553-resumen.pdf', 'mesas_ext/mesa9/553-extenso.pdf', 2, '2017-08-22', NULL),
(555, 453, 2, 'PRESENCIA DE RIZOBIOS EN MUESTRAS DE SUELO DEL CERRO EL TOSCANO DE SAHUAYO MICHOACÁN  ', 'Juan Daniel Ochoa Echegollen', 'Luis Enrique Flores Pantoja', 'Isaac Zepeda Jazo', 3, 1, 'mesas/mesa3/555-resumen.pdf', 'mesas_ext/mesa3/555-extenso.pdf', 2, '2017-08-22', NULL),
(573, 685, 1, 'VERSIS-17', 'Luis Eduardo Pascual García ', ' Anahí Mercado Salguero , María Fernanda Torres Díaz ', 'Everardo Marín Maya', 9, 1, 'mesas/mesa9/573-resumen.pdf', NULL, 2, '2017-08-23', NULL);
INSERT INTO `ponencias` (`id_ponencias`, `usuario_id`, `tipo_trabajo_id`, `titulo`, `autor`, `coautores`, `asesor`, `mesa_id`, `c_jovenes`, `archivo_resumen`, `archivo_extenso`, `status_id`, `fecha_registro`, `fecha_extenso`) VALUES
(558, 1007, 2, 'MORFOECOLOGÍA DE BRYOPHYTA EN EL PARQUE NACIONAL “INSURGENTE JOSE MARIA MORELOS Y PAVON” CHARO, MICHOACAN, MÉXICO.', 'Rogelio Vega-Agavo , Rocío Madrigal-García , Teresa Iveth Martínez-Flores , Rubén Hernández Morales ', 'Rogelio Vega-Agavo , Rocío Madrigal-García , Teresa Iveth Martínez-Flores , Rubén Hernández Morales ', 'Rubén Hernández Morales ', 7, 1, 'mesas/mesa7/558-resumen.pdf', 'mesas_ext/mesa7/558-extenso.pdf', 2, '2017-08-22', NULL),
(559, 707, 2, 'Optimización de la cadena de suministro para obtener bioturbosina a partir de la Salicornia Bigelovii', 'Marco Yair Gregorio Gutierrez', 'José MarÍa Ponce Ortega', 'Pascual Eduardo Murillo Alvarado', 2, 1, 'mesas/mesa2/559-resumen.pdf', 'mesas_ext/mesa2/559-extenso.pdf', 2, '2017-08-22', NULL),
(560, 1010, 2, 'EVALUACIÓN DE LA CALIDAD DEL AGUA DEL RÍO TEUCHITLÁN POR MEDIO DEL SISTEMA DE BIOINDICADORES', 'Dulce Paloma Cruz Villa , Rubén Hernández Morales , María Elena Castillo Victor , Omar Dominguez Dominguez ', 'Dulce Paloma Cruz Villa , Rubén Hernández Morales , María Elena Castillo Victor , Omar Dominguez Dominguez ', 'Rubén Hernández Morales ', 7, 1, 'mesas/mesa7/560-resumen.pdf', 'mesas_ext/mesa7/560-extenso.pdf', 2, '2017-08-23', NULL),
(561, 1010, 2, 'EVALUACIÓN DE LA CALIDAD DEL AGUA DEL RÍO TEUCHITLÁN EN UN PROGRAMA DE REINTRODUCCIÓN DE UNA ESPECIE EXTINTA EN EL MEDIO NATURAL', 'Dulce Paloma Cruz Villa , Rubén Hernández Morales ,  Omar Dominguez Dominguez ', 'Dulce Paloma Cruz Villa , Rubén Hernández Morales ,  Omar Dominguez Dominguez ', 'Rubén Hernández Morales ', 7, 0, 'mesas/mesa7/561-resumen.pdf', 'mesas_ext/mesa7/561-extenso.pdf', 2, '2017-08-23', NULL),
(562, 980, 1, 'EFECTO DEL APOYO EMOCIONAL DE ENFERMERÍA EN PACIENTES CON TRAUMATISMO CRANEOENCEFALICO PARA DISMINUCIÓN DEL DOLOR', 'Mario Salgado Chávez , Ma. Elena Landeros Pérez , Carlos Gómez Alonso  ', 'Mario Salgado Chávez , Ma. Elena Landeros Pérez , Carlos Gómez Alonso  ', 'Mario Salgado Chávez , Ma. Elena Landeros Pérez , Carlos Gómez Alonso  ', 5, 1, 'mesas/mesa5/562-resumen.pdf', 'mesas_ext/mesa5/562-extenso.pdf', 2, '2017-08-23', NULL),
(563, 408, 1, 'Caracterización molecular de los genes LIP5, ATG15 y ROG1 de Kluyveromyces marxianus expresados heterólogamente en Saccharomyces cerevisiae', 'Luis Adrian Saldaña Trujillo', 'Fernando Maldonado Reyes, Ricardo Martínez Corona y Juan Carlos González-Hernández', 'Juan Carlos González-Hernández', 3, 1, 'mesas/mesa3/563-resumen.pdf', 'mesas_ext/mesa3/563-extenso.pdf', 2, '2017-08-23', NULL),
(566, 917, 1, 'PROPUESTA DE MODELO ECONÓMICO PARA EL DESARROLLO  DEL SECTOR ARTESANAL DE PÁTZCUARO MICHOACÁN', 'JOSE NICANOR FELIPE PAULINO', 'LAURA ADAME RODRIGUEZ', 'MONSERRAT MARTINEZ BUCIO', 4, 1, 'mesas/mesa4/566-resumen.pdf', 'mesas_ext/mesa4/566-extenso.pdf', 2, '2017-08-23', NULL),
(567, 822, 1, 'EFECTOS DEL TRATAMIENTO SUB-CRÓNICO DE FLAVONOIDES SOBRE LA TOLERANCIA A LA GLUCOSA EN UN MODELO DE DIABETES MELLITUS TIPO 2 EN RATA', 'Texali Candelaria Garcia Garduño', 'Diego Cambrón Mora, Rosalío Mercado Camargo, Omar Guzmán Quevedo', 'Omar Guzmán Quevedo', 5, 1, 'mesas/mesa5/567-resumen.pdf', NULL, 2, '2017-08-23', NULL),
(568, 968, 1, 'Evaluación de los compuestos fenólicos y capacidad antioxidante de la zarzamora (Rubus glaucus)', 'Mauritania Martínez Tirado', 'Ana Angélica Feregrino Pérez', 'Héctor Avalos Flores', 3, 1, 'mesas/mesa3/568-resumen.pdf', 'mesas_ext/mesa3/568-extenso.pdf', 2, '2017-08-23', NULL),
(569, 659, 1, 'ESTIMACIÓN DE DENSIDAD DE MARIPOSA MONARCA SOBRE TRONCOS EN SITIOS DE HIBERNACIÓN UTILIZANDO FOTOGRAFÍAS DIGITALES Y DETECCIÓN DE MANCHAS', 'José Trinidad Soto González', 'Alberto Gómez-Tagle Chávez', 'Alberto Gómez-Tagle Chávez', 1, 1, 'mesas/mesa1/569-resumen.pdf', 'mesas_ext/mesa1/569-extenso.pdf', 2, '2017-08-23', NULL),
(591, 992, 1, 'Leer y escribir en el aula: la cultura escrita como eje de la comprensión disciplinar', 'Xóchitl Tavera Cervantes', 'Sin Co-autor', 'Carlos González Di Pierro', 10, 1, 'mesas/mesa10/591-resumen.pdf', 'mesas_ext/mesa10/591-extenso.pdf', 2, '2017-08-24', NULL),
(574, 626, 1, 'CUANTIFICACIÓN DE FURFURAL POR HIDRÓLISIS Y REACCIÓN DE MAILLARD DE PENTOSAS', 'Mónica Linares Heredia', 'Janneth López Mercado', 'Janneth López Mercado', 3, 1, 'mesas/mesa3/574-resumen.pdf', 'mesas_ext/mesa3/574-extenso.pdf', 2, '2017-08-23', NULL),
(575, 626, 1, 'SELECTIVIDAD Y DESCOMPOSICIÓN DE FURFURAL MEDIANTE DIFERENTES MEDIOS CATALÍTICOS Y SOLVENTES', 'Alvaro Pineda Santana ', 'Janneth López Mercado', 'Janneth López Mercado', 3, 1, 'mesas/mesa3/575-resumen.pdf', 'mesas_ext/mesa3/575-extenso.pdf', 2, '2017-08-23', NULL),
(576, 626, 1, 'EFECTO DEL CATALIZADOR Y SOLVENTE EN LA GENERACIÓN DE FURFURAL DESDE LA DESCOMPOSICIÓN DEL ÁCIDO GALACTURÓNICO', 'Itzel Castro  Fraire ', 'Janneth López Mercado', 'Janneth López Mercado1 ', 3, 1, 'mesas/mesa3/576-resumen.pdf', 'mesas_ext/mesa3/576-extenso.pdf', 2, '2017-08-23', NULL),
(577, 626, 1, 'OPTIMIZACIÓN DE LA EXTRACCIÓN DE PECTINA A PARTIR DE LA CÁSCARA DE NARANJA MEDIANTE UNA HIDRÓLISIS ÁCIDA Y ALCALINA', 'María Guadalupe Guizar Amezcua , Janneth López Mercado', 'Leonardo Cajero Zul, Luis Guerrero Ramírez, Elena Toribio Nava', 'Janneth López Mercado', 3, 1, 'mesas/mesa3/577-resumen.pdf', 'mesas_ext/mesa3/577-extenso.pdf', 2, '2017-08-23', NULL),
(582, 669, 1, 'Nivel de dependencia a la nicotina en fumadores en contexto penitenciario antes y después de una intervención cognitivo conductual', 'Omar Bravo Alcocer', 'Yaneth González Cástulo, Cecilia Salas González, Anastacia Alhelí Sánchez Arellano, Roberto Oropeza Tena', 'Roberto Oropeza Tena', 5, 1, 'mesas/mesa5/582-resumen.pdf', 'mesas_ext/mesa5/582-extenso.pdf', 2, '2017-08-23', NULL),
(579, 938, 1, 'El personaje de la mujer como deseo masculino en Sonata de estío ', 'Itzi Deni Palomares Ávila', 'Ninguno', 'Itzi Deni Palomares Ávila', 4, 1, 'mesas/mesa4/579-resumen.pdf', 'mesas_ext/mesa4/579-extenso.pdf', 2, '2017-08-23', NULL),
(584, 610, 1, 'PRONÓSTICOS MEDIANTE LA MODELACIÓN ARIMA UTILIZANDO MINITAB 17', 'Francisco Jesús Arévalo Carrasco , Daniela Rubí Hernández Salgado , Aarón Guerrero Campanur , Gilberto Chávez Esquivel , ', 'Aarón Guerrero Campanur , Gilberto Chávez Esquivel ,', 'Francisco Jesús Arévalo Carrasco', 9, 1, 'mesas/mesa9/584-resumen.pdf', 'mesas_ext/mesa9/584-extenso.pdf', 2, '2017-08-24', NULL),
(585, 916, 2, 'DINÁMICA POBLACIONAL DEL PULGÓN AMARILLO Melanaphis sacchari (Zehntner, 1987) EN NUEVO HÍBRIDO MX-SEI DE SUPER SORGO FORRAJERO EN EL VALLE DE APATZINGÁN, MICHOACÁN', 'Saúl Pardo Melgarejo', 'Braulio Lemus Soriano, Juan Carlos Alvarez Hernandez', 'Saúl Pardo Melgarejo', 3, 1, 'mesas/mesa3/585-resumen.pdf', 'mesas_ext/mesa3/585-extenso.pdf', 2, '2017-08-24', NULL),
(586, 724, 2, 'EFECTO DE UN EXTRACTO ACUOSO Y ETANÓLICO DE Phytolacca icosandra SOBRE el crecimiento de Fusarium oxysporum IN VITRO.', 'Marco Antonio Iniestra-Aniceto David García-Hernández, ', 'Rocío-Arreola Ruiz, Alma Teresa Miranda-Quiroz y Vania Marilyn Marín Rangel1', 'David García Hernández', 3, 0, 'mesas/mesa3/586-resumen.pdf', 'mesas_ext/mesa3/586-extenso.pdf', 2, '2017-08-24', NULL),
(587, 802, 1, 'PRECISIONES ÉTICAS DE LA SUBJETIVIDAD EN LA INVESTIGACIÓN SOCIOAMBIENTAL', 'ARLET RODRIGUEZ OROZCO', '-', '-', 4, 0, 'mesas/mesa4/587-resumen.pdf', 'mesas_ext/mesa4/587-extenso.pdf', 2, '2017-08-24', NULL),
(588, 1039, 1, 'ASOCIACIÓN ENTRE ANEMIA E INFLAMACIÓN EN HEMODIÁLISIS CRÓNICA.', 'Venice Chávez Valencia, Martha Eva Viveros Sandoval, Oliva Mejía Rodríguez, Sergio Gutiérrez Castellanos', 'Citlalli Orizaga de la Cruz, Francisco Alejandro Lagunas Rangel, Omar Aguilar Bixano, Rodríguez Oseguera Héctor Gerardo.', 'Martha Eva Viveros Sandoval', 5, 1, 'mesas/mesa5/588-resumen.pdf', 'mesas_ext/mesa5/588-extenso.pdf', 2, '2017-08-24', NULL),
(589, 1039, 1, 'CORRELACION ENTRE EL GROSOR MEDIOINTIMAL CAROTÍDEO CON BIOMARCADORES DE INFLAMACIÓN EN PACIENTES EN HEMODIALISIS CRONICA.', 'Venice Chávez Valencia, Daniel Lara Romero, Martha Eva Viveros Sandoval,  Oliva Mejía Rodríguez, Sergio Gutiérrez Castellanos', 'Citlalli Orizaga de la Cruz, Francisco Alejandro Lagunas Rangel, Omar Aguilar Bixano, Mario Álcantar Medina, Saúl Barajas González.', 'Martha Eva Viveros Sandoval', 5, 1, 'mesas/mesa5/589-resumen.pdf', 'mesas_ext/mesa5/589-extenso.pdf', 2, '2017-08-24', NULL),
(590, 701, 1, 'SISTEMA DE CONTROL PARA LA NAVEGACIÓN AUTÓNOMA DE UN  ROBOT MÓVIL MEDIANTE VISIÓN ARTIFICIAL ', 'Enrique Virrueta Martínez', 'Gerardo Loreto Gómez ; Adán Gómez Muñoz', 'Gerardo Loreto Gómez ; Adán Gómez Muñoz', 2, 1, 'mesas/mesa2/590-resumen.pdf', 'mesas_ext/mesa2/590-extenso.pdf', 2, '2017-08-24', NULL),
(596, 536, 2, 'INHIBICIÓN DEL HONGO SPHACELOMA PERSEAE MEDIANTE EXTRACTOS DE PLANTAS ENDÉMICAS', 'Luis Miguel Salcedo Ayala', 'Isaac Zepeda Jazo', 'Isaac Zepeda Jazo', 3, 1, 'mesas/mesa3/596-resumen.pdf', 'mesas_ext/mesa3/596-extenso.pdf', 2, '2017-08-24', NULL),
(597, 927, 1, 'DETERMINACIÓN Y CUANTIFICACIÓN POR CROMATOGRAFÍA DE GASES Y ESPECTROMETRÍA DE MASAS DE CARVACROL EN Origanum spp.', 'Jonatan Vargas Moreno', 'Hortencia Gabriela Mena Violante, José Antonio Ceja Diaz', 'Ernesto Oregel Zamudio', 3, 1, 'mesas/mesa3/597-resumen.pdf', 'mesas_ext/mesa3/597-extenso.pdf', 2, '2017-08-24', NULL),
(598, 396, 2, 'ASPECTOS PRODUCTIVOS DEL SORGO EN PRESENCIA DE PULGÓN AMARILLO TRATADO EN EL VALLE DE APATZINGÁN', 'Juan Carlos Álvarez Hernández, Fernando Bahena Juárez, Luis Mario Tapia Vargas, Saul Pardo Melgarejo', 'Fernando Bahena Juárez, Luis Mario Tapia Vargas, Saul Pardo Melgarejo', 'Juan Carlos Álvarez Hernández', 3, 1, 'mesas/mesa3/598-resumen.pdf', 'mesas_ext/mesa3/598-extenso.pdf', 2, '2017-08-24', NULL),
(600, 813, 2, 'DIFERENCIACIÓN MORFOFUNCIONAL ENTRE NUEVE ESPECIES DEL GÉNERO QUERCUS EN LA CUENCA DE CUITZEO, MICHOACÁN', 'Sandra Manzo Valencia ', 'Fernando Pineda García', 'Fernando Pineda García', 7, 0, 'mesas/mesa7/600-resumen.pdf', NULL, 2, '2017-08-24', NULL),
(601, 1048, 1, 'IMPORTANCIA ECONÓMICA DE LAS ORQUÍDEAS SILVESTRES EN TRES MERCADOS DE LA MESETA PURÉPECHA EN MICHOACÁN, MÉXICO', 'Cecilia Zamora Sánchez', 'Marlene Gómez Peralta', 'Marlene Gómez Peralta', 7, 1, 'mesas/mesa7/601-resumen.pdf', 'mesas_ext/mesa7/601-extenso.pdf', 2, '2017-08-24', NULL),
(602, 1049, 1, 'EFECTO DE LA INOCULACIÓN DEL CONSORCIO  Arthrobacter agilis UMCV2-Bacillus sp. M496 SOBRE EL RENDIMIENTO DE LA PRODUCCIÓN Y LA CALIDAD DEL FRUTO DE PLANTAS DE FRESA EN CONDICIONES DE INVERNADERO', 'Christian Hernández Soberano', 'Eduardo Valencia Cantero', 'Eduardo Valencia Cantero', 3, 0, 'mesas/mesa3/602-resumen.pdf', 'mesas_ext/mesa3/602-extenso.pdf', 2, '2017-08-24', NULL),
(603, 462, 1, 'ENFERMEDADES EN ORQUÍDEAS CAUSADAS POR HONGOS', 'Juan Christian Altamirano López ', 'Gerardo Rodríguez Alvarado, Nuria Gómez Dorantes', 'Sylvia Patricia Fernández Pavía', 3, 1, 'mesas/mesa3/603-resumen.pdf', 'mesas_ext/mesa3/603-extenso.pdf', 2, '2017-08-24', NULL),
(606, 1054, 1, 'Evaluación del uso de RAP en las carreteras de Michoacán', 'Jesús Murillón Duarte', 'Mario Salazar Amaya', 'Mario Salazar Amaya', 2, 0, 'mesas/mesa2/606-resumen.pdf', 'mesas_ext/mesa2/606-extenso.pdf', 2, '2017-08-24', NULL),
(609, 468, 2, 'Optimización de la dosificación de concreto hidráulico mediante el uso de aditivo fluidificante', 'Mayra Alejandra Guiza Sánchez ', 'Oscar Geovanny Martínez Balvanera', 'Wilfrido Martínez Molina', 2, 1, 'mesas/mesa2/609-resumen.pdf', 'mesas_ext/mesa2/609-extenso.pdf', 2, '2017-08-24', NULL),
(610, 1056, 2, 'El Origen de la Radiación Cósmica de Fondo en el Universo. ', 'Geovanni Rangel Cortes ', 'Francisco Astorga ', 'Francisco Astorga ', 6, 1, 'mesas/mesa6/610-resumen.pdf', NULL, 2, '2017-08-24', NULL),
(611, 865, 2, 'HONGOS PATÓGENOS DE PLANTAS DE GERANIO EN VIVEROS DE MORELIA, MICHOACÁN', 'Nuria Gómez-Dorantes, ', 'Joshua Emmanuel Hernádez-Ramírez, María del Rosario Gregorio-Cipriano, Sylvia Patricia Fernández-Pavia, Gerardo Rodríguez-Alvarado', 'Nuria Gómez-Dorantes', 3, 1, 'mesas/mesa3/611-resumen.pdf', NULL, 3, '2017-08-24', NULL),
(612, 844, 2, 'TÉCNICAS Y HERRAMIENTAS  PARA ASIMILACIÓN DE CONCEPTOS EN LA ENSEÑANZA DE LA PROGRAMACIÓN', 'Ing. Isela Navarro Alatorre,  ', 'J. Guadalupe Ramos Díaz, Héctor Oceguera Soto, Nicolás Jasso García', 'Consuelo Sandoval López', 4, 1, 'mesas/mesa4/612-resumen.pdf', 'mesas_ext/mesa4/612-extenso.pdf', 2, '2017-08-24', NULL),
(614, 1008, 1, 'COMPARACIÓN DE LA DEMANDA SISMICA DE PUENTE CON SOCAVACIÓN DE UN MODELO SIMPLIFICADO Y UNO DETALLADO', 'Sergio Eduardo Liévano Torres', 'Alberto Gil Puga', 'Bertha Alejandra Olmos Navarrete', 2, 1, 'mesas/mesa2/614-resumen.pdf', 'mesas_ext/mesa2/614-extenso.pdf', 2, '2017-08-24', NULL),
(615, 1011, 2, 'DESARROLLO DE INTERFAZ GRÁFICA DE USUARIO PARA EL CÁLCULO NUMÉRICO DE RAÍCES COMPLEJAS DE POLINOMIOS', 'Juan Carlos Solorio Leyva  , Claudia Janett Cázarez Coss y León  , Luis Enrique Valadez Hernández   ', 'Albavera Harfush Daniel ', 'Juan Carlos Solorio Leyva', 6, 0, 'mesas/mesa6/615-resumen.pdf', 'mesas_ext/mesa6/615-extenso.pdf', 2, '2017-08-24', NULL),
(616, 1061, 1, 'Análisis dinámico incremental de puentes con diferentes tipos de apoyo', 'Andrea Alcalá Ferreira, Manuel Jara Díaz', '-', 'Manuel Jara Díaz', 2, 1, 'mesas/mesa2/616-resumen.pdf', 'mesas_ext/mesa2/616-extenso.pdf', 2, '2017-08-25', NULL),
(617, 653, 1, 'APLICACIÓN DE LA NOM-011-CNA-2000 PARA LA DETERMINACION DE BALANCES HIDROLOGICOS', 'Zayet Joel Ramírez Cázarez', 'Alex Felipe Bautista Martínez, Eliseo Molina González.', 'Dr. Constantino Domínguez Sánchez', 2, 1, 'mesas/mesa2/617-resumen.pdf', 'mesas_ext/mesa2/617-extenso.pdf', 2, '2017-08-25', NULL),
(618, 986, 1, 'Correlación entre el promedio escolar, aptitudes y la antigüedad laboral con el salario bruto percibido de egresados en el nivel superior.', 'Alondra Mendoza Zamora, Adrián Estrada Estrada Xochitl González Carrillo, Moisés Arredondo Olloqui, Luis Antonio Díaz Rosales', ' Xochitl González Carrillo, Moisés Arredondo Olloqui, Luis Antonio Díaz Rosales', 'XOCHITL GONZÁLEZ CARRILLO', 4, 1, 'mesas/mesa4/618-resumen.pdf', 'mesas_ext/mesa4/618-extenso.pdf', 2, '2017-08-25', NULL),
(619, 986, 1, 'PASTA DENTAL A BASE DE ÁCIDO LÁCTICO Y ACEITE DE COCO', 'Monserrat Vega Ramírez , Evelyn Abarca López , Sarahí Martínez Zendejas. Ulises Misael López Rodriguez', 'Xochitl González Carrillo, Ulises Misael López Rodriguez.', 'Xochitl González Carrillo', 5, 1, 'mesas/mesa5/619-resumen.pdf', 'mesas_ext/mesa5/619-extenso.pdf', 2, '2017-08-25', NULL),
(620, 986, 1, 'TRUFA DE CHOCOLATE ADICIONADA CON PROTEÍNAS Y CARBOHIDRATOS.', 'Cristina Jacqueline González Partida, Esperanza Guadalupe Arteaga Cervantes, Jazmín Guadalupe Rodríguez Samano, María del Rocío Anaya Navarro, ', 'Xochitl González Carrillo', 'Xochitl González Carrillo', 2, 1, 'mesas/mesa2/620-resumen.pdf', 'mesas_ext/mesa2/620-extenso.pdf', 2, '2017-08-25', NULL),
(909, 130, 1, 'PERFIL DE PLÁSMIDOS Y GEN DE VIRULENCIA EN CEPAS DE Salmonella enterica DE DIFERENTES SEROTIPOS, OBTENIDAS DE ALIMENTOS EN MICHOACÁN ', 'Estela López Cruz', 'Ma. Soledad Vázquez-Garcidueñas, Gloria Alicia Figueroa Aguilar, Gerardo Vázquez-Marrufo', 'Gerardo Vázquez-Marrufo', 5, 1, 'mesas/mesa5/198-resumen.pdf', 'mesas_ext/mesa5/909-extenso.pdf', 2, '2017-07-04', '2017-09-21'),
(622, 948, 1, 'AROMATIZACIÓN QUÍMICA DEL 6β-ACETOXIVOUACAPANO', ' Odessa Magallón-Chávez', 'Armando Talavera-Alemán, Gabriela Rodríguez-García, Mario A. Gómez-Hurtado, Yliana López, Judit A. Aviña-Verduzco, Rosa E. del Río', 'Rosa E. del Río', 6, 1, 'mesas/mesa6/622-resumen.pdf', 'mesas_ext/mesa6/622-extenso.pdf', 2, '2017-08-25', NULL),
(623, 1012, 1, 'DISEÑO Y FABRICACIÓN DE RODILLOS FORJADOS PARA LAMINACIÓN EN FRIO', 'Juan José Piña Castillo ', 'Jesús Cirilo Trujillo Jiménez , Renato González Bernal ', 'Juan José Piña Castillo ', 2, 1, 'mesas/mesa2/623-resumen.pdf', 'mesas_ext/mesa2/623-extenso.pdf', 2, '2017-08-25', NULL),
(624, 986, 1, 'YOGURT VEGANO A BASE DE LECHE DE SOYA, ADICIONADO CON EXTRACTO DE JENGIBRE', 'Diana Vanessa Flores Zapien , Nancy Janet Mata Pahuamba , Esperanza Frutos Fajardo ', 'Nahum Castellanos Pérez, Xochitl González Carrillo', 'Nahum Castellanos Pérez, Xochitl González Carrillo', 5, 1, 'mesas/mesa5/624-resumen.pdf', 'mesas_ext/mesa5/624-extenso.pdf', 2, '2017-08-25', NULL),
(625, 747, 1, 'AISLAMIENTO Y DERIVATIZACIÓN DE UN FLAVONOIDE GLUCOSILADO AISLADO DE Mimosa sp.', 'Lirenny Quevedo-Tinoco , Mario A. Gómez Hurtado', ' J. Manuel Zaragoza-Ríos, Gabriela Rodríguez-García, Rosa E. del Río', 'Mario A. Gómez Hurtado', 6, 1, 'mesas/mesa6/625-resumen.pdf', 'mesas_ext/mesa6/625-extenso.pdf', 2, '2017-08-25', NULL),
(626, 1071, 2, 'RELACIÓN DE LOS COMPONENTES QUÍMICOS Y LA RESISTENCIA MECÁNICA DE LA MADERA DE TRES ESPECIES DE ENCINO', 'Armando Pérez Landa, Luz Elena A. Ávila Calderón, Marco Antonio Herrera Ferreyra', 'Luz Elena A. Ávila Calderón', 'Luz Elena A. Ávila Calderón', 2, 0, 'mesas/mesa2/626-resumen.pdf', NULL, 2, '2017-08-25', NULL),
(627, 627, 1, 'Adaptación de los programas educativos del área de matemáticas de Corea del sur, Finlandia y Canadá para la enseñanza de las matemáticas en la unidad de “Funciones” de la asignatura de cálculo diferencial impartida en el C.B.T.A. No. 235', 'Celeste María Torres Esparza , Olga Leticia Robles García ,', 'Gilberto Alejandro Romero Pedraza ', 'Olga Leticia Robles García', 4, 0, 'mesas/mesa4/627-resumen.pdf', NULL, 2, '2017-08-25', NULL),
(628, 931, 1, 'REACTIVIDAD DEL GLUCÓSIDO DE 3,5,6-TRIHIDROXI-1-MENTENO-3 EN MEDIO ÁCIDO', 'Julio C. Pardo Novoa', 'Gabriela Rodríguez García, Hugo A. García-Gutiérrez, Mario A. Gómez Hurtado, Rosa E. del Río', 'Rosa Elva Norma del Río Torrres', 6, 0, 'mesas/mesa6/628-resumen.pdf', 'mesas_ext/mesa6/628-extenso.pdf', 2, '2017-08-25', NULL),
(692, 289, 1, 'BIOLIXIVIACIÓN FÚNGICA MEJORADA DE MINERALES SULFURADOS REFRACTARIOS DE ORO Y PLATA', 'Janitzi Yunuén Meza-Ramírez', 'José Luis Rico-Cerda, Gérard Ulibarri, Liliana Marquez-Benavides', 'Juan Manuel Sánchez-Yáñez', 7, 1, 'mesas/mesa7/692-resumen.pdf', 'mesas_ext/mesa7/692-extenso.pdf', 2, '2017-08-25', NULL),
(630, 1017, 1, 'METABOLITOS SECUNDARIOS DE Eupatorium aff cardiophyllum', 'Eva E. Soto Guzmán', 'Gabriela Rodríguez-García, Mario A. Gómez-Hurtado, Lidia Beiza-Granados, Hugo A. García-Gutiérrez, Rosa E. del Río', 'Rosa E. del Río', 1, 1, 'mesas/mesa1/630-resumen.pdf', 'mesas_ext/mesa1/630-extenso.pdf', 2, '2017-08-25', NULL),
(631, 1073, 1, 'BUTENÓLIDAS AISLADAS DE LAS VAINAS DE Caesalpinia platyloba', 'Teresa Pamatz Bolaños', 'Judit A. Aviña-Verduzco, Gabriela Rodríguez-Garcia, Mario A. GómezHurtado, Carlos M. Cerda-García-Rojas, Pedro Joseph-Nathan, Rosa E. del Río', 'Rosa E. del Río', 6, 0, 'mesas/mesa6/631-resumen.pdf', 'mesas_ext/mesa6/631-extenso.pdf', 2, '2017-08-25', NULL),
(632, 1074, 1, 'RELACIÓN DE LA MICROBIOTA INTESTINAL CON EL DESARROLLO DE CÁNCER DE COLON Y ESTRATEGIAS DE PREVENCIÓN', 'José Pablo López Sosa , Rafael Jiménez Mejía ', 'Rafael Jiménez Mejía ', 'Rafael Jiménez Mejía ', 5, 1, 'mesas/mesa5/632-resumen.pdf', 'mesas_ext/mesa5/632-extenso.pdf', 2, '2017-08-25', NULL),
(633, 663, 2, 'EVALUACIÓN DE 20 GENOTIPOS DE Moringa oleífera   BAJO CONDICION DE TEMPORAL EN EL VALLE DE APATZINGAN, MICHOACAN.', 'Héctor Rómulo Rico Ponce', 'Ana Laura Reyes Reyes', 'Ana Laura Reyes Reyes', 3, 0, 'mesas/mesa3/633-resumen.pdf', 'mesas_ext/mesa3/633-extenso.pdf', 2, '2017-08-25', NULL),
(634, 573, 2, 'Evaluación de la supervivencia in vitro de Dalbergia congestiflora con la aplicación de endomicorrizas.', 'Yoshira López Antonio', 'Alejandra Hernández García', 'Jorge Enrique Ambriz Parra', 3, 0, 'mesas/mesa3/634-resumen.pdf', NULL, 2, '2017-08-25', NULL),
(635, 723, 1, 'ASISTENTE PARA DEMOSTRACIONES MATEMÁTICAS:  PARTE 2, CODIFICACIÓN DE TEOREMAS.', 'Luz Vanessa Pacheco Gordillo', 'Luis Valero Elizondo', 'Karina M. Figueroa Mora', 6, 1, 'mesas/mesa6/635-resumen.pdf', 'mesas_ext/mesa6/635-extenso.pdf', 2, '2017-08-25', NULL),
(636, 479, 2, 'DESARROLLO DE UN MECANISMO TIPO MARS-VAN KREVELEN PARA LA OXIDACIÓN PARCIAL SELECTIVA DE ETANO', 'Paola Mora Briseño', 'Carlos Omar Castillo Araiza, Horacio González Rodríguez, Rafael Huirache Acuña, Gladys Jiménez García, Rafael Maya Yescas', 'Rafael Maya Yescas ', 2, 1, 'mesas/mesa2/636-resumen.pdf', NULL, 2, '2017-08-25', NULL),
(637, 1028, 2, 'Propiedades Físicas y Químicas del suelo, indicadores de su calidad', 'Biviana Sánchez Aguilar', 'Jesús Alemán Torres y Marco Antonio Martinez Cinco', 'Maria Alcalá de Jesús', 3, 0, NULL, NULL, 4, '2017-08-25', NULL),
(639, 690, 1, 'Efecto de la deleción de los sistemas antioxidantes en la viabilidad de Saccharomyces cerevisiae suplementada con resveratrol', 'Ingrid Karina Gutiérrez García y Luis Alberto Madrigal Pérez', 'Luis Alberto Madrigal Pérez', 'Luis Alberto Madrigal Pérez', 3, 1, 'mesas/mesa3/639-resumen.pdf', 'mesas_ext/mesa3/639-extenso.pdf', 2, '2017-08-25', NULL),
(641, 1028, 2, 'Propiedades físicas y químicas de los suelos, indicadoras de su calidad', 'Biviana Sanchez Aguilar', 'Jesús Alemán Torres y Marco Antonio Martinez Cinco', 'María Alcalá de Jesús', 3, 1, 'mesas/mesa3/641-resumen.pdf', NULL, 3, '2017-08-25', NULL),
(642, 733, 1, 'MODELOS DE EXTRACCIÓN DE CONOCIMIENTO DE LA WEB SEMÁNTICA', 'J Guadalupe Ramos Díaz', 'Héctor Oceguera Soto , Isela Navarro Alatorre , Guillermo Ascencio Rodríguez , Nicolás Jasso García', 'J Guadalupe Ramos Díaz', 9, 0, 'mesas/mesa9/642-resumen.pdf', 'mesas_ext/mesa9/642-extenso.pdf', 2, '2017-08-25', NULL),
(643, 1021, 1, 'REORDENAMIENTOS MOLECULARES FOTOOXIDATIVOS EN DITERPENOS DE TIPO VOUACAPANO', 'Armando Talavera-Alemán', 'Jérôme Marrot, Christine Greck, Gabriela Rodríguez-García, Mario A. Gómez-Hurtado, Christine Thomassigny, Rosa E. del Río', 'Rosa E. del Río', 6, 0, 'mesas/mesa6/643-resumen.pdf', 'mesas_ext/mesa6/643-extenso.pdf', 2, '2017-08-25', NULL),
(644, 556, 1, 'EVALUACIÓN DE LA ACTIVIDAD ENZIMÁTICA EN SISTEMAS INMOVILIZADOS DE LA ALDOSA REDUCTASA', 'Tania Méndez Pérez', 'Alberto Flores García, Mauro Manuel Martínez Pacheco, Ma. Del Carmen Chávez Parga', 'Ma. Del Carmen Chávez Parga, Mauro Manuel Martínez Pacheco', 2, 1, 'mesas/mesa2/644-resumen.pdf', 'mesas_ext/mesa2/644-extenso.pdf', 2, '2017-08-25', NULL),
(645, 994, 1, 'EFECTO DE COMPUESTOS ORGÁNICOS VOLÁTILES FÚNGICOS EN LA PROMOCIÓN DEL CRECIMIENTO EN Arabidpsis thaliana', 'Melissa Adriana Mendoza Vázquez', 'Rosa María Espinoza Madrigal, Edith Muñoz Parra', 'Mauro Manuel Martínez Pacheco, José López Bucio', 3, 1, 'mesas/mesa3/645-resumen.pdf', 'mesas_ext/mesa3/645-extenso.pdf', 2, '2017-08-25', NULL),
(646, 960, 1, 'ESTUDIOS DE MOJABILIDAD DE AZUFRE LÍQUIDO SOBRE SUPERFICIES DE PIRITA Y MAGNETITA DE 120 A 220 ºC ', 'Xitlali Delgado Martínez  ', 'Silvano Velázquez Roque', 'Gonzalo Viramontes Gamboa', 6, 1, 'mesas/mesa6/646-resumen.pdf', 'mesas_ext/mesa6/646-extenso.pdf', 2, '2017-08-25', NULL),
(647, 265, 1, 'EVALUACIÓN DE LA ACTIVIDAD CITOTÓXICA Y ANTIINFLAMATORIA DEL ACEITE ESENCIAL Y TERPENOS DE Satureja macrostema', 'Rafael Torres-Martínez', 'Alfredo Saavedra-Molina, Joel Edmundo López-Meza, Alejandra Ochoa-Zarzosa y Rafael Salgado-Garciglia', 'Rafael Salgado-Garciglia', 3, 0, 'mesas/mesa3/647-resumen.pdf', NULL, 2, '2017-08-25', NULL),
(648, 928, 1, 'DETERMINACIÓN DE TIMOL POR CROMATOGRAFÍA DE GASES Y ESPECTROMETRÍA DE MASAS PARA DETERMINAR LA CALIDAD DE ORÉGANO', 'Laura Susana Ríos Guzmán', 'Maria Valentia Angoa Perez, Guadalupe Oyoque Salcedo', 'Ernesto Oregel Zamudio', 3, 1, 'mesas/mesa3/648-resumen.pdf', 'mesas_ext/mesa3/648-extenso.pdf', 2, '2017-08-25', NULL),
(649, 1079, 1, 'DECOLORACIÓN DE COLORANTES TEXTILES POR Bjerkandera adusta', 'Rosenda Aguilar Aguilar, David Guzman Hernandez', 'Rosenda Aguilar Aguilar, David Guzman Hernandez', 'Rosenda Aguilar Aguilar', 7, 1, 'mesas/mesa7/649-resumen.pdf', 'mesas_ext/mesa7/649-extenso.pdf', 2, '2017-08-25', NULL),
(652, 871, 1, 'DETERMINACIÓN DEL COLOR DEL FRUTO DE FRESA RECUBIERTA CON POLISACÁRIDOS', 'Alistair Hernández Izquierdo', 'Rosa María Espinoza Madrigal , Ma. Carmen Chávez Praga, Alberto Flores García', 'Mauro Manuel Martínez Pacheco', 3, 1, 'mesas/mesa3/652-resumen.pdf', 'mesas_ext/mesa3/652-extenso.pdf', 2, '2017-08-25', NULL),
(653, 964, 1, 'EXTRACCIÓN DE FLUNIXIN PARA ESTUDIOS DE REACTIVIDAD FRENTE A METALES DE TRANSICIÓN', 'José A. Ferreira-Sereno', 'David Morales-Morales, J. Pablo García-Merinos, Rosa E. del Río, Mario A. Gómez-Hurtado, Gabriela Rodríguez-García', 'Gabriela Rodríguez-García', 6, 1, 'mesas/mesa6/653-resumen.pdf', 'mesas_ext/mesa6/653-extenso.pdf', 2, '2017-08-25', NULL),
(651, 635, 1, 'Detección de regiones polimórficas en el genoma de cloroplasto para Salvia subgénero Calosphace; representantes de las secciones. Scorodoniae, Uricae y especies afines.', 'Edgar Ismael Olvera Mendoza , Sabina I. Lara Cabrera , J. Mark Porter ', 'Sabina I. Lara Cabrera , J. Mark Porter ', 'Sabina I. Lara Cabrera', 1, 1, 'mesas/mesa1/651-resumen.pdf', NULL, 2, '2017-08-25', NULL),
(654, 1069, 2, 'Optimización del proceso de hidrólisis de hemicelulosas de olote de maíz', 'Omar Jorge Trujillo Anguiano', ',', 'Mariana Álvarez Navarrete, Dora Cecilia Valencia Flores, Miguel Ángel Zamudio Jaramillo', 3, 1, 'mesas/mesa3/654-resumen.pdf', 'mesas_ext/mesa3/654-extenso.pdf', 2, '2017-08-25', NULL),
(655, 971, 1, 'INCORPORACIÓN DE ESPECIES NITROGENADAS A UN EREMOFILANO DE Psacallium peltatum', 'Jessica Estefania Vidal Ayala', 'Lidia Beiza-Granados , Noemí Andrade-López , José G. Alvarado-Rodríguez, Rosa E. del Río, Mario A. Gómez Hurtado, Gabriela Rodríguez García', 'Gabriela Rodríguez García', 6, 1, 'mesas/mesa6/655-resumen.pdf', 'mesas_ext/mesa6/655-extenso.pdf', 2, '2017-08-25', NULL),
(656, 124, 1, 'EFECTOS LOS PEPTIDOS PaDef Y γ- TIONINA SOBRE LA RESPUESTA INMUNE INNATA DE CACO-2', 'Israel E. Aguilar Anaya ', 'Joel E. López Meza', 'Alejandra Ochoa Zarzosa', 3, 1, 'mesas/mesa3/656-resumen.pdf', 'mesas_ext/mesa3/656-extenso.pdf', 2, '2017-08-25', NULL),
(657, 548, 1, 'EVALUACIÓN DE UN SISTEMA DE DESTILACIÓN CON VAPOR DE AGUA PARA OBTENER MANOOL A PARTIR DE ENTEROLOBIUM CYCLOCARPUM (JACQ.) GRISEB.', 'Luis Enrique Montes Vega', 'Alberto Flores García, Rosa E. Norma del Río, David Raya González, Mauro M. Martínez Pacheco', 'Mauro M. Martínez Pacheco ', 2, 1, 'mesas/mesa2/657-resumen.pdf', 'mesas_ext/mesa2/657-extenso.pdf', 2, '2017-08-25', NULL),
(658, 549, 1, 'Efecto antifúngico de Artemisia ludoviciana en hongos que causan pudrición pedundular en aguacate', 'Rosa María Espinoza Madrigal  ', 'Alberto Flores García , Rosa E. del Rio , Mauro Manuel Martínez Pacheco', 'Mauro Manuel Martínez Pacheco', 3, 0, 'mesas/mesa3/658-resumen.pdf', 'mesas_ext/mesa3/658-extenso.pdf', 2, '2017-08-25', NULL),
(659, 420, 1, 'EFECTO DE LOS  NANOTUBOS DE CARBONO DE ORIGEN NATURAL Y SINTÉTICOS SOBRE  EL DESARROLLO DE ARABIDOPSIS THALIANA', 'Gladys Juárez Cisneros', 'Javier Villegas Moreno, Jesús Campos  García', 'Javier Villegas Moreno', 3, 1, 'mesas/mesa3/659-resumen.pdf', NULL, 3, '2017-08-25', NULL),
(660, 1072, 1, 'EVALUACIÓN DE LOS EFECTOS DEL USO DE PAÑALES CON ORINA PARCIALMENTE DEGRADADOS POR Trichoderma spp COMO ADITIVO AGRÍCOLA PARA LA RETENCIÓN DE HUMEDAD EN CULTIVOS DE Stevia rebaudiana bertoni', 'Jesica Argüello Ramírez', 'Alejandro Romero Bautista , Juan Carlos Hernández González, Arturo Rangel Gonce,', 'Teresa Itandehui Garambullo Peña ', 3, 1, 'mesas/mesa3/660-resumen.pdf', 'mesas_ext/mesa3/660-extenso.pdf', 2, '2017-08-25', NULL),
(661, 892, 1, 'FABRICACIÓN DE UN ÁLABE PARA UN AEROGENERADOR DE 2KW', 'Jesús Cirilo Trujillo Jiménez ', 'Juan José Piña Castillo, Renato González Bernal, Miriam Vázquez Padilla', 'Jesús Cirilo Trujillo Jiménez', 2, 1, 'mesas/mesa2/661-resumen.pdf', 'mesas_ext/mesa2/661-extenso.pdf', 2, '2017-08-25', NULL),
(912, 656, 1, 'MODOS ELECTROMAGNÉTICOS EN GUÍAS DE ONDAS CON PERFILES CIRCULAR Y ELÍPTICO', 'Hugo Enrique Alva Medrano, Claudia Guillén Gallegos', 'Alberto Mendoza Suárez, Héctor Pérez Aguilar', 'Alberto Mendoza SuárezS', 6, 0, 'mesas/mesa6/912-resumen.pdf', 'mesas_ext/mesa6/912-extenso.pdf', 2, '2017-08-14', NULL),
(911, 406, 1, 'ANLISIS DE LA COMUNIDAD DE MEDUSAS EN LA PRIMAVERA DE 2012', 'ELIAS VILLANUEVA BOYSO', 'Edgar Gamero Mora', 'José Gerardo Alejandro Ceballos Corona', 1, 0, 'mesas/mesa1/206-resumen.pdf', 'mesas_ext/mesa1/911-extenso.pdf', 2, '2017-07-04', NULL),
(664, 1044, 1, 'BIOSINTESIS DE ACEITES ESENCIALES EN ALGUNOS AISLADOS FÚNGICOS SILVESTRES', 'Normando Elizondo Ortiz', 'Mauro M. Martínez Pacheco , Alberto Flores García , Asdrubal Aguilera Méndez , Rosa Ma. Espinoza Madrigal', 'Rosa Ma. Espinoza Madrigal', 3, 0, 'mesas/mesa3/664-resumen.pdf', NULL, 2, '2017-08-25', NULL),
(665, 1077, 1, 'ANÁLISIS, DIMENSIONAMIENTO Y DISEÑO PARA LA CONSTRUCCIÓN DE UN SISTEMA DE VIVIENDA ECOLÓGICA CON EL USO DE ARQUITECTURA BIOCLIMÁTICA', 'Areli Custodio Hernández, Luis Bernardo López Sosa', 'Abraham Custodio Lucas, Bernardina Alejo Justo', 'Luis Bernardo López Sosa', 7, 1, 'mesas/mesa7/665-resumen.pdf', 'mesas_ext/mesa7/665-extenso.pdf', 2, '2017-08-25', NULL),
(666, 1086, 1, 'OBTENCIÓN DE NANOPARTÍCULAS DE QUITOSANA CARGADAS CON TIABENDAZOL', 'Adalid Abarca Marcelo', 'Rosa E. del Rio , Mauro Manuel Martínez Pacheco , Rosa María Espinoza Madrigal ', 'Rosa María Espinoza Madrigal ', 3, 0, 'mesas/mesa3/666-resumen.pdf', 'mesas_ext/mesa3/666-extenso.pdf', 2, '2017-08-25', NULL),
(667, 534, 1, 'SOLUCIÓN ASINTÓTICA DE PROBLEMAS DISPERSIVOS Y DISIPATIVOS EN INTERVALO', 'Isahi Sánchez Suárez', 'Gerardo Loreto Gómez y Marcela Morales Morfín', 'Dr. Isahi Sánchez Suárez', 6, 1, 'mesas/mesa6/667-resumen.pdf', 'mesas_ext/mesa6/667-extenso.pdf', 2, '2017-08-25', NULL),
(668, 959, 1, 'METABOLITOS OBTENIDOS DE UNA VARIEDAD DE BURSERA FAGAROIDES COMPARADA CON LOS OBTENIDOS DE B. APTERA.', 'Cinthia Itzel Landa Moreno', 'D.C. Luisa Urania Román Marín ', 'D.C. Juan Diego Hernández Hernández ', 6, 1, 'mesas/mesa6/668-resumen.pdf', 'mesas_ext/mesa6/668-extenso.pdf', 2, '2017-08-25', NULL),
(669, 967, 1, 'METABOLITOS  HIDROXI ó CARBOXI-TERPENOIDES OBTENIDOS DE EXTRACTOS HEXÁNICOS DE Burseraceae SOMETIDOS A ESTERIFICACIÓN                 ', 'Maria Jannet Tene Rodrìguez ', 'D. C. Luisa Urania Romàn Marìn ', 'D. C. Juan Diego Hernàndez Hernàndez ', 1, 1, 'mesas/mesa1/669-resumen.pdf', 'mesas_ext/mesa1/669-extenso.pdf', 2, '2017-08-25', NULL),
(670, 534, 1, 'DISEÑO DE UNA RED NEURONAL PARA CLASIFICACIÓN DE IMÁGENES MULTIESPECTRALES DE UN CULTIVO DE AGUACATE', 'Isahi Sánchez Suárez', 'Roberto Loaeza Valerio, Jesús Fernando Padilla Magaña', 'Dr. Isahi Sánchez Suárez', 2, 1, 'mesas/mesa2/670-resumen.pdf', 'mesas_ext/mesa2/670-extenso.pdf', 2, '2017-08-25', NULL),
(671, 765, 2, 'Velocidad de crecimiento de 2 cepas fitopatógenas de Alternaría spp.', 'Alicia Perez Vieyra y Maria Bermúdez Cazares ', 'Nuria Gómez Dorantes ', 'Nuria Gómez Dorantes ', 3, 1, 'mesas/mesa3/671-resumen.pdf', NULL, 3, '2017-08-25', NULL),
(673, 1071, 2, 'ENSAYO DE CAMPO DE MADERA DE ENCINO TRATADA CON AZOLES DE COBRE', 'Yesenia Banda Cervantes , Luz Elena A. Ávila Calderón , Francisco Javier Castro Sánchez', 'Luz Elena A. Ávila Calderón', 'Luz Elena A. Ávila Calderón', 2, 0, 'mesas/mesa2/673-resumen.pdf', NULL, 2, '2017-08-25', NULL),
(674, 1071, 2, 'EFICACIA DEL TRATAMIENTO DE IMPREGNACIÓN DE MADERA DE Pinus sp. CON AZOLES DE COBRE', 'Luz Elena A. Ávila Calderón', ' Roberto Tinoco Rocha,  David Raya González ', 'Luz Elena A. Ávila Calderón', 2, 0, 'mesas/mesa2/674-resumen.pdf', 'mesas_ext/mesa2/674-extenso.pdf', 2, '2017-08-25', NULL),
(919, 753, 2, 'Efecto de la temperatura de deshidratación en los compuestos bioactivos de la fresa (Fragaria  x ananassa) de la variedad camino real.', 'Sergio Andres Ochoa Casillas ', ' Ma. Guadalupe Sánchez Saavedra y Miriam Arroyo Damián ', ' Ma. Guadalupe Sánchez Saavedra', 3, 0, 'mesas/mesa3/919-resumen.pdf', 'mesas_ext/mesa3/919-extenso.pdf', 2, '2017-08-18', NULL),
(676, 955, 1, 'METABOLITOS OBTENIDOS DEL EXTRACTO HEXÁNICO   DE LOS TALLOS DE LA Bursera fagaroides var. elongata', 'Andrea García Pérez', 'D. C. Luisa Urania Román Marín ', 'D.C. Juan Diego Hernández Hernández', 6, 1, 'mesas/mesa6/676-resumen.pdf', 'mesas_ext/mesa6/676-extenso.pdf', 2, '2017-08-25', NULL),
(677, 998, 2, 'Impacto de las fuentes puntuales y difusas en la concentración de nutrientes del Río Cupatitzio Michoacán', 'Adriana Ochoa Ochoa, Miriam Arroyo Damián , Carlos Escalera Gallardo ', 'Adriana Ochoa Ochoa, Miriam Arroyo Damián , Carlos Escalera Gallardo ', 'Miriam Arroyo Damián , Carlos Escalera Gallardo ', 7, 0, 'mesas/mesa7/677-resumen.pdf', 'mesas_ext/mesa7/677-extenso.pdf', 2, '2017-08-25', NULL),
(678, 952, 1, 'PARTICIPACIÓN DE UNA VÍA DE SEÑALIZACIÓN DEPENDIENTE DE AMINOÁCIDOS Y DE LAS PROTEÍNAS GLR3.3 Y MPK6 EN LA REGULACIÓN DEL CRECIMIENTO DE LA RAÍZ DE Arabidopsis thaliana', 'Gustavo Ravelo Ortega', 'León F. Ruiz Herrera, Jesús Salvador López Bucio, Arturo Guevara García', 'José López Bucio', 3, 0, 'mesas/mesa3/678-resumen.pdf', NULL, 2, '2017-08-25', NULL),
(679, 692, 1, 'ReforzaTEC: Aplicación móvil para el reforzamiento educativo en instituciones de nivel superior', 'Irma Gutiérrez Miranda , Roberto Loaeza Valerio', 'Joel Loaeza Valerio, Gabriel Mancera Huante', 'Roberto Loaeza Valerio', 9, 1, 'mesas/mesa9/679-resumen.pdf', 'mesas_ext/mesa9/679-extenso.pdf', 2, '2017-08-25', NULL),
(680, 665, 2, 'DETECCIÓN DE HONGOS PATÓGENOS DE PLANTAS AROMÁTICAS', 'Maria Bermudez Cazares', ' Alicia Pérez Vieyra y  Nuria Gómez Dorantes', 'Nuria Gómez Dorantes', 3, 1, 'mesas/mesa3/680-resumen.pdf', NULL, 3, '2017-08-25', NULL),
(681, 1098, 1, 'EFECTO DE ANTIOXIDANTES Y SOLVENTES EN EL TIEMPO DE REPOSO DURANTE LA FASE DE PREPARACIÓN DE OLEORRESINA DE PINO PARA SU DESTILACIÓN.', 'Richard Clarck Martínez Olvera', 'Abril Munro Rojas', 'Abril Munro Rojas', 10, 0, 'mesas/mesa10/681-resumen.pdf', NULL, 3, '2017-08-25', NULL),
(682, 776, 2, 'Calidad del dormir relacionado con el impacto diurno en estudiantes de licenciatura en enfermería', 'Lorena Carrillo Campa', 'Abelardo Hernández Hernández, Guadalupe Aguirre Basilio, Ma. De Jesús Ruiz Reséndiz y Mayra Itzel Huerta Baltazar', 'Ma. Lilia Alicia Alcántar Zavala', 5, 1, 'mesas/mesa5/682-resumen.pdf', 'mesas_ext/mesa5/682-extenso.pdf', 2, '2017-08-25', NULL),
(683, 914, 1, 'REMOCIÓN DE COLORANTES TEXTILES CON HONGOS DE PODREDUMBRE BLANCA', ' Diego Ortiz Corza y Anna Elizabeth Rodas Guzmán ', 'Anna Elizabeth Rodas Guzmán y  Diego Ortiz Corza', 'Mariana Alvarez Navarrete', 3, 1, 'mesas/mesa3/683-resumen.pdf', 'mesas_ext/mesa3/683-extenso.pdf', 2, '2017-08-25', NULL),
(684, 943, 1, 'REMOCIÓN DE COLORANTES TEXTILES CON HONGOS DE PODREDUMBRE BLANCA', 'Anna Elizabeth Rodas Guzmán y Diego Ortiz Corza', 'Anna Elizabeth Rodas Guzmán y  Diego Ortiz Corza', 'Mariana Alvarez Navarrete', 3, 1, 'mesas/mesa3/684-resumen.pdf', NULL, 2, '2017-08-25', NULL),
(685, 689, 1, 'Aplicación Android para el aprendizaje electrónico móvil incluyente takiTEC', 'Joel Loaeza Valerio', 'Roberto Loaeza Valerio, Irma Gutiérrez Miranda', 'Joel Loaeza Valerio', 9, 1, 'mesas/mesa9/685-resumen.pdf', 'mesas_ext/mesa9/685-extenso.pdf', 2, '2017-08-25', NULL),
(686, 769, 2, 'Insomnio relacionado con el rendimiento académico  en estudiantes de enfermería', 'Abelardo Hernández Hernández', 'Lorena Carrillo Campa, Maria Elena Morales Lopez, Ma. De Jesús Ruiz Reséndiz y Mayra Itzel Huerta Baltazar', 'Ma. Lilia Alicia Alcántar Zavala', 5, 1, 'mesas/mesa5/686-resumen.pdf', 'mesas_ext/mesa5/686-extenso.pdf', 2, '2017-08-25', NULL),
(687, 957, 1, 'CARACTERIZACIÓN DE LOS METABOLITOS DEL EXTRACTO HEXÁNICO DE TALLOS DE Bursera attenuata.                                                     ', 'Ninfa Maldonado Maldonado', 'D.C. Luisa Urania Roman Marín', 'D.C. Juan Diego Hernández Hernández', 6, 1, 'mesas/mesa6/687-resumen.pdf', 'mesas_ext/mesa6/687-extenso.pdf', 2, '2017-08-25', NULL),
(825, 1225, 2, 'VERMICOMPOSTA Y RETENCIÓN DE HUMEDAD EN EL DESARROLLO DE PLANTAS DE MAÍZ (Zea mayz).', 'JULIA INOCENCIA CORTÉS SERENO', 'MAGDALENA GONZÁLEZ ALEJANDRE, JUAN CARLOS GONZÁLEZ CORTES, MARÍA ELENA GRANADOS GARCÍA', 'JUAN CARLOS GONZÁLEZ CORTÉS', 3, 1, 'mesas/mesa3/825-resumen.pdf', NULL, 3, '2017-09-04', NULL),
(689, 1096, 1, 'FORMULACIONES ADHESIVAS FENOL-FORMALDEHIDO A PARTIR DE LIGNINA KRAFT Y ACETOSOLV ', 'Adelaida López Gómez', 'Abril Munro Rojas', 'Pablo López Albarrán', 2, 1, 'mesas/mesa2/689-resumen.pdf', 'mesas_ext/mesa2/689-extenso.pdf', 2, '2017-08-25', NULL),
(691, 706, 1, 'PERMEABILIDAD EN MEDIOS POROSOS', 'Juan Miguel Monzón Moreno , Leopoldo Ayala Jiménez, Alicia Aguilar Corona, ', 'Gonzalo Viramontes Gamboa4, Jesús Armando Vargas Correa5', 'ALICIA AGUILAR CORONA', 2, 1, 'mesas/mesa2/691-resumen.pdf', 'mesas_ext/mesa2/691-extenso.pdf', 2, '2017-08-25', NULL),
(693, 1055, 1, 'Obtención de xilitol a partir de hemicelulosas de olote de maíz', 'María Fernanda Muñoz Sánchez , ', '.', 'Yadira Belmonte Izquierdo, Dora Cecilia Valencia Flores, Miguel Angel Zamudio Jaramillo, Mariana Alvarez Navarrete', 3, 1, 'mesas/mesa3/693-resumen.pdf', 'mesas_ext/mesa3/693-extenso.pdf', 2, '2017-08-25', NULL),
(694, 214, 1, 'AISLAMIENTO DE GLUCONACETOBACTER DIAZOTROPHICUS Y BURKHOLDERIA VIETNAMIENSIS A PARTIR DE STENOCEREUS QUERETAROENSIS E INOCULACIÓN EN ZEA MAYS A DOSIS 50% DE FERTILIZANTE NITROGENADO', 'Guidier Marto-Dominguez1', 'Vanessa Ruby García-Ortiz, Janitzi Yunuén Meza-Ramírez, Zoila torres-Valencia, Diana Cecilia Maya Cortés y Juan Manuel Sánchez-Yáñez', 'Juan Manuel Sánchez-Yáñez', 9, 1, 'mesas/mesa9/694-resumen.pdf', 'mesas_ext/mesa9/694-extenso.pdf', 2, '2017-08-25', NULL),
(695, 706, 1, 'ESTUDIO DEL COMPORTAMIENTO DE AIRE DENTRO DE UN OSCILADOR FLUÍDICO.', ' José Alfredo Arcos Montejo, Sixtos Arreola Villa, Alicia Aguilar Corona, .', 'Gildardo Solorio Díaz', 'ALICIA AGUILAR CORONA', 2, 1, 'mesas/mesa2/695-resumen.pdf', 'mesas_ext/mesa2/695-extenso.pdf', 2, '2017-08-25', NULL),
(696, 405, 1, 'Conversión de lignina residual de paja de trigo por Aspergillus fumigatus en sustancias promotoras de crecimiento vegetal por Azotobacter beijerinckii y Micromonospora echinospora', 'Zoila Torres-Valencia', 'Guidier Marto-Domínguez, Meza-Ramírez Janitzi Yunuén, Juan Manuel Sánchez-Yáñez', 'Juan Manuel Sánchez-Yáñez', 9, 1, 'mesas/mesa9/696-resumen.pdf', 'mesas_ext/mesa9/696-extenso.pdf', 2, '2017-08-25', NULL),
(697, 608, 1, 'ADICIÓN DE GEOMATERIALES PARA EVALUAR EL DESEMPEÑO FÍSICO-MECÁNICO EN CERÁMICOS BASE C. PORTLAND ', 'Víctor Manuel Báez Ángel', 'Sandra Arguello Hernández, Wilfrido Martínez Molina, Hugo Luis Chávez García', 'Elia Mercedes Alonso Guzmán', 7, 1, 'mesas/mesa7/697-resumen.pdf', 'mesas_ext/mesa7/697-extenso.pdf', 2, '2017-08-25', NULL),
(698, 902, 1, 'LA SUSTENTABILIDAD DE LAS UNIDADES DE PRODUCCIÓN OVINA DE LA ZONA DE MAYOR IMPORTANCIA OVINOCULTORA EN MICHOACÁN ', 'María Guadalupe Josefina Nuncio Ochoa  ', 'Gerardo Santana Huicochea, Encarnación Ernesto Bobadilla Soto, José Nahed Toral José y Carlos Manuel Arriaga Jordán ', 'Carlos Manuel Arriaga Jordán ', 3, 0, 'mesas/mesa3/698-resumen.pdf', 'mesas_ext/mesa3/698-extenso.pdf', 2, '2017-08-25', NULL),
(783, 985, 2, 'CARACTERIZACIÓN DE SUELOS AGRÍCOLAS ', 'Juan Luis Mora Rosas, María Alcalá De Jesús', 'María Salud Rosas Murillo,  Juan Carlos González Cortés', 'María Alcalá De Jesús', 3, 1, 'mesas/mesa3/783-resumen.pdf', NULL, 3, '2017-08-25', NULL),
(709, 1068, 1, 'ANÁLISIS DE LA MAGNITUD Y DISTRIBUCIÓN DE LAS FUERZAS DINÁMICAS DENTRO DE UN REDUCTOR CICLOIDAL', 'José Alejandro Chávez Cortés', 'Juan Felipe Soriano Peña, Víctor López Garza , Luis Alberto Valencia Garay, Miguel Ángel Vega González , Miguel Villagómez Galindo', 'Juan Felipe Soriano Peña', 2, 1, 'mesas/mesa2/709-resumen.pdf', 'mesas_ext/mesa2/709-extenso.pdf', 2, '2017-08-25', NULL),
(700, 1076, 1, 'Participación de las MAP cinasas en el desarrollo de Arabidopsis thaliana ante la deficiencia de fosfato y la homeostasis de hierro', 'Jesús Salvador López-Bucio', 'Homero Reyes de la Cruz, Guadalupe Jessica Salmerón-Barrera, Gustavo Ravelo-Ortega, Javier Raya-González, José López-Bucio, Ángel Arturo Guevara-García', 'Jesús Salvador López-Bucio', 3, 1, 'mesas/mesa3/700-resumen.pdf', NULL, 3, '2017-08-25', NULL),
(701, 902, 1, 'LA SUSTENTABILIDAD DE LAS UNIDADES DE PRODUCCIÓN OVINA DE LA ZONA DE MAYOR IMPORTANCIA OVINOCULTORA EN MICHOACÁN ', 'María Guadalupe Josefina Nuncio Ochoa,  Gerardo Santana Huicochea, Encarnación Ernesto Bobadilla Soto, José Nahed Toral José y Carlos Manuel Arriaga Jordán ', 'Gerardo Santana Huicochea, Encarnación Ernesto Bobadilla Soto, José Nahed Toral José y Carlos Manuel Arriaga Jordán ', 'Carlos Manuel Arriaga Jordán ', 3, 0, 'mesas/mesa3/701-resumen.pdf', NULL, 2, '2017-08-25', NULL),
(702, 706, 1, 'LECHO GRANULAR ÓPTICAMENTE HOMOGÉNEO', 'Raúl Méndez Gordillo, Alicia Aguilar Corona', ' Lorenzo Peregrino Moreno, Jesús A. Vargas Correa', 'ALICIA AGUILAR CORONA', 2, 0, 'mesas/mesa2/702-resumen.pdf', 'mesas_ext/mesa2/702-extenso.pdf', 2, '2017-08-25', NULL),
(703, 787, 1, 'Modelado del Control de Humedad de Suelo para Agricultura Mediante el Nivel Liquido en Tanques Cerrados', 'Omar Núñez Anguiano', 'Juvenal Rodríguez Reséndiz', 'Zapien Rodriguez Jose Manuel', 2, 0, 'mesas/mesa2/703-resumen.pdf', 'mesas_ext/mesa2/703-extenso.pdf', 2, '2017-08-25', NULL),
(704, 958, 1, 'METABOLITOS EXTRAÍDOS DE TALLOS DE BURSERA SCHLECHTENDALII , BURSERACEAE AMPLIAMENTE DISTRIBUÍDA EN MÉXICO', 'María Guadalupe Alcántar Orozco', 'D.C. Luisa Urania Román Marín', 'D.C. Juan Diego Hernández Hernández', 6, 1, 'mesas/mesa6/704-resumen.pdf', 'mesas_ext/mesa6/704-extenso.pdf', 2, '2017-08-25', NULL),
(705, 787, 1, 'Modulo de Enlace a Red', 'Erick Juárez Machuca , Laura Lara Sánchez, Omar Núñez Anguiano, José Zapien Rodríguez', 'Laura Lara Sánchez, Omar Núñez Anguiano, ', 'José Zapien Rodríguez', 2, 0, 'mesas/mesa2/705-resumen.pdf', 'mesas_ext/mesa2/705-extenso.pdf', 2, '2017-08-25', NULL),
(706, 706, 1, 'MEDICIÓN DE TENSIÓN INTERFACIAL UTILIZANDO TRATAMIENTO DE IMÁGENES', 'César Ernesto Albores Navarrete, Aldo Hernán Cortés Estrada, Alicia Aguilar Corona', 'Laura Alicia Ibarra Bracamontes', 'ALICIA AGUILAR CORONA', 2, 0, 'mesas/mesa2/706-resumen.pdf', 'mesas_ext/mesa2/706-extenso.pdf', 2, '2017-08-25', NULL),
(707, 787, 1, 'DRAWBOT', 'Mayra Chávez Rosales , Cristopher Gómez Gómez, Jaquelin Ramírez Rosas, José Zapien Rodríguez', 'Cristopher Gómez Gómez1, Jaquelin Ramírez Rosas', 'José Zapien Rodríguez', 2, 0, 'mesas/mesa2/707-resumen.pdf', 'mesas_ext/mesa2/707-extenso.pdf', 2, '2017-08-25', NULL),
(712, 1107, 1, 'CUANTIFICACIONES DE VOLUMEN UTILIZANDO SOLIDOS DE REVOLUCIÓN EN LA ETAPA DE DESARROLLO Y MADURACIÓN DE FRUTO DE JITOMATE HIBRIDO POR  TRATAMIENTOS', 'M. C Salvador Lucas Huacúz1, M.C. Francisco Javier Jara García2, Gerardo Soria Silva3', 'Gerardo Soria Silva', 'M. CSalvador Lucas Huacuz', 6, 1, 'mesas/mesa6/712-resumen.pdf', 'mesas_ext/mesa6/712-extenso.pdf', 2, '2017-08-25', NULL),
(713, 1107, 1, 'IMPLEMENTACION DE LA TÉCNICA DE MUESTREO AL AZAR, PARA LA ESTIMACIÓN DE CRECIMIENTO EN CONDICIONES DE ACLIMATACION DE LA MORINGA EN EL ITVM', 'M. C. SALVADOR LUCAS HUACÚZ, DR. ANTONIO PANIAGUA CORNEJO', 'Cristina Velasco Sanchez', 'M. C Salvador Lucas Huacuz', 6, 1, 'mesas/mesa6/713-resumen.pdf', 'mesas_ext/mesa6/713-extenso.pdf', 2, '2017-08-25', NULL),
(714, 606, 1, 'DETERMINACIÓN DE LA AFECTACIÓN CATALÍTICA DE LAS ENZIMAS DE LA VÍA DE LOS POLIOLES DEL CRISTALINO DE CONEJO POR UNA FRACCIÓN ENRIQUECIDA CON MANOOL Y SUS DERIVADOS OBTENIDA DE ENTEROLOBIUM CYCLOCARPUM JACQ. GRISEB.', 'David Adrian Hernández Guerrero', 'Mauro Manuel Martínez Pacheco , Rosa E. del Río , Alberto Flores García , Tania Méndez Pérez , Luis Enrique Montes Vega ', 'Mauro Manuel Martínez Pacheco', 2, 1, 'mesas/mesa2/714-resumen.pdf', 'mesas_ext/mesa2/714-extenso.pdf', 2, '2017-08-25', NULL),
(782, 918, 1, 'ELUCIDACIÓN ESTRUCTURAL DE UN DERIVADO DE TIMOL DE Ageratina glabrata', 'Héctor M. Arreaga-González ', 'Sinuhé Galván-Gómez, Gabriela Rodríguez-García, Juan D. Hernández-Hernández, Lidia Beiza-Granados, Rosa E. del Río, Mario A. Gómez-Hurtado', 'Mario A. Gómez Hurtado', 6, 1, 'mesas/mesa6/782-resumen.pdf', 'mesas_ext/mesa6/782-extenso.pdf', 2, '2017-08-25', NULL),
(718, 735, 1, 'Regulación del metabolismo del carbono en Arabidopsis thaliana por los compuestos orgánicos volátiles de Trichoderma atroviride ', 'Esparza Reynoso Saraí', 'Garnica Vergara Amira, Ruíz Herrera León Francisco, Herrera Estrella Alfredo, Macías Rodríguez Lourdes, Sánchez Nieto Sobeida, López Bucio José', 'López Bucio José', 3, 1, 'mesas/mesa3/718-resumen.pdf', NULL, 3, '2017-08-25', NULL),
(719, 688, 1, '“Efecto de la concentración de peptona de caseína y resveratrol en la viabilidad celular de Saccharomyces cerevisiae”', 'Maria del Carmen Zamudio Landeros y Luis Alberto Madrigal Pérez ', 'Maria del Carmen Zamudio Landeros y Luis Alberto Madrigal Pérez ', 'Luis Alberto Madrigal Pérez ', 3, 1, 'mesas/mesa3/719-resumen.pdf', 'mesas_ext/mesa3/719-extenso.pdf', 2, '2017-08-25', NULL),
(720, 759, 1, 'Análisis de Ciclo de Vida de la Planta de Tratamiento de Aguas Residuales de la ENES, Campus Morelia', 'Roxanna Pamela Ramírez López', 'Joel Bonales Revuelta, Karla Guzmán Fernández', 'Carlos Alberto García Bustamante', 7, 1, 'mesas/mesa7/720-resumen.pdf', 'mesas_ext/mesa7/720-extenso.pdf', 2, '2017-08-25', NULL),
(721, 821, 2, 'FORMULACIÓN DE ANTIHIPERTENSIVO A BASE DE JAMAICA Y ESPINO BLANCO', 'Gerardo Lucatero Núñez , Alejandra E. Alvarez Farfán', 'ninguno', 'Flora M. Cabrera Matías ', 5, 1, 'mesas/mesa5/721-resumen.pdf', NULL, 2, '2017-08-25', NULL),
(722, 413, 1, 'Reflexiones sobre el devenir de la educación media en México: hacia una dialéctica de lo global a lo local', 'José Delfino Soto Buenaventura', 'Ruben de la Cruz Martínez', 'Alfredo Nava Sánchez', 4, 0, 'mesas/mesa4/722-resumen.pdf', 'mesas_ext/mesa4/722-extenso.pdf', 2, '2017-08-25', NULL),
(908, 1342, 1, 'DISEÑO DE HERRAMENTALES Y DADOS PARA PARTES OBTENIDAS POR METALURGIA DE POLVOS', 'Daniel Villamar Reyes, José Jorge Tena Martínez, ', 'Rafael Silva Cervantes, José Nicolás Ponciano Guzmán', 'Daniel Villamar Reyes, José Jorge Tena Martínez,', 2, 1, 'mesas/mesa2/908-resumen.pdf', NULL, 2, '2017-09-08', NULL),
(724, 117, 1, 'FABRICACIÓN Y CARACTERIZACIÓN DE UN MATERIAL COMPUESTO FABRICADO POR FUNDICIÓN CON AGITACIÓN', 'Carlos Arreola Fernández , José Egberto Bedolla Becerril ', 'Víctor Hugo López Morelos', 'José Egberto Bedolla Becerril', 1, 0, NULL, NULL, 3, '2017-08-25', NULL),
(725, 896, 1, 'ANÁLISIS DE LA INVERSIÓN COMPETITIVA EN EMPRESAS PRODUCTORAS DE Rubus fruticosus FRENTE AL CAMBIO CLIMÁTICO CON “FUZZY-logic\"', 'Luis M. Miranda-Leyva ', 'Lucia M.  Nava-Barrios, Rubén Chávez-Rivera, Rafael Ortiz-Alvarado', 'RAFAEL ORTIZ ALVARADO', 7, 1, 'mesas/mesa7/725-resumen.pdf', 'mesas_ext/mesa7/725-extenso.pdf', 2, '2017-08-25', NULL),
(726, 1111, 1, 'TRITERPENOS DE INTERÉS BIOLÓGICO AISLADOS DE EXTRACTOS DE Perymenium buphthalmoides ', 'Ana Karen VillagómezGuzmán', 'Luis D. Herrera-Sanabria,  J. Betzabe González-Campos, Yliana López-Castro, Rosa E. del Río, Gabriela Rodríguez-García, Mario A. Gómez-Hurtado', 'Mario Armando Gómez Hurtado', 6, 1, 'mesas/mesa6/726-resumen.pdf', 'mesas_ext/mesa6/726-extenso.pdf', 2, '2017-08-25', NULL),
(727, 117, 1, 'FABRICACIÓN Y CARACTERIZACIÓN DE UN MATERIAL COMPUESTO FABRICADO POR FUNDICIÓN CON AGITACIÓN', 'Carlos Arreola Fernández , José Egberto Bedolla Becerril ', 'Sergio Alberto Ramírez Sandoval', 'José Egberto Bedolla Becerril', 1, 0, 'mesas/mesa1/727-resumen.pdf', NULL, 3, '2017-08-25', NULL),
(744, 1105, 1, 'OXIDACIÓN DEL 7,8-ACETÓNIDO DEL 2,2’- DICLORO DE LA LONGIPINANTRIOLONA CON CONDICIONES DE SARETT.', 'Cintyha Guadalupe Pérez Tirado', 'Juan Diego Hernández Hernández ', 'Luisa Urania Román Marín', 6, 0, 'mesas/mesa6/744-resumen.pdf', 'mesas_ext/mesa6/744-extenso.pdf', 2, '2017-08-25', NULL),
(745, 1062, 1, 'CARACTERIZACIÓN DE UN PRODUCTO DE REARREGLO DEL 7,8-DIACETATO DEL 2,2´-DICLORO DE LA LONGIPINANTRIOLONA CON ETERATO DE TRIFLUORURO DE BORO.', 'Doris Berenice Sánchez Prieto', 'Juan Diego Hernández Hernández, Luisa Urania Román Marín', 'Juan Diego Hernández Hernández', 6, 1, 'mesas/mesa6/745-resumen.pdf', 'mesas_ext/mesa6/745-extenso.pdf', 2, '2017-08-25', NULL),
(729, 730, 1, 'Las interacciones planta-planta influyen en el desarrollo, productividad y arquitectura del sistema radicular de Arabidopsis a través de la vía auxínica y la señalización PFT1/MED25', 'Edith Muñoz Parra', 'Ramón Pelagio-Flores, Javier Raya-González, Guadalupe Salmerón-Barrera,  León Francisco Ruíz-Herrera, Eduardo Valencia-Cantero, José López-Bucio', 'José López Bucio', 1, 0, 'mesas/mesa1/729-resumen.pdf', 'mesas_ext/mesa1/729-extenso.pdf', 2, '2017-08-25', NULL),
(730, 975, 1, 'Integración de herramientas BIM en enseñanza de la Ingeniería Civil', 'Pedro Ángel López Monroy , Rafael Soto Espitia, Yakov Huitzilopochtli López Santoyo. ', ' Rafael Soto Espitia, Yakov Huitzilopochtli López Santoyo. ', 'Pedro Ángel López Monroy', 8, 0, 'mesas/mesa8/730-resumen.pdf', NULL, 2, '2017-08-25', NULL),
(731, 975, 2, 'ENERGÍAS RENOVABLES PARA ABATIR LA ENTROPÍA URBANA.', 'Pedro Ángel López Monroy, María del Carmen Solorio Raya , Carlos Fernando López Bucio.', 'María del Carmen Solorio Raya , Carlos Fernando López Bucio.', 'Pedro Ángel López Monroy', 2, 0, 'mesas/mesa2/731-resumen.pdf', NULL, 2, '2017-08-25', NULL),
(732, 742, 1, 'PARTICIPACIÓN DEL GEN ILR3 EN LA COORDINACIÓN DE LA RESPUESTA DE LA RAÍZ DE Arabidopsis thaliana A LA DEFICIENCIA DE HIERRO Y FÓSFORO', 'Guadalupe Jessica Salmerón Barrera', 'Javier Raya González, Jesús Salvador López Bucio, León Francisco Ruíz Herrera', 'José López Bucio', 3, 0, 'mesas/mesa3/732-resumen.pdf', NULL, 2, '2017-08-25', NULL),
(733, 1110, 1, 'Preparaciòn de  la semicarbazona de friedelina a partir de friedelinol.', 'Karina  Zamudio Jaime', 'David Morales-Morales, Rosa E. del Río, Gabriela Rodríguez-García, Mario A. Gómez-Hurtado.', 'Mario A. Gómez Hurtado', 6, 1, 'mesas/mesa6/733-resumen.pdf', 'mesas_ext/mesa6/733-extenso.pdf', 2, '2017-08-25', NULL);
INSERT INTO `ponencias` (`id_ponencias`, `usuario_id`, `tipo_trabajo_id`, `titulo`, `autor`, `coautores`, `asesor`, `mesa_id`, `c_jovenes`, `archivo_resumen`, `archivo_extenso`, `status_id`, `fecha_registro`, `fecha_extenso`) VALUES
(734, 567, 1, 'BIENESTAR SOCIAL GENERADOS POR STAKEHOLDERS EN EMPRESAS PRODUCTORAS DE Rubus fruticosus MEDIANTE RELACIONES BORROSAS', ' Francisco Emmanuel Rosales Villicaña , ', ' Rubén Chávez Rivera, Jorge Víctor Alcaraz Vera, Rafael Ortiz-Alvarado', 'RAFAEL ORTIZ ALVARADO/ RUBÉN CHÁVEZ RIVERA', 9, 1, 'mesas/mesa9/734-resumen.pdf', 'mesas_ext/mesa9/734-extenso.pdf', 2, '2017-08-25', NULL),
(735, 894, 2, 'DISEÑO DE TANQUE DE MEZCLADO A ESCALA PILOTO PARA UNA MEZCLA DE POLISACÁRIDOS', 'Ana Karen Calderón Ordaz', 'Ana K. Romero Pineda, Ma. del Carmen Chávez Parga y Alberto Flores García ', 'Mauro M. Martínez Pacheco ', 2, 1, 'mesas/mesa2/735-resumen.pdf', 'mesas_ext/mesa2/735-extenso.pdf', 2, '2017-08-25', NULL),
(736, 1087, 2, 'Participación del gen AMP1 en la regulación del desarrollo de  Arabidopsis thaliana', 'Claudia Marina López García', 'León Francisco Ruíz Herrera', 'José López Bucio', 1, 1, 'mesas/mesa1/736-resumen.pdf', 'mesas_ext/mesa1/736-extenso.pdf', 2, '2017-08-25', NULL),
(737, 1105, 1, 'OXIDACIÓN DEL 7,8-ACETÓNIDO DEL 2,2’- DICLORO DE LA LONGIPINANTRIOLONA CON CONDICIONES DE SARETT.', 'Cintyha Guadalupe Pérez Tirado', 'Juan Diego Hernández Hernández ', 'Luisa Urania Román Marín', 6, 0, NULL, NULL, 3, '2017-08-25', NULL),
(767, 1126, 2, 'EFECTO DE LA  PROLACTINA Y EL ESTRÈS EN EL PÈRIODO NEONATAL SOBRE LOS ASTROCITOS DEL HIPOCAMPO DE RATAS MACHO Y HEMBRA', 'Leticia López Leco', 'Ana Laura Cruz de la Rosa', 'Luz Torner Aguilar', 5, 1, 'mesas/mesa5/767-resumen.pdf', 'mesas_ext/mesa5/767-extenso.pdf', 2, '2017-08-25', NULL),
(739, 1100, 1, 'ACTIVACIÓN DE LA ENZIMA SORBITOL DESHIDROGENASA POR COMPONENTES DE ALGUNOS ARBOLES NATIVOS ', 'Gerchon Laguerre', 'Zurisaddai Hernández , Daniel Godínez , Alberto Flores García , Mauro M. Martínez Pacheco ', ' Mauro M. Martínez Pacheco ', 5, 0, 'mesas/mesa5/739-resumen.pdf', 'mesas_ext/mesa5/739-extenso.pdf', 2, '2017-08-25', NULL),
(740, 897, 1, 'INDICE DE DESARROLLO HUMANO (IDH) EN NÚCLEOS URBANOS DEL ESTADO DE MICHOACÁN', 'Miguel Angel García-Ruelas ', 'Rafael Ortiz-Alvarado, Víctor Meza-Carmen', 'RAFAEL ORTIZ ALVARADO', 8, 1, 'mesas/mesa8/740-resumen.pdf', 'mesas_ext/mesa8/740-extenso.pdf', 2, '2017-08-25', NULL),
(741, 1105, 1, 'OXIDACIÓN DEL 7,8-ACETÓNIDO DEL 2,2’- DICLORO DE LA LONGIPINANTRIOLONA CON CONDICIONES DE SARETT.', 'Cintyha_20@hotmaul.com', 'Juan Diego Hernández Hernández ', 'Luisa Urania Román Marín', 6, 0, NULL, NULL, 4, '2017-08-25', NULL),
(742, 1117, 1, 'SÍNTESIS, BIOFUNCIONALIZACIÓN Y BIOACTIVIDAD DE ANDAMIOS DE BIOVIDRIO 45S5 NANOESTRUCTURADO DOPADO CON PLATA', 'Mario Eduardo Abad Javier', 'María Eugenia Contreras García ', 'María Eugenia Contreras García ', 1, 1, 'mesas/mesa1/742-resumen.pdf', 'mesas_ext/mesa1/742-extenso.pdf', 2, '2017-08-25', NULL),
(743, 905, 2, 'ANÁLISIS DE LA POBLACIÓN DE CONUS NUX BRODERIP, 1833 EN LA LOCALIDAD DE LA MAJAHUITA, MUNICIPIO AQUILA, MICHOACÁN, MÉXICO.', 'Luis Gerardo Moreno Ciénega', 'J. Gerardo A. Ceballos Corona, Reyna Alvarado Villanueva, Elias Villanueva Boyso', 'J. Gerardo A. Ceballos Corona', 7, 1, 'mesas/mesa7/743-resumen.pdf', 'mesas_ext/mesa7/743-extenso.pdf', 2, '2017-08-25', NULL),
(746, 905, 2, 'AVANCES SOBRE LA DISTRIBUCIÓN DE MACROINVERTEBRADOS Y MACROALGAS ASOCIADOS AL MESOLITORAL ROCOSO DE EL ZAPOTE DE MADERO, MICHOACÁN', 'J. Gerardo A. Ceballos-Corona', ' Karla Vanesa Pérez Doroteo , Néstor Daniel Manriquez Méndez, Elias Villanueva Boyzo', 'J. Gerardo A. Ceballos Corona', 7, 1, 'mesas/mesa7/746-resumen.pdf', 'mesas_ext/mesa7/746-extenso.pdf', 2, '2017-08-25', NULL),
(747, 1113, 1, 'Sistema de Detección y Análisis Cromosómico para el Diagnóstico Clínico Prenatal utilizando el Método Canny y Redes Neuronales Artificiales', 'Ashly Judith Gaspar Martinez', 'Edgardo Abdiel Escoto Sotelo', 'Edgardo Abdiel Escoto Sotelo', 5, 1, 'mesas/mesa5/747-resumen.pdf', 'mesas_ext/mesa5/747-extenso.pdf', 2, '2017-08-25', NULL),
(748, 1124, 1, 'POTENCIAL AGROBIOTECNOLOGICO DE LA FRACCIÓN LIPIDICA DE ESPECIES COMERCIALES Y NATIVAS DE LA FAMILIA TAXONOMICA DE LAS Rosáceas, EN MÉXICO', 'Chantal Charlotte Rosales Ceja, Manuel Antonio Aguilera-Arana', 'Rubén Chávez-Rivera, Rafael Ortiz-Alvarado', 'Rafael Ortiz Alvarado', 3, 1, 'mesas/mesa3/748-resumen.pdf', NULL, 3, '2017-08-25', NULL),
(749, 1031, 1, 'Caracterización de la estructura arbórea-arbustiva del Bosque Mesófilo de Montaña al sur del Municipio de Morelia', 'Karina Espinosa Mónico', 'Gerardo Santana Huicochea, Dulce Rosas Rangel, Manuel Mendoza Cantú', 'Gerardo Santana Huicochea', 7, 1, 'mesas/mesa7/749-resumen.pdf', 'mesas_ext/mesa7/749-extenso.pdf', 2, '2017-08-25', NULL),
(751, 555, 1, 'VARIACIÓN ECOLOGÍA DEL LAGO DE CUITZEO, CON BASE EN LA ESTRUCTURA DE LA MICROFLORA PERIFITICA Y PLANCTÓNICA.', 'Marisol Martínez-Martínez ', 'Rubén Hernández-Morales , Martina Medina-Nava ', ' Rubén Hernández-Morales', 7, 0, 'mesas/mesa7/751-resumen.pdf', 'mesas_ext/mesa7/751-extenso.pdf', 2, '2017-08-25', NULL),
(752, 171, 1, 'OBTENCIÓN DE MICRO Y NANOESFERAS BASE BIOPOLIMEROS MEDIANTE LA TÉCNICA DE ELECTROSPRAY', 'Luis H. Delgado Rangel', 'J. Betzabe González Campos', 'J. Betzabe González Campos', 1, 1, 'mesas/mesa1/752-resumen.pdf', 'mesas_ext/mesa1/752-extenso.pdf', 2, '2017-08-25', NULL),
(754, 1024, 1, 'Hidrodinámica y transferencia de oxígeno en la producción de lacasas por Pleurotus ostreatus CP50', 'Karen Ibeth Fernández Alejandre', 'Leobardo Serrano Carreón', 'Leobardo Serrano Carreón', 3, 1, 'mesas/mesa3/754-resumen.pdf', NULL, 2, '2017-08-25', NULL),
(771, 895, 1, 'EFECTO HIPOLIPEMICO ESPECÍFICO DE LAS ESPECIES COMERCIALES Y NATIVAS DE LA FAMILIA DE LAS ROSACEAS EN MICHOACÁN', 'Carlos Alberto Colín Sánchez ', 'Lucia M.  Nava-Barrios, César Rogelio Solorio-Alvarado, Rafael Ortiz-Alvarado', 'RAFAEL ORTIZ ALVARADO', 3, 1, 'mesas/mesa3/771-resumen.pdf', NULL, 3, '2017-08-25', NULL),
(763, 1128, 1, 'LIMITACIÓN NUTRIMENTAL Y ESTADO TRÓFICO EN EL LAGO DE CUITZEO, MICHOACÁN, MÉXICO', 'Rubén Hernández-Morales , Martina Medina-Nava , Araceli Hurtado-Avalos , Marisol Martínez-Martínez . ', 'Rubén Hernández-Morales , Martina Medina-Nava , Araceli Hurtado-Avalos , Marisol Martínez-Martínez . ', 'Rubén Hernández Morales ', 7, 0, 'mesas/mesa7/763-resumen.pdf', 'mesas_ext/mesa7/763-extenso.pdf', 2, '2017-08-25', NULL),
(756, 785, 1, 'IMPLEMENTACION DE UN MODELO DE DIABETES MELLITUS TIPO II EXPERIMENTAL EN RATAS', 'Cambrón Mora Diego', 'Garcia Garduño Texali ', 'Guzmán Quevedo Omar y Mercado Camargo Rosalio ', 5, 1, 'mesas/mesa5/756-resumen.pdf', NULL, 2, '2017-08-25', NULL),
(757, 1123, 1, 'Identificación y caracterización del potencial biotecnológico de una cepa silvestre de Paraconiothyrium sp.', 'Marina Arredondo Santoyo ', 'Ma. Soledad Vázquez Garcidueñas, Gerardo Vázquez Marrufo ', 'Gerardo Vázquez Marrufo ', 3, 0, 'mesas/mesa3/757-resumen.pdf', 'mesas_ext/mesa3/757-extenso.pdf', 2, '2017-08-25', NULL),
(758, 1127, 1, 'Estudio molecular del Factor von Willebrand como biomarcador de riesgo cardiovascular en pacientes con Artritis reumatoide', 'Laura García Quezada', ' Sandra López Castañeda, Nallely García Larragoiti, Martha Eva Viveros Sandoval', 'Martha Eva Viveros Sandoval', 5, 0, 'mesas/mesa5/758-resumen.pdf', 'mesas_ext/mesa5/758-extenso.pdf', 2, '2017-08-25', NULL),
(759, 1128, 2, 'INCIDENCIA DE CUADROS PATOLÓGICOS ASOCIADOS AL USO DEL AGUA DEL LAGO DE ZIRAHUÉN', 'Rubén Hernández-Morales , Georgina Jazmin Rojo-Soto , María Silvia Aguilera-Ríos , Rosario Ortega-Murillo .   ', 'Rubén Hernández-Morales , Georgina Jazmin Rojo-Soto , María Silvia Aguilera-Ríos , Rosario Ortega-Murillo .   ', 'Rubén Hernández Morales ', 7, 0, 'mesas/mesa7/759-resumen.pdf', 'mesas_ext/mesa7/759-extenso.pdf', 2, '2017-08-25', NULL),
(760, 965, 2, 'Aplicación de Nanoparticulas a Sorghum bicolor y Estudio de sus efectos sinérgicos.', 'Maria Dolores Espitia Ortega', 'Cesar Adrián Limon Luna,Ana Velia  Coria Téllez', 'Dirhendra Kumar Tiwari', 3, 1, 'mesas/mesa3/760-resumen.pdf', 'mesas_ext/mesa3/760-extenso.pdf', 2, '2017-08-25', NULL),
(761, 951, 1, 'Recolección de energía renovable de un panel solar utilizando electrónica de baja potencia para sensor ultravioleta', 'José Luis Solís Domínguez, Andrea Isabel Rangel Leal', '         .', 'M.C. José Diego Barcenas Torres', 2, 1, 'mesas/mesa2/761-resumen.pdf', NULL, 2, '2017-08-25', NULL),
(764, 1128, 1, 'AVANCES Y PERSPECTIVAS EN LA REINTRODUCCIÓN DE UNA ESPECIE EXTINTA EN EL MEDIO NATURAL ', 'Rubén Hernández-Morales , Omar Domínguez-Domínguez , Martina Medina-Nava', 'David Tafolla-Venegas , Yvonne Herrerias-Diego , Luis Escalera-Vázquez , Ana Leticia Escalante-Jiménez, Ma Elena Castillo-Víctor . ', 'Rubén Hernández Morales ', 7, 0, 'mesas/mesa7/764-resumen.pdf', 'mesas_ext/mesa7/764-extenso.pdf', 2, '2017-08-25', NULL),
(765, 689, 1, 'Implementación de una configuración de red segmentada en instituciones de educación superior para brindar soporte a las plataformas de aprendizaje virtual y mixto', 'Roberto Loaeza Valerio', 'Irma Gutiérrez Miranda, Joel Loaeza Valerio', 'Roberto Loaeza Valerio', 2, 1, 'mesas/mesa2/765-resumen.pdf', 'mesas_ext/mesa2/765-extenso.pdf', 2, '2017-08-25', NULL),
(780, 1084, 1, 'UTILIZACIÓN DE CULTIVOS HONGO-LEVADURA PARA LA DEGRADACIÓN DE PAÑALES Y LA PRODUCCIÓN DE ETANOL.', 'María Teresa Salgado Rodríguez', 'Ma. Lourdes Aguilar Yépez , Fernando Covián-Nares', 'Teresa Itandehui Garambullo-Peña', 7, 1, 'mesas/mesa7/780-resumen.pdf', 'mesas_ext/mesa7/780-extenso.pdf', 2, '2017-08-25', NULL),
(769, 974, 2, 'REORDENAMIENTO DE LA 9-DEOXO-RASTEVIONA EN MEDIO ÁCIDO', 'Jacqueline Saavedra Vélez', 'Concepción Armenta-Salinas, Juan D. Hernández-Hernández y Luisa U. Román-Marín', 'Luisa U. Román-Marín', 6, 1, 'mesas/mesa6/769-resumen.pdf', 'mesas_ext/mesa6/769-extenso.pdf', 2, '2017-08-25', NULL),
(770, 1020, 2, 'CALIDAD DEL AGUA EN POZOS DEL MUNICIPIO DE COPÁNDARO', 'Mariela Casillas Corona ', 'Isabel Israde Alcántara, María Alcalá De Jesús, Virgilio Ledesma yturry', 'Isabel Israde Alcántara', 7, 1, 'mesas/mesa7/770-resumen.pdf', 'mesas_ext/mesa7/770-extenso.pdf', 2, '2017-08-25', NULL),
(772, 899, 1, 'EXTRACCIÓN DE ACIDOS GRASOS POLIINSATURADOS DE P. serótina var. capulí, MÉTODO LIBRE DE SOLVENTES ORGANICOS', 'Ana Bertha Espinosa Chávez, Heriberto Aguilar Villa', 'Víctor Meza-Carmen, Rafael Ortiz-Alvarado', 'RAFAEL ORTIZ ALVARADO', 9, 1, 'mesas/mesa9/772-resumen.pdf', 'mesas_ext/mesa9/772-extenso.pdf', 2, '2017-08-25', NULL),
(773, 639, 2, 'EVALUACIÓN DE LA ACTIVIDAD ANTIFÚNGICA DEL EXTRACTO CRUDO DE BACILLUS SPP. CONTRA HONGOS XILÓFAGOS ', 'Vanessa Ruby García-Ortiz , Crisanto Velázquez-Becerra , José Cruz de León', 'Crisanto Velázquez-Becerra, José Cruz de León', 'Crisanto Velázquez-Becerra', 7, 0, 'mesas/mesa7/773-resumen.pdf', 'mesas_ext/mesa7/773-extenso.pdf', 2, '2017-08-25', NULL),
(774, 500, 1, 'Conversión de residuos plásticos de polipropileno en hidrocarburo liquido mediante pirólisis', 'Alexis García Pérez', 'José Manuel Ávila Riesco', 'José Manuel Ávila Riesco', 2, 1, 'mesas/mesa2/774-resumen.pdf', 'mesas_ext/mesa2/774-extenso.pdf', 2, '2017-08-25', NULL),
(775, 135, 2, 'ÍNDICES PRO-INFLAMATORIOS Y PRO-TROMBÓTICOS EN PACIENTES CON SOBREPESO Y OBESIDAD', 'Diana Carolina Villalpando Sánchez', 'Martha Eva Viveros Sandoval', 'Anel Gómez García', 5, 0, 'mesas/mesa5/775-resumen.pdf', 'mesas_ext/mesa5/775-extenso.pdf', 2, '2017-08-25', NULL),
(776, 921, 1, 'ANÁLISIS NO DESTRUCTIVO DE ESPECTROMETRÍA DE MASAS PARA LA IDENTIFICACIÓN DE RESIDUOS ORGÁNICOS EN MODELOS CERÁMICOS Y TEXTILES ', 'Lorena Zuleima Naranjo Padilla', 'Mayra Melissa Villegas Acosta, Maria Dolores Espitia Ortega, Brenda Paulina Garcia Venegas', 'Ana Velia Coria Tellez', 1, 1, 'mesas/mesa1/776-resumen.pdf', 'mesas_ext/mesa1/776-extenso.pdf', 2, '2017-08-25', NULL),
(777, 1104, 2, 'EVALUACIÓN DE LA MICORRIZACIÓN EN PLANTAS DE FRAMBUESA (Rubus idaeus) INOCULADAS CON UN PRODUCTO COMERCIAL', 'Santos Zepeda Guzmán ', 'Elizabeth Oseguera Bautista, Rosario Yadira Avalos Barajas, Gamaliel Valdivia Rojas', 'Santos Zepeda Guzmán', 3, 0, 'mesas/mesa3/777-resumen.pdf', 'mesas_ext/mesa3/777-extenso.pdf', 2, '2017-08-25', NULL),
(778, 883, 1, ' PRODUCCIÓN DE ÁCIDO CÍTRICO A NIVEL BIORREACTOR A PARTIR DE LIRIO ACUÁTICO (Eichhornia crassipes)', 'César Alfredo Domínguez Gabriel, Miguel Ángel Zamudio Jaramillo.', 'Miguel Ángel Zamudio Jaramillo', 'Miguel Ángel Zamudio Jaramillo', 2, 1, 'mesas/mesa2/778-resumen.pdf', 'mesas_ext/mesa2/778-extenso.pdf', 2, '2017-08-25', NULL),
(779, 1015, 1, 'OBTENCIÓN DE ÁCIDOS GRASOS POLIINSATURADOS, C:18 DE CALIDAD NUTRIMENTAL, PROVENIENTES DE Rubus idaeus, POR TECNOLOGÍAS ALTERNATIVAS A LOS SOLVENTES ORGANICOS', 'Alan Michel Pérez Espino', 'Alan Michel Pérez Espino, Sergio Alejandro Ayala Ramírez, Martha Isela  Ramírez-Díaz, Rafael Ortiz-Alvarado', 'RAFAEL ORTIZ ALVARADO', 9, 1, 'mesas/mesa9/779-resumen.pdf', 'mesas_ext/mesa9/779-extenso.pdf', 2, '2017-08-25', NULL),
(781, 507, 1, 'DESARROLLO DE UNA COLUMNA DE ADSORCIÓN EMPACADA CON DESECHOS AGRÍCOLAS DE ESPÁRRAGO MODIFICADO: REMOCIÓN DINÁMICA DE COLORANTES', 'Brenda Celaya García', 'Margarita Monserrat Martínez Campos', 'Guillermo Andrade Espinosa', 2, 1, 'mesas/mesa2/781-resumen.pdf', 'mesas_ext/mesa2/781-extenso.pdf', 2, '2017-08-25', NULL),
(921, 513, 1, 'EVALUACIÓN DE EXTRACTO ETANOLICO DE LIPPIA GRAVEOLENS SOBRE COLLETROTRICHUM GLOESPOROIDES', 'Viridiana Arreola Romero, Alma Teresa Miranda Quiroz , Agustín Iván Aguilar Cabezas, David García Hernández, Vania Marilyn Marín Rangel, Silvia Patricia Fernández Pavía', 'Viridiana Arreola Romero, Alma Teresa Miranda Quiroz , Agustín Iván Aguilar Cabezas, David García Hernández, Vania Marilyn Marín Rangel, Silvia Patricia Fernández Pavía', 'Alma Teresa Miranda Quiroz', 3, 1, 'mesas/mesa3/921-resumen.pdf', 'mesas_ext/mesa3/921-extenso.pdf', 2, '2017-08-11', NULL),
(785, 1063, 2, 'EVALUACIÓN  DE PLANTAS DE CAÑA DE AZÚCAR (Saccharum officinarum)   INOCULADAS  CON BACTERIAS PROMOTORAS DE CRECIMIENTO VEGETAL.', 'LUIS ALFONSO AGUILAR PULIDO', 'Luis Alfonso Aguilar Pulido  Rosario Yadira Avalos Barajas   Santos Zepeda Guzmán ', 'GAMALIEL VALDIVIA ROJAS ', 3, 0, 'mesas/mesa3/785-resumen.pdf', 'mesas_ext/mesa3/785-extenso.pdf', 2, '2017-08-25', NULL),
(786, 966, 2, 'Modificación superficial de nanopartículas de Mn0.75Zn0.25Fe2O4 sintetizadas hidrotermicamente utilizando (3-aminopropil) trietoxisilano y ortosilicato de tetraetilo', 'Mayra Melissa Villegas Acosta', 'Samuel Ezequiel Almanza-Morales', 'Dhirendra Kumar Tiwari ', 5, 1, 'mesas/mesa5/786-resumen.pdf', 'mesas_ext/mesa5/786-extenso.pdf', 2, '2017-08-25', NULL),
(787, 1040, 1, 'AISLAMIENTO DEL ÁCIDO HEDERAGÓNICO DEL EXTRACTO HEXÁNICO DE LA RESINA DE BURSERA MULTIJUGA, UN TRITERPENO FUNCIONALIZADO EN C-23', 'Karen Derek Escobar Flores, Juan Diego Hernández Hernández', 'Luisa U. Román Marín, Carlos M. Cerda-García-Rojas y Pedro Joseph-Nathan', 'Juan Diego Hernández Hernández', 6, 0, 'mesas/mesa6/787-resumen.pdf', 'mesas_ext/mesa6/787-extenso.pdf', 2, '2017-08-25', NULL),
(790, 161, 1, 'SELECCIÓN DE DERIVADOS DE BENZOQUINONAS Y ANÁLISIS DE SU COMPORTAMIENTO EN LA FUNCIÓN MITOCONDRIAL', 'Erick Magaña Ruíz ', 'Erick Magaña Ruíz , Melissa Tapia Martínez , Christian Cortés Rojo ', 'Luis Chacón García', 1, 1, 'mesas/mesa1/790-resumen.pdf', 'mesas_ext/mesa1/790-extenso.pdf', 2, '2017-08-25', NULL),
(789, 1051, 1, 'Comparación del consumo hídrico en Persea americana y Pinus pseudostrobus', 'Fernando Quiroz Rivera', 'Rafael Morales Chávez ', 'Alberto Gómez-Tagle Chávez', 7, 1, 'mesas/mesa7/789-resumen.pdf', NULL, 2, '2017-08-25', NULL),
(791, 787, 1, 'Michoacan, un Enfoque Biomasico de Disponibilidad y Eficiencia Termica', 'Grecia M. Nolasco Tinoco , Jose M. Zapien Rodriguez, Oscar Burgara Montero, Juan C. Ballesteros Pacheco, Edgardo A. Escoto Sotelo, Francisco A. Nuñez Perez', 'Jose M. Zapien Rodriguez, Oscar Burgara Montero, Juan C. Ballesteros Pacheco, Edgardo A. Escoto Sotelo, Francisco A. Nuñez Perez', 'Jose M. Zapien Rodriguez', 3, 0, 'mesas/mesa3/791-resumen.pdf', 'mesas_ext/mesa3/791-extenso.pdf', 2, '2017-08-25', NULL),
(792, 1002, 1, 'CADENAS DE ABASTECIMIENTO DE LAS PYMES A LAS CADENAS GLOBALES', 'Ma Elena Hernández Manriquez', 'sin coautores', 'Ma Elena Hernández  Manriquez', 10, 0, 'mesas/mesa10/792-resumen.pdf', NULL, 2, '2017-08-25', NULL),
(793, 1060, 1, 'LA VIHDA CON VIH: LA EXPERIENCIA ', 'Mayra Itzel Huerta Baltazar', 'Ma. de Jesús Ruiz Recèndiz, Ma. Lilia A. Alcántar Zavala', 'Ma. Elena Rivera Heredia, Alicia Álvarez Aguirre, Ma. Laura Ruiz Paloalto,', 5, 1, 'mesas/mesa5/793-resumen.pdf', 'mesas_ext/mesa5/793-extenso.pdf', 2, '2017-08-25', NULL),
(794, 987, 2, 'OBTENCIÓN DE ALCOHOLES A PARTIR DE TRIÉSTERES DE LONGIPINENO DE STEVIA ORIGANOIDES', 'Lucila Amairani Esquivel Herrera ', 'Juan Diego Hernández Hernández', 'Luisa Urania Román Marín, Cecilia Ruiz Ferrer', 6, 1, 'mesas/mesa6/794-resumen.pdf', 'mesas_ext/mesa6/794-extenso.pdf', 2, '2017-08-25', NULL),
(795, 1138, 1, 'Esquemas para la atención de la violencia de género en la Casa de Hidalgo', 'Perla Araceli Barbosa Muñoz', 'Laura Leticia Padilla Gil y María Elisa Díaz Gómez', 'Perla Araceli Barbosa Muñoz', 4, 1, 'mesas/mesa4/795-resumen.pdf', 'mesas_ext/mesa4/795-extenso.pdf', 2, '2017-08-25', NULL),
(796, 830, 1, 'Ecosistema emprendedor: Caso Tijuana-San Diego vínculos entre Startups en ambos lados de la frontera.', 'Lexlie Ireri Rangel Vázquez', 'N/A', 'N/A', 9, 0, 'mesas/mesa9/796-resumen.pdf', NULL, 2, '2017-08-25', NULL),
(797, 825, 1, 'RAPID NON-DESTRUCTIVE CHEMICAL CHARACTERIZATION AND DIELECTRIC BEHAVIOR OF CHIA (Salvia Hispanica) OILS OBTAINED BY DIFFERENT EXTRACTION METHODS.', 'Dhirendra Kumar Tiwari and Ana Velia Coria-Téllez', 'NA', 'NA', 6, 0, 'mesas/mesa6/797-resumen.pdf', NULL, 2, '2017-08-25', NULL),
(798, 609, 1, 'PROCRASTINACIÓN Y COMPORTAMIENTO ALIMENTARIO DE ESTUDIANTES DE NUTRICIÓN DE LA  UNIVERSIDAD VASCO DE QUIROGA', 'Carlos Amadeo García Ayala', 'NA', 'Carlos Amadeo García Ayala', 5, 0, 'mesas/mesa5/798-resumen.pdf', NULL, 2, '2017-08-25', NULL),
(799, 666, 2, 'DESARROLLO DE CARBON ACTIVADO A PARTIR DEL RESIDUO AGRICOLA DE LA MADERA DEL ARBOL DE GUAYABO PARA REMOCION DE COLORANTES PRESENTES EN SOLUCIÓN', 'Margarita Monserrat Martinez Campos, Brenda Celaya Garcia, Guillermo Andrade Espinoza', 'Guillermo Andrade Espinoza, Brenda Celaya Garcia', 'Guillermo Andrade Espinoza', 2, 1, 'mesas/mesa2/799-resumen.pdf', 'mesas_ext/mesa2/799-extenso.pdf', 2, '2017-08-25', NULL),
(800, 339, 1, 'EXPRESIÓN DEL GEN DE LA DEFENSINA EN EL DESARROLLO DEL MESOCARPIO DE AGUACATE NATIVO MEXICANO (Persea americana var. drymifolia)', 'Libier Magaña Ruiz', 'Fernando Sánchez Albarrán, Luis María Suárez Rodríguez', 'Rodolfo López Gómez', 3, 1, 'mesas/mesa3/800-resumen.pdf', 'mesas_ext/mesa3/800-extenso.pdf', 2, '2017-08-25', NULL),
(801, 1082, 1, 'Reactividad de los diésteres aislados de Stevia viscida.', 'Cecilia Ruiz Ferrer', 'Juan Diego Hernández Hernández, Pedro Joseph Nathan', 'Luisa Urania Román Marín, Carlos Martín Cerda García Rojas.', 6, 1, 'mesas/mesa6/801-resumen.pdf', 'mesas_ext/mesa6/801-resumen.pdf', 2, '2017-08-25', NULL),
(802, 609, 1, 'FACTORES DE PERSONALIDAD ASOCIADOS AL COMPORTAMIENTO ALIMENTARIO DE UNIVERSITARIOS  DEL ÁREA DE LA SALUD', 'Carlos Amadeo García Ayala', 'NA', 'Carlos Amadeo García Ayala', 5, 0, 'mesas/mesa5/802-resumen.pdf', NULL, 2, '2017-08-25', NULL),
(803, 463, 1, 'Optimización de la generación de bioelectricidad acoplado al tratamiento de agua residual por superficies de respuesta', 'Adolfo Juanico Godinez, Jose Diego Barcenas Torres', 'Guillermo Andrade Espinosa', 'Jose Diego Barcenas Torres', 7, 1, 'mesas/mesa7/803-resumen.pdf', 'mesas_ext/mesa7/803-extenso.pdf', 2, '2017-08-25', NULL),
(804, 512, 2, 'SÍNTESIS DE MICROESFERAS DE QUITOSANO PARA LIBERACIÓN CONTROLADA DE ACETAMINOFÉN', 'Pedro Barriga Díaz ', 'M.C Esmeralda Villacaña Molina ', 'Dra. Ena Athenea Reyes Aguilar', 2, 1, 'mesas/mesa2/804-resumen.pdf', NULL, 2, '2017-08-25', NULL),
(805, 1149, 1, 'FABRICACIÓN DE UN ÁLABE PARA UN AEROGENERADOR DE 2KW', 'JESÚS CIRILO TRUJILLO JIMÉNEZ', 'JUAN JOSÉ PIÑA CASTILLO, RENATO GONZÁLEZ BERNAL, MIRIAM VÁZQUEZ PADILLA', 'JESÚS CIRILO TRUJILLO JIMÉNEZ', 2, 1, 'mesas/mesa2/805-resumen.pdf', NULL, 3, '2017-08-25', NULL),
(808, 1053, 1, 'ESTUDIO DE LA ADAPTACIÓN DE LEVADURAS A MEDIOS RICOS EN XILOSA PARA LA PRODUCCIÓN DE XILITOL EN CONDICIONES DE INMOVILIZACIÓN', 'Ana Sophía Árciga Rodríguez', 'Miguel Ángel Zamudio Jaramillo, Mariana Álvarez Navarrete', 'Miguel Ángel Zamudio Jaramillo, Mariana Álvarez Navarrete', 2, 1, 'mesas/mesa2/808-resumen.pdf', 'mesas_ext/mesa2/808-extenso.pdf', 2, '2017-08-26', NULL),
(809, 361, 1, 'SÍNTESIS DE NANOESFERAS DE Cu2O UTILIZANDO NaBH4 Y EXTRACTO DE ORIGANUM VULGARE ', 'Ma. Del Socorro Aguilar  Hernández', 'Gerardo A.Rosas Trejo', 'Gerardo Antonio Rosas Trejo', 1, 1, 'mesas/mesa1/809-resumen.pdf', 'mesas_ext/mesa1/809-extenso.pdf', 2, '2017-08-28', NULL),
(810, 1160, 1, 'Interoperabilidad en una Arquitectura Basada en la Nube y Fog Computing para el Internet de las Cosas (Internet of Things IoT).', 'Dr. Omar Jehovani López Orozco, Dr. Miguel González Mendoza.', 'M.A. Esmeralda Villegas Zamudio, L.I. Rafael Cuevas Madrigal, L.I. Anadelia Serrato Rodriguez.', 'Dr. Omar Jehovani López Orozco', 9, 1, 'mesas/mesa9/810-resumen.pdf', NULL, 2, '2017-08-28', NULL),
(814, 1209, 1, 'La estrategia de investigación dialecticoLa estrategia de investigación dialectico transdiciplinaria desde la evaluación, en la formación de un docente transdisciplinario, transdiciplinaria desde la evaluación, en la formación de un docente transdisciplinario,', 'David Tapia Saavedra.', 'Carlos Tapia Saavedra', 'David Tapia Saavedra', 4, 0, 'mesas/mesa4/814-resumen.pdf', NULL, 2, '2017-09-01', NULL),
(812, 1050, 1, 'Tecnología Educativa Empleando un Modelo de Diseño Instruccional en Entornos Virtuales de Aprendizajes (EVA´s).', 'Alberto Díaz Vázquez ', 'Leonel Chávez Contreras', 'Alberto Díaz Vázquez', 2, 0, 'mesas/mesa2/812-resumen.pdf', 'mesas_ext/mesa2/812-extenso.pdf', 2, '2017-08-28', NULL),
(813, 1160, 1, 'Retos para la Implementación de Edge Computing y Fog Computing para el Internet de las Cosas (Internet of Things IoT).', 'Dr. Omar Jehovani López Orozco, Dr. Miguel González Mendoza, ISC Javier Cisneros Lucatero.', 'M.A. Esmeralda Villegas Zamudio. L.I. Rafael Cuevas Madrigal. ', 'Dr. Omar Jehovani López Orozco', 9, 1, 'mesas/mesa9/813-resumen.pdf', NULL, 2, '2017-08-28', NULL),
(815, 1211, 1, 'El PEC y Alfa TV en Michoacán, reflexiones sobre la práctica en INEA', 'Brian Santiago Bautista Estrada', 'NA', 'Cruz Elena Corona Fernández', 4, 0, 'mesas/mesa4/815-resumen.pdf', NULL, 2, '2017-09-02', NULL),
(818, 1116, 1, 'Desarrollo de Software geo-referencial para control médico de casos de leucemia aguda y cardiopatías congénitas pediátricas en el CMNO UMAE Pediatría IMSS', 'Francisco Javier Olivera Guerrero y Jesus Leonardo Soto Sumuano', 'TLACUILO-PARRA José Alberto, GARIBALDI COVARRUBIAS Roberto Francisco, ROMO RUBIO Hugo, ABUNDIS Emmanuel', 'Jesus Leonardo Soto Sumuano', 2, 1, 'mesas/mesa2/818-resumen.pdf', NULL, 2, '2017-09-02', NULL),
(817, 1215, 1, 'Diversidad genética de Quercus crassipes y Quercus obtusata en comunidades con distintas especies de encinos', 'Silvia Ecaterina Garcia Jain', 'Antonio Gonzalez Rodriguez, Pablo Cuevas Reyes', 'Pablo Cuevas Reyes', 1, 0, 'mesas/mesa1/817-resumen.pdf', 'mesas_ext/mesa1/817-extenso.pdf', 2, '2017-09-02', NULL),
(821, 1162, 2, 'Calidad de vida en personas con diabetes tipo 2 de Zinapécuaro', 'Ma. de Jesús Ruiz Recéndiz', 'Ma. Lilia Alicia Alcántar Zavala, Mayra Itzel Huerta Baltazar,  Alma Rosa Picazo Carranza,  Graciela González Villegas,  Elva Rosa Valtierra Oba', 'Ma. de Jesús Ruiz Recéndiz', 5, 1, 'mesas/mesa5/821-resumen.pdf', 'mesas_ext/mesa5/821-extenso.pdf', 2, '2017-09-03', NULL),
(820, 1206, 1, 'CAMBIOS EN LA MORFOLOGÍA FOLIAR Y HERBIVORÍA EN ARBUTUS XALAPENSIS KUNTH VAR. XALAPENSIS Y ARBUTUS TESSELLATA P.D SORENSEN A LO LARGO DE SU DISTRIBUCIÓN GEOGRÁFICA EN MÉXICO', 'Mejía Elvira Ana Isabel   ', ' Cuevas Reyes Pablo   González Rodríguez Antonio', 'Cuevas Reyes Pablo', 1, 1, 'mesas/mesa1/820-resumen.pdf', 'mesas_ext/mesa1/820-extenso.pdf', 2, '2017-09-03', NULL),
(822, 1200, 1, 'VALORACIÓN INTEGRAL DE PROFESORES Y EMPLEADOS UNIVERSITARIOS RELACIONADA CON RIESGO DE ENFERMEDAD VASCULAR CEREBRAL ', 'Josefina Valenzuela Gandarilla ', 'Ma. Martha Marín Laredo, Karen Guadalupe Gutiérrez Arreguín, Janintserakua Pedro Pineda, Cindy Steffany Velázquez Béjar, Brenda Lizeth Toledo Cruz, Karina Villegas Escobar', 'JOSEFINA VALENZUELA GANDARILLA', 5, 0, NULL, NULL, 4, '2017-09-03', NULL),
(823, 1200, 1, 'VALORACIÓN INTEGRAL DE PROFESORES Y EMPLEADOS UNIVERSITARIOS RELACIONADA CON RIESGO DE ENFERMEDAD VASCULAR CEREBRAL ', 'Josefina Valenzuela Gandarilla ', 'Ma. Martha Marín Laredo, Karen Guadalupe Gutiérrez Arreguín, Janintserakua Pedro Pineda, Cindy Steffany Velázquez Béjar, Brenda Lizeth Toledo Cruz, Karina Villegas Escobar', 'JOSEFINA VALENZUELA GANDARILLA', 5, 0, 'mesas/mesa5/823-resumen.pdf', 'mesas_ext/mesa5/823-extenso.pdf', 2, '2017-09-03', NULL),
(824, 853, 1, 'Sustentabilidad y Responsabilidad Social Universitaria en Instituciones de Educación Superior. Estudio en la UMSNH', 'Kenya Anayency Casillas Meza', 'Dante Ariel Ayala Ortiz; Fabiola González Betanzos', 'Dante Ariel Ayala Ortiz', 8, 0, 'mesas/mesa8/824-resumen.pdf', 'mesas_ext/mesa8/824-extenso.pdf', 2, '2017-09-04', NULL),
(826, 1236, 2, 'GENERACIÓN DE DATOS INICIALES PARA ESTRELLAS TIPO TOV PERTURBADAS EN 3 DIMENCIONES ', 'Iván Margarito Álvarez Rios', 'José Antonio González Cervera', 'José Antonio González Cervera', 1, 1, 'mesas/mesa1/826-resumen.pdf', 'mesas_ext/mesa1/826-extenso.pdf', 2, '2017-09-04', NULL),
(827, 1223, 1, 'SATISFACCIÓN LABORAL DEL PERSONAL DE ENFERMERÍA EN DOS HOSPITALES DE SEGURIDAD SOCIAL MICHOACANOS. ESTUDIO COMPARATIVO', 'Ma. Martha Marín Laredo', 'Josefina Valenzuela Gandarilla, Brenda Lizeth Toledo Cruz, Karina Villegas Escoba, Karen Guadalupe Gutiérrez Arreguín, Janinstserakua Pedro Pineda, Cindy Steffany Velázquez Bejar', 'Ma. Martha Marín Laredo', 5, 0, 'mesas/mesa5/827-resumen.pdf', 'mesas_ext/mesa5/827-extenso.pdf', 2, '2017-09-04', NULL),
(828, 1223, 1, 'PERCEPCIÓN DE LA CALIDAD DEL CUIDADO DE ENFERMERÍA EN HOSPITALES DE SEGURIDAD SOCIAL DE MICHOACÁN', 'Ma. Martha Marín Laredo', 'osefina Valenzuela Gandarilla, Karina Villegas Escobar, Lizeth Toledo Cruz, Karen Guadalupe Gutiérrez Arreguín, Janinstserakua Pedro Pineda, Cindy Steffany Velázquez Bejar', 'Ma. Martha Marín Laredo', 5, 0, 'mesas/mesa5/828-resumen.pdf', 'mesas_ext/mesa5/828-extenso.pdf', 2, '2017-09-04', NULL),
(850, 1279, 1, 'Niños institucionalizados ', 'Diana Laura García Silva ', 'María del Carmen Chavez Manzo ', 'María del Carmen Manzo ', 4, 1, NULL, NULL, 4, '2017-09-06', NULL),
(860, 1277, 1, 'ESTILOS DE APRENDIZAJE EN ESTUDIANTES DE LA LICENCIATURA DE PSICOLOGÍA', 'Yoska Thamara Gutiérrez Boyso', 'Joanna Koral Chávez López ', 'Joanna Koral Chávez López ', 8, 1, 'mesas/mesa8/860-resumen.pdf', 'mesas_ext/mesa8/860-extenso.pdf', 2, '2017-09-06', NULL),
(838, 1220, 1, 'IMPACTOS SOCIOCULTURALES DE LA PRODUCCIÓN DE MEZCAL EN SAN FRANCISCO ETÚCUARO, MICHOACÁN', ' Agustín Emmanuel Farías Flores ', 'Teresa Marlen  Guzmán Contreras   Melissa Alejandra Maciel Villanueva', 'Dr. José de Jesús Hernández López', 9, 1, 'mesas/mesa9/838-resumen.pdf', 'mesas_ext/mesa9/838-extenso.pdf', 2, '2017-09-05', NULL),
(832, 1246, 1, 'Atributos foliares de Q. laurina y Q. glaucoides en un gradiente de diversidad de encinos', 'Marcela Sofía Vaca Sánchez', 'Antonio González-Rodríguez Yurixhi Maldonado López y Pablo Cuevas-Reyes', 'Pablo Cuevas Reyes ', 1, 0, 'mesas/mesa1/832-resumen.pdf', 'mesas_ext/mesa1/832-extenso.pdf', 2, '2017-09-05', NULL),
(833, 1247, 1, 'Cambios en patrones de herbivoría y asimetría fluctuante foliar en bosques tropicales secos sucesionales', 'Joan Sebastian Aguilar Peralta', 'Luis Daniel Avila Cabadilla, Mariana Yólotl Alvarez Añorve,  Antonio González Rodríguez, Yurixhi Maldonado López4 & Pablo Cuevas Reyes', 'Pablo Cuevas Reyes', 1, 0, 'mesas/mesa1/833-resumen.pdf', 'mesas_ext/mesa1/833-extenso.pdf', 2, '2017-09-05', NULL),
(834, 1249, 1, 'PATRONES DE ASIMETRÍA FLUCTUANTE Y HERBIVORÍA ASOCIADOS AL GÉNERO CROTON EN BOSQUES CONSERVADOS Y SECUNDARIOS DE CHAMELA, JALISCO.', 'JOSE GERARDO GONZALEZ ESQUIVEL ', 'YURIXHI MALDONADO LOPEZ, PABLO CUEVAS REYES, ANTONIO GONZALEZ RODRIGUEZ, MARIANA YOLOTL ALVAREZ AÑORVE & LUIS DANIEL AVILA CABADILLA', 'YURIXHI MALDONADO LOPEZ', 1, 1, 'mesas/mesa1/834-resumen.pdf', 'mesas_ext/mesa1/834-extenso.pdf', 2, '2017-09-05', NULL),
(835, 1251, 2, 'Crecimiento isodiamétrico de los pelos radiculares en las mutantes med12 y med13 de Arabidopsis thaliana en respuesta a sacarosa', 'José Carlos Prado Rodríguez, Saraí Esparza Reynoso, León Francisco Ruíz Herrera , José López Bucio', 'José Carlos Prado Rodríguez, Saraí Esparza Reynoso, León Francisco Ruíz Herrera, José López Bucio', ' León Francisco Ruíz Herrera', 3, 1, 'mesas/mesa3/835-resumen.pdf', 'mesas_ext/mesa3/835-extenso.pdf', 2, '2017-09-05', NULL),
(836, 1232, 2, 'EVALUACIÓN DE LAS PREFERENCIAS DE LOS SITIOS DE REPRODUCCIÓN DE AVES QUE ANIDAN EN CAVIDADES SECUNDARIAS EN MORELIA, MICHOACÁN', 'Mario Abraham Vázquez Buitron ', ' Alejandro Salinas Melgoza, Vicente Salinas Melgoza', ' Alejandro Salinas Melgoza', 1, 1, 'mesas/mesa1/836-resumen.pdf', 'mesas_ext/mesa1/836-extenso.pdf', 2, '2017-09-05', NULL),
(837, 1221, 1, 'La gestión de proyectos culturales en el Centro Histórico de León: Análisis de la actividad cultural, artística y gestión de proyectos', 'Brayan Francisco Salazar Sandoval', 'José de Jesús Cordero Domínguez', 'José de Jesús Cordero Domínguez', 4, 1, 'mesas/mesa4/837-resumen.pdf', 'mesas_ext/mesa4/837-extenso.pdf', 2, '2017-09-05', NULL),
(839, 1237, 1, 'CAMBIOS EN LA ARQUITECTURA RADICULAR DE ARABIDOPSIS INDUCIDOS POR LA COLONIZACIÓN CON AZOSPIRILLUM', 'JONANCI ARREOLA RIVERA ', 'Ma. Elena Mellado Rojas, Elda Beltrán Peña', 'Elda Beltrán Peña', 3, 1, 'mesas/mesa3/839-resumen.pdf', NULL, 3, '2017-09-05', NULL),
(840, 1238, 2, 'Algoritmos genéticos para resolver el problema de Thomson', 'Luis Raúl Torres Rojas', 'José Antonio González Cervera', 'José Antonio González Cervera', 6, 1, 'mesas/mesa6/840-resumen.pdf', 'mesas_ext/mesa6/840-extenso.pdf', 2, '2017-09-05', NULL),
(842, 323, 2, 'Caracterización y Optimización de la Técnica de Malteo de Cebada para la Producción de Malta Cervecera', 'José Francisco Lázaro luna ', 'Rosa Maria Garcia Martinez ', 'Rosa Maria Garcia Martinez ', 3, 1, 'mesas/mesa3/842-resumen.pdf', NULL, 4, '2017-09-05', NULL),
(843, 1264, 1, 'ELABORACIÓN Y CARACTERIZACIÓN DE UNA PASTA ENRIQUECIDA CON HARINA DE NOPAL', 'Andrea Liliana Carbajal Chavez', 'Andrea Liliana Carbajal Chavez, M.C Rosa Maria Garcia Martinez', 'M.C Rosa María García Martínez', 3, 1, 'mesas/mesa3/843-resumen.pdf', NULL, 3, '2017-09-05', NULL),
(845, 1261, 2, 'NIÑOS Y NIÑAS EN SITUACIONES DE EXCLUSIÓN SOCIAL COMO SUJETOS DE DERECHO ', 'Juan Ignacio Miranda Macedo, Sonia Stephanie Nuñez Reyes', 'Karen Villaseñor Villa', 'Ana Maria Méndez Puga', 4, 1, 'mesas/mesa4/845-resumen.pdf', 'mesas_ext/mesa4/845-extenso.pdf', 2, '2017-09-05', NULL),
(846, 1258, 2, 'NIÑOS Y NIÑAS EN SITUACIONES DE EXCLUSIÓN SOCIAL COMO SUJETOS DE DERECHO ', 'Sonia Stephanie Nuñez Reyes, Juan Ignacio Miranda Macedo', 'Karen Villaseñor Villa', 'Ana Maria Méndez Puga', 4, 1, 'mesas/mesa4/846-resumen.pdf', NULL, 2, '2017-09-05', NULL),
(847, 1263, 2, 'NIÑOS Y NIÑAS EN SITUACIONES DE EXCLUSIÓN SOCIAL  COMO SUJETOS DE DERECHO', 'Juan Ignacio Miranda Macedo, Sonia Stephanie Nuñez Reyes, Karen Villaseñor Villa', 'Ana  María Méndez Puga', 'Ana  María Méndez Puga', 4, 1, NULL, NULL, 4, '2017-09-05', NULL),
(848, 1263, 2, 'NIÑOS Y NIÑAS EN SITUACIONES DE EXCLUSIÓN SOCIAL  COMO SUJETOS DE DERECHO', 'Juan Ignacio Miranda Macedo, Sonia Stephanie Nuñez Reyes, Karen Villaseñor Villa', 'Ana  María Méndez Puga', 'Ana  María Méndez Puga', 4, 1, 'mesas/mesa4/848-resumen.pdf', NULL, 2, '2017-09-05', NULL),
(18, 149, 1, 'ANÁLISIS DE NANOFORMAS DE CARBONO OBTENIDAS A PARTIR DE NAFTALENO', 'Jael Madaí Ambriz Torres', 'Carmen Judith Gutiérrez García , José de Jesús Contreras Navarrete , Francisco Gabriel Granados Martínez, María Remedios Cisneros Magaña, Orlando Hernández Cristóbal, Yesenia Arredondo León, Lada Domratcheva Lvova', 'Lada Domratcheva Lvova', 2, 0, 'mesas/mesa2/18-resumen.pdf', 'mesas_ext/mesa2/18-extenso.pdf', 2, '2017-07-12', NULL),
(859, 1288, 2, 'EVALUACIÓN DEL CONTENIDO DE CLOROFILA EN PLÁNTULAS DE DOS ESPECIES DE BOSQUE MESÓFILO DE MONTAÑA EN DOS TRATAMIENTOS DE COBERTURA DEL DOSEL.', 'Karla Ponce de León León  , Arnulfo Blanco García', 'Elizabeth Saucedo Gudiño, Karla Contreras.', 'Arnulfo Blanco García', 7, 1, 'mesas/mesa7/859-resumen.pdf', 'mesas_ext/mesa7/859-extenso.pdf', 2, '2017-09-06', NULL),
(857, 1287, 1, 'Generación de esponjas de quitosano cargadas con nanopartículas de plata y pentoxifilina para la inhibición de adherencias peritoneales en un modelo experimental de cesárea', 'Andrea Yamile Murguía Garnica, Adalberto Zamudio Ojeda, David Alejandro López De La Mora', 'Leonardo Fernández Ávila, Samaria Cortés Núñez, Cristina Noemí Alatorre, Gustavo Soto Cruz, Oscar Andrés Zamora, Octavio Hernández Origel', 'Adalberto Zamudio Ojeda, David Alejandro López De La Mora', 5, 1, 'mesas/mesa5/857-resumen.pdf', 'mesas_ext/mesa5/857-extenso.pdf', 2, '2017-09-06', NULL),
(863, 1296, 2, 'Efecto del consumo de refrescos sobre parámetros serológicos de animales programados metabolicamente', 'Héctor Urquiza Marín', 'Ruth Noriega Cisneros, Katia Jocelin Moreno Sánchez', 'Héctor Urquiza Marín', 5, 0, NULL, NULL, 4, '2017-09-06', NULL),
(864, 1296, 2, 'Efecto del consumo de refrescos sobre parámetros serológicos de animales programados metabolicamente', 'Héctor Urquiza Marín', 'Ruth Noriega Cisneros, Katia Jocelin Moreno Sánchez', 'Héctor Urquiza Marín', 5, 0, 'mesas/mesa5/864-resumen.pdf', NULL, 2, '2017-09-06', NULL),
(862, 1267, 1, 'CORRELACIÓN ENTRE LA RESISTENCIA A LOS ANTIBIÓTICOS β-LACTÁMICOS  Y LA PRESENCIA DE LOS GENES blaGIM y blaSIM EN CEPAS DE Salmonella enterica AISLADAS DE ALIMENTOS EN MICHOACÁN ', 'Marcos Ortiz Avalos', 'Ma. Soledad Vázquez Garcidueñas , Estela López Cruz, Elda Araceli Hernández Díaz y Gerardo Vázquez Marrufo', 'Ma. Soledad Vázquez Garcidueñas', 5, 1, 'mesas/mesa5/862-resumen.pdf', 'mesas_ext/mesa5/862-extenso.pdf', 2, '2017-09-06', NULL),
(865, 1234, 1, 'AISLAMIENTO Y CARACTERIZACIÓN DE BACTERIAS CON ACTIVIDAD CELULOLÍTICA', 'Maria Rosario Anguiano Aguilar, Esteban Anguiano Aguilar', 'Martha Elena Pedraza Santos', 'Ana Tztzqui Chávez Bárcenas', 3, 1, 'mesas/mesa3/865-resumen.pdf', 'mesas_ext/mesa3/865-extenso.pdf', 2, '2017-09-06', NULL),
(872, 1244, 1, 'LA INFLUENCIA DE LA CRISTALIZACIÓN DE SALES EN EL DETERIORO DE LA IGNIMBRITA DEL CONTEXTO URBANO-HISTÓRICO DE MORELIA.', 'Aldo Zamudio Pérez', 'Juan Alberto Bedolla Arroyo y Elia Mercedes Alonso Guzmán', 'Juan Alberto Bedolla Arroyo y Elia Mercedes Alonso Guzmán', 7, 1, 'mesas/mesa7/872-resumen.pdf', 'mesas_ext/mesa7/872-extenso.pdf', 2, '2017-09-06', NULL),
(867, 1278, 1, 'Biosíntesis, caracterización y actividad antimicrobiana de nanopartículas de plata elaboradas a partir de Bougainvillea spectabilis', 'Angel Daniel Ramírez Herrera', 'Martha Isabel González Domínguez y Gloria Barbosa Sabanero', 'Martha Isabel González Domínguez y Gloria Barbosa Sabanero', 3, 1, 'mesas/mesa3/867-resumen.pdf', 'mesas_ext/mesa3/867-extenso.pdf', 2, '2017-09-06', NULL),
(869, 1302, 1, 'COMPRENSIONES SOBRE LA REPARACIÓN SIMBÓLICA DE LAS VICTIMAS POLICIALES DESDE LA RECONSTRUCCIÓN DE LA MEMORIA HISTÓRICA EN CASOS EMBLEMÁTICOS DE LA ESCUELA DE INTELIGENCIA Y CONTRAINTELIGENCIA DE LA POLICÍA NACIONAL DE COLOMBIA', 'Luis Ángel Cabezas Sánchez ', 'José Martín Chavarría Sánchez', 'Luis Guillermo Restrepo Jaramillo', 4, 1, 'mesas/mesa4/869-resumen.pdf', 'mesas_ext/mesa4/869-extenso.pdf', 2, '2017-09-06', NULL),
(870, 1297, 1, 'El rol de la mujer en el narcomundo', 'Alan Eduardo Ceja Rodríguez', 'Alan  Eduardo Ceja Rodríguez', 'Hiram Reyes Sosa', 4, 1, 'mesas/mesa4/870-resumen.pdf', 'mesas_ext/mesa4/870-extenso.pdf', 2, '2017-09-06', NULL),
(871, 1313, 2, 'Sensibilidad a detergentes y antifúngicos en las mutantes arf de  Mucor circinelloides', 'Yessica Jazmín Díaz Alvarado', 'José Alberto Patiño-Mendina, Rafael Ortiz-Alvarado, Martha I. Ramirez-Diaz, Victoriano Garre', 'Víctor Meza-Carmen', 5, 1, 'mesas/mesa5/871-resumen.pdf', NULL, 2, '2017-09-06', NULL),
(874, 1273, 2, 'CARACTERIZACIÓN DEL SINTERIZADO DE COMPUESTOS DE TI6AL4V / CoCrMo MEDIANTE MICROTOMOGRAFÍA COMPUTARIZADA', 'Ana Silvia González Pedraza', 'Luis Olmos', 'Luis Olmos', 1, 1, 'mesas/mesa1/874-resumen.pdf', 'mesas_ext/mesa1/874-extenso.pdf', 2, '2017-09-06', NULL),
(875, 1314, 2, 'EVALUACIÓN DEL CONCRETO ELABORADO CON METACAOLÍN, NANOSÍLICE Y ALMIDÓN DE MAIZ, MEDIANTE LAS PRUEBAS DE RESISTENCIA A LA COMPRESIÓN Y VELOCIDAD DE PULSO ULTRASÓNICO', 'Sergio Jacobo Jacobo', 'W. Martínez Molina , E.M. Alonso Guzmán , H. L. Chávez García , C. Lara Gómez , M.A. Navarrete Seras , S.C. Arguello Hernández y A.L. Valle Moreno', 'W. Martínez Molina', 1, 1, 'mesas/mesa1/875-resumen.pdf', 'mesas_ext/mesa1/875-extenso.pdf', 2, '2017-09-06', NULL),
(876, 1290, 1, 'INTERCONEXIÓN DE SISTEMAS FOTOVOLTAICOS A LA RED COMERCIAL', 'Janett Gutiérrez Ocegueda', 'Cristóbal Rafael Ochoa López', 'Oscar Fernando Munoz Gumeta ', 2, 1, 'mesas/mesa2/876-resumen.pdf', 'mesas_ext/mesa2/876-extenso.pdf', 2, '2017-09-06', NULL),
(877, 1276, 1, 'ANÁLISIS DE COBERTURA Y COMPARACIÓN DE METODOLOGÍAS PARA DETERMINAR LA DISTRIBUCIÓN DE ORGANISMOS CALCIFICANTES INCRUSTANTES  EN LOS ECOSISTEMAS ARRECIFALES DEL PACÍFICO, MEXICANO', 'María Fernanda Rosas Corona', 'Héctor Hugo Nava Bravo  y Esperanza Vianney Núñez Cárdenas', 'Héctor Hugo Nava Bravo', 7, 1, 'mesas/mesa7/877-resumen.pdf', 'mesas_ext/mesa7/877-extenso.pdf', 2, '2017-09-06', NULL),
(878, 1254, 1, 'Diseño y construcción de un prototipo de mueble con retícula modular, para almacenamiento en la vivienda actual', 'Francisco Javier López Melgar ', 'Raúl Espinoza Herrera ', 'Raúl Espinoza Herrera ', 2, 1, 'mesas/mesa2/878-resumen.pdf', 'mesas_ext/mesa2/878-extenso.pdf', 2, '2017-09-06', NULL),
(879, 1262, 1, 'HABILIDADES METACOGNITIVAS: BUSCAR, SELECCIONAR, ORDENAR Y ANALIZAR INFORMACIÓN DE INTERNET', 'Karla Jacqueline Durán Márquez ,  María Fernanda Gutiérrez Molina', 'o', 'Joanna Koral Chávez López', 8, 1, 'mesas/mesa8/879-resumen.pdf', 'mesas_ext/mesa8/879-extenso.pdf', 2, '2017-09-06', NULL),
(880, 1315, 1, 'HABILIDADES METACOGNITIVAS: BUSCAR, SELECCIONAR, ORDENAR Y ANALIZAR INFORMACIÓN DE INTERNET', 'Durán Márquez Karla Jacqueline, Gutiérrez Molina María Fernanda, ', 'o', 'Chávez López Joanna Koral ', 8, 1, 'mesas/mesa8/880-resumen.pdf', NULL, 2, '2017-09-06', NULL),
(881, 1281, 1, 'HABILIDADES METACOGNITIVAS: BUSCAR, SELECCIONAR, ORDENAR Y ANALIZAR INFORMACIÓN DE INTERNET', 'Durán Márquez Karla Jacqueline, Gutiérrez Molina María Fernanda', '0', 'Chávez López Joanna Koral ', 8, 1, 'mesas/mesa8/881-resumen.pdf', 'mesas_ext/mesa8/881-extenso.pdf', 2, '2017-09-06', NULL),
(882, 797, 2, 'Los vacíos urbanos en la ciudad de Morelia', 'Adriana Rodríguez Híjar', 'Jorge Alejandro Ávila Olivera', 'Jorge Alejandro Ávila Olivera', 8, 1, 'mesas/mesa8/882-resumen.pdf', NULL, 2, '2017-09-06', NULL),
(883, 1292, 1, 'ESTABILIDAD DIMENSIONAL DE MADERA TRATADA TÉRMICAMENTE EN ACEITE', 'Raúl Espinoza Herrera', 'Leonor Isabel Sandoval Ruíz', 'Raúl Espinoza Herrera', 2, 1, 'mesas/mesa2/883-resumen.pdf', NULL, 2, '2017-09-06', NULL),
(884, 1292, 2, 'RESISTENCIA A LA FLEXIÓN ESTÁTICA DE MADERA TERMOTRATADA EN ACEITE', 'Raúl Espinoza Herrera', 'Lucía Rosales Romero', 'Raúl Espinoza Herrera', 2, 1, 'mesas/mesa2/884-resumen.pdf', NULL, 2, '2017-09-06', NULL),
(897, 659, 1, 'ESTIMACIÓN DE DENSIDAD DE MARIPOSA MONARCA A PARTIR DE ANÁLISIS DENDROMÉTRICO Y DISPONIBIBLIDAD DE PERCHADO EN EL HÁBITAT DE HIBERNACIÓN', 'José Trinidad Soto González', 'Alberto Gómez-Tagle Chávez', 'Alberto Gómez-Tagle Chávez', 1, 1, 'mesas/mesa1/897-resumen.pdf', 'mesas_ext/mesa1/897-extenso.pdf', 2, '2017-09-06', NULL),
(886, 1317, 1, 'NOCIÓN DE PADRE EN NIÑOS INSTITUCIONALIZADOS', 'Atziri Estephany Cervantes Espinoza ', 'Ninguno ', 'María del Carmen Manzo Chávez', 4, 1, 'mesas/mesa4/886-resumen.pdf', 'mesas_ext/mesa4/886-extenso.pdf', 2, '2017-09-06', NULL),
(900, 1325, 1, 'Habilidades metacognitivas en estudiantes de educación superior', 'Alan Alexis González Gutiérrez ', '0', 'Joanna Koral Chávez López', 8, 1, 'mesas/mesa8/900-resumen.pdf', 'mesas_ext/mesa8/900-extenso.pdf', 2, '2017-09-06', NULL),
(888, 1316, 2, 'TASA DE DEPOSITO DE CARBONATO POR ORGANISMOS  CALCIFICANTES INCRUSTANTES EN MICROHABITATS ARRECIFALES EN ZIHUATANEJO GUERRERO', 'Esperanza Vianney Núñez Cárdenas ', 'Héctor Hugo Nava Bravo  y  María Fernanda Rosas Corona ', 'Héctor Hugo Nava Bravo ', 7, 1, 'mesas/mesa7/888-resumen.pdf', 'mesas_ext/mesa7/888-extenso.pdf', 2, '2017-09-06', NULL),
(889, 1307, 2, 'EFECTO DEL SUERO SANGUÍNEO EN LAS MUTANTES arf DE Mucor circinelloides', 'Daniela Eréndira Acatitla Mote', 'José Alberto Patiño Medina, Marco Valle-Maldonado, Rafael OrtizAlvarado, Martha I. Ramírez Díaz, Victoriano Garre, ', 'Víctor Meza Carmen', 5, 1, 'mesas/mesa5/889-resumen.pdf', NULL, 2, '2017-09-06', NULL),
(890, 1324, 2, 'REDUCCIÓN DE LA RESPUESTA GLICÉMICA POSPRANDIAL EN PACIENTES CON DIABETES MELLITUS TIPO 2 POST-INGESTA DE INULINA DE AGAVE', 'Yire Zavala Mendoza', 'Julieta Elizabeth Magaña Arana ', 'Lidia Manzo Rodriguez', 5, 1, 'mesas/mesa5/890-resumen.pdf', 'mesas_ext/mesa5/890-extenso.pdf', 2, '2017-09-06', NULL),
(891, 1319, 1, 'LECTURA, ESCRITURA Y DESARROLLO DE LA COMPRENSIÓN LECTORA COMO ELEMENTOS FUNDAMENTALES PARA LA MEJORA DEL DESEMPEÑO ACADÉMICO EN ESTUDIANTES', ' Annecy Vianney Díaz García, Laura Karen Castro Cedeño, Roxana Alcaraz Alcaraz', 'Ana María Méndez Puga', 'Ana María Méndez Puga', 8, 1, 'mesas/mesa8/891-resumen.pdf', 'mesas_ext/mesa8/891-extenso.pdf', 2, '2017-09-06', NULL),
(895, 1280, 1, 'EFECTO DE LA COBERTURA ARBÓREA SOBRE LA DENSIDAD Y SOBREVIVENCIA DE PLÁNTULAS DE CARPINUS CAROLINIANA. ', 'Luis Antonio Ruiz Saucedo, Erika Rodriguez Nieto', 'Gerardo Guzmán Aguilar, Jorge Herrera Franco', 'José Arnulfo Blanco García', 1, 1, 'mesas/mesa1/895-resumen.pdf', 'mesas_ext/mesa1/895-extenso.pdf', 2, '2017-09-06', NULL),
(896, 1323, 2, 'CALIDAD DE VIDA EN PERSONAS ADULTAS MAYORES DE IRAPEO, MUNICIPIO DE CHARO, MICHOACÁN', 'María Magdalena Lozano Zúñiga, Nayeli Galván Paniagua', 'ninguno', 'María Magdalena Lozano Zúñiga, ', 5, 1, 'mesas/mesa5/896-resumen.pdf', NULL, 2, '2017-09-06', NULL),
(902, 1208, 1, 'Patrones de variación en la morfología foliar, herbivoría y asimetría fluctuante en Quercus laurina a lo largo de un gradiente de diversidad de especies de encinos.', 'Erandi Velasco Morón', 'Pablo Cuevas Reyes, Antonio González Rodríguez', 'Pablo Cuevas Reyes', 1, 1, 'mesas/mesa1/902-resumen.pdf', NULL, 2, '2017-09-06', NULL),
(913, 1064, 1, 'COMPORTAMIENTO CLÍNICO DEL VIRUS ZIKA EN UNA REGIÓN ENDÉMICA DE MICHOACÁN', 'ARIADNA LORENA MONDRAGON GARCIA', 'GEORGINA ORTIZ MARTINEZ, MARIA MAR GARCIA, ARTURO REYES SANDOVAL, FRANCISCO ALEJANDRO LAGUNAS RANGEL', 'MARTHA EVA VIVEROS SANDOVAL', 5, 1, 'mesas/mesa5/913-resumen.pdf', 'mesas_ext/mesa5/913-extenso.pdf', 2, '2017-08-25', NULL),
(899, 403, 1, 'AISLAMIENTO Y CARACTERIZACIÓN DE BACTERIAS FIJADORAS DE NITRÓGENO EN MICHOACÁN', 'Mayra Fabiola Córdoba Ramírez,  ', 'Ana Tztzqui Chávez Bárcenas, José Luciano Morales García', 'Ana Tztzqui Chávez Bárcenas', 3, 1, 'mesas/mesa3/899-resumen.pdf', 'mesas_ext/mesa3/899-extenso.pdf', 2, '2017-09-06', NULL),
(901, 1185, 1, 'LOS ACTUALES RETOS Y PARADIGMAS DEL DERECHO CIVIL Y SOCIAL', 'RICARDO GARCÍA MORA', 'MARIO ALBERTO VILLANUEVA ARRIAGA', 'DR. RICARDO GARCÍA MORA', 4, 1, 'mesas/mesa4/901-resumen.pdf', 'mesas_ext/mesa4/901-extenso.pdf', 2, '2017-09-06', NULL),
(903, 1207, 1, ' Patrones de herbivoría y asimetría fluctuante foliar en Avicennia germinans, Laguncularia racemosa y Rizophora mangle en ambientes degradados de la Mancha,Veracruz.', 'Dulce Stefany Arreola RIivera ', 'Pablo Cuevas Reyes ', 'Pablo Cuevas Reyes ', 1, 1, 'mesas/mesa1/903-resumen.pdf', 'mesas_ext/mesa1/903-extenso.pdf', 2, '2017-09-06', NULL),
(904, 791, 2, 'EVALUACIÓN DE MORTEROS CON ADICIONES ORGANICAS SOMETIDOS A PRUEBAS NO DESTRUCTIVAS.', 'Laura Arcelia Vaca Arciga', 'Wilfrido Martínez Molina, Elia Mercedes Alonso Guzmán, Sandra del Carmen Arguello Hernández, Cipriano Bernabé Reyes, Luis Colín Velázquez, Emmanuel González Castro, Job Daniel Álvarez Pita.', 'Hugo Luis Chávez García', 9, 1, 'mesas/mesa9/904-resumen.pdf', 'mesas_ext/mesa9/904-extenso.pdf', 2, '2017-09-06', NULL),
(905, 1298, 2, 'PROTOCOLO: PERCEPCIÓN DEL CUIDADO DE ENFERMERÍA RELACIONADO CON VIOLENCIA OBSTÉTRICA EN MUJERES DURANTE EL TRABAJO DE PARTO', 'Alma Rosa Picazo Carranza', ' Graciela González Villegas, Ma. Lilia Alicia Alcántar Zavala,  Elva Rosa Valtierra Oba Ma. de Jesús Ruiz Recéndiz', 'Alma Rosa Picazo Carranza', 5, 0, 'mesas/mesa5/905-resumen.pdf', 'mesas_ext/mesa5/905-extenso.pdf', 2, '2017-09-07', NULL),
(907, 1099, 1, 'COMPARACIÓN DE LA PERMEABILIDAD EDÁFICA EN SUELOS DE BOSQUE Y HUERTA DE AGUACATE EN MICHOACÁN, MÉXICO', 'Karina Alvarado Huitron ', 'Alberto Gómez-Tagle Chávez, Rafael Morales Chávez', 'Alberto Gómez-Tagle Chávez', 7, 1, 'mesas/mesa7/907-resumen.pdf', NULL, 2, '2017-09-07', NULL),
(914, 1185, 1, 'LOS RETOS Y PARADIGMAS DEL DERECHO CORPORATIVO', 'RICARDO GARCÍA MORA', 'RICARDO GARCÍA MORA', 'DR. RICARDO GARCÍA MORA', 4, 0, 'mesas/mesa4/914-resumen.pdf', 'mesas_ext/mesa4/914-extenso.pdf', 2, '2017-07-04', NULL),
(915, 649, 1, 'CARACTERÍSTICAS DINÁMICAS DE PUENTES HISTÓRICOS', 'Juan Ignacio López Pérez, José Manuel Jara Guerrero', 'Juan Ignacio López Pérez, José Manuel Jara Guerrero', 'Juan Ignacio López Pérez, José Manuel Jara Guerrero', 2, 0, 'mesas/mesa2/915-resumen.pdf', 'mesas_ext/mesa2/915-extenso.pdf', 2, '2017-09-08', NULL),
(916, 649, 1, 'SALUD ESTRUCTURAL EN PUENTES DE MEDIANA LONGITUD', 'Uriel Galván Carrillo, José Manuel Jara Guerrero', 'Uriel Galván Carrillo, José Manuel Jara Guerrero', 'Uriel Galván Carrillo, José Manuel Jara Guerrero', 2, 0, 'mesas/mesa2/916-resumen.pdf', 'mesas_ext/mesa2/916-extenso.pdf', 2, '2017-09-08', NULL),
(917, 360, 2, 'CATALIZADORES RuxMo/SBA-15 PARA LA\r\nHIDRODESULFURACIÓN DE DIBENZOTIOFENO', 'N.L. Torres-García, R. Huirache-Acuña, T.A. Zepeda-Partida, J.M. Rivera-Garnica, P.J. Vázquez-Salas', 'N.L. Torres-García, R. Huirache-Acuña, T.A. Zepeda-Partida, J.M. Rivera-Garnica, P.J. Vázquez-Salas', 'N.L. Torres-García, R. Huirache-Acuña, T.A. Zepeda-Partida, J.M. Rivera-Garnica, P.J. Vázquez-Salas', 2, 0, 'mesas/mesa2/917-resumen.pdf', 'mesas_ext/mesa2/917-extenso.pdf', 2, '2017-09-06', NULL),
(922, 517, 2, 'PROMOCIÓN DEL DESARROLLO RADICULAR DE Arabidopsis thaliana POR  Bacillus thuringiensis Y Pseudomonas aeruginosa', 'Sandra Lizbeth Morales Toscano', 'Luis Enrique Flores Pantoja', ' Rafael Jiménez Mejía, José  López Bucio, Gustavo Ravelo Ortega, Joel Edmundo López Meza, Pedro Damián Loeza Lara', 3, 1, 'mesas/mesa3/922-resumen.pdf', 'mesas_ext/mesa3/922-extenso.pdf', 2, '2017-08-22', '2017-09-22'),
(923, 335, 2, 'EVALUACIÓN DE NIVEL DE SUSTITUCIÓN DE ALIMENTO COMERCIAL POR HOJAS DE MORERA EN EL CRECIMIENTO DE CONEJOS', 'Cristian Jesús Chávez Alvarado , Miriam Arroyo Damián, Carlos Escalera Gallardo', 'Miriam Arroyo Damián, Carlos Escalera Gallardo', 'Miriam Arroyo Damián, Carlos Escalera Gallardo', 9, 1, 'mesas/mesa9/923-resumen.pdf', NULL, 2, '2017-08-11', NULL),
(924, 1019, 1, 'TÉCNICAS PARA EL ANÁLISIS Y ASEGURAMIENTO DE LA CALIDAD DEL AGUA EN LA PRODUCCIÓN DE C. annum var. Darsena', 'Juan Pablo Figuero Morán', 'Cesar Rogelio Solorio Alvarado, Rafael Ortiz-Alvarado', 'RAFAEL ORTIZ ALVARADO', 7, 1, 'mesas/mesa7/924-resumen.pdf', 'mesas_ext/mesa7/924-extenso.pdf', 2, '2017-08-25', NULL);

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
(1, 1, 1, 1, 1, 1);

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
(1, 'administrador'),
(2, 'ponente'),
(3, 'evaluador'),
(4, 'moderador'),
(5, 'relator'),
(6, 'logistico'),
(7, 'asistente'),
(8, 'organizador'),
(9, 'encuentro'),
(10, 'ayuda');

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
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `a_paterno` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `a_materno` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `genero` int(11) DEFAULT NULL,
  `nacionalidad` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `municipio` int(11) DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `institucion` int(11) DEFAULT NULL,
  `facultad` int(11) DEFAULT NULL,
  `nivel` int(11) DEFAULT NULL,
  `mesa` int(11) DEFAULT NULL,
  `modalidad` int(11) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `mailing` text CHARACTER SET utf8 COLLATE utf8_spanish_ci,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `puesto` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `token` varchar(60) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `request_token` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `nombre`, `a_paterno`, `a_materno`, `edad`, `genero`, `nacionalidad`, `estado`, `municipio`, `email`, `institucion`, `facultad`, `nivel`, `mesa`, `modalidad`, `area_id`, `mailing`, `password`, `username`, `puesto`, `token`, `created_at`, `request_token`, `status`) VALUES
(100, 'JUAN CARLOS', 'TINOCO', 'MAGAÑA', 35, 1, 1, 15, 56, 'jcarlos2219@hotmail.com', 43, 330, 2, NULL, NULL, NULL, 'SI', 'abffa98bdb953b195fb787243f0a8df11ffdce7f', 'jcarlos2219', '2', '62872b665e382ff58658801f4eb209e427d182d6', '2017-08-15 15:02:56', '2017-07-04 00:31:17', 'Activo'),
(101, 'Vanessa', 'Chávez', 'Zárate', 22, 2, 1, 15, 56, 'love_ssa120@hotmail.com', 43, 349, 1, NULL, NULL, NULL, 'SI', 'f9130792a00f947a9e3c3609a49a9b126d17ea8f', 'vachavez', '2', '3d7fea8babbd9d74dda0dad29d2996ab83f7500d', '2017-08-15 15:02:56', '2017-07-04 02:17:03', 'Activo'),
(102, 'RENATO', 'ISMAEL', 'ARTEAGA', 27, 1, 1, 15, 56, 'ismarenato12@gmail.com', 6, 54, 2, NULL, NULL, NULL, 'SI', '018ab74652cd7d615aa56e16cea9aa05cdb61218', 'ismarenato', '2', '85074d5062f4187ae8a591d4057170970ade161f', '2017-08-15 15:02:56', '2017-07-04 22:02:26', 'Activo'),
(103, 'MIGUEL ANGEL', 'GARCIA', 'RUELAS', 24, 1, 1, 15, 56, 'angel.ruelitas03@gmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', 'ccb08d0b9bace2f5e0ef35ca28058c6552c66268', 'ruelitas', '7', 'cf3d5eb96bbbeb0ead5349d0fbe9da6543385859', '2017-08-15 15:03:20', '2017-07-05 00:17:36', 'Activo'),
(104, 'JOSE', 'HERRERA', 'CAMACHO', 44, 1, 1, 15, 56, 'josheca@gmail.com', 43, 330, 3, NULL, NULL, NULL, 'SI', 'e3d83be05783aa98e86943235b650abff7d96307', 'josheca', '7', 'e6e207eebabdf4178fbdfa21234cc5bbfff8e924', '2017-08-15 15:03:20', '2017-07-05 00:49:50', 'Activo'),
(105, 'JOSE', 'HERRERA', 'CAMACHO', 44, 1, 1, 15, 56, 'josheca@gmail.com', 43, 330, 3, NULL, NULL, NULL, 'SI', 'e3d83be05783aa98e86943235b650abff7d96307', 'josheca1', '2', '6a939a757ee9b280c3c6ad89e1396e1a2b106bca', '2017-08-15 15:02:56', '2017-07-05 00:55:05', 'Activo'),
(106, 'JUAN CARLOS', 'TINOCO', 'MAGAÑA', 35, 1, 1, 15, 56, 'jcarlos2219@hotmail.com', 43, 330, 2, NULL, NULL, NULL, 'SI', 'abffa98bdb953b195fb787243f0a8df11ffdce7f', 'jcarlos2219', '7', 'b79eb440c50bc0ddff53415c1d1361ee821b97ad', '2017-08-15 15:03:20', '2017-07-05 01:12:43', 'Activo'),
(134, 'José Alberto', 'Patiño', 'Medina', 25, 1, 1, 15, 56, 'joset_3i@hotmail.com', 43, 346, 2, NULL, NULL, NULL, 'NO', '223fd7e31ecefba83273cbd26d86ea7120ffd7d8', 'albertpatino26', '2', 'aa06d7560f42534222625810cab0de9398457f65', '2017-08-15 15:02:56', '2017-07-10 18:30:31', 'Activo'),
(109, 'Liliana Sarahí ', 'Robledo', 'Barragán ', 24, 2, 1, 15, 44, 'sarahi281519@gmail.com', 68, 371, 2, NULL, NULL, NULL, 'SI', '5abbd93ed871aa31ef85755f6ce3db35a1f9d7ec', 'sarahi92', '2', '1c4d30c5d7939889160ca1393816c1926af15930', '2017-08-15 15:02:56', '2017-07-05 18:18:51', 'Activo'),
(110, 'Saúl', 'Domínguez', 'García ', 28, 1, 1, 15, 56, 'sauldgs@hotmail.com', 43, 340, 2, NULL, NULL, NULL, 'SI', '744b89cebcc9b8c0e5f9988669a7bb64474dc135', 'Saúl ', '2', '55313bb15c0beba334c0deaceadc8daccde221a7', '2017-08-15 15:02:56', '2017-07-05 18:34:49', 'Activo'),
(111, 'Andrea', 'Bocanegra', 'Martínez', 27, 2, 1, 15, 56, 'andreaboma@outlook.com', 43, 340, 3, NULL, NULL, NULL, 'SI', '502720206993523522f996cf327b0c9e6ee41837', 'andreabm', '2', '1d3c52e1cd34ab92ad2a411232f23bd24b47d66e', '2017-08-15 15:02:56', '2017-07-05 18:36:13', 'Activo'),
(112, 'Adrián', 'Gómez', 'Baltazar', 31, 1, 1, 15, 56, 'ad_riangb@hotmail.com', 43, 330, 2, NULL, NULL, NULL, 'NO', '939138294b214e2b09960babb59a494345d35719', 'adriangb0586', '2', '696bb0852b05ba427dd160d0a2ba7d5ca06f48d1', '2017-08-15 15:02:56', '2017-07-05 19:26:22', 'Activo'),
(113, 'karina del carmen', 'chávez', 'gómez', 27, 2, 1, 15, 56, 'ingquimica269@hotmail.com', 43, 340, 3, NULL, NULL, NULL, 'NO', '0d15f5539eb37cd0709d7e3ce22b1774b88f6221', 'karichavez', '2', '0018db2e0c7cebfc72e46d3625cf1264a52c0ff7', '2017-08-15 15:02:56', '2017-07-05 19:29:47', 'Activo'),
(114, 'ISMAEL', 'SANTOS ', 'RAMOS', 27, 1, 1, 15, 56, 'ismael_3690@hotmail.com', 43, 340, 2, NULL, NULL, NULL, 'SI', 'a5edad8576d0e31ed8785f5810e3a2871646c65f', 'isramos90', '2', '9f0ed1b5d2dfe8c55d5872e998f8c4dce57cab09', '2017-08-15 15:02:56', '2017-07-05 19:30:55', 'Activo'),
(115, 'Carlos Francisco', 'Ortiz', 'Paniagua', 40, 1, 1, 15, 56, 'carlinortiz@yahoo.com', 43, 350, 3, NULL, NULL, NULL, 'SI', '1a2bb18e90288acf91e85f857495ccb889992e80', 'carlinortiz', '2', '4f8ba036263a4f3111e6f9164e9e49c59f5f371d', '2017-08-15 15:02:56', '2017-07-06 00:41:23', 'Activo'),
(116, 'Elda Araceli', 'Hernández', 'Díaz', 26, 2, 1, 15, 56, 'cupdam@hotmail.com', 43, 339, 2, NULL, NULL, NULL, 'SI', '42b9af9ce7c7adc50d763101d60d5d6e78761435', 'Elda Hernández', '2', '86c30ff34ae555f34ea6cff02779848c2a62a384', '2017-08-15 15:02:56', '2017-07-06 01:01:05', 'Activo'),
(117, 'CARLOS', 'ARREOLA', 'FERNANDEZ', 39, 1, 1, 15, 56, 'carlosarreola@yahoo.com', 43, 329, 2, NULL, NULL, NULL, 'SI', '20185dcc0d621caa3a70bb20e902136221c44db1', 'carlosarreola', '2', 'a0504e139d7980ccffe367477dcfdea449c25356', '2017-08-15 15:02:56', '2017-07-06 03:46:19', 'Activo'),
(118, 'Grecia Michelle', 'Nolasco', 'Tinoco', 18, 2, 1, 15, 51, 'grecia.nolasco@hotmail.es', 26, 184, 1, NULL, NULL, NULL, 'SI', '3366475231f8690a9b5e29dacff0b44c837d9f8b', 'GreciaNolasco', '2', '9558207b50fb3f74992b41bf0fa453ba464fe61f', '2017-08-15 15:02:56', '2017-07-06 05:30:49', 'Activo'),
(119, 'Eva Nelida', 'Jimenez', 'Ruiz', 24, 2, 1, 15, 54, 'eva.con@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '88ad3cf64f6dd5682e121b623bc86bd5352a99dd', 'evanelida', '2', 'de3d45e0ab5fdbd33a7a8ef4edc8c14dfd5460e9', '2017-08-15 15:02:56', '2017-07-06 05:34:57', 'Activo'),
(120, 'Carla Isabel', 'Tena', 'Fuentes', 20, 2, 1, 15, 56, 'carlitatena@hotmail.com', 43, 330, 1, NULL, NULL, NULL, 'SI', 'f6a5e8c369ff2905df303172803767d90c86cd4f', 'Carla Tena', '2', '4929de7892e59ca53d896c3fe385bdaeb21460a8', '2017-08-15 15:02:56', '2017-07-06 14:20:28', 'Activo'),
(133, 'José de Jesús ', 'Contreras', 'Navarrete', 29, 1, 1, 15, 56, 'josecontrerasna@gmail.com', 43, 329, 2, NULL, NULL, NULL, 'SI', '9fb4dadebe7199c2135c126551d6b907190d2532', 'josecontrerasna', '2', '6e7604b5c785d7db50cb03b3a406a8935556c943', '2017-08-15 15:02:56', '2017-07-10 18:08:28', 'Activo'),
(123, 'LENIN EJECATL', 'MEDINA', 'OROZCO', 40, 1, 1, 15, 56, 'leninmed@gmail.com', 43, 346, 3, NULL, NULL, NULL, 'SI', 'a3560f5fcf6785577d67f4bd9b75e2d483222131', 'leninmed', '2', 'cecf61f952f37ff4a7a30b295fb5ef9dee06b201', '2017-08-15 15:02:56', '2017-07-06 15:25:11', 'Activo'),
(124, 'Israel Efraim ', 'Aguilar ', 'Anaya', 25, 1, 1, 15, 56, 'bio_ieaa_1991@hotmail.com', 43, 330, 2, NULL, NULL, NULL, 'SI', 'f8c246fd08fb44b4bb8a7ebcf3717f3056806986', 'Ing.Israel', '2', '57cbe9d63f0086f4626887d49a7c864e55a743a2', '2017-08-15 15:02:56', '2017-07-06 16:51:25', 'Activo'),
(125, 'Marisol', 'Báez', 'Magaña', 29, 2, 1, 15, 56, 'solbaez2@gmail.com', 43, 330, 2, NULL, NULL, NULL, 'SI', '40813212f912da7aa099b26dae177fed95223472', 'solbaez2@gmail.com', '2', 'eb4a480e903563064baae8e4d66267b8d2596c00', '2017-08-15 15:02:56', '2017-07-06 17:04:02', 'Activo'),
(126, 'Luis José', 'Flores', 'Alvarez', 32, 1, 1, 15, 56, 'ljfa21@yahoo.com.mx', 43, 330, 2, NULL, NULL, NULL, 'NO', '497a1cfe0839f2f3635ddb01e8b449703c84a47c', 'LuisJose09', '2', '7d04cef0b6d4a73839d89bc995ab7233442c011f', '2017-08-15 15:02:56', '2017-07-06 17:08:18', 'Activo'),
(127, 'Claudia Ivett ', 'Guillen', 'Reeyes', 28, 2, 1, 15, 56, 'stuck_icecream@hotmail.com', 43, 339, 2, NULL, NULL, NULL, 'SI', '2ef621e264bfd7235f20e2095d8fa2bb4101de36', 'claudiagr2288', '2', '22774eea65a3b4b34502212ca90ca4cb7ec286b6', '2017-08-15 15:02:56', '2017-07-06 17:48:10', 'Activo'),
(128, 'Adrián', 'Sierra', 'Maya', 24, 1, 1, 15, 100, 'asierra722@gmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', 'f36299a6ba9a5a4ff155de119b21ccf92a80a82f', 'Adrián Sierra', '2', 'c6a4c0a1561bc6b208da00996a78b5868cc2edd2', '2017-08-15 15:02:56', '2017-07-06 17:57:18', 'Activo'),
(129, 'Jose Ruben ', 'Soto ', 'Armas', 24, 1, 1, 15, 34, '116armas@gmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', 'da551ec4e2e1088e381384f7c56a06399bf3ce92', 'Jose Ruben Soto Armas', '2', '69bc1c2ab9205b863ca3243ddba6b790ada208ab', '2017-08-15 15:02:56', '2017-07-06 18:19:51', 'Activo'),
(130, 'Estela', 'Lopez', 'Cruz', 23, 2, 1, 15, 56, 'lopezestela@gmail.com', 43, 339, 1, NULL, NULL, NULL, 'SI', 'b11fb40ff434bd8774010bab94e7963728fc32f4', 'Estela', '2', '31f8c83f282cdc1cb8a9ff26271f61b9d4c03a18', '2017-08-15 15:02:56', '2017-07-06 18:32:22', 'Activo'),
(131, 'Angelica', 'Roque', 'Galicia', 30, 2, 1, 15, 56, 'roque_galicia@yahoo.com', 106, 377, 3, NULL, NULL, NULL, 'SI', '449f82fd564bd73f09ac85a2b5368a8aa888fe79', 'ROQUE2557', '2', 'cc989559cf8cebca4f116aee2356454f60cde9fd', '2017-08-15 15:02:56', '2017-07-09 20:22:53', 'Activo'),
(132, 'Carlos Adolfo', 'Coria', 'Gutiérrez', 18, 1, 1, 15, 109, 'ccoria@semgroupcorp.com', 43, 341, 2, NULL, NULL, NULL, 'SI', '3203fc343c006d0d5a8fb1cab2efe4f41321c509', 'DenverBroncos', '2', '5f6e7c582c570c8105f0dafe497d6daa39a4c378', '2017-08-15 15:02:56', '2017-07-10 15:00:11', 'Activo'),
(135, 'Diana Carolina', 'Villalpando', 'Sánchez', 24, 2, 1, 15, 56, 'diana_villalpando@hotmail.com', 43, 339, 2, NULL, NULL, NULL, 'SI', '707b022770e32e45a5c49fa9a8ab83d717022917', 'DianaVillalpando', '2', 'bb2ee2ac215176d9cd2b3812a2786c5b71ae4c09', '2017-08-15 15:02:56', '2017-07-11 00:22:22', 'Activo'),
(136, 'Ariel Jafeht', 'Hernández', 'Delgado', 20, 1, 1, 15, 37, 'Arieljafehth@outlook.com', 28, 193, 1, NULL, NULL, NULL, 'SI', 'e144e9116dabc1cdeb8339cd061aebc2872568f8', 'arieljafeht', '7', '3f49ce0346a33658b24b6a9e4092eea3370b198d', '2017-08-15 15:03:20', '2017-07-11 03:51:14', 'Activo'),
(1295, 'Alan Eduardo ', 'Ceja', 'Rodríguez', 25, 1, 1, 15, 52, 'zigmazero91@gmail.com', 24, 176, 1, NULL, NULL, NULL, 'SI', '23f82b0bdd0ee7c38a63e1566b29fc35aaab1a78', 'Alan-Elrick', '2', '10e016754aaa9ab22dedb632811a21425b4b1187', '2017-09-06 20:11:16', '2017-09-06 20:11:16', 'Activo'),
(138, 'María Teresa', 'Arceo', 'Martínez', 18, 2, 1, 15, 77, 'marithe.13_@hotmail.com', 43, 330, 2, NULL, NULL, NULL, 'NO', 'f54e5edada9210de765cfb13f3b99ed93981e91b', 'Marithe marce', '2', '6cfa307ca2c95192eb1ff11be978fa6db67b6318', '2017-08-15 15:02:56', '2017-07-11 15:10:48', 'Activo'),
(1293, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', NULL, '6f795439e6c51cb5ef1e9c43432749bed0a22696', '2017-09-06 19:24:11', '2017-09-06 19:24:11', NULL),
(1294, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', NULL, '22c81c262bf32a8c630b832fa56fcb5b84e850d0', '2017-09-06 19:59:23', '2017-09-06 19:59:23', NULL),
(140, 'Alejandro', 'Méndez', 'Navarro', 30, 1, 1, 15, 110, 'alex_mendez_navarro@live.com', 130, 404, 2, NULL, NULL, NULL, 'SI', '254d3d638ca4b5d3e1d7f145322c277cadf9b127', 'Alejandro_Mendez', '2', '4232fddd9a0205447b492998eaeec9b25339808f', '2017-08-15 15:02:56', '2017-07-11 16:53:33', 'Activo'),
(141, 'Alejandra', 'Pérez', 'Nava', 29, 2, 1, 15, 56, 'janna0516@hotmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', 'e857f0cda22e09f7a23687d674023537710313d4', 'ALEJANDRA', '2', '57aabeea042cba76b8a216c113d780fd808ffdce', '2017-08-15 15:02:56', '2017-07-11 22:14:02', 'Activo'),
(142, 'Andrea Monserrat', 'Negrete ', 'Paz', 27, 2, 1, 15, 56, 'anegrete.pz@gmail.com', 43, 339, 2, NULL, NULL, NULL, 'SI', '4ba183e1cc7427c2c9a51e7a8ea12d8db448f6c8', 'Andrea M Negrete Paz', '2', 'e2f5f2b0f0e1b50de1711720edf5b3e486950653', '2017-08-15 15:02:56', '2017-07-11 22:20:01', 'Activo'),
(143, 'Manuel ', 'Méndez', 'Gómez', 29, 1, 1, 15, 56, 'manmendezgomez@gmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', '88e2b17fa33f9dc2318413d8c0c9d007a88853ca', 'Manuelmg', '2', '7eff082002857528691880edd859966b2b0e631f', '2017-08-15 15:02:56', '2017-07-11 22:28:07', 'Activo'),
(144, 'Norma Elisa ', 'Valencia', 'Farías', 28, 2, 1, 15, 56, 'elisavalenciaf@gmail.com', 43, 332, 1, NULL, NULL, NULL, 'SI', '3854b7b9e0e55d4aee6a41223eb39fe514328920', 'ElisaValencia', '8', '8f460d787f09466f6d58b99a05e90b97876c76d1', '2017-09-04 15:36:56', '2017-07-11 22:33:45', 'Activo'),
(145, 'Andrea Monserrat', 'Negrete', 'Paz', 27, 2, 1, 15, 56, 'anegrete.pz@gmail.com', 43, 339, 2, NULL, NULL, NULL, 'SI', '4ba183e1cc7427c2c9a51e7a8ea12d8db448f6c8', 'Andrea Negrete Paz', '2', '84eab56877e4f647593b304684489995ac76a241', '2017-08-15 15:02:56', '2017-07-11 22:34:12', 'Activo'),
(146, 'Marco Iván', 'Valle', 'Maldonado', 29, 1, 1, 15, 56, 'marco.valle.mx@gmail.com', 43, 411, 3, NULL, NULL, NULL, 'SI', 'ed75db6731e28739f21c0bc04d92113390986fbe', 'marcomx', '2', 'aeaec00d165ef4c3d43e87665e355a50a987fb36', '2017-08-15 15:02:56', '2017-07-11 23:53:19', 'Activo'),
(147, 'Liliana Halina', 'Garcia', 'Silva', 29, 2, 1, 15, 56, 'haligasi@hotmail.com', 43, 332, 2, NULL, NULL, NULL, 'SI', '3fd9bb9c5c38612277d536ea18b0d8fceae8e96d', 'Liliana Garcia', '2', 'd4c784679cc4e611208f74c2936c098eeff7750d', '2017-08-15 15:02:56', '2017-07-12 01:19:41', 'Activo'),
(148, 'VICTOR MANUEL', 'AMBRIZ', 'DIAZ', 29, 1, 1, 15, 36, 'vmad12@live.com.mx', 43, 329, 3, NULL, NULL, NULL, 'SI', '80bc3fe69740233eb23a3bab6eaa7a16759195e7', 'vambriz@umich.mx', '2', 'cdbb4a0e9537ed748c9b816f970b920bfd2a83d0', '2017-08-15 15:02:56', '2017-07-12 16:06:19', 'Activo'),
(149, 'Jael Madaí', 'Ambriz', 'Torres', 27, 2, 1, 15, 56, 'jaelmadai_89@hotmail.com', 43, 329, 2, NULL, NULL, NULL, 'SI', 'e5022fea8a302fee4963ea1e0b4ba9285f8d9cfe', 'JAEL2000', '2', 'd610e8c7da303dcc9a946ab405cec2ce6c66a020', '2017-08-15 15:02:56', '2017-07-12 18:31:43', 'Activo'),
(150, 'Carmen Judith', 'Gutiérrez', 'García', 30, 2, 1, 15, 56, 'judithguga54@gmail.com', 43, 329, 3, NULL, NULL, NULL, 'SI', 'a76129b0e46dd6376767c7be80bab1d76ec4ba00', 'Judith Gutiérrez', '2', 'd0a3d5a8222c43f11714dc31e30774d97d485a65', '2017-08-15 15:02:56', '2017-07-12 19:06:05', 'Activo'),
(151, 'Estefania', 'Chávez', 'Herrera', 25, 2, 1, 15, 56, 'monishis@hotmail.com', 43, 411, 1, NULL, NULL, NULL, 'SI', 'f92f7bb564d502de31917a4c4e7f49c871322613', 'EstefaniaCH', '2', '5b91c9024559eaee91a4e79b9f7ac5b8b0090fd5', '2017-08-15 15:02:56', '2017-07-12 21:38:23', 'Activo'),
(152, 'Cecilia', 'Salas', 'González', 34, 2, 1, 15, 56, 'cecilia_mx784@hotmail.com', 43, 332, 2, NULL, NULL, NULL, 'SI', '55577ef08100d8765ab0910d1fbfe041714c41f1', 'ceciliasago', '2', 'c0a66a97d0200485831e5c34b913a67427716d12', '2017-08-15 15:02:56', '2017-07-13 03:32:27', 'Activo'),
(237, 'Roberto', 'Ruiz', 'Gonzalez', 24, 1, 1, 15, 56, 'rip_9631@hotmail.com', 106, 377, 1, NULL, NULL, NULL, 'SI', 'a6dccb73c11f91a64b98c5f9373eff14b0853d7b', 'Ruiz', '2', '4680c784d92955a373edcf38420679de42ab02e5', '2017-08-15 15:02:56', '2017-07-24 17:08:01', 'Activo'),
(154, 'Dania María', 'Campos', 'Piña', 21, 2, 1, 15, 56, 'daniiacampos_95@hotmail.com', 68, 372, 1, NULL, NULL, NULL, 'SI', '3cfc80239f4173b6ab3b658e78a273c283ffdac5', 'danielaMaria', '2', 'f4c69695992697ad536e59b765c880f08027d110', '2017-08-15 15:02:56', '2017-07-13 16:35:51', 'Activo'),
(155, 'Omar', 'González', 'López', 30, 1, 1, 15, 56, 'omargon86@gmail.com', 43, 411, 3, NULL, NULL, NULL, 'SI', 'd088346daeece7d3856bf33ba665b71efb4d1787', 'omargon86', '2', '0412b2891b5c86ebba5f73167242b8cbbc9b5a15', '2017-08-15 15:02:56', '2017-07-13 16:51:22', 'Activo'),
(156, 'Alejandro', 'Corona', 'Díaz', 28, 1, 1, 15, 56, 'alex_corona7@hotmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', '063c0ab7aae184b657d28243d7719b0e6d6ad404', 'alexcorona7', '2', '326c0db433171822e6369db6f4eb984abed7bc31', '2017-08-15 15:02:56', '2017-07-13 17:24:22', 'Activo'),
(157, 'Isai Flavio', 'Lopez ', 'Marquez', 25, 1, 1, 15, 56, 'marlo_0092@hotmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', '31614ad37b7d0d42f3dc5ead0bbff25cf1a6c44e', 'IsaiLopez', '2', 'a11471b45831b7b9be7d33d8b6df96f6dd1a60d0', '2017-08-15 15:02:56', '2017-07-13 17:33:20', 'Activo'),
(158, 'Juan Luis ', 'Cortes', 'Muñoz', 24, 1, 1, 15, 67, 'juan_luis1245@hotmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', 'f8f7b404978dac4d5538927eae663f2208628b94', 'juanluis1245', '2', 'd81cd89f83ac247b0db68dbe4cf0656db87cf4a4', '2017-08-15 15:02:56', '2017-07-13 17:34:57', 'Activo'),
(159, 'LUIS ', 'MENDOZA', 'LEYVA', 25, 1, 1, 15, 16, 'luis.10_leyva@hotmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', '87efce70a81811462f701f7b0f674182dc1a83f3', 'luisIIQB', '2', 'cb0fc6136ad4191672a1060c0a418d9a0456d955', '2017-08-15 15:02:56', '2017-07-13 17:44:34', 'Activo'),
(160, 'Alejandra Yitzel ', 'Guzmán', 'Hernández', 24, 2, 1, 15, 74, 'ale_yitzel@hotmail.es', 43, 411, 2, NULL, NULL, NULL, 'SI', '6d04c498800a76131a34fcea45b3c9db875e9c8a', 'aleeguzh', '2', 'd7cc1670613837c16e455acbc66a7c1112ca0ffe', '2017-08-15 15:02:56', '2017-07-13 18:38:24', 'Activo'),
(161, 'Erick', 'Magaña', 'Ruíz', 28, 1, 1, 15, 56, 'erick.magania@gmail.com', 129, 381, 3, NULL, NULL, NULL, 'SI', '6186b607f67a695a1541f559c26ddde06a58a1ba', 'Emagana', '2', '95b37783ca09583a843d77fc789c723f0be9c14d', '2017-08-15 15:02:56', '2017-07-13 20:00:35', 'Activo'),
(162, 'América', 'Toscano ', 'Hernández', 48, 2, 1, 19, 132, 'alemerica@hotmail.com', 129, 393, 3, NULL, NULL, NULL, 'SI', '4c4b1afb4acaafc8240a6af05666a86d16248892', 'Atoscano', '2', '12435624cc1c097059b37c90f3caa50383d581e5', '2017-08-15 15:02:56', '2017-07-13 20:16:40', 'Activo'),
(163, 'Erick', 'Magaña', 'Ruíz', 29, 1, 1, 15, 56, 'erick.magania@outlook.es', 43, 411, 3, NULL, NULL, NULL, 'SI', '548ff2e929ff000a8e9225de618aca191a0d8772', 'Maganaruiz', '2', '9e98bd003f2c928a8579f33244d29b83b1ed2d2b', '2017-08-15 15:02:56', '2017-07-13 21:00:10', 'Activo'),
(164, 'María Belem Teresa', 'Echeverría', 'Toriz', 52, 2, 1, 15, 56, 'belem_bet@yahoo.com', 43, 341, 3, NULL, NULL, NULL, 'SI', '1e9aff7d89f06c5b39063d8a4d01809fb35404e6', 'Belem', '2', 'a01bd520176d959580f02e4f1b89d7d5236e620e', '2017-08-15 15:02:56', '2017-07-13 21:46:57', 'Activo'),
(165, 'María Belem Teresa', 'Echeverría', 'Toriz', 52, 2, 1, 15, 56, 'belem_bet@yahoo.com', 43, 341, 3, NULL, NULL, NULL, 'SI', '1e9aff7d89f06c5b39063d8a4d01809fb35404e6', 'Belem', '7', '7b0302f1f4875bff224213979fcf3ae8e517e54a', '2017-08-15 15:03:20', '2017-07-13 21:56:25', 'Activo'),
(174, 'Daniela', 'Flores', 'Abad', 25, 2, 1, 15, 34, 'dany_flab@hotmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', '921b73d042baef8e76b8515484ecdb7436ab05ac', 'danielaflo', '2', '43f73220624e32742b7bc13b81bf504bcd9aed43', '2017-08-15 15:02:56', '2017-07-14 19:32:47', 'Activo'),
(167, 'Daniel Angel', 'Avila', 'Torres', 25, 1, 1, 15, 56, 'qf-danyavito.9@hotmail.com', 43, 411, 2, NULL, NULL, NULL, 'NO', '4b2aacfe9400a537a39b624aabf4457397f3110e', 'Daniel Angel', '2', 'd41e8d6aa0c4121618e237f6b3213bd9177d600d', '2017-08-15 15:02:56', '2017-07-13 22:48:30', 'Activo'),
(168, 'Luis Armando', 'Ochoa', 'Franco', 18, 1, 1, 15, 56, 'luis1a1@yahoo.com', 43, 341, 3, NULL, NULL, NULL, 'SI', '7ef0e964a28edbfe9a40858de5e8a18f34d5a24f', 'lao', '2', '4e97d868d6f1b18aafeac50ce1b87896cfc06164', '2017-08-15 15:02:56', '2017-07-14 01:38:50', 'Activo'),
(169, 'JOSÉ MARTÍN', 'CARLOS', 'PÉREZ', 28, 1, 1, 15, 56, 'josemartin.carlos@hotmail.com', 43, 340, 3, NULL, NULL, NULL, 'SI', 'f79e51e5099ff81f75229b112065bcce1bc04b75', 'jmcarlos', '2', '72b02798ea7ce33813e86db9b7221cc9c494c065', '2017-08-15 15:02:56', '2017-07-14 01:51:52', 'Activo'),
(170, 'Teresa Maria ', 'Da Cunha Lopes ', 'Geraldes', 59, 2, 2, 15, 56, 'tdacunhalopes@gmail.com', 43, 349, 3, NULL, NULL, NULL, 'SI', '10a8db1e422507be5abe69cc2d219aef00ef7d70', 'teresadc', '2', 'cd1a9dcd94f9ac044a419352fc460b141f594a75', '2017-08-15 15:02:56', '2017-07-14 04:14:03', 'Activo'),
(171, 'Luis Humberto', 'Delgado', 'Rangel', 28, 1, 1, 15, 56, 'luis.humberto.delgado.rangel@gmail.com', 43, 411, 1, NULL, NULL, NULL, 'SI', '43e2d2c54731cb2f6bceb9217db1134d2211a1ab', 'Humberto', '2', '114b7a929d3695391bb010b5805b96dc1a388e32', '2017-08-15 15:02:56', '2017-07-14 14:59:37', 'Activo'),
(172, 'ROBERTO DANIEL IÑAKI', 'DURÁN', 'BALTAZAR', 26, 1, 1, 15, 56, 'daniel.13.baltazar@gmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', 'e7b2f99be11f6f307b45341b9266cbf83b13271d', 'InakiDuran', '2', 'd5bac4974f3988b324755ea2533cab0ccaa9caf2', '2017-08-15 15:02:56', '2017-07-14 16:30:03', 'Activo'),
(173, 'ALMA ALEJANDRA', 'HERNANDEZ', 'ESQUIVEL', 26, 2, 1, 15, 56, 'a_lexlunk@hotmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', '898825ea78aba92131d183cbc93603bd6114e6b0', 'ALEJANDRA HERNANDEZ', '2', '32382a9077551a9de1cb3f7ef773b71fa8675432', '2017-08-15 15:02:56', '2017-07-14 16:39:28', 'Activo'),
(175, 'Juan Antonio', 'Rivas', 'Loaiza', 26, 1, 1, 15, 56, 'pp_rivasloaiza@hotmail.com', 43, 411, 3, NULL, NULL, NULL, 'NO', '33415408554aa5c738b8768b2a104ef36e6f93b6', '0912705k', '2', '9eb503335876fac29cac57e1d94a0880741533a0', '2017-08-15 15:02:56', '2017-07-14 20:22:50', 'Activo'),
(177, 'Roberto', 'Ruiz', 'González', 24, 1, 1, 15, 56, 'rip_9631@hotmail.com', 106, 377, 1, NULL, NULL, NULL, 'SI', 'cda3b2a0a428ab8ba0a22c9136674e59489bddcb', 'roberto', '2', '406f116430548652145476c1bc5d800cceebcad7', '2017-08-15 15:02:56', '2017-07-15 04:29:58', 'Activo'),
(178, 'José Ismael', 'Rangel', 'Ortiz', 25, 1, 1, 15, 56, 'ismaelin_92@hotmail.es', 43, 411, 1, NULL, NULL, NULL, 'SI', '13a8e4a168da37c687c1908703abbbb8bd12089a', 'IsmaelR', '2', '42f29d37622bce2361f9040cf27941435bdc2d7c', '2017-08-15 15:02:56', '2017-07-15 18:36:11', 'Activo'),
(179, 'Jesús Ismael', 'Ávila', 'López', 26, 1, 1, 15, 56, 'jial_1990@outlook.com', 43, 411, 2, NULL, NULL, NULL, 'SI', 'ba7bebba15fa39e9c55dd67fee861baa9900394f', 'IsmaelAvila', '2', '916f8406ac45f5d7c563eba8bc48f04f52230abc', '2017-08-15 15:02:56', '2017-07-15 20:12:17', 'Activo'),
(180, 'Estefania', 'Reyes ', 'Mercado', 23, 2, 1, 15, 68, 'fany_vale7@hotmail.com', 43, 411, 1, NULL, NULL, NULL, 'SI', '13a8e4a168da37c687c1908703abbbb8bd12089a', 'EstefaniaR', '2', 'f153b249e11b6b093bdbdece30c3ee488c3cd943', '2017-08-15 15:02:56', '2017-07-15 23:10:48', 'Activo'),
(181, 'Minerva', 'Frutis', 'Murillo', 25, 2, 1, 15, 56, 'miine_frutiis_m@hotmail.com', 43, 330, 2, NULL, NULL, NULL, 'SI', 'fd7c8962409573e8f66a50a6399982abd840eb71', 'mifrumu', '2', '7591934d8c65efcc8ee96dab401c7b562dce6be8', '2017-09-06 19:01:04', '2017-07-16 02:54:03', 'Activo'),
(182, 'SALVADOR', 'GARCIA', 'ENRIQUEZ', 21, 1, 1, 17, 130, 'salvagarcia_11@hotmail.com', 43, 341, 1, NULL, NULL, NULL, 'SI', 'b05c549a21f6a9d5be36f4ff36c1d4272d96e8d9', 'sagaen14400364', '2', '12116ae8bd4cf24f457ae51f9b9e3155021e62d9', '2017-08-15 15:02:56', '2017-07-17 14:00:17', 'Activo'),
(183, 'Carolina ', 'Miguel', 'González', 21, 2, 1, 17, 130, 'carolinamglez@hotmail.com', 43, 341, 1, NULL, NULL, NULL, 'SI', 'de2f6e2f28b8ff1fa07f9bc4c842a2b125467466', 'Carolinamglez', '2', '2b7a0ac85b2a1189478108daf3c9cb624acdc4a2', '2017-08-15 15:02:56', '2017-07-17 14:03:04', 'Activo'),
(184, 'Rafael Alejandro', 'Vivanco', 'Estrada', 18, 1, 1, 8, 122, 'ravivanco@hotmail.com', 125, 429, 2, NULL, NULL, NULL, 'SI', '68e80aac30f7530b30bb6dbee453470a1ec566f4', 'ravivanco', '2', '28542b47456a7d5f95cc2996c5b7c1e7c3a68ece', '2017-08-15 15:02:56', '2017-07-17 18:37:16', 'Activo'),
(185, 'EDGAR HUMBERTO', 'MARIN', 'AGAPITO', 28, 1, 1, 15, 56, 'emarinemos@gmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', '36e886439545a887850aefa8858d62c2c9dca733', 'EdgarMaAg', '2', 'a093e9d896d637056e66dfd476581fe2c982e109', '2017-08-15 15:02:56', '2017-07-18 00:53:51', 'Activo'),
(186, 'Abel', 'Suárez', 'Castro', 32, 1, 1, 15, 56, 'belypat@hotmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', 'e554bb879faa6f72e7cb0d9aea0ffff28c3b223e', 'Abel', '2', '3792ad1770e6fba878a0b627fa76c91d9994794c', '2017-08-15 15:02:56', '2017-07-18 08:02:56', 'Activo'),
(187, 'Luis Erick', 'Arroyo', ' Sesento', 23, 1, 1, 15, 56, 'erickarroyo18@hotmail.com', 43, 346, 1, NULL, NULL, NULL, 'NO', '9e2159eaa90f8a47ee4effc82d56fcf6149c34a1', 'erickarroyo', '2', '27b385cbfbc4e8ea780eca731e46ddb426a3832a', '2017-08-15 15:02:56', '2017-07-18 17:37:53', 'Activo'),
(188, 'Diego Everardo ', 'Patiño', 'Téllez ', 23, 1, 1, 15, 56, 'everardo.coree@gmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', '5f799e68f29fc7e94c64d495a2c7d4352f0754dd', 'DiegoE14', '2', 'f82ec9fd74a3ad7e5d56a57399f6329470fc0dc7', '2017-08-15 15:02:56', '2017-07-18 18:34:40', 'Activo'),
(189, 'PAOLA ATZIRI', 'GOMEZ ', 'PALEO', 22, 2, 1, 15, 104, 'yiyi_211@hotmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', 'a2828f0ae903e7d1b5dbbb9d29ac2277bd725731', 'PAOLA', '2', '7a707f1aa18e407631f81757ab2b7de7cc5425d6', '2017-08-15 15:02:56', '2017-07-18 23:28:35', 'Activo'),
(190, 'Jorge Luis', 'Rodríguez ', 'Alejandre', 18, 1, 1, 15, 16, 'ibm.jorgealejandre@gmail.com', 23, 170, 1, NULL, NULL, NULL, 'SI', '77d641fe15eaa651a3625ff70b35c812b8d9d281', 'imdjorgealejandre', '2', 'f81ab1b222081aeb24603bf074a7e4dd9be87cdf', '2017-08-15 15:02:56', '2017-07-19 04:32:13', 'Activo'),
(191, 'Ricardo', 'Palencia', 'Sánchez', 23, 1, 1, 15, 56, 'richi171293@hotmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', '932e2af30a32cd31381f98a1c3942f7e03354128', 'richi17', '2', '06442a2affad229a29b3eb34f63d8cda3f792142', '2017-08-15 15:02:56', '2017-07-19 17:42:53', 'Activo'),
(192, 'Alexis', 'Pineda', 'Reyes', 21, 1, 1, 15, 56, 'alexalchemist117@gmail.com', 43, 346, 1, NULL, NULL, NULL, 'NO', 'c90fc47fb1da67ff779124f5ecd7fd49020ea651', 'AlexisPR', '2', 'a43d66d36a32b6d3b69a7f92e9700d0bbd8ac50f', '2017-08-15 15:02:56', '2017-07-19 17:53:27', 'Activo'),
(193, 'Ivan', 'Quezadas', 'Vivian ', 24, 1, 1, 15, 56, 'nivan_quevi@hotmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', '01baaf1596fc823ef81a3a3596c13af2aabd76fc', 'IVANBIOS12', '2', 'b34f9fb30fc86c979ea992f0701198e11e786a2d', '2017-08-15 15:02:56', '2017-07-19 17:57:31', 'Activo'),
(194, 'Marco Antonio', 'Lara', 'López', 24, 1, 1, 15, 56, 'marcolara0491@gmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', '7f4762fccdcb57a570b27ca369e39b60f92d1ef4', 'marcolara92', '7', 'd1c43e1233f47982d878870cbe20f6b2814dbf78', '2017-08-15 15:03:20', '2017-07-19 19:04:18', 'Activo'),
(224, 'Federico', 'Pérez', 'García', 41, 1, 1, 15, 110, 'desasosiego@gmail.com', 34, 239, 2, NULL, NULL, NULL, 'SI', '67ebe3f64a305a7187cbfe1d28d780544870b647', 'f3d3br0', '2', '1b06aa1bd695129228837366d91fa178a46b3213', '2017-09-18 14:03:11', '2017-07-21 22:09:28', 'Activo'),
(196, 'Jorge David ', 'Reyna ', 'Duque', 26, 1, 1, 15, 56, 'beckamx13@gmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', '1ab5078dbb03343c1149c057373efd00f0e78b3d', 'David', '7', '8d96578e4205007cafc841328a87a7f3abccc984', '2017-08-15 15:03:20', '2017-07-19 22:02:50', 'Activo'),
(197, 'Angela', 'Castro', 'Ortíz', 24, 2, 1, 15, 56, 'ania_30sm@hotmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', '8927c869950f5679e76bdc2af48e4d699f42f39c', 'Angiiko', '2', 'bdc3fef6c48fe6c87cd1ba87ea0a0ef37430440e', '2017-08-15 15:02:56', '2017-07-19 22:03:43', 'Activo'),
(198, 'Marco Antonio', 'Lara', 'López', 24, 1, 1, 15, 56, 'marcolara0491@gmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', 'f885b45a97abf002f78991c988278e1ac3e06715', 'marcolara24', '2', '44a8f4c84d8d189eb98912497c5cd82308be8c74', '2017-08-15 15:02:56', '2017-07-19 22:09:12', 'Activo'),
(199, 'Jorge David ', 'Reyna ', 'Duque', 26, 1, 1, 15, 56, 'beckamx13@gmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', '8198dd92b8351cea9d5685cf9218698adeb39836', 'Jorge', '2', '0408459787c449e9499b7bd51adca680c7b42de4', '2017-08-15 15:02:56', '2017-07-19 22:09:57', 'Activo'),
(200, 'Juan David', 'Ramírez ', 'Conejo', 21, 1, 1, 15, 56, 'davidconejo@outlook.com', 11, 93, 1, NULL, NULL, NULL, 'SI', '751c125e11ea095e99b7f16ca37520f9850d3b45', 'davidconejo', '2', '59f494b5680438e37f3454e26eb67666bdd42a30', '2017-08-15 15:02:56', '2017-07-20 03:27:11', 'Activo'),
(201, ' Javier Ramon', 'Sotomayor', 'Castellanos', 98, 1, 1, 15, 56, 'madera999@yahoo.com', 43, 338, 3, NULL, NULL, NULL, 'NO', 'a87f76d038d1ad4e1ad7566055d74151187dcd51', 'madera999', '2', '5c7fb394ae3ee6b535ff6be12bfd906ed383e787', '2017-08-15 15:02:56', '2017-07-20 07:41:45', 'Activo'),
(202, 'Adrián', 'Gómez', 'Baltazar ', 31, 1, 1, 15, 56, 'ad_riangb@hotmail.com', 43, 330, 2, NULL, NULL, NULL, 'SI', '939138294b214e2b09960babb59a494345d35719', 'Adriangb86', '2', '6fc3e4ec237f2c8ddd53b82c2ba5e46be14a3dc2', '2017-08-15 15:02:56', '2017-07-20 16:23:28', 'Activo'),
(203, 'Karina ', 'Nava', 'Mondragón', 21, 2, 1, 15, 34, 'karinamo109@gmail.com', 43, 332, 1, NULL, NULL, NULL, 'SI', '9cbe7f8654cc7bbeb8f676872512d6fee3490921', 'karinamo109', '2', 'cac7bcbb2fd165237a1f7d19e8896e059d5f3d08', '2017-08-15 15:02:56', '2017-07-20 17:12:01', 'Activo'),
(223, 'Patricia', 'Juárez', 'González', 23, 2, 1, 15, 56, 'estelag9312@gmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', '3b0dfcd68033a91d8d68f9f8b84ee9318c6515a4', 'Pattrik', '7', '9d68cdf0307e58853b26c982c50edaf654cb0f92', '2017-08-15 15:03:20', '2017-07-21 21:36:02', 'Activo'),
(206, 'Andrea', 'Robles', 'Mendoza', 21, 2, 1, 15, 56, 'andrea_robles_mendoza@hotmail.com', 11, 93, 1, NULL, NULL, NULL, 'NO', 'db4c815af740017ac9c526caa3dcbcf696190e9c', 'Andrea14120058', '2', '62b02d6897ea58814ae184fabab6bd24eb50b91c', '2017-08-15 15:02:56', '2017-07-20 18:23:19', 'Activo'),
(236, 'Abraham Alberto', 'Mejía', 'Hernández', 38, 1, 1, 15, 56, 'ingelectricaaamh@hotmail.com', 43, 329, 2, NULL, NULL, NULL, 'SI', '6d6b88169aa1e80fc9da56205d2c459db0818442', 'abraham78', '2', '1dcf9c2ffb33df055f57fcb85b9b4ae2bd0b3891', '2017-08-15 15:02:56', '2017-07-24 16:58:01', 'Activo'),
(222, 'Patricia', 'Juárez', 'González', 23, 2, 1, 15, 56, 'estelag9312@gmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', '3b0dfcd68033a91d8d68f9f8b84ee9318c6515a4', 'Pattrik', '2', 'af1f02aa259b535f91d52f78a52817100eed2c69', '2017-08-15 15:02:56', '2017-07-21 21:30:27', 'Activo'),
(220, 'Jonathan', 'Zacarias', 'Calderon', 30, 1, 1, 15, 56, 'jzacariascalderon@gmail.com', 43, 341, 2, NULL, NULL, NULL, 'SI', '22526657d31b069187abf4d98ef4808ca4df89c8', 'juanitometal12', '2', 'b37306250640c5ee9709e115dad35e2ca38a5d77', '2017-08-15 15:02:56', '2017-07-21 17:47:46', 'Activo'),
(214, 'Guidier', 'Marto', 'Dominguez', 24, 1, 1, 15, 56, 'martoq.f.b@gmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', 'abf146a249b98815491b9b3908ce8fd6a978e44f', 'Marto-Dominguez', '2', '2f7524a1001ce757e82aa5a9409ecce260c56b0c', '2017-08-15 15:02:56', '2017-07-20 18:36:19', 'Activo'),
(219, 'YOLANDA', 'HUERTA', 'RAMIREZ', 31, 2, 1, 15, 56, 'huertayol@hotmail.com', 131, 430, 2, NULL, NULL, NULL, 'SI', 'ae64117163d9499d282c4aad4a2592725c9d99a3', 'huertayol', '2', 'fbec8914610bb10545bb0612b2811469a2283fea', '2017-08-15 15:02:56', '2017-08-10 12:55:56', 'Activo'),
(217, 'Alma Cecilia', 'Sáenz', 'Mercado', 23, 2, 1, 15, 104, 'ceciliasame94@gmail.com', 11, 93, 1, NULL, NULL, NULL, 'NO', '51c280bede9fccd5efb4ef9cd5d02ddf5121a79e', 'cecisame', '2', '06e0643eaca96358b3d64c4039fac1a80e784070', '2017-08-15 15:02:56', '2017-07-20 19:09:24', 'Activo'),
(218, 'Daniel', 'Vazquez', 'Diaz', 27, 1, 1, 15, 35, 'vazquezdd@yahoo.com', 43, 346, 1, NULL, NULL, NULL, 'SI', '3b16ef9d453442d0dd27b77a0ab9d00fdb127ad7', 'vazquezdd', '2', '78f5f7a32cc8487f81f5ebbd14a08b5cef00a43f', '2017-08-15 15:02:56', '2017-07-20 19:19:29', 'Activo'),
(225, 'Marco Antonio ', 'RUIZ', 'GONZALEZ', 22, 1, 1, 15, 56, 'marco_monarca@hotmail.com', 11, 96, 1, NULL, NULL, NULL, 'SI', 'a584ff2e09e09801580677a50b78ca9fb8574919', 'marco95', '2', '60cbc61c306c720f8db192bbf6aa45b1fcbd36fd', '2017-08-15 15:02:56', '2017-07-21 23:45:33', 'Activo'),
(226, 'Luis Manuel', 'Meza', 'López', 23, 1, 1, 15, 110, 'luizkma@gmail.com', 34, 239, 1, NULL, NULL, NULL, 'SI', 'cd9dab06e4dcb48d2083353076913d4e34ef5ef1', 'AzemLuis', '2', '83b54c5616ad844b77ff771b3e4e29fcf9e440bc', '2017-08-15 15:02:56', '2017-07-22 00:39:03', 'Activo'),
(235, 'Mario', 'Valle', 'Sánchez', 26, 1, 1, 15, 56, 'marvals_18@hotmail.com', 43, 411, 3, NULL, NULL, NULL, 'SI', '65aa12f55c4de1df77dd5d588639872735a512e9', 'mvs1890', '2', '08297379d3fe6e1c548aa94c448d6e0be0ef7acb', '2017-08-15 15:02:56', '2017-08-08 17:53:52', 'Activo'),
(228, 'Ricardo', 'Martínez', 'Corona', 29, 1, 1, 15, 56, 'mtc.ricardo@gmail.com', 43, 344, 2, NULL, NULL, NULL, 'NO', 'e94d6c9864db93948843c35b1cabaf3b8010bf71', 'RicardoMC', '2', 'd18bd6252813ab1075efa631209925a084581e46', '2017-08-15 15:02:56', '2017-07-23 19:03:14', 'Activo'),
(229, 'LUIS DANIEL', 'OSEGUERA', 'TOLEDO', 25, 1, 1, 15, 56, 'luidan27@gmail.com', 43, 341, 2, NULL, NULL, NULL, 'SI', '676eda7d4520b5aecb24ba3584f0653bc57ae352', 'luidan27', '2', 'cb69ce4fabefe65883f0ea1aca79fd47ca77ee20', '2017-08-15 15:02:56', '2017-07-23 19:19:46', 'Activo'),
(230, 'María Magdalena', 'Cuevas', 'Ruiz', 20, 2, 1, 15, 56, 'cuevas240197@gmail.com', 43, 341, 1, NULL, NULL, NULL, 'SI', 'b7c1770efceff859cb4ad8229705b1d1b62d081e', 'Madeleinecr', '2', '9514c5418003973da48021b3a48afffc6cf8a8c1', '2017-08-15 15:02:56', '2017-07-24 14:11:43', 'Activo'),
(231, 'SERGIO ALEJANDRO', 'CORTES ', 'ALCARAZ', 22, 1, 1, 15, 56, 'scortes0@ucol.mx', 43, 341, 1, NULL, NULL, NULL, 'NO', 'b517312a5383373021e6eb2114c90cac8c1c1808', 'scortes0', '2', '736a5b17228b8f2ca08d109e80af2b914c6e54f6', '2017-08-15 15:02:56', '2017-07-24 14:15:42', 'Activo'),
(232, 'JOSÉ ANTONIO ', 'YÁÑEZ', 'MORENO', 22, 1, 1, 15, 56, 'too350@hotmail.com', 43, 341, 1, NULL, NULL, NULL, 'SI', '42336b938e198add5e4c55537961d0dfb9449dc5', 'jyanezm', '2', '240a4cffedce20bfa53ad1ad296a5b195952990d', '2017-08-15 15:02:56', '2017-07-24 14:35:03', 'Activo'),
(233, 'JAIME EMMANUEL', 'DEL TORO', 'GARCÍA ', 22, 1, 1, 15, 56, 'jdel_toro0@ucol.mx', 43, 341, 1, NULL, NULL, NULL, 'SI', '9c948fdac658d01bf61587a2867e5b5f525a57cd', 'JETG95', '2', 'feb25eb0d9d346cf5179162a4d6ebaff2884c4ed', '2017-08-15 15:02:56', '2017-07-24 14:35:55', 'Activo'),
(234, 'Estela Rubi ', 'Avila ', 'Ojeda', 21, 2, 1, 15, 56, 'Rubi.aviojeda@gmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', '80cb1342e6a3529949940a20a7a69ef208af0cc2', 'Rubiavi', '2', 'ce9dffacce4056972425bd4a014a8a982fe6f7a7', '2017-08-15 15:02:56', '2017-07-24 14:46:56', 'Activo'),
(238, 'Luis', 'Béjar', 'Gómez', 52, 1, 1, 15, 56, 'lbejargomez@yahoo.com.mx', 43, 329, 3, NULL, NULL, NULL, 'SI', 'fc46f0c081b6c44f2a51915cba6daccf0df265e6', 'bejar65', '2', 'fc4a901ce22f27367ee5b851158c6137c54bdfca', '2017-08-15 15:02:56', '2017-07-24 17:39:00', 'Activo'),
(239, 'Narciso', 'Calderón', 'González', 20, 1, 1, 15, 56, 'narciso_calderon12@hotmail.com', 11, 95, 1, NULL, NULL, NULL, 'SI', '8e1df7592ec40d39f6f228d23f56e9bb6d1c5fe5', 'nacalderon', '2', 'e42b1675a4123e1071a0973933619d6aa861c81b', '2017-08-15 15:02:56', '2017-07-24 18:05:04', 'Activo'),
(240, 'Yveet', 'Sierra', 'Aguilar', 25, 2, 1, 15, 56, 'ysaMVZ@gmail.com', 43, 412, 1, NULL, NULL, NULL, 'SI', 'c4b05269c5a9f0de8fa204dc06e454f8820c7358', 'Yveet', '2', '1336d4ea5ca3ccd195aa733204e0bb5262bab36d', '2017-08-15 15:02:56', '2017-07-24 18:52:25', 'Activo'),
(241, 'Rebeca Tamar', 'Zaragoza', 'Toscano', 35, 2, 1, 15, 56, 'beckonia.zaragoza@hotmail.com', 131, 430, 2, NULL, NULL, NULL, 'SI', 'b82676116bb186246c055d5bb51d016cd3dd9ccf', 'beckonia', '2', 'f9bb2bddf07c45f6ff6efab62799fb73f372f853', '2017-08-15 15:02:56', '2017-07-24 18:58:42', 'Activo'),
(242, 'Dalia Briseida ', 'Mosso', 'Salas', 28, 2, 1, 15, 56, 'briseida_2689@hotmail.com', 131, 430, 2, NULL, NULL, NULL, 'SI', '16608599bdd4be187457108f3265b5f0edecf86b', 'DaliaMosso', '2', '06950901c3f369347c732eb7e8efcaa59f7e66be', '2017-08-15 15:02:56', '2017-07-24 19:05:10', 'Activo'),
(243, 'Víctor Hugo', 'Nava', 'Silva', 22, 1, 1, 11, 125, 'hugo.navasilva@gmail.com', 43, 341, 1, NULL, NULL, NULL, 'SI', 'd72ab8a3b4fc4be0c3d41e841b4425a1e54d8eff', 'marce2108', '2', '9d06a5dcd19452e04b880b79c7ebefbf2f0498e8', '2017-08-15 15:02:56', '2017-07-24 19:41:51', 'Activo'),
(244, 'Kenia Cristell', 'Castorena ', 'Castrejón', 86, 2, 1, 11, 125, 'cristell.castrejon@gmail.com', 43, 341, 1, NULL, NULL, NULL, 'SI', '67215fcd5f20aee10c8d80daa8133c4dda31bc83', 'kcst12', '2', 'a3aabf94cc36152ae5677249aeb472d4ff3940d2', '2017-08-15 15:02:56', '2017-07-24 19:46:23', 'Activo'),
(245, 'Oliver', 'Castro', 'Jiménez', 21, 1, 1, 11, 125, 'castro-321321@hotmail.com', 43, 341, 1, NULL, NULL, NULL, 'SI', '0623f1301c714e039684a00e78527c5d76aa7ec7', 'neutron321', '2', '4c300885d3a07fa09239482f2335500317781818', '2017-08-15 15:02:56', '2017-07-24 19:51:41', 'Activo'),
(246, 'Karen Violeta ', 'Valencia', ' Gutiérrez ', 21, 2, 1, 15, 56, 'kaarennn_vaalenn@hotmail.com', 115, 450, 1, NULL, NULL, NULL, 'SI', 'afc7e667a8020c89de4258fdb41ba99998265a29', 'KarenG', '2', 'dd05aaa726c95203f86c29f0f8266c38fcbe1765', '2017-08-15 15:02:56', '2017-07-25 00:05:19', 'Activo'),
(247, 'Angélica arleth', 'Aguirre ', 'Mendoza', 22, 2, 1, 15, 56, 'arlethmendoza_95@hotmail.com', 115, 450, 1, NULL, NULL, NULL, 'SI', 'afc7e667a8020c89de4258fdb41ba99998265a29', 'Arleth', '2', '85501e6818ba4a95c2f83b4c5d4c6060e8e35eab', '2017-08-15 15:02:56', '2017-07-25 00:12:47', 'Activo'),
(249, 'Gabriel', 'Arroyo', 'Correa', 55, 1, 1, 15, 56, 'gamagag@yahoo.com.mx', 43, 350, 2, NULL, NULL, NULL, 'SI', 'bfcebbac2f738fdfb934890ae49610aee88f9bde', 'garroyo', '7', '3dce923414f9d7caccd1f5869ac3383ad6488800', '2017-08-15 15:03:20', '2017-07-25 18:40:48', 'Activo'),
(250, 'Marco Antonio', 'Chávez', 'Tinoco', 24, 1, 1, 15, 44, 'chavezmac3@gmail.com', 103, 375, 2, NULL, NULL, NULL, 'SI', 'dd37f051b774c9bbef9c06d337543dcf0f81c7c8', 'Maacc43', '2', 'dfc556885663496619c0fcc32d2b729046fa30ba', '2017-08-15 15:02:56', '2017-07-25 19:41:07', 'Activo'),
(251, 'Guadalupe Montserrat', 'Escutia', 'Zendejas', 21, 2, 1, 15, 56, 'mnez9668@gmail.com', 42, 312, 1, NULL, NULL, NULL, 'NO', '002408fbcf839fca1430a57feaeb7577e0444a44', 'mnez', '7', '4756cd8334dfdcb01957f9935f96c15a6d3325a5', '2017-08-15 15:03:20', '2017-07-25 20:32:50', 'Activo'),
(252, 'RICARDO', 'PEREZ', 'CORRAL', 21, 1, 1, 15, 70, 'r_m_en@hotmail.com', 42, 312, 1, NULL, NULL, NULL, 'NO', 'a9403d52a3aad4b8529bc36410358b3995979c3f', 'RicardoPerez', '7', '1c13ba8dc5d11dba88977ba54dc7d93dd0a63c0a', '2017-08-15 15:03:20', '2017-07-25 20:33:52', 'Activo'),
(253, 'alejandro ', 'alvarez', 'palomares', 20, 1, 1, 15, 44, 'z15jake@hotmail.com', 42, 312, 1, NULL, NULL, NULL, 'NO', '7432af24ba452eab4475cf40cfe7ec1e203b26d1', 'alejandro', '7', 'fcadd46703d4ae4c3c0787e3727a49b1c6525a46', '2017-08-15 15:03:20', '2017-07-25 20:44:52', 'Activo'),
(254, 'María de la Luz', 'Sanabria', 'Velázquez', 18, 2, 1, 15, 56, 'luzzsanabria@yahoo.com.mx', 38, 276, 2, NULL, NULL, NULL, 'SI', '25298c7672b134fc76e2c4b6241c685318ca3db5', 'luzsanabria', '7', 'fce77baa453d16a80a769e7bdf22d4ed67efd2bf', '2017-08-15 15:03:20', '2017-07-26 00:57:59', 'Activo'),
(255, 'Monica ', 'Jaramillo', 'Jaramillo', 32, 2, 1, 14, 128, 'mussa_360@hotmail.com', 6, 56, 1, NULL, NULL, NULL, 'SI', '85e052252a15025f517a67c460a49eed7890d157', 'Monica', '2', 'dc660195d5ddb9ddaf15cc7fb4cdb9cef9468380', '2017-08-15 15:02:56', '2017-07-26 14:22:54', 'Activo'),
(256, 'Evelyn', 'Lizet', 'Ramos Velazquez', 21, 2, 1, 15, 56, 'evelynfa_17@hotmail.com', 43, 341, 1, NULL, NULL, NULL, 'SI', '3bd335230b2e357d73de9e89563f63bac129f27a', 'LizRamos', '2', 'fe56e54a2ac27768f9d5afb7f0be8ad27e5f2bfb', '2017-08-15 15:02:56', '2017-07-26 14:41:09', 'Activo'),
(258, 'Diego Aarón ', 'Rodales', 'Navarro', 18, 1, 1, 15, 56, 'arodales13@gmail.com', 43, 329, 1, NULL, NULL, NULL, 'SI', '925d7e32a24448775c9178b93cc2fd12102a2c1f', 'ARodales', '7', '7f86daab74e093465481ed6467b29f85c702a7e9', '2017-08-15 15:03:20', '2017-07-26 23:12:27', 'Activo'),
(286, 'AZUCENA KAREN', 'ALVARADO', 'PEREZ', 21, 2, 1, 15, 56, 'azu.alvarado.perez@gmail.com', 43, 341, 1, NULL, NULL, NULL, 'SI', '7c8d787dc0c9f8d3214937fec50b645fe4ca0cd2', 'Azu', '2', 'eaf0cdea7973adcb0731977883be73a72b6754c9', '2017-08-15 15:02:56', '2017-07-27 18:07:04', 'Activo'),
(285, 'Daniel', 'Rodriguez', 'Licea', 22, 1, 1, 15, 56, 'dannyrodriguez446@gmail.com', 43, 341, 1, NULL, NULL, NULL, 'SI', 'cd351e0d3ccfc7a8e985fa9e0c442260b739e76f', 'danielrodriguezliceaUMSNH', '2', '7ede70550d715b0e98eee76c5aa5013daa6da190', '2017-08-15 15:02:56', '2017-07-27 17:00:35', 'Activo'),
(265, 'Rafael', 'Torres', 'Martínez', 31, 1, 1, 15, 56, 'faistorres@hotmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', '862e61ae9bdd0a594ddaf187f44ce4628d46a91b', 'Rafailo1', '2', 'c5c7f9734d8081624c0142b16b10c011411cff9a', '2017-08-15 15:02:56', '2017-07-26 23:19:36', 'Activo'),
(266, 'Victor Hugo', 'Bejarano', 'García', 21, 1, 1, 15, 104, 'vbejaranogarcia@gmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', '5fb875b667339b6b40e3ba55c1977766cc972dca', 'VictorHugoBejarano', '2', '93e3353cc9cd2f3cd8af92a22ef05b74ef2675fd', '2017-08-15 15:02:56', '2017-07-27 01:53:08', 'Activo'),
(267, 'Erika Montserrat', 'Hernández ', 'Tapia', 21, 2, 1, 15, 42, 'e_montseh@hotmail.com', 34, 241, 1, NULL, NULL, NULL, 'SI', '8641d53b47f561cdc6b52609e9c1d856da3fbc50', 'erika', '2', 'ec17db90ef7e9b4a39c422b6a70844d7e75e0605', '2017-08-15 15:02:56', '2017-07-27 02:00:58', 'Activo'),
(268, 'Diego Jesús', 'Sánchez', 'Del val', 23, 1, 1, 15, 56, 'sanchezd312@gmail.com', 28, 198, 2, NULL, NULL, NULL, 'SI', 'b7f3fc7b79d83487e5644e4b614d3fb9272d2941', 'ashwasherein2017', '7', '778020eacc2188c3b73866c2bad7573e73f764d3', '2017-08-15 15:03:20', '2017-07-27 03:26:32', 'Activo'),
(284, 'Jesús Ismael ', 'Ávila', 'López', 26, 1, 1, 15, 56, 'jial_1990@outlook.com', 43, 411, 2, NULL, NULL, NULL, 'SI', '4bfe725ce62e22a3a6017db32a8b942a236d06d5', 'IsmaelAvila1', '2', 'ae760f36720b5c4793ae1ecca0ec0e5dadbb4484', '2017-08-15 15:02:56', '2017-07-27 15:55:17', 'Activo'),
(1, 'Joel', 'Álvarez', 'García', 31, 1, 1, 15, 56, 'softcodec@gmail.com', 129, 130, 1, 6, NULL, NULL, 'No', 'be9b16e50121a086f9e35698d839dd9c3cd7e27b', 'joel', '10', '2dbc2fd2358e1ea1b7a6bc08ea647b9a337ac933', '2017-09-29 14:15:25', '2017-07-27 05:00:00', 'Activo'),
(283, 'Daniel Filomeno ', 'Hernández', 'Valencia', 18, 1, 1, 15, 56, 'daniel_herdez@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '32515a06c775735a3e58e42cfe0c42041dbcd38a', 'daniel7', '2', '97627a545adcbe81695dacda2246e7a2baacbdb8', '2017-08-15 15:02:56', '2017-07-27 05:40:08', 'Activo'),
(292, 'Claudia Ivett', 'Guillen', 'Reyes', 29, 2, 1, 15, 56, 'stuck_icecream@hotmail.com', 43, 339, 2, NULL, NULL, NULL, 'SI', '2ef621e264bfd7235f20e2095d8fa2bb4101de36', 'claudiastuck', '2', '10b7d56359a6be7573b9ba998178b255356a30aa', '2017-08-15 15:02:56', '2017-07-28 00:32:58', 'Activo'),
(291, 'Beatriz', 'Barrera', 'Posadas', 23, 2, 1, 15, 40, 'betty-bapo@hotmail.com', 43, 332, 1, NULL, NULL, NULL, 'SI', '2c0d6e57b463c18cdf287a4e89522fa863ecb98d', 'bettybarrera', '2', 'e9557ebed2af7d00bb685b9a2f29d2e347d2b25a', '2017-09-19 20:46:59', '2017-07-28 00:28:32', 'Activo'),
(290, 'Edel', 'Pineda', 'Lopez', 18, 1, 1, 15, 56, 'e_pl_27@hotmail.com', 106, 377, 1, NULL, NULL, NULL, 'SI', 'bf18b25528a7e273b9fcbbd4db561de5bc43c2d6', 'Edel2017', '2', '94d632e197426c58b708d5cded66b73c3b89fb4c', '2017-08-15 15:02:56', '2017-07-28 00:13:28', 'Activo'),
(289, 'Janitzi Yunuén ', 'Meza', 'Ramírez', 25, 2, 1, 15, 56, 'janitzi_05@hotmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', 'c9b7177bb7dad67eec6f183674dc588ffb29526c', 'Janitzi', '2', '32982f47af3f537679494d347561e8ad14a9ea8b', '2017-08-15 15:02:56', '2017-07-27 23:44:05', 'Activo'),
(288, 'Anahí', 'Márquez ', 'López', 27, 2, 1, 15, 56, 'dulcebeat_sweetpink@hotmail.com', 43, 340, 3, NULL, NULL, NULL, 'NO', '252454cc58614a00cb480b707d60e6d470d035d6', 'nany3004', '2', '5cda85db74c87d58cddcc6dbb861d2bebe7432cd', '2017-08-15 15:02:56', '2017-07-27 19:23:14', 'Activo'),
(287, 'Luis Arturo', 'Díaz', 'Chávez', 24, 1, 1, 15, 56, 'arturodiazch10@gmail.com', 106, 377, 1, NULL, NULL, NULL, 'SI', 'ee9329351d94247aa89c35fc681073ba9165a591', 'arturodiaz10', '2', '42ebe5e4b3f1e693039f0475202a75fcbcc29fda', '2017-08-15 15:02:56', '2017-07-27 18:35:28', 'Activo'),
(293, 'Rodrigo', 'Herrero', 'Calvillo', 29, 1, 1, 15, 56, 'roy619@gmail.com', 43, 417, 2, NULL, NULL, NULL, 'SI', 'f1dc20859316379c1be6be43e6e3039d3b2e094b', 'rodrigoherrero', '2', '5b1403b25cee41909ac534da0431fed74ccecf60', '2017-08-15 15:02:56', '2017-07-28 00:38:29', 'Activo'),
(295, 'Laura Leticia', 'Padilla', 'Gil', 18, 2, 1, 15, 56, 'letypagil23@gmail.com.mx', 43, 418, 3, NULL, NULL, NULL, 'SI', '6716d09b56190dbb7f9629e4f8b60a76ba12b388', 'letypagil23', '2', '6280ba089e3987bd5554cd8e100d01dc7cb61a5a', '2017-08-15 15:02:56', '2017-07-28 01:44:15', 'Activo'),
(297, 'Beatriz', 'Barrera', 'Posadas', 23, 2, 1, 15, 40, 'betty-bapo@hotmail.com', 43, 332, 1, NULL, NULL, NULL, 'SI', '4bb64f9a56924b4659837ac1b387133458853192', '1354178B', '2', 'bb6270ac36122e80c6fdc82eae1dd7a856486c03', '2017-09-19 20:48:23', '2017-07-28 02:11:41', 'Activo'),
(361, 'Ma del Socorro', 'Aguilar', 'Hernández', 32, 2, 1, 15, 56, 'shamj21@gmail.com', 43, 417, 3, NULL, NULL, NULL, 'SI', 'cb67e3d313224a62f0595499dd86d6c963f7b1fc', 'shamj21', '2', '3e268082897db500125c1c621250a2571950046e', '2017-08-15 15:02:56', '2017-08-02 02:17:39', 'Activo'),
(360, 'Nidia Libia', 'Torres', 'García', 31, 2, 1, 15, 56, 'nidialibia.tg@gmail.com', 43, 340, 2, NULL, NULL, NULL, 'SI', '3fbf9b0423a44e4add3ed8e3ed11c4c15532850f', 'NLTG1985', '2', 'd334d21537dc607616f8867615f0d96c85552e9b', '2017-08-15 15:02:56', '2017-08-02 02:12:37', 'Activo'),
(359, 'Victor Fernando', 'nieto', ' del Valle', 36, 1, 1, 15, 56, 'victor_niva_2@hotmail.com', 6, 55, 1, NULL, NULL, NULL, 'SI', '0d14b4cd4bf38557307ab62ebe71db62acd9938c', 'DrNiva', '2', 'd18e7362fc96db32a74f6a2f266cab6011f196a9', '2017-08-15 15:02:56', '2017-08-02 00:21:13', 'Activo'),
(414, 'Miriam Verónica', 'Cervantes', 'Castro', 21, 2, 1, 15, 109, 'mimi.cervantes@outlook.com', 11, 93, 1, NULL, NULL, NULL, 'SI', 'e8166671a0b436a43b9e93b1c81afe57cdc381cb', 'CERVANTES', '2', 'bacbfb8400c4f71ab0ab2be5fcf79c4d59722b93', '2017-08-15 15:02:56', '2017-08-04 18:53:34', 'Activo'),
(358, 'Stolishnaya', 'Macias', 'Pureco', 22, 2, 1, 15, 56, 'smp-14@hotmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', '95dcd8a99af965cd002fa86166489bce8b68d093', 'StolishMacias', '2', '70b2cce6cf98453f8bbfafd5f606510fd103ef2e', '2017-08-15 15:02:56', '2017-08-01 21:48:42', 'Activo'),
(356, 'Hector', 'Miranda', 'Pacindo', 32, 1, 1, 15, 56, 'fenix4839@gmail.com', 43, 338, 1, NULL, NULL, NULL, 'SI', '42c783bdcc017cacc3494ef22820a4104418bcb7', 'fenix4839', '2', '9aa11d574b4abf5d02cbb5ad8dd1e1e2417d525b', '2017-08-15 15:02:56', '2017-08-01 18:58:07', 'Activo'),
(355, 'Dania Rubi', 'Rocha ', 'Baltazar', 22, 2, 1, 15, 56, 'danniarocha@hotmail.com', 43, 341, 1, NULL, NULL, NULL, 'NO', 'b550d034c17d6b045423c74f1c62f4cbdcab7285', 'Dania', '2', 'b318c4c178378fda74974504753819e89b5a9c02', '2017-08-15 15:02:56', '2017-08-01 18:44:03', 'Activo'),
(354, 'Javier', 'Garcia', 'Hurtado', 53, 1, 1, 15, 114, 'javo339@hotmail.com', 12, 106, 3, NULL, NULL, NULL, 'SI', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'javo339', '2', 'ab014261dddcb15d10fbe833aa7f146a2d2b65d8', '2017-08-15 15:02:56', '2017-08-01 18:01:00', 'Activo'),
(353, 'Andrea Gissel', 'Rico', 'Pedraza', 28, 2, 1, 15, 56, 'qfbandyrico@gmail.com', 43, 339, 2, NULL, NULL, NULL, 'SI', '97d00f32f4ec7da29f268433b7bce541e8a6086e', 'AndyRipa', '2', '2cf66a1eb74ef6f66f980f7b4c09541953b2ac12', '2017-08-15 15:02:56', '2017-08-01 17:51:11', 'Activo'),
(352, 'Luis Gerardo', 'Ortega', 'Perez', 45, 1, 1, 15, 56, 'herpebio@hotmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', '4fa0992ac6daa9856102b5ed9a5497aab2d0eb58', 'herpebio', '2', '383f4f11d975cf9d55d7ef024e12e049b94f6ce7', '2017-08-15 15:02:56', '2017-08-01 17:02:30', 'Activo'),
(308, 'manuel', 'mendez', 'gomez', 29, 1, 1, 15, 56, 'manmendezgomez@gmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'Manuelmg', '2', 'b529ab894ab7fa494837df57a8e2e42345a1fbf9', '2017-08-15 15:02:56', '2017-07-28 16:12:16', 'Activo'),
(337, 'Francisco Gabriel', 'Granados', 'Martínez', 27, 1, 1, 15, 56, 'grana2francisco@gmail.com', 43, 329, 2, NULL, NULL, NULL, 'SI', 'ee6717b90deb53c7c5665c0c73dea72d40479c19', 'pacoponente', '2', '529e4dfa798a845d1ed7c84c460b15e59241e204', '2017-08-15 15:02:56', '2017-07-31 16:50:01', 'Activo'),
(336, 'Cinthya Estefani', 'Lopez', 'Aguilar', 24, 2, 1, 15, 56, 'fanix182@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '9c739091b9a7d1e7309bc4a58d4286d8bf763a95', 'Fanix182', '2', '9b41100bf3f4e03567dbbe22b5034578604e65d4', '2017-08-15 15:02:56', '2017-07-31 16:47:04', 'Activo'),
(335, 'Cristian Jesús', 'Chavez', 'Alvarado', 22, 1, 1, 15, 106, 'cristian.jesus1995@hotmail.com', 24, 174, 1, NULL, NULL, NULL, 'SI', '6191b5341d2bb4388ca7f03a51cf50b6f85ce581', 'cristianjesus', '2', 'a66082b6fea681e121f4345d877c68c49c747498', '2017-08-15 15:02:56', '2017-07-31 14:16:41', 'Activo'),
(314, 'Katya', 'Onchi', 'Ramos', 22, 2, 1, 15, 56, 'katy.onchi@gmail.com', 43, 341, 1, NULL, NULL, NULL, 'SI', '820b3c9f595642d952bd190b2273bdd00852c535', 'katyon', '2', 'dcdf56e31f172b68b7975a6f1c85907338e08f1e', '2017-08-15 15:02:56', '2017-07-28 16:55:02', 'Activo'),
(315, 'Pascual Eduardo ', 'Murillo ', 'Alvarado', 31, 1, 1, 15, 77, 'uno_ok@hotmail.com', 24, 171, 3, NULL, NULL, NULL, 'SI', '2a9b58a2be7bdfda17197673f5ea1599fcecceb7', 'pemurillo', '2', 'b5e8a2c16604947c6df5356855d999b676dcbb63', '2017-08-15 15:02:56', '2017-07-28 17:14:08', 'Activo'),
(316, 'Liliana Iveth ', 'Almonte ', 'Chavez', 23, 2, 1, 15, 56, 'lilianux_17@hotmail.com', 43, 341, 1, NULL, NULL, NULL, 'SI', 'cdc012e5d2b753ea9b72035d4b368bd4662c9fbc', 'LilianaAlmonte27', '2', 'db848d820dc17ff8912c7b920864effe35a6eefd', '2017-08-15 15:02:56', '2017-07-28 18:15:07', 'Activo'),
(317, 'Grecia Atenea ', 'Huape', 'Padilla', 32, 2, 1, 15, 56, 'greciaateneahpadilla@gmail.com', 43, 418, 2, NULL, NULL, NULL, 'SI', '9867cc0bb4bd0e8765f3208dd00e6e510de35877', 'GAHP', '2', 'e7e7c12d3d0fb89c25606476829729c53acf60f0', '2017-08-15 15:02:56', '2017-07-28 18:55:23', 'Activo'),
(318, 'JUAN CARLOS', 'GONZALEZ', 'HERNANDEZ', 43, 1, 1, 15, 56, 'jcgh1974@yahoo.com', 11, 93, 3, NULL, NULL, NULL, 'SI', '20e96fc488f8b4ede0d96e51ea4ddb267bb0a52c', 'JCGHGSU', '2', 'ad1635704410defa2f8528262f3fdcc8d3b8a0e3', '2017-08-15 15:02:56', '2017-07-28 19:14:30', 'Activo'),
(319, 'PEDRO', 'SÁNCHEZ ', 'HEREDIA ', 24, 1, 1, 15, 90, 'pedrosh1912@gmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', '109b25ce2a6b732d38a77fa4e7ae807e0391c233', 'Pedro1912', '2', '9f30e82c27621f7009ff18493e34a7cf2d1086b6', '2017-08-15 15:02:56', '2017-07-28 20:34:58', 'Activo');
INSERT INTO `usuarios` (`id_usuarios`, `nombre`, `a_paterno`, `a_materno`, `edad`, `genero`, `nacionalidad`, `estado`, `municipio`, `email`, `institucion`, `facultad`, `nivel`, `mesa`, `modalidad`, `area_id`, `mailing`, `password`, `username`, `puesto`, `token`, `created_at`, `request_token`, `status`) VALUES
(320, 'Nereyda', 'Mondragón', 'Arroyo', 21, 2, 1, 15, 56, 'nery_mondragon@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', 'cce9de1aab1b4e2b8d04a09ca67015df38bb99ec', 'nemondragon', '2', 'a9af8ec50524c05e432681d4fc79e76d75466c22', '2017-08-15 15:02:56', '2017-07-28 21:15:32', 'Activo'),
(321, 'Gerardo', 'Morán', 'López', 53, 1, 1, 15, 56, 'gemoran9@hotmail.com', 43, 411, 3, NULL, NULL, NULL, 'SI', '1eca152a80d0dea23e55338ee3f5473eb6ccd419', 'gemoran', '7', '4411e39d9535d320b3f073d3ecc9db59bfd93716', '2017-08-15 15:03:20', '2017-07-28 22:02:22', 'Activo'),
(322, 'Nereyda', 'Mondragón', 'Arroyo', 21, 2, 1, 15, 56, 'lidiabeiza@yahoo.com', 43, 344, 1, NULL, NULL, NULL, 'SI', 'ac42a27e084ba49ee2bb1891837dae3c21f24583', 'NereydaMondragon', '2', '46072ead62eb57a2479b86529856eeadd146aa84', '2017-08-15 15:02:56', '2017-07-28 22:24:46', 'Activo'),
(323, 'José Francisco', 'Lázaro', 'Luna', 23, 1, 1, 15, 90, 'jfll.0621@gmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '275de361e36d5ce90a95c40101bc13b11caa6f10', 'jlazaro', '2', '0d093a931b09fae94938a8d3b3084e36416acc8d', '2017-08-15 15:02:56', '2017-07-28 22:25:52', 'Activo'),
(324, 'Celia América ', 'Nieto ', 'del Valle', 35, 2, 1, 15, 56, 'america_811027@hotmail.com', 43, 349, 3, NULL, NULL, NULL, 'SI', 'b08b082ce37cc14bf0357b577c7772d74ccb8a4b', 'america_811027@hotmail.com', '2', '1f41816f576711b4d8686f76227d1ba09f4479e1', '2017-08-15 15:02:56', '2017-07-29 00:27:05', 'Activo'),
(325, 'Josefina', 'garcia', 'guerra', 40, 2, 1, 5, 119, 'j_garciagmx@yahoo.com.mx', 43, 344, 3, NULL, NULL, NULL, 'SI', '7c734fd18c11949cc115914d3ec7562eb2af69ad', 'josefinagg', '2', 'd98a7b6ea4732c0a524fbcb61fd8e2c6cba6aee1', '2017-08-15 15:02:56', '2017-07-29 02:57:31', 'Activo'),
(326, 'Jessica Nyx', 'Pérez', 'Castillo', 22, 2, 1, 15, 56, 'jessy_kas@hotmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', 'edc843df52991a1b8ae0d6132c9f90a7834dba5d', 'JessPe', '2', '6f98b343b9c2906a8e4843b37e9995fdd547eac1', '2017-08-15 15:02:56', '2017-07-29 03:11:04', 'Activo'),
(327, 'Jessica Nyx', 'Pérez', 'Castillo', 22, 2, 1, 15, 56, 'jessy_kas@hotmail.com', 11, 93, 1, NULL, NULL, NULL, 'NO', 'edc843df52991a1b8ae0d6132c9f90a7834dba5d', 'JeshPe', '7', '923a4df35f8743fe647b4d3620a04b1fcecab83f', '2017-08-15 15:03:20', '2017-07-29 03:21:28', 'Activo'),
(328, 'Karla Alejandra ', 'Ponce ', 'Vega ', 25, 2, 1, 15, 56, 'a_poncev92@hotmail.com', 36, 259, 2, NULL, NULL, NULL, 'SI', '5bfc66eec76f1e1542ac718453b87552a9d2dd81', 'AlePonceV', '2', 'c2384e9b48665ee39279a5071f5702428e9d10fa', '2017-08-15 15:02:56', '2017-07-29 03:36:59', 'Activo'),
(329, 'Adrián', 'Ávalos', 'Barrientos', 21, 1, 1, 15, 56, 'adravabar@gmail.com', 43, 341, 1, NULL, NULL, NULL, 'SI', 'e9def746e966fa9a11b6879bca5f0a963460aa12', 'AdrianUMICHFIC', '2', '924a97aa81d2eae8384d8a9a29d5beb5221e482e', '2017-08-15 15:02:56', '2017-07-29 04:24:32', 'Activo'),
(330, 'ANA GABRIELA ', 'CAMPOS', 'ARROYO', 32, 2, 1, 15, 56, 'agca_29@hotmail.com', 43, 344, 2, NULL, NULL, NULL, 'SI', 'cefe4ee9457485e5c6c92fe1fefe4de2f2cecb24', 'ANAGABY', '7', 'a88626821ffd3581c5cc74c11388aaf84a89aeae', '2017-08-15 15:03:20', '2017-07-29 20:28:05', 'Activo'),
(331, 'Veronica ', 'Avalos', 'Carrillo ', 22, 2, 1, 15, 56, 'vero_aavalos@hotmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', '8f76c6b4f1996a34be9b56cc4b27abeb07ddaf68', 'VeroAvalos', '2', '39ce557880b53b95e018e744a9d1405f003286a7', '2017-08-15 15:02:56', '2017-07-29 21:51:42', 'Activo'),
(332, 'Alexel', 'Becerril', 'Moller', 23, 1, 1, 15, 56, 'alexelbmoller@hotmail.com', 42, 326, 1, NULL, NULL, NULL, 'SI', '2127f364e5bbaf6f26c9b9367bb7f1b3e3b86b17', 'Alexel', '2', 'c2557432eefdf1d4781bd9969e983fcd429682c1', '2017-08-15 15:02:56', '2017-07-29 23:37:57', 'Activo'),
(333, 'Jose Amparo', 'Vazquez', 'Diaz', 18, 1, 1, 15, 35, 'avazquezd19@gmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', 'fc57d439f58e608209345e9fa4320ef720cba6db', 'Avazquez', '7', '713b1df716b60554a8a6ce0f6f18fc5e461d3088', '2017-08-15 15:03:20', '2017-07-30 21:27:23', 'Activo'),
(334, 'Juan Antonio', 'Corona', 'Ramírez', 20, 1, 1, 15, 56, 'malosvicios@live.com.mx', 43, 341, 1, NULL, NULL, NULL, 'SI', '63a39814b956d4fb369ddeaedeed3874e2c16f48', 'JuanCorona', '2', '3879f2bb764f3bb099174d56c2e090bbb8572acd', '2017-08-15 15:02:56', '2017-07-31 13:37:01', 'Activo'),
(338, 'Rosa Isela', 'Salinas', 'Espinosa', 26, 2, 1, 15, 56, 'rosiisalinas1110@gmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', '97283bbc75418e43bd1fa4a8be8999fc8901d9cd', 'Rosiisalinas', '2', '57a65f05fcbf627b1a4a57fddd335f62f32e32d3', '2017-08-15 15:02:56', '2017-07-31 16:53:40', 'Activo'),
(339, 'Libier', 'Magaña', 'Ruiz', 20, 2, 1, 15, 56, 'libier.magania.ruiz@gmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', '78edf551e5247246ddca153f29e125292310eb91', 'Libiermagania', '2', '28a4a9efd2504e69587832749c7d0ad9b8c2510d', '2017-08-15 15:02:56', '2017-07-31 17:27:52', 'Activo'),
(340, 'Iván', 'Corona ', 'Sánchez', 28, 1, 1, 15, 104, 'ivan.ftw@gmail.com', 43, 411, 1, NULL, NULL, NULL, 'SI', 'de092318187c5ba1e5e854c46844aa29f1332c19', 'IvanCorona', '2', '38a438155ddb092f36741a7c3a76890ca3c09f76', '2017-08-15 15:02:56', '2017-07-31 17:40:12', 'Activo'),
(341, 'Ada Estela ', 'Cedeño', 'Tinoco', 21, 2, 1, 15, 56, 'adae_cedeno@hotmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', 'ded0377d8c39f01d893092e2d6205ea6fee491aa', 'Ada', '2', '99ac0721c54c0b1ecc8ccf4bc4b8c04a1436a2fb', '2017-08-15 15:02:56', '2017-07-31 19:50:33', 'Activo'),
(342, 'Amayrani citlaly', 'Pedraza', 'Pérez', 26, 2, 1, 15, 56, 'amayrani_citlalypp@hotmail.com', 43, 417, 2, NULL, NULL, NULL, 'NO', 'bbc294db38bd206970b1acfda0619fb5cb5740cb', 'Amayrani2017', '2', '66b77575b4247b28926fa3e8c46d4e52486ced14', '2017-08-15 15:02:56', '2017-07-31 20:06:45', 'Activo'),
(351, 'Miriam', 'Aguilar', 'Pineda', 24, 2, 1, 15, 56, 'aguilarpineda_0207@hotmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', 'a3fe45cebd0d4bee54efe9cc7692882025c8fa50', 'Miriam-AP', '2', '8c19fefc2615ea1e9342999dd015297cc43ff877', '2017-08-15 15:02:56', '2017-08-01 16:34:47', 'Activo'),
(345, 'Francisco Manuel ', 'Orozco', 'Montes', 25, 1, 1, 15, 56, 'fmorozcom18@gmail.com', 43, 339, 1, NULL, NULL, NULL, 'SI', '8d0655c571498733f592ef894d3c6e890e9dc81f', 'Frank18', '2', '71c379d43f4fbf55dd4acfb5df85ce8079829c27', '2017-08-15 15:02:56', '2017-07-31 23:03:22', 'Activo'),
(346, 'Lilia Yunuen', 'Salazar ', 'Alcantar', 26, 2, 1, 15, 56, 'lily.sa@hotmail.com', 43, 339, 2, NULL, NULL, NULL, 'SI', '766f01948914d8ba159ceb18966050bc8c6ff1c5', 'Lilia', '2', 'cfcf01859d397bf269bea0eb412add8cbf10d529', '2017-08-15 15:02:56', '2017-08-01 01:33:16', 'Activo'),
(347, 'JUAN CARLOS', 'JIMENEZ', 'CRUZ', 27, 1, 1, 15, 56, 'carlos.0918@outlook.com', 43, 411, 3, NULL, NULL, NULL, 'SI', '96442f9450035c22816df7558ce7ecd38458d30c', 'JUANCARLOSJZC', '2', 'e6aeef7e874240062768cf8f275bba931ad69113', '2017-08-15 15:02:56', '2017-08-01 05:48:15', 'Activo'),
(348, 'MARIO ', 'FIGUEROA', 'CÁRDENAS', 66, 1, 1, 15, 90, 'laeamfc@hotmail.com', 5, 40, 3, NULL, NULL, NULL, 'NO', '774e6bf9dce0cd8d21d9c22da70eb7ea4151a625', 'Laeamfc1951', '7', '983ccc64a16aa12b83e4018295bb8f4b53005964', '2017-08-15 15:03:20', '2017-08-01 09:22:58', 'Activo'),
(350, 'Adán', 'Ríos', 'Cruz', 21, 1, 1, 15, 56, 'arc191@hotmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', '407201abbe725b5e7bebd7397f938ecdc9a57f0d', 'arc191', '2', '5cf0694111bfb558968a8aedb641b4d252079bfb', '2017-08-15 15:02:56', '2017-08-01 16:25:36', 'Activo'),
(362, 'Pedro Jovanni', 'Vázquez ', 'Salas', 29, 1, 1, 15, 56, 'chatorock_17@hotmail.com', 43, 340, 2, NULL, NULL, NULL, 'SI', '589871f124b806dac2498bc0651fde42f3cf37dd', 'chatorock', '2', 'cca2bbf71edc909fecdaa9c98aa7eb1d1350548f', '2017-08-15 15:02:56', '2017-08-02 02:33:17', 'Activo'),
(363, 'Jonatan Sahian ', 'Ponce', 'Avila', 19, 1, 1, 15, 90, 'jonatan.spa28@gmail.com', 13, 108, 1, NULL, NULL, NULL, 'SI', '5ccc11546abeca95c528de2695d20d2f57a887a5', 'JonatanPonceAvila', '2', '9196ddacdf476ede4271c28d3b4c67e038807cd0', '2017-08-15 15:02:56', '2017-08-02 14:34:43', 'Activo'),
(364, 'Iván', 'González', 'Arreguín', 25, 1, 1, 15, 56, 'ivan.92.g.a@gmail.com', 43, 346, 2, NULL, NULL, NULL, 'NO', '0a938b1cf92c73ad6e8db5a73f9f3b3dd7c50be4', 'ivan92', '2', '15237d90b59384d5e7f4947fa27d89086ccb0819', '2017-08-15 15:02:56', '2017-08-02 14:59:15', 'Activo'),
(365, 'Zaira ', 'Carrillo', 'Cacho', 22, 2, 1, 15, 44, 'zaira-cc279@hotmail.com', 24, 174, 1, NULL, NULL, NULL, 'SI', '9d7166255d87f1662e401ee7406ebdac902ceec2', 'ZairaCarrillo', '2', '226df6150669c040733c5b3f0b849af9e0bcb56f', '2017-08-15 15:02:56', '2017-08-02 16:29:08', 'Activo'),
(368, 'Ernesto', 'Garcia', 'Pineda', 51, 1, 1, 15, 56, 'egapineda04@gmail.com', 43, 411, 3, NULL, NULL, NULL, 'NO', '0dfdf2c234a200ce2e4c838cc3b1e17b6e91921b', 'egapineda', '7', 'c7bf8637e715f1d1706a92879832167923db767d', '2017-08-15 15:03:20', '2017-08-02 17:49:52', 'Activo'),
(367, 'ITZEL', 'HERNÁNDEZ', 'ROMERO', 23, 2, 1, 15, 114, 'itzel.michel1394@gmail.com', 12, 101, 1, NULL, NULL, NULL, 'SI', '6b774018990b30ce5c393500708d225c8535370d', 'itzel', '2', '4f95e9a575815457999787211be0cc48bd13275d', '2017-08-15 15:02:56', '2017-08-02 17:35:50', 'Activo'),
(369, 'Diana Patricia', 'Ferreyra', 'Corral', 27, 2, 1, 15, 56, 'diana_ferreyra16@hotmail.com', 43, 416, 2, NULL, NULL, NULL, 'SI', 'a55bb5385fa80c17fa8185ee587c85d6a2ac7326', 'Dferreyra', '2', '793d3871c673f517a098411899149e3876c62172', '2017-08-15 15:02:56', '2017-08-02 18:01:17', 'Activo'),
(370, 'Nancy', 'Cambrón', 'Muñoz', 38, 2, 1, 15, 56, 'nycasia2006@hotmail.com', 13, 107, 2, NULL, NULL, NULL, 'SI', '89399d8d2e9c12c22aa215a1af79b25157869a68', 'nancambron33', '2', 'dbdefbdd90d0c05a8eb6f1354ed61845b7fd2fe4', '2017-08-15 15:02:56', '2017-08-02 18:28:34', 'Activo'),
(371, 'Mónica Irais', 'Nieto', 'Moreno', 23, 2, 1, 15, 56, 'irais_bonny@hotmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', 'eec0ec1b877b447cfd890d6265df3e7955d3066f', 'Monieto', '2', 'e289cc917ee0d30c08a76a191fa454108f7c57dd', '2017-08-15 15:02:56', '2017-08-02 18:38:03', 'Activo'),
(372, 'Mónica Irais', 'Nieto', 'Moreno', 23, 2, 1, 15, 56, 'irais_bonny@hotmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', 'eec0ec1b877b447cfd890d6265df3e7955d3066f', 'Iraisnieto', '7', '17deed40ed1b282ba689b8dcdd2351b30e294daa', '2017-08-15 15:03:20', '2017-08-02 18:46:48', 'Activo'),
(373, 'Sergio Gabriel ', 'Durán', 'Juárez', 21, 1, 1, 15, 56, 'sergioduran60@gmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '547b4e4f1c1ebfabdb211d93c08dd12d7d9a53f8', 'sergio', '2', '5f8f1e5f00f2f51737cdc88cc4bcccfe66d151af', '2017-08-15 15:02:56', '2017-08-02 18:49:11', 'Activo'),
(374, 'Marco Iván', 'Valle', 'Maldonado', 29, 1, 1, 15, 56, 'marco.valle.mx@gmail.com', 43, 411, 3, NULL, NULL, NULL, 'SI', 'b8575ba576989f5ada572ddeb5b54e2a2151978b', 'tableau1234', '2', '321013eb5a46a840940d2c0c6c512ae1a1f0c8cb', '2017-08-15 15:02:56', '2017-08-02 19:42:02', 'Activo'),
(375, 'Perla Rubi', 'Perez ', 'Lugo', 22, 2, 1, 15, 56, 'rubi.xd@hotmail.com', 43, 341, 1, NULL, NULL, NULL, 'SI', '9d3f4d155bf445be2cbc771a85dcea531fe8b5ed', 'Perlaperezl', '2', '79c83b2f680702e162230cad8b7e03f6ed368ad1', '2017-08-15 15:02:56', '2017-08-02 19:49:04', 'Activo'),
(376, 'Luis Francisco', 'Ramirez', 'Rochin', 21, 1, 1, 15, 56, 'luis_ochoa01@hotmail.com', 43, 341, 1, NULL, NULL, NULL, 'SI', 'e7f1f196d9330d1d4b664fe9295b1cbdf29f2ff3', 'Luisfrochin', '2', 'c380f8b6f49fb2ecb232101902436c3ce12f8aca', '2017-08-15 15:02:56', '2017-08-02 19:59:32', 'Activo'),
(377, 'Gabriela', 'Benítez', 'Rocha', 26, 2, 1, 15, 56, 'gaby_br16@hotmail.com', 43, 338, 2, NULL, NULL, NULL, 'SI', '1dadd779e44bd3eb308ff910c40b6f593a959f2c', '0912790C', '2', 'fb2852ecb50df7a30ccbee8e943d847917dfcf53', '2017-08-15 15:02:56', '2017-08-02 20:12:23', 'Activo'),
(389, 'Jorge ', 'Garcia', 'Dominguez', 27, 1, 1, 15, 108, 'ingeniero_dominguez@hotmail.com', 43, 341, 2, NULL, NULL, NULL, 'SI', '1288db27c576524031f68c186e4401c2e7819029', 'Yorch', '2', 'a4f0db109c0fb53264f4764274adf64535fad67a', '2017-08-15 15:02:56', '2017-08-03 17:14:46', 'Activo'),
(388, 'URIEL', 'VILLEGAS', 'MALAGON', 29, 1, 1, 15, 40, 'uriel0000@hotmail.com', 43, 341, 1, NULL, NULL, NULL, 'NO', '2bff3a66efbc023d79edbfcf4d5f7e2c4c580941', 'URIELVILLEGAS', '2', '89f3b4ac96dc3e1c1bac8dee67ddf6c493602b7b', '2017-08-15 15:02:56', '2017-08-03 14:29:29', 'Activo'),
(382, 'Luisa Nicté ', 'Equihua ', 'Anguiano', 45, 2, 1, 15, 56, 'nicteea@yahoo.com.mx', 43, 341, 3, NULL, NULL, NULL, 'SI', '2b7d3f48e2b0b482f6876cf637bf2d5218da0b69', 'luisa72', '7', 'cbc439711f23cd6541cddb1537686df0bac173d1', '2017-08-15 15:03:20', '2017-08-03 00:35:07', 'Activo'),
(383, 'Braulio ', 'Sánchez ', 'Aguilar ', 20, 1, 1, 15, 90, 'braulio.horsepower@gmail.com', 13, 108, 1, NULL, NULL, NULL, 'SI', '1ce42a2d87c9b091d7faf8d44552a5251803c623', 'Braulio96', '2', '1c043d5969b0b898fbb70563e7fee1d0074cf8d6', '2017-08-15 15:02:56', '2017-08-03 02:13:25', 'Activo'),
(384, 'Rubén ', 'Hernández ', 'Morales ', 33, 1, 1, 15, 70, 'quercusbios@hotmail.com', 43, 346, 2, NULL, NULL, NULL, 'SI', 'a862b282a68cc35cfffc2b148c1588d92e8428f4', 'rhernandez', '2', '5723cc380b5a7aa76fb3abffc16bfe94670287b5', '2017-08-15 15:02:56', '2017-08-03 02:33:37', 'Activo'),
(385, 'Soemy Lisset ', 'Ponce ', 'Becerra', 19, 2, 1, 15, 56, 'soemy.lisset3@gmail.com', 13, 108, 1, NULL, NULL, NULL, 'SI', '2bc01858ce7b02856cd8125f689028010a8c6425', 'soemy', '7', '1d3082dc1f863cbcc12e4681dd4e62f3b81a2d26', '2017-08-15 15:03:20', '2017-08-03 03:50:55', 'Activo'),
(386, 'Jose Omar', 'Melchor ', 'Barriga', 25, 1, 1, 15, 9, 'omar_barmel@hotmail.com', 43, 341, 1, NULL, NULL, NULL, 'SI', '5385b99822797127e9da1f257fb649f4882298d2', 'OmarBarmel', '2', '39370de97abe04fe965728f9a80f64786aeb94c3', '2017-08-15 15:02:56', '2017-08-03 04:56:57', 'Activo'),
(387, 'Alejandro', 'Lopez', 'Mejia', 24, 1, 1, 15, 56, 'alexwayduff@gmail.com', 43, 346, 2, NULL, NULL, NULL, 'SI', '323a61d4da2fdc8f85868878f13b59b9cb30fcb3', 'aleczs', '2', 'f4ce01f9b6e57dbd371542a1c938a72981d6fb72', '2017-08-15 15:02:56', '2017-08-03 07:46:17', 'Activo'),
(390, 'Mario Alejandro ', 'Villalpando ', 'Nieves ', 24, 1, 1, 15, 56, 'alex_mavn7@hotmail.com', 43, 417, 2, NULL, NULL, NULL, 'SI', 'cd187fb5497e42d48a2ec15f3b5c33dc36c8e634', 'Mario', '2', 'f735e758f3342cc5adf92a370e38b51ae237162b', '2017-08-15 15:02:56', '2017-08-03 18:10:36', 'Activo'),
(391, 'Tohtli', 'Zubieta', 'Rojas', 60, 2, 1, 15, 56, 'tzubieta@gmail.com', 43, 346, 2, NULL, NULL, NULL, 'SI', 'e41cb28a1b86494346031b457e7b7a674ba6b900', 'tzubieta', '2', 'b27a43511c665f7fb36d9b1231299151f5815186', '2017-08-15 15:02:56', '2017-08-03 18:22:15', 'Activo'),
(392, 'Fernando', 'Maldonado', 'Reyes', 22, 1, 1, 15, 56, 'fernandomreyes@outlook.com', 11, 93, 1, NULL, NULL, NULL, 'SI', '65525017a9148867a0596a39a86437ed6bd32f59', 'Fernandomr', '7', '1aadec6998c1efb3eff0ef2f760bd0954b846e70', '2017-08-15 15:03:20', '2017-08-03 18:46:47', 'Activo'),
(393, 'Adrián', 'Ávalos', 'Rangel ', 20, 1, 1, 15, 56, 'adrianbiotec.ar@gmail.com', 43, 411, 1, NULL, NULL, NULL, 'SI', 'c7c1932594c5344bf00e6bd0e338fd14296bc253', 'Adrianar', '2', 'ecd069d48cd092a649ee49b7c460b5ee0d848eee', '2017-08-15 15:02:56', '2017-08-03 19:29:45', 'Activo'),
(394, 'Alain Leonel', 'Conrado', 'Palafox', 29, 1, 1, 15, 56, 'conrado_alain@hotmail.com', 43, 341, 1, NULL, NULL, NULL, 'SI', '75ac2551d621984283542f1ae5fe81b6e3d01cd8', 'Alain', '2', 'a7b7fb7509065e3050d34a72652a5df49ba734b4', '2017-08-15 15:02:56', '2017-08-03 20:35:52', 'Activo'),
(395, 'Rafael', 'Madrigal', 'Maldonado', 48, 1, 1, 15, 56, 'rafamadmx@yahoo.com.mx', 11, 91, 3, NULL, NULL, NULL, 'SI', 'ff6d33953d4d7cb732f3488ab71c193f268790cf', 'RafaelMadrigal', '2', '86224153985e0213d998d3121935498fe4ed4858', '2017-08-15 15:02:56', '2017-08-03 20:48:07', 'Activo'),
(396, 'JUAN CARLOS', 'ALVAREZ', 'HERNANDEZ', 38, 1, 1, 15, 6, 'juan.carlos.alvarez.hdez@gmail.com', 107, 454, 3, NULL, NULL, NULL, 'SI', '538bb2940e4e793cb790484bf1a2611f13fe14c5', 'jcalvarezh', '2', 'ba927442abc08c329ccc4df90fb65991ae303693', '2017-08-15 15:02:56', '2017-08-03 21:37:33', 'Activo'),
(397, 'JUAN CARLOS', 'ALVAREZ', 'HERNANDEZ', 38, 1, 1, 15, 6, 'jcalvarezh@yahoo.com.mx', 107, 454, 3, NULL, NULL, NULL, 'SI', 'c707c1d19a619a62ac756de4b7290422612841f4', 'jcalvarh', '7', '0566f9d74c88a94e16334c21a0f9b770aad66146', '2017-08-15 15:03:20', '2017-08-03 21:45:44', 'Activo'),
(398, 'Luz Elvira ', 'Guillen ', 'Casillas ', 18, 2, 1, 15, 52, 'z.u.l83@hotmail.com', 18, 134, 2, NULL, NULL, NULL, 'SI', 'a7e5615f57fea7f4868923e1f4a1e210fb8427fb', 'Luzguillen', '2', '6c887f94632bb756b02f94f294e3e17135a536e6', '2017-08-15 15:02:56', '2017-08-04 00:11:17', 'Activo'),
(399, 'RAFAEL', 'SALGADO', 'GARCIGLIA', 56, 1, 1, 15, 56, 'rsalgadogarciglia@gmail.com', 43, 411, 3, NULL, NULL, NULL, 'SI', '8060d807b3988a2b819fad81cad996c643bc9896', 'rsalgado', '7', 'ccef9ca64053152fabbe5a3868aad8650ffb286a', '2017-08-15 15:03:20', '2017-08-04 00:15:41', 'Activo'),
(400, 'ALEJANDRA', 'HERNÁNDEZ', 'GARCÍA', 40, 2, 1, 15, 56, 'alexahg06@yahoo.com.mx', 43, 338, 2, NULL, NULL, NULL, 'NO', '369b1171187cb9d20a5ad8a28f8e6eb149b180c4', 'ahernandez', '7', 'b717a11d3297a5c46002bd8d88e6694bff3acc44', '2017-08-15 15:03:20', '2017-08-04 00:26:28', 'Activo'),
(401, 'RAFAEL', 'AYALA', 'PONCE', 22, 1, 1, 15, 56, 'raap_ppaarr@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'NO', 'ed5c5c680da032fa7bf024958b4f4a4731119afb', 'rayala', '2', 'ac2a47337a9d962866fb1a5af9c29a413dea64d9', '2017-08-15 15:02:56', '2017-08-04 00:37:55', 'Activo'),
(402, 'Abraham', 'Martinez', 'Viveros', 24, 1, 1, 15, 104, 'abm.ing.agro@gmail.com', 43, 347, 1, NULL, NULL, NULL, 'SI', '381ffbed8dce69840b18cea1cc654e5458c9fc0a', 'JUMEX30', '2', '2037d5da116c79ec1afa0b22b3e80174710f4f62', '2017-08-15 15:02:56', '2017-08-04 00:59:23', 'Activo'),
(403, 'Mayra Fabiola', 'Cordoba', 'Ramirez', 22, 2, 1, 15, 104, 'may.abmq@gmail.com', 43, 347, 1, NULL, NULL, NULL, 'SI', '4b45875a089b4d2d69023c23334852dc64d15f2b', 'MayCR', '2', 'e3a3d13f7bbaff66213c20d68d848dfbb0ee6337', '2017-08-15 15:02:56', '2017-08-04 01:04:27', 'Activo'),
(404, 'Amalia Inés', 'Del Moral', 'Gómez', 24, 2, 1, 15, 56, 'mayan.es@hotmail.com', 43, 417, 2, NULL, NULL, NULL, 'SI', '27b3932fae0649841a184cbd303f66cb1884e2bf', 'mayadelmoral', '2', '746673206de8ddf2b3a0a99173bfbd3eb60ad1a3', '2017-08-15 15:02:56', '2017-08-04 01:36:13', 'Activo'),
(405, 'Zoila', 'Torres', 'Valencia', 25, 2, 1, 15, 23, 'Zoylilla_23@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', 'a4125d376d2d46c6929510c6374dfe861b197b79', 'Zoila', '2', 'cc93bb75c63e880b83264c01e35b0fc8370cb047', '2017-08-15 15:02:56', '2017-08-04 01:43:38', 'Activo'),
(406, 'ELIAS', 'VILLANUEVA', 'BOYSO', 26, 1, 1, 15, 56, 'biologosin_vibe@hotmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', 'e12c9b8c41fa666c25e20356bf8905c5401f8e96', 'ViBE', '2', 'fa9dc47e10b5c8cc81b7aa5ba1ce5b15721365e1', '2017-08-15 15:02:56', '2017-08-04 01:45:11', 'Activo'),
(407, 'Diana Angélica ', 'Carrillo ', 'Gutiérrez', 21, 2, 1, 15, 56, 'dianaa.gtz@gmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', '4eac8f22c979a741f302a95b7b786974331af346', 'dicarrillo', '2', '97e76f1315e7f38463ba5a2e7e93079dd9f86e6b', '2017-08-15 15:02:56', '2017-08-04 02:05:53', 'Activo'),
(408, 'Luis Adrián', 'Saldaña', 'Trujillo', 21, 1, 1, 15, 56, 'last960520@gmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', '904e89b32a505bddef85d670952c376d4e319bb3', 'luis20', '2', '66a7525e143771f17f248eb5aa9e26cc974890eb', '2017-08-15 15:02:56', '2017-08-04 05:21:56', 'Activo'),
(409, 'GUADALUPE', 'ZINZUN', 'IXTA', 19, 2, 1, 15, 56, 'lupita_slimm@hotmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', 'd8d6ebb04001f34dffef2824c891fd83146534e5', 'guadalupe', '2', '4bcbf5bf1ab1175e7c33b5b4c926f608d49cbbb0', '2017-08-15 15:02:56', '2017-08-04 05:26:36', 'Activo'),
(410, 'Marisol yuritzi ', 'Aguilar', 'Cruz', 23, 2, 1, 15, 56, 'star_sol11@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '407ecf2987cf6c9327146b4c412888b5593e1a20', 'marisolyuritzi', '7', '2f0d89921b9e8ed041b5cad5417de3f3dd68567b', '2017-08-15 15:03:20', '2017-08-04 14:47:20', 'Activo'),
(411, 'JOSE', 'PEREZ', 'VILLARREAL', 35, 1, 1, 15, 104, 'biopepe1@hotmail.com', 22, 157, 3, NULL, NULL, NULL, 'NO', '1233b004fd2b233a1f5c8ca26cb861fff46a4b82', 'Pepe', '2', '8a57b853d90db2f114bfa62feb62fb656e7b9f49', '2017-08-15 15:02:56', '2017-08-04 16:45:21', 'Activo'),
(412, 'Adriana', 'Palacios', 'Morales', 21, 2, 1, 15, 56, 'xdadriana@hotmail.com', 43, 339, 1, NULL, NULL, NULL, 'SI', '076cdc286f50950a5af976776b42be66caec34df', 'Adrianapm', '2', '96dae4c149dd09bb57cfcc4c458f7c4118598d69', '2017-08-15 15:02:56', '2017-08-04 17:01:31', 'Activo'),
(413, 'José Delfino', 'Soto', 'Buenaventura', 25, 1, 1, 15, 56, 'soto_buenaventura@hotmail.com', 5, 42, 2, NULL, NULL, NULL, 'SI', 'f9b142cebe0d9c96acc8b97803b813bad5cbdbfd', 'Soto123', '2', '92869f74589f5cd8384a1f7604e6bf3bc8c37ecb', '2017-08-15 15:02:56', '2017-08-04 17:51:34', 'Activo'),
(415, 'Mario', 'Morales', 'Máximo', 27, 1, 1, 15, 93, 'mmoralesmaximo@gmail.com', 25, 179, 1, NULL, NULL, NULL, 'SI', 'a5b02187603ba0890db7ce9d69d20539c8bf44ff', 'moralesmaximo', '2', '678ae3377076018289e66284c8317f21b2b1ff09', '2017-08-15 15:02:56', '2017-08-04 23:24:07', 'Activo'),
(445, 'Wilmer ', 'Castillo', 'Najar', 24, 1, 2, 15, 56, 'ironwil_16@hotmail.com', 43, 346, 2, NULL, NULL, NULL, 'SI', '1ca7c87699be3b3281420ed659cf20cf261a34a1', 'castillowilmer', '2', 'f37e90f8714a82306f8138328941ca3b4773decb', '2017-08-15 15:02:56', '2017-08-07 13:25:48', 'Activo'),
(417, 'José Luis', 'Landeros', 'Páramo', 27, 1, 1, 15, 75, 'landeros_jose_luis@yahoo.com', 43, 417, 2, NULL, NULL, NULL, 'SI', 'cbec858c656100fbadbc1fbb75c026c7cfa7b276', 'luislanderos', '2', 'cfb8324723f5ecdd5eb3cb1a776fd9edbbe9dc63', '2017-08-15 15:02:56', '2017-08-05 00:40:49', 'Activo'),
(418, 'Luis Fernando', 'Gudiño ', 'Sosa', 32, 1, 1, 15, 55, 'fherr0322@gmail.com', 103, 375, 2, NULL, NULL, NULL, 'SI', 'f62dd414e6330f506210306ecd06967231994f1c', 'Fherr1620', '2', 'd567782c56786a5c5c4b2579e5c2f024839f4a97', '2017-08-15 15:02:56', '2017-08-05 01:01:13', 'Activo'),
(419, 'Julio Iván', 'Orozco', 'Palma', 24, 1, 1, 15, 56, 'Damnaret@gmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', 'c6b312cb02738421b3e97065a718a042a11c0fae', 'Damnaret12', '2', '4f2890b8f5ca7f69e79625914c9d2bc94a5df585', '2017-08-15 15:02:56', '2017-08-05 01:32:44', 'Activo'),
(420, 'Gladys ', 'Juárez ', 'Cisneros', 29, 2, 1, 15, 56, 'gladyxx_23jc@hotmail.com', 43, 346, 2, NULL, NULL, NULL, 'SI', '5cbebcb8965cc8de5c95c81d0cd8f5b21ddaf304', 'Gladys', '2', '4312e884622e1d02d6065124623e3f98275dc006', '2017-08-15 15:02:56', '2017-08-05 03:13:27', 'Activo'),
(421, 'Joaquin ', 'Estevez ', 'Delgado', 50, 1, 1, 15, 56, 'fismatumsnh@hotmail.com', 43, 350, 3, NULL, NULL, NULL, 'NO', '7bbf91d522f2e58af4232bf4ef9c50628c604087', 'joaquin', '2', 'd3c7c60b84144dc3683a15add442bc9af3a0b51f', '2017-08-15 15:02:56', '2017-08-05 15:13:15', 'Activo'),
(423, 'Gabriel', 'Arreola', 'Sánchez', 25, 1, 1, 15, 56, 'gabrielarreolasanchez@gmail.com', 43, 341, 2, NULL, NULL, NULL, 'NO', 'd8f696f5ee79f9c8c845142d590a86e2389a0fbd', 'gabrielarreola', '2', 'ff41be54b557055584cb665922d25ad40f006815', '2017-08-15 15:02:56', '2017-08-05 16:56:26', 'Activo'),
(424, 'Gabriela Jazmín', 'Chávez', 'Martínez', 22, 2, 1, 15, 56, 'gabyjaz1994@hotmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', 'd8a9751af52b6b91555bde3a9a5144e04d9e6c01', 'GabJCM', '2', 'f8737a3363c8758b6b215e9c4f1e0f40cb5d97c8', '2017-08-15 15:02:56', '2017-08-05 17:16:01', 'Activo'),
(447, 'Manuela Yeleni ', 'Moreno', 'Carbajal', 21, 2, 1, 15, 56, 'yelenii_18@hotmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', '5cac2a585b80005cf91cef0242e707cded2199ab', 'MorenoCarbajal-18', '2', '1f37ea6b7d34a03f158a86f487abab630555b5df', '2017-08-15 15:02:56', '2017-08-07 16:13:54', 'Activo'),
(426, 'Fredy Geovannini ', 'Morales ', 'Palacios', 30, 1, 1, 15, 56, 'fgmp08@hotmail.com', 43, 411, 3, NULL, NULL, NULL, 'SI', '463928d810b855515433beee486f3fb23ab8c7c5', 'fgmp08', '2', 'c51b2aa0cfa99f2770338463746eeb7056c9f1ee', '2017-08-15 15:02:56', '2017-08-05 19:25:52', 'Activo'),
(427, 'Jorge Alejandro', 'Ávila', 'Olivera', 38, 1, 1, 15, 56, 'ja.avilaolivera@gmail.com', 43, 418, 3, NULL, NULL, NULL, 'SI', 'f8c547df8e2b1510ce55cca4e1ae7aa9ce4ea86c', 'jao', '2', 'be9dcea51c125561e12256649ddbe77b5a2e2c33', '2017-08-15 15:02:56', '2017-08-05 19:39:40', 'Activo'),
(428, 'Alex Felipe', 'Bautista ', 'Martinez', 23, 1, 1, 29, 142, 'axfel_9411@hotmail.com', 43, 341, 1, NULL, NULL, NULL, 'SI', 'bcc9297904a4f3b95f8edfdc4753cec44a9dac39', 'Bautista', '2', '3719eae277ed72e2480ca0bfb9ba5ef758dbc746', '2017-08-15 15:02:56', '2017-08-05 20:22:17', 'Activo'),
(430, 'Lilia Yunuen', 'Salazar', 'Alcantar', 26, 2, 1, 15, 56, 'lily.sa@hotmail.com', 43, 339, 2, NULL, NULL, NULL, 'SI', '766f01948914d8ba159ceb18966050bc8c6ff1c5', 'Lil', '2', 'ae328f08da4bc5fd53ef6907e4e61385c7b732c7', '2017-08-15 15:02:56', '2017-08-05 23:38:44', 'Activo'),
(448, 'Daniela', 'Garcia', 'Garcia', 23, 2, 1, 15, 56, 'dagaga45@gmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', '89daa2eafc9e767387b121fc152e804aff8cc424', 'dagaga', '2', '63145e89f9e235ca200bd122734041721d16c37c', '2017-08-15 15:02:56', '2017-08-07 16:20:01', 'Activo'),
(433, 'MARIANA', 'GOMEZ', 'BARROSO', 26, 2, 1, 15, 56, 'marianicha_13@hotmail.com', 43, 411, 1, NULL, NULL, NULL, 'SI', '36ce084f94599557f7a3eb1e1be538495afc79b3', 'marianicha', '7', '7cd537cb70cf8bc7fe3932154ed74f4402d2de74', '2017-08-15 15:03:20', '2017-08-06 01:13:33', 'Activo'),
(434, 'CARMEN ARACELI', 'GONZALEZ', 'ASPERA', 50, 2, 1, 15, 56, 'araceliglezaspera@hotmail.com', 11, 88, 2, NULL, NULL, NULL, 'SI', '98d737a2fe0864a52c65b79d5ef5e8dd759fa23a', 'araceliglezaspera', '2', 'c2a03437503e3483f8d6f47b04e09497cf8eac70', '2017-08-15 15:02:56', '2017-08-06 03:00:13', 'Activo'),
(435, 'arturo kenzuke ', 'nakamura', 'garcia', 20, 1, 1, 15, 56, 'artnak0111@gmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', 'e6ee35b7ee781fbf077c08247f6f805a686c3cb6', 'Kenzuke', '2', '7ea7d12191c8663ce2c0b7b632e898f58a97e7ce', '2017-08-15 15:02:56', '2017-08-06 17:04:16', 'Activo'),
(436, 'Karen Fabiola ', 'Tena', 'Rojas', 28, 2, 1, 15, 56, 'l.n.karentena@gmail.com', 43, 339, 2, NULL, NULL, NULL, 'SI', 'fbb7e8ae29db0edff85ddd50808e66582e195f6b', 'KarenTena', '2', '2961c7e11a09d17c15eb25ac7338f6b2ce883a24', '2017-08-15 15:02:56', '2017-08-06 21:26:41', 'Activo'),
(437, 'Pedro', 'Sandoval', 'Estrada', 31, 1, 1, 15, 106, 'ing.pse@outlook.com', 18, 138, 2, NULL, NULL, NULL, 'SI', 'bfecfd0cbe26f67990903230e0ca2cb2b2615072', 'Psandoval2017', '2', 'c6aff5db1698e263f720297333eba62206259764', '2017-08-15 15:02:56', '2017-08-06 21:55:30', 'Activo'),
(438, 'FEDERICO ', 'PÉREZ', 'GARCÍA', 41, 1, 1, 15, 110, 'desasosiego@gmail.com', 34, 239, 2, NULL, NULL, NULL, 'SI', 'd26afd7d16ff102bdb7b30eee6bccce71addce0a', 'fedebro', '2', '3e95232744ecf1dae5f6d262c5f4e940f4d25ae0', '2017-09-18 14:05:08', '2017-08-06 22:25:33', 'Activo'),
(446, 'Juan Ángel ', 'Saucedo', 'García', 22, 1, 1, 15, 56, 'maryblu_19@hotmail.com', 43, 341, 1, NULL, NULL, NULL, 'NO', '387c65c056e275131a2285232e3c07d66469f80e', 'angelS', '2', 'f781f19b33e2a0c1755c91030ca0cf07af0046f2', '2017-08-15 15:02:56', '2017-08-07 15:55:07', 'Activo'),
(441, 'María Belem Teresa', 'Echeverría', 'Toriz', 52, 2, 1, 15, 56, 'belem_bet@yahoo.com', 43, 341, 3, NULL, NULL, NULL, 'SI', 'fa57bd5e4f2ad2ce51ebecc94da31b7b946d481a', 'Belem', '2', 'f2bd929c62c102959fada21dc95e5b20c3b8586f', '2017-08-15 15:02:56', '2017-08-07 00:02:03', 'Activo'),
(442, 'Pedro Antonio', 'Perez', 'Hernández', 20, 1, 1, 15, 56, 'sluk93@gmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', '63766440f4f53f8a5171b569bff388de549eb211', 'Pedro', '7', '9e73d4667d941bc4959a74097a2b69c763cf72f6', '2017-08-15 15:03:20', '2017-08-07 01:27:10', 'Activo'),
(443, 'Arubi Monserrat', 'Becerril', 'Navarrete', 22, 2, 1, 15, 56, 'arumonbn25in@gmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', 'be2d9bf7dd9b8e06a15825f2214461e86d5be3e4', 'ArubiBecerril', '2', 'b5597a58f0baab6718066c2b50ac0a720715fcbe', '2017-08-15 15:02:56', '2017-08-07 02:06:07', 'Activo'),
(444, 'MARIO', 'FIGUEROA', 'CÁRDENAS', 65, 1, 1, 15, 90, 'laeamfc@hotmail.com', 5, 40, 3, NULL, NULL, NULL, 'NO', '774e6bf9dce0cd8d21d9c22da70eb7ea4151a625', 'Laeamfc-1951', '2', '0bff9116028471fc506f5ec18d2e02fef3586f3a', '2017-08-15 15:02:56', '2017-08-07 09:32:22', 'Activo'),
(449, 'Hillary Michelle', 'Álvarez', 'Pérez', 21, 2, 1, 15, 56, 'hillary_michelle@outlook.com', 11, 93, 1, NULL, NULL, NULL, 'SI', 'f633b0c576c85fe70c518f97fd78de0d9083ed7b', 'Hillary-Alvarez-05', '2', 'c21154c820d04907f3e33a1261b6ab5b4d39d19b', '2017-08-15 15:02:56', '2017-08-07 16:21:53', 'Activo'),
(450, 'Margarita Concepción', 'Castañeda ', 'Cruz', 27, 2, 1, 15, 45, 'm-g-ie@hotmail.com', 43, 349, 1, NULL, NULL, NULL, 'SI', '59c8401e949e3a3d96a7512dbf54efc8b292a8f9', 'mager', '7', 'f45924a8a2cae8044450374763575d330b5b1e67', '2017-08-15 15:03:20', '2017-08-07 16:31:39', 'Activo'),
(451, 'VÍCTOR MANUEL', 'GÓMEZ', 'REYES', 41, 1, 1, 15, 56, 'vmgomezrr@gmail.com', 43, 346, 3, NULL, NULL, NULL, 'SI', '595abf4ead1e092c19eafe802f8d56cdd867e2f4', 'vmgomez', '2', '3c4d10e78b5aa29fdfdf38e1ec7191f340a62aff', '2017-08-15 15:02:56', '2017-08-07 16:39:05', 'Activo'),
(452, 'Juan Daniel', 'Ochoa', 'Echegollen', 23, 1, 1, 15, 77, 'ddaannii1703@gmail.com', 24, 174, 1, NULL, NULL, NULL, 'SI', '48bd005ac26d5a6e9015a7f3f9335502744998ac', 'Chego', '7', '8d97e8a505228d0a3e5e2abceb1007f2d57f26e0', '2017-08-15 15:03:20', '2017-08-07 16:49:12', 'Activo'),
(453, 'Juan Daniel', 'Ochoa', 'Echegollen', 23, 1, 1, 15, 77, 'ddaannii1703@gmail.com', 24, 174, 1, NULL, NULL, NULL, 'SI', 'beca0dc71d4b60d7824032bcf0625de4c790f3a5', 'Chegito', '2', '53515c08beb10d8655d59bf946c329cbbd8a1d46', '2017-08-15 15:02:56', '2017-08-07 16:56:25', 'Activo'),
(454, 'Joyce Elizabeth', 'Ordaz', 'Vazquez', 21, 2, 1, 15, 56, 'joyce.elizabeth.1218@gmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '0bbe31bf0f36c8558296e15a26b125c66628064a', 'joyceelizabeth', '2', 'ac42f1b29e5425d2cd9221314bf6369e87d2faee', '2017-08-15 15:02:56', '2017-08-07 16:59:03', 'Activo'),
(455, 'MARÍA VERÓNICA', 'GABRIEL', 'LUCIANO', 31, 2, 1, 15, 76, 'verogl_06@yahoo.com.mx', 103, 375, 2, NULL, NULL, NULL, 'SI', 'a63470bcb9e2b163598091a5a7535fe2e2b0ee1a', 'VERONICA', '2', 'a67bd6d606b559fabe788986f72ee61029a70e9e', '2017-08-15 15:02:56', '2017-08-07 17:11:29', 'Activo'),
(456, 'Diego Armando', 'Bello', 'Nieto', 29, 1, 1, 15, 26, 'prensa_contepec@hotmail.com', 132, 456, 1, NULL, NULL, NULL, 'SI', '52b8b0eaff5f6d41414f7e77b73e61adeb82ac75', 'Maximiliano', '2', '5b3c0f9d9defcb4dca6ebc4766b5eef3bf34870a', '2017-09-19 20:41:13', '2017-08-07 17:24:51', 'Activo'),
(457, 'MARíA VERÓNICA', 'GABRIEL', 'LUCIANO', 31, 2, 1, 15, 76, 'verogl_06@yahoo.com.mx', 103, 375, 2, NULL, NULL, NULL, 'SI', '890abfe6d7298c72b53fe75ac7bc93fb2e606c51', 'astrid', '7', '323b824e42cb9836bc05b44f411d6d81a614bbfa', '2017-08-15 15:03:20', '2017-08-07 17:29:23', 'Activo'),
(458, 'Juan Armando', 'Arias', 'Martínez', 22, 1, 1, 15, 56, 'juanarmando_27@hotmail.com', 43, 341, 1, NULL, NULL, NULL, 'SI', 'da5ef2f98a2ddafb8e934adc22e8a9272a58d313', 'JuanArmando', '2', '76f9eabca19a1bb4db8eac862c80da48d5b70c80', '2017-08-15 15:02:56', '2017-08-07 18:19:36', 'Activo'),
(459, 'Maria Guadalupe ', 'Gonzalez', 'Medina ', 25, 2, 1, 15, 56, 'emperatriz-mary@hotmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', '6d470044cfa33f7322fc5586345b374caaaae689', 'Mary', '7', '6e67086a5d1f332e23f907833b36e4e45e3d5901', '2017-08-15 15:03:20', '2017-08-07 18:46:46', 'Activo'),
(460, 'PABLO', 'MAGAÑA', 'GARCIA', 24, 1, 1, 15, 32, 'pablo32_m@hotmail.com', 25, 179, 1, NULL, NULL, NULL, 'SI', '5cf8cbfdd30cf5268fc7cd6a0832012305a96378', 'blopaz', '2', 'f20caf9823c0d4b9816530937a3f85b95d3e5b1e', '2017-08-15 15:02:56', '2017-08-07 19:15:09', 'Activo'),
(461, 'Maria Guadalupe ', 'Gonzalez', 'Medina ', 25, 2, 1, 15, 56, 'emperatriz-mary@hotmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', 'e199ebbf4ec8bf7cba94722b8bb741ce07125081', 'Camila', '2', '1ecb227943e0f5709514766d0f92000a4b21dd5a', '2017-08-15 15:02:56', '2017-08-07 19:22:25', 'Activo'),
(462, 'Juan Christian', 'Altamirano ', 'López', 25, 1, 1, 15, 56, 'jcal_010612@hotmail.com', 28, 199, 1, NULL, NULL, NULL, 'SI', 'be30f970070bbfe29a2f9d1252b3ee1f6459e6bf', 'juanlopez', '2', 'd930440dbab7ed171425a2eb6050dbb92b5395a6', '2017-08-15 15:02:56', '2017-08-07 20:06:14', 'Activo'),
(463, 'Adolfo', 'Juanico', 'Godinez', 22, 1, 1, 15, 56, 'adolfo_juanico_g_@hotmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', '74e125654ebc30e859feaf9a23b85d1c7da7f561', 'AdolfoJ95', '2', '00abc3a3d2bf26869d0bc5ac64e406746ae9c750', '2017-08-15 15:02:56', '2017-08-07 20:06:16', 'Activo'),
(464, 'RENNÉ IBETH', 'LÓPEZ', 'CHACÓN', 27, 2, 1, 15, 56, 'biol.renne.lopez27@outlook.com', 43, 418, 1, NULL, NULL, NULL, 'SI', 'e7cace74ba2fd52f8c5e5bee19680af89429df43', 'magenta27', '2', 'db06828e439be6dd4df086ab840345cc128e6ab5', '2017-09-18 15:27:30', '2017-08-07 20:57:36', 'Activo'),
(465, 'Emanuel ', 'Tinoco ', 'Vargas ', 21, 1, 1, 15, 56, 'mane_96tvs@hotmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', '321569c8af0b08da2a1dffca261acc15f3093540', 'Emanuel10', '7', '8a162eeff393b6b02abd9fd9cd0fa478f6305459', '2017-08-15 15:03:20', '2017-08-07 21:56:02', 'Activo'),
(466, 'Carlos Enrique', 'López', 'Orozco', 20, 1, 1, 15, 56, 'carlopez.enrique@hotmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', '258f77e2eb4f063d3776d58903e1b6e80ceef620', 'Carlopez123', '7', 'ec038be69fb862f343c776662bf0e11a3491f0f2', '2017-08-15 15:03:20', '2017-08-07 21:58:09', 'Activo'),
(467, 'MARIELA', 'SALINAS', 'RODRIGUEZ', 24, 2, 1, 15, 70, 'marieal.s.r@gmail.com', 43, 346, 2, NULL, NULL, NULL, 'SI', 'c30f709eca918f84e7ec941093efc46a2fb54f46', 'mariela', '2', 'b24a34913e5e7054e7f6356300d24caeeb9380f8', '2017-08-15 15:02:56', '2017-08-07 22:08:37', 'Activo'),
(468, 'Mayra Alejandra', 'Guiza', 'Sánchez', 24, 2, 1, 15, 56, 'alejamaj7@hotmail.com', 43, 341, 1, NULL, NULL, NULL, 'SI', '48f9fc3ca0b7fb6caee7a05eff07720f16e25d22', 'mayraguiza', '2', '39e6c717f4b789d1e272afad9deeb8ecc8d5227b', '2017-08-15 15:02:56', '2017-08-07 22:42:32', 'Activo'),
(469, 'Mariana ', 'Vela', 'Ambriz', 19, 2, 1, 15, 56, 'marianavela97@hotmail.com', 11, 93, 4, NULL, NULL, NULL, 'SI', '47f12c99ac2f9342806e52db7e3c0cdd8b751991', 'marianavela97', '7', '328ef4fd5cc920f0f0269b3c6b3fa909f01c34ac', '2017-08-15 15:03:20', '2017-08-07 23:08:57', 'Activo'),
(470, 'Cristian Israel', 'Alejandre', 'Aceves', 20, 1, 1, 15, 56, 'cristianalejandre34@gmail.com', 11, 93, 4, NULL, NULL, NULL, 'SI', '47f12c99ac2f9342806e52db7e3c0cdd8b751991', 'ciaa30', '7', 'cff1e4dce135bc7695f2d4902c324c0e1ea6b285', '2017-08-15 15:03:20', '2017-08-07 23:13:30', 'Activo'),
(471, 'Edith Abigail', 'Medina ', 'Benítez', 23, 2, 1, 15, 114, 'edithabigailmedina@gmail.com', 12, 106, 1, NULL, NULL, NULL, 'SI', '8a4c23ee43a86caa61d3dd50655eafd45ad9b8bb', 'Abimedina', '2', '280cd79fd0e10bbe2153fef747aac34fe59a524f', '2017-08-15 15:02:56', '2017-08-07 23:16:47', 'Activo'),
(472, 'Gabriela ', 'Rodríguez ', 'Valdez', 18, 2, 1, 15, 56, 'gaby_rv1209@hotmail.com', 43, 411, 1, NULL, NULL, NULL, 'SI', '72ca0d85176169013626c1c282e347445f17032c', 'GabyRodriguez', '2', 'b99bf289e43e6fbed3dadf6b96afc588d8f304eb', '2017-08-15 15:02:56', '2017-08-07 23:22:23', 'Activo'),
(473, 'FERNANDO IGUAZU', 'RAMIREZ', 'ZAVALETA', 39, 1, 1, 15, 56, 'feryuphy@yahoo.com.mx', 43, 350, 3, NULL, NULL, NULL, 'SI', 'bf78bb704bfde091afc9ad26655bd6c3de638a68', 'feryuphy', '2', 'de638a7042ee4d75053bd447af82ca87929c2817', '2017-08-15 15:02:56', '2017-08-08 02:04:16', 'Activo'),
(474, 'Vania Valeria', 'Castillo ', 'Osornio', 22, 2, 1, 15, 56, 'vania.vc11@hotmail.com', 13, 108, 1, NULL, NULL, NULL, 'SI', '72b011da9357e9bac48f5d6ab6cc481ba8e10c1e', 'vania', '2', 'acc37ed84f0ef83450ad4094c72fcae4166260e2', '2017-08-15 15:02:56', '2017-08-08 05:19:01', 'Activo'),
(475, 'Gerardo', 'Loreto ', 'Gómez', 42, 1, 1, 15, 104, 'dr.gloreto@hotmail.com', 22, 158, 3, NULL, NULL, NULL, 'SI', '37495a79449baca26d5b3d0c270a58bbe4cccb3c', 'drgloreto', '2', 'ececc1e47066de32368c59639c1d7387586fbf8a', '2017-08-15 15:02:56', '2017-08-08 11:33:08', 'Activo'),
(476, 'Ma Guadalupe ', 'Sanchez ', 'Saavedra', 31, 2, 1, 15, 44, 'saavedra_1285@hotmail.com', 24, 174, 2, NULL, NULL, NULL, 'SI', '0f44bd58673f188d83230c9242f0b9fb37a6e3a7', 'mgss', '2', '12c402c2877feb85577dba99ded1a528ecc42ee9', '2017-08-15 15:02:56', '2017-08-08 13:28:20', 'Activo'),
(477, 'Juan Jesús', 'Infante', 'Santos', 21, 1, 1, 15, 110, 'infante_san_1c@hotmail.com', 130, 405, 1, NULL, NULL, NULL, 'SI', 'cefd85833c14927be16bd41cfcf718bc548b2932', 'infantesantosjuanjesus2015', '2', 'ac1cca2d35fa7dba08e618806c644f6e80fcae6e', '2017-08-15 15:02:56', '2017-08-08 13:39:33', 'Activo'),
(478, 'Rebeca Aneli ', 'Rueda', 'Jasso', 18, 2, 1, 15, 56, 'rebeca.rueda@gmail.com', 43, 346, 3, NULL, NULL, NULL, 'SI', 'aa07eaa4372f596c144b618b84808209c65e0629', 'ruraneli', '2', '7615b9c8c9929457baec4f647e2a75c5d2c350a9', '2017-08-15 15:02:56', '2017-08-08 14:34:23', 'Activo'),
(479, 'PAOLA ', 'MORA', 'BRISEÑO', 26, 2, 1, 15, 52, 'pao.morab@gmail.com', 43, 340, 2, NULL, NULL, NULL, 'SI', 'c0d77d0c4e568fc167278435a9d1c2212d6f7d84', 'PaolaMora', '2', '8cfd2688b0b71af3e6290a69f1f23f23463d7a47', '2017-08-15 15:02:56', '2017-08-08 15:26:44', 'Activo'),
(480, 'Luis Alberto', 'Villafan', 'Aguilar', 22, 1, 1, 15, 110, 'villafan_luis@outlook.com', 130, 405, 1, NULL, NULL, NULL, 'SI', '571937b5482c0ec6a881be25e33ed80e31a9d6d7', 'luisva58', '2', '8ac651006e4babfb9887f037dba6c2cc043f285c', '2017-08-15 15:02:56', '2017-08-08 15:28:22', 'Activo'),
(481, 'PAOLA', 'MORA', 'BRISEÑO', 26, 2, 1, 15, 52, 'pao.morab@gmail.com', 43, 340, 2, NULL, NULL, NULL, 'SI', 'c0d77d0c4e568fc167278435a9d1c2212d6f7d84', 'PaoMoraB', '7', 'b51b9e18501c1e48a344bb0138a7c18411f2e5a3', '2017-08-15 15:03:20', '2017-08-08 15:31:41', 'Activo'),
(482, 'Lorena Anahi', 'Robles ', 'Herrejón', 25, 2, 1, 15, 56, 'lorena.anahi.robles@gmail.com', 43, 341, 2, NULL, NULL, NULL, 'SI', '58c614fd4f4198bebc1e77f102ecc95356635fbc', 'Anahi', '2', '890b66f78c3b2ce81b3f6b2b8a2f6af073a98c50', '2017-08-15 15:02:56', '2017-08-08 17:05:35', 'Activo'),
(483, 'Griselda', 'Sesento', 'García', 44, 2, 1, 15, 56, 'gsesento@yahoo.com', 43, 349, 3, NULL, NULL, NULL, 'SI', 'cb57ed2480f4045e7e6656fe0cc74244f3f6e5ae', 'gsesento', '7', 'fe50be546a165a13d3da5ef99d4a29e2b1f74f78', '2017-08-15 15:03:20', '2017-08-08 17:26:04', 'Activo'),
(484, 'Jonathan', 'Zacarías', 'Calderón', 30, 1, 1, 15, 56, 'calderaszacajona@gmail.com', 43, 341, 2, NULL, NULL, NULL, 'SI', '108fa79cbc83bff0b701672d034666304d4e8ff2', 'jonajuan12', '2', 'a49b2279888d751a0230eeccb3925f91aed830f6', '2017-08-15 15:02:56', '2017-08-08 17:53:32', 'Activo'),
(485, 'Luisa Nicté', 'Equihua', 'Anguiano', 45, 2, 1, 15, 56, 'nicteea@yahoo.com.mx', 43, 341, 3, NULL, NULL, NULL, 'SI', '2b7d3f48e2b0b482f6876cf637bf2d5218da0b69', 'luisa72', '2', 'fe988a42f8aef376c13eaff4a3d2e08747cda849', '2017-08-15 15:02:56', '2017-08-08 17:58:48', 'Activo'),
(486, 'Mario', 'Valle', 'Sánchez', 26, 1, 1, 15, 56, 'marvals_18@hotmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', '0800eb807f92e53af23c9fc8533e1e2f071a07fc', 'MVS901118', '2', 'ad02a7ed0aaa3f232b48b7c05523c12f85c81033', '2017-08-15 15:02:56', '2017-08-08 18:09:13', 'Activo'),
(488, 'Fabiola Itzel', 'Loeza', 'Torrero', 21, 2, 1, 15, 56, 'f.loezatorero@gmail.com', 43, 344, 1, NULL, NULL, NULL, 'NO', '6ebfa08d473697c7d315a8187adf3eeca7a78636', 'Fabiola', '2', 'bd78774ecc2ade97f639967917d0a504db02ec27', '2017-08-15 15:02:56', '2017-08-08 18:41:24', 'Activo'),
(489, 'Marielisa ', 'Barragán', 'Merlo', 25, 2, 1, 15, 51, 'marielisabarragan@gmail.com', 43, 343, 1, NULL, NULL, NULL, 'SI', 'ea18e1d73375bc20859b7a592438417e6ab6b419', 'Marielisa', '2', '0678af714711c79b99014eea3dd0159c6438ac2a', '2017-08-15 15:02:56', '2017-08-08 18:42:24', 'Activo'),
(490, 'Hector', 'Oceguera', 'Soto', 51, 1, 1, 15, 49, 'hos6509@hotmail.com', 9, 75, 2, NULL, NULL, NULL, 'NO', '465829b8897f33b2c3d8637f999f23032577a5af', 'hos6509', '2', '7c1e226ba103bd02d6725990f1ee2568c90aee58', '2017-08-15 15:02:56', '2017-08-08 18:44:59', 'Activo'),
(491, 'Francisco Javier', 'Sanchez ', 'Ruiz', 36, 1, 1, 15, 56, 'pako023@gmail.com', 132, 456, 3, NULL, NULL, NULL, 'SI', '9ae587cb19d2d1b0c044543261c668fd1b927bed', 'pako1103', '2', '85405ae87beec5781d9e39a1ed7f74255f31a49b', '2017-08-15 15:02:56', '2017-08-08 18:52:36', 'Activo'),
(492, 'ELIGIO', 'CRUZ', 'ALBARO', 29, 1, 1, 15, 56, 'elicruzalbaro88@gmail.com', 132, 456, 3, NULL, NULL, NULL, 'SI', '28fcb383897afbefd0e9594c86ca7f9a2ea21e18', 'eligio', '2', 'e6183856b70e51b0c83b01ebed5228cce8325a38', '2017-08-15 15:02:56', '2017-08-08 19:30:39', 'Activo'),
(493, 'Ángel Sebastián', 'Sánchez', 'Ríos', 25, 1, 1, 15, 56, 'miriamayalaps1@gmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', '0059f71808ecc50e410b0699f2001ed39625dc30', 'Angelito12', '2', 'fc0c2c91421dfd3ddd8f73204f25ea2106ecc060', '2017-08-15 15:02:56', '2017-08-08 21:07:56', 'Activo'),
(494, 'Idolina ', 'Molina', 'León', 50, 2, 1, 15, 56, 'aidol66@hotmail.com', 43, 346, 2, NULL, NULL, NULL, 'SI', 'bf27d5c38b161358c4ae4b5e07f931c3a8fcb017', 'aidolaina', '7', 'ef363172092f3f30fda7e14358a79699213010ac', '2017-08-15 15:03:20', '2017-08-08 21:16:17', 'Activo'),
(495, 'Miriam Cristina  ', 'Ayala', 'Ruiz', 22, 2, 1, 15, 56, 'miriamayalaps1@gmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', '0059f71808ecc50e410b0699f2001ed39625dc30', 'miriamcar', '7', 'cfb10daff10cd3f44421a398f395db60e1ab93a5', '2017-08-15 15:03:20', '2017-08-08 21:21:37', 'Activo'),
(496, 'ESTEBAN ', 'ANGUIANO', 'AGUILAR', 24, 1, 1, 15, 62, 'esteban_93_120@hotmail.com', 43, 347, 2, NULL, NULL, NULL, 'SI', '9bb950260cff11e858bac3c74538e083059b2d29', 'ESTEBAN', '2', '2c03b95d54c664d477487a04d01c2a25b2aee680', '2017-08-15 15:02:56', '2017-08-08 21:37:21', 'Activo'),
(497, 'RAMIRO JONATHAN', 'GARCIA ', 'MORALES', 24, 1, 1, 15, 104, 'jonathan.gamo.01@gmail.com', 43, 347, 1, NULL, NULL, NULL, 'SI', '37cf230dd5e6595d6cc821186978a9d588e8acd4', 'RAMIRO', '2', '839da2a883a8210079564f66c520cec73504dbcb', '2017-08-15 15:02:56', '2017-08-08 21:42:40', 'Activo'),
(498, 'Luisa', 'Equihua', 'Anguiano', 45, 2, 1, 15, 56, 'nicteea@yahoo.com.mx', 43, 341, 3, NULL, NULL, NULL, 'SI', 'dcfc0f2e9483096cf10d41e28c90046f2a7999a5', 'nicte72', '2', '10cf21ec68f9a23b52bb85b5e1a9d64486420023', '2017-08-15 15:02:56', '2017-08-08 22:31:18', 'Activo'),
(499, 'ALMA YOSELIN', 'MÁRQUEZ ', 'ZACARÍAS', 27, 2, 1, 15, 56, 'almayoselinmaz@gmail.com', 43, 417, 2, NULL, NULL, NULL, 'SI', 'effa944586033ec1d4b62205e76b0484c9742756', 'YOSELIN', '2', '4dbfe169ce77030a06c013822c6f25c511c625c9', '2017-08-15 15:02:56', '2017-08-08 23:28:18', 'Activo'),
(500, 'Alexis', 'García', 'Pérez', 22, 1, 1, 15, 56, 'pachooooon@hotmail.com', 13, 108, 1, NULL, NULL, NULL, 'SI', '9782b1fcf6dcbe35248a59994ce5dec566b22b2f', 'Alexis24', '2', '00dcfd54864212efd24ec2c1df79a7df6542e14c', '2017-08-15 15:02:56', '2017-08-09 00:34:41', 'Activo'),
(501, 'fernando', 'juan ', 'torres', 24, 1, 1, 15, 32, 'fernando_chu@live.com', 25, 179, 1, NULL, NULL, NULL, 'SI', 'ef49b8b4c50469fe6130ec5b36ae0b26c3181235', 'fernando', '2', 'da583535123a01dfbeb39275e2434b0f14d5f436', '2017-08-15 15:02:56', '2017-08-09 00:35:39', 'Activo'),
(502, 'Bertha', 'Olmos', 'Navarrete', 18, 2, 1, 15, 56, 'ba.olmos@gmail.com', 43, 341, 3, NULL, NULL, NULL, 'NO', '2acffb84b912fb5ace85a75ad9a51c9d17df29ca', 'bolmos', '2', '330ab97f26d1147d0f8b30f13e064f3e57c69501', '2017-08-15 15:02:56', '2017-08-09 00:37:48', 'Activo'),
(503, 'Violeta', 'Rangel', 'Osornio', 23, 2, 1, 15, 56, 'violeta.rangelo@gmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', '20d9b45eac150d051ce943731adb071d0bca2325', 'VioletaRangelOsornio', '2', '20dc99c4954eea4c8ff7f952758afb01ecc97763', '2017-08-15 15:02:56', '2017-08-09 00:56:29', 'Activo'),
(504, 'Iván', 'Rubio', 'Saldaña', 25, 1, 1, 15, 56, 'irs_mx02@hotmail.com', 43, 341, 2, NULL, NULL, NULL, 'SI', '432ce388dad15ad028233671a9c189b2c6f36ed9', 'IvanRubio', '2', '4af4735fcd1567e0caf4c7f529160d9089867b35', '2017-08-15 15:02:56', '2017-08-09 01:17:34', 'Activo'),
(505, 'jose vicente', 'salome', 'medina', 18, 1, 1, 15, 51, 'josevicentesalomemedina@hotmail.com', 28, 193, 1, NULL, NULL, NULL, 'SI', 'f7d044c4821fc0dfc2eb4ad08535185b567bc18e', 'josesalome', '2', 'd6f97e674964909fbbce57de39f0718b2fd0c78c', '2017-08-15 15:02:56', '2017-08-14 19:32:45', 'Activo'),
(514, 'Griselda', 'Sesento', 'García', 44, 2, 1, 15, 56, 'gsesento@yahoo.com', 43, 349, 3, NULL, NULL, NULL, 'SI', '5f2430c70f4c19fb45d531eb689d8086970b7f5c', 'gsesento', '2', '0d3358f412e311325963653bec8d78227be380c4', '2017-08-15 15:02:56', '2017-08-09 14:16:18', 'Activo'),
(507, 'Brenda', 'Celaya', 'García', 24, 2, 1, 15, 15, 'brendacg1993@hotmail.com', 13, 108, 1, NULL, NULL, NULL, 'SI', '904e71a31a544c05fb0600b181583a04bf094acd', 'brendacg2017sicdet', '2', '175358ec58f283fcf9fbf6e2d5a67fa45c325420', '2017-08-15 15:02:56', '2017-08-09 03:04:11', 'Activo'),
(508, 'Nelly', 'Flores', 'Ramirez', 40, 2, 1, 15, 56, 'fr_nelly@yahoo.com', 43, 338, 3, NULL, NULL, NULL, 'SI', 'a249e61e33d7be64356a62e4a6e2fc11a27a3097', 'floresnelly', '7', '537e0b0e29b222b93c174b3f75527be81ee5179d', '2017-08-15 15:03:20', '2017-08-09 03:10:48', 'Activo'),
(509, 'Laura Gabriela ', 'Garcia', 'Paz', 30, 2, 1, 15, 104, 'laugarciapaz@gmail.com', 43, 347, 1, NULL, NULL, NULL, 'SI', '9d0b4f1f46fc32817b8ba6784e593d5c69eff61f', 'LAURA', '2', 'c64db73e402e2d16044f48577dd31841e56c1cf7', '2017-08-15 15:02:56', '2017-08-09 03:32:35', 'Activo'),
(510, 'Israel', 'Niño', 'Pantoja', 23, 1, 1, 15, 56, 'nidoisra@gmail.com', 43, 411, 1, NULL, NULL, NULL, 'SI', '73e9402a80025a91ccbe4dced88e5ab532067c83', 'Israel', '2', '35b58f84274084aaf719f7344646da01888620d7', '2017-08-15 15:02:56', '2017-08-09 03:46:13', 'Activo'),
(511, 'Humberto', 'Hernández', 'Salazar', 21, 1, 1, 15, 56, 'humbertohernandezsalazar@gmail.com', 43, 349, 1, NULL, NULL, NULL, 'SI', 'a06f915eb8acb81405a665ccec417e016cf42579', '4117010467', '2', '23320bbe9b5e11a6f8476ecce60438ec0a97c13b', '2017-08-15 15:02:56', '2017-08-09 05:20:35', 'Activo'),
(512, 'Pedro', 'Barriga', 'Díaz', 20, 1, 1, 15, 56, 'pedropeter96@hotmail.com', 11, 95, 1, NULL, NULL, NULL, 'SI', 'd788918a8ebf8610a1044ac2c56c3d623013a01a', 'pebarrigad', '2', 'f3c255d8480adf105fd4e959c64dec3a2ed4e6ac', '2017-08-15 15:02:56', '2017-08-09 07:36:40', 'Activo'),
(513, 'VIRIDIANA', 'ARREOLA', 'ROMERO', 21, 2, 1, 15, 56, 'arreolaviridiana@hotmail.com', 28, 199, 1, NULL, NULL, NULL, 'NO', '39336a86c1c5335b34f2d790b5caab2c4b34e044', 'VIRIDIANAAR', '2', '60d51a4045afa2d8b72638870ad401d0c48f3efe', '2017-08-15 15:02:56', '2017-08-09 12:15:51', 'Activo'),
(515, 'Nicolás', 'Jasso', 'García', 42, 1, 1, 15, 49, 'docnico23c@gmail.com', 9, 75, 1, NULL, NULL, NULL, 'NO', '21984fabf336d2094d13a4f138e578e39514fea2', 'docnico23c', '2', 'cae8dac5acb33905cfd985ff125390933f1e8cf2', '2017-08-15 15:02:56', '2017-08-09 14:40:33', 'Activo'),
(516, 'Monica', 'Jaramillo', 'Jaramillo', 33, 2, 1, 15, 114, 'mussa_360@hotmail.com', 12, 101, 4, NULL, NULL, NULL, 'SI', 'b03220ef8c0cdb4196d7c78674ba562dbcb5eb63', 'MONICA', '2', '817d62b3f502699125e3e272868b79a176cd6ba0', '2017-08-15 15:02:56', '2017-08-09 14:48:27', 'Activo'),
(517, 'Sandra Lizbeth', 'Morales', 'Toscano', 22, 2, 1, 15, 77, 'enrique_lefp@hotmail.com', 24, 174, 1, NULL, NULL, NULL, 'SI', 'fd7b0d3f0b1cfb328b31fb74d25b624850e67894', 'LizbethToscano', '2', '939cf92756400c8a71ab12169ab8feb2da6837e2', '2017-08-15 15:02:56', '2017-08-09 14:49:14', 'Activo'),
(518, 'Evelyn', 'Campos', 'Hernández', 26, 2, 1, 5, 119, 'evelyn_9191_@hotmail.com', 43, 417, 2, NULL, NULL, NULL, 'SI', 'eb5fb81d58b9048362a94abd26e507272ef38db7', 'evelyn91', '2', '9c391c9876614b04bcce248085ef09ba8f8788d4', '2017-08-15 15:02:56', '2017-08-09 15:10:20', 'Activo'),
(519, 'Evelyn', 'Campos', 'Hernández', 26, 2, 1, 5, 119, 'evelyn_9191_@hotmail.com', 43, 417, 2, NULL, NULL, NULL, 'SI', 'eb5fb81d58b9048362a94abd26e507272ef38db7', 'evelyn91', '2', '1df321ef31b873f2c2c50c2afe7140ef25fbfcf8', '2017-08-15 15:02:56', '2017-08-09 15:23:18', 'Activo'),
(520, 'Luz Elena Alfonsina', 'Avila', 'Calderón', 46, 2, 1, 15, 56, 'lea.avilacalderon@gmail.com', 43, 338, 2, NULL, NULL, NULL, 'SI', '20bdb19260f97661434fe78afd293e3c22a1415d', 'lavila', '2', '33fed3a8c7c3b069def896f50a4a7b4c03008e2b', '2017-08-15 15:02:56', '2017-08-09 15:27:42', 'Activo'),
(522, 'Leslly', 'García', 'Sierra', 31, 2, 1, 15, 56, 'leslly712@gmail.com', 43, 417, 2, NULL, NULL, NULL, 'SI', '5bfc29cb20ec1323340d13570f54042f8cf0d1a8', 'lesgarsi', '2', '080abe39a4754437aef2d22d6024caa13814e646', '2017-08-15 15:02:56', '2017-08-09 15:57:08', 'Activo'),
(523, 'Miguel', 'Contreras', 'Pérez', 34, 1, 1, 15, 56, 'miguel82cp@gmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', '155f57f17fbda8bab9e052e669ec0047f8616857', 'Miguel', '2', '0611035e949ab33c753865d50fc0a5c023e5856a', '2017-08-15 15:02:56', '2017-08-09 16:45:35', 'Activo'),
(524, 'Abdon ', 'Choque', 'Rivero', 52, 1, 1, 15, 56, 'abdon.ifm@gmail.com', 43, 413, 3, NULL, NULL, NULL, 'SI', '28a07ba889d390db1f194c907cb01f487d1104f8', 'abdon2017', '2', '81f140683fa2aa8eb690b62fea1f6fd0d8cea4dc', '2017-08-15 15:02:56', '2017-08-09 17:16:31', 'Activo'),
(525, 'Alejandro', 'Morales', 'Guerrero', 45, 1, 1, 15, 104, 'alexmoralesgro@yahoo.com.mx', 22, 157, 3, NULL, NULL, NULL, 'SI', 'eae811fe88251bf5c977cb0597231b010c11ac64', 'Alejandromorales', '2', 'ab654a3443161bba9033ba970309eaf994946e24', '2017-08-15 15:02:56', '2017-08-09 17:49:16', 'Activo'),
(603, 'Tania', 'Méndez', 'Pérez', 26, 2, 1, 15, 56, 'tanimep2.91@gmail.com', 43, 340, 2, NULL, NULL, NULL, 'NO', 'ffd8b0d8e37f7fde8222b9b514b5fa4c7449c8f4', 'tanimepe', '7', '8c8299f87b380fa21f2ffd4e42e03ab974fcbbd4', '2017-08-15 15:03:20', '2017-08-10 14:33:08', 'Activo'),
(527, 'MARTHA PATRICIA', 'ZAPATA', 'PEREZ', 27, 2, 1, 15, 56, 'mz_22@outlook.com', 43, 340, 2, NULL, NULL, NULL, 'SI', '41cfed02ec3c759f9e6cede3013054158d39c5af', 'MarthaZapata22', '2', '03b78369c350fc28b65c6fa5c4dc1b55ff029ac5', '2017-08-15 15:02:56', '2017-08-09 17:55:06', 'Activo');
INSERT INTO `usuarios` (`id_usuarios`, `nombre`, `a_paterno`, `a_materno`, `edad`, `genero`, `nacionalidad`, `estado`, `municipio`, `email`, `institucion`, `facultad`, `nivel`, `mesa`, `modalidad`, `area_id`, `mailing`, `password`, `username`, `puesto`, `token`, `created_at`, `request_token`, `status`) VALUES
(528, 'BERNARDO', 'NUÑEZ', 'MENDOZA', 26, 1, 1, 15, 56, 'bernardo27_92@hotmail.com', 43, 340, 2, NULL, NULL, NULL, 'SI', 'c266c57112281e437c727fdaa0e27eaeea2d0024', 'Bernardo26', '2', '5d277cffbf0975d4da7dc436f7fdf007c86f68fd', '2017-08-15 15:02:56', '2017-08-09 18:06:23', 'Activo'),
(529, 'Yesika Estefanía', 'Valdovinos', 'Gómez', 25, 2, 1, 15, 56, 'yesikaprincess@hotmail.com', 43, 332, 1, NULL, NULL, NULL, 'SI', '4f0c377f23ef6c6e5bb97fa06398006178366829', 'Yesika', '2', 'b165a30b5a15776df55a0e1e2e3d05b064e76846', '2017-08-15 15:02:56', '2017-08-09 18:23:32', 'Activo'),
(530, 'Monserrat', 'Ramirez', 'flores', 24, 2, 1, 15, 106, 'oregelvero@hotmail.com', 24, 174, 1, NULL, NULL, NULL, 'SI', '9786f17aa6cf7195ca16058941aaa231505d1a18', 'Monserat', '2', '02e92d32fd10c1faa749ca6668c09a8964bdd83f', '2017-08-15 15:02:56', '2017-08-09 18:26:54', 'Activo'),
(531, 'Fabian', 'Mares', 'Briones', 28, 1, 1, 15, 56, 'marez-ska@hotmail.com', 43, 417, 2, NULL, NULL, NULL, 'SI', '4ae8e971870bcb6d447e2a24aeb2ccfb2c2ea090', 'fabianmares', '2', '2449bc8ece5197a165e8c6bf762b9f5fd1d66425', '2017-09-19 18:46:42', '2017-08-09 18:38:34', 'Activo'),
(532, 'Nallely', 'Alvarado', 'Gómez', 30, 2, 1, 15, 56, 'alvaradogomeznallely@gmail.com', 43, 411, 3, NULL, NULL, NULL, 'SI', 'a16655eb5f68faebdffb08a76beadb666b848588', 'nallely', '2', 'b9908d1c9f8ef8b44d5b600b8f631bf98a312b70', '2017-08-15 15:02:56', '2017-08-09 18:47:06', 'Activo'),
(533, 'Aaron', 'Guerrero', 'Campanur', 36, 1, 1, 15, 104, 'agcampanur@gmail.com', 22, 161, 3, NULL, NULL, NULL, 'SI', 'c2f244634d96a526a0738885ae5275904a74956d', 'agcampanur', '2', '30e9ef6a29be6f0a89f2016914aeb1160f01c425', '2017-08-15 15:02:56', '2017-08-09 18:48:18', 'Activo'),
(534, 'ISAHI', 'SANCHEZ', 'SUAREZ', 37, 1, 1, 15, 104, 'isahi_ss@hotmail.com', 27, 186, 3, NULL, NULL, NULL, 'SI', '567a4c34b06e9c1b36252dc2fae34bdf6952cd11', 'isanchez198', '2', 'b829009f8f6214f1ef05539ef985bc5ea0441c64', '2017-08-15 15:02:56', '2017-08-09 18:50:06', 'Activo'),
(535, 'Ricardo', 'Espino', 'García', 25, 1, 1, 15, 56, 'reg2210@hotmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', 'c726bd7856eb3b3136b7c3ba76a97ea0aa3441e8', 'Ricardo', '2', 'd4f010a8a86cf88cc2d25be8c90a11789e9ac36b', '2017-08-15 15:02:56', '2017-08-09 19:17:34', 'Activo'),
(536, 'Luis Miguel', 'Salcedo', 'Ayala', 27, 1, 1, 15, 44, 'luissol88@hotmail.com', 24, 174, 1, NULL, NULL, NULL, 'SI', 'd5a8e9640c7552179c275cc5db8e3f8b80fc4e19', 'Luissol', '2', 'cbd88086af8b2c93b97f9abeafbfc42caea41b24', '2017-08-15 15:02:56', '2017-08-09 19:19:17', 'Activo'),
(537, 'Claudia Araceli', 'Contreras', 'Celedón', 45, 2, 1, 15, 56, 'claudiac426@hotmail.com', 43, 411, 3, NULL, NULL, NULL, 'SI', '5fad8590e3f21b40703370cf7f57f3629938eeed', 'claudiac426', '7', '4616f11897643f7b4e89b356248ec55ccce4a1b4', '2017-08-15 15:03:20', '2017-08-09 19:20:35', 'Activo'),
(538, 'Josue ', 'Valentin', 'Escalera', 24, 1, 1, 15, 56, 'josue.valentin.escalera@gmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '06ee4945fc82813a8433282b6071bf772c978ddf', 'josva', '2', '38c1d636fe6c8ea8f17e5ad9e6dab664533a1d24', '2017-08-15 15:02:56', '2017-08-09 19:27:30', 'Activo'),
(539, 'Ana Belén', 'Chavarría', 'Higareda', 22, 2, 1, 15, 77, 'Belen_chavarria_94@hotmail.com', 24, 174, 1, NULL, NULL, NULL, 'NO', '9bc48e3001f8d112c9dc4c6b15f30559acf10750', 'BelenChavarria', '2', '2bb1a9d67182858422a7b11cbfb987f4ac144d9d', '2017-08-15 15:02:56', '2017-08-09 19:30:40', 'Activo'),
(540, 'Lenin', 'Hernández', 'Ferreyra', 29, 1, 1, 15, 56, 'ing.lhf@gmail.com', 43, 341, 2, NULL, NULL, NULL, 'SI', 'f5440e47b6f399c2dfad4b6fc12e102e5b012f77', 'leninher', '2', 'fee12b6d5c231391eb9f86e2cd6740d17253afdf', '2017-08-15 15:02:56', '2017-08-09 19:33:11', 'Activo'),
(541, 'Cesia Manuella', 'Aguilar', 'Morales', 28, 2, 1, 15, 56, 'cesia_aguilar@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', 'ee9700e10cb292b6f85058d5822bd48d52889b86', 'cesia', '2', '6acc9c7670a17bad991bb12cf76c3eec3dc1a8f2', '2017-08-15 15:02:56', '2017-08-09 19:38:56', 'Activo'),
(551, 'Amelia Cristina ', 'Montoya ', 'Martínez', 28, 2, 1, 15, 90, 'cristina_montoya14@hotmail.com', 43, 412, 2, NULL, NULL, NULL, 'NO', '929a6b6de43fce07a81999695354924967dfd66a', 'amyka88', '2', '191e87f902882b8744fcd1f682221a815a6b337d', '2017-08-15 15:02:56', '2017-08-09 21:12:48', 'Activo'),
(544, 'América', 'Vega', 'Huerta', 45, 2, 1, 15, 104, 'americavh@hotmail.com', 27, 187, 2, NULL, NULL, NULL, 'SI', '246a0b696aef8d065afca01a861a4c71db5d86f8', 'americavh', '2', '96d3554566b71de23b9129a3f7c7746bc1bdece7', '2017-08-15 15:02:56', '2017-08-09 19:49:38', 'Activo'),
(545, 'Franjo Christophe', 'Peñafiel', 'Aguilar', 25, 1, 1, 15, 104, 'fcpa585@gmail.com', 22, 97, 1, NULL, NULL, NULL, 'SI', '1b190e2937e8d17cd3703490cd57eaa3a585ef36', 'korrva', '2', '41c9c7d5fa82b2043220ece3db1938828ed11c9c', '2017-08-15 15:02:56', '2017-08-09 19:55:26', 'Activo'),
(546, 'ANTONIO', 'LÓPEZ', 'CHÁVEZ', 30, 1, 1, 15, 104, 'antony_boss.27@hotmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', 'aeb7edb16477ff59aa5a91baa1efd04da24a78b0', 'tony87', '2', 'df83d1d6e275d5027aae75f0f82cf73456890703', '2017-08-15 15:02:56', '2017-08-09 20:16:58', 'Activo'),
(547, 'IRIS', 'SANDOVAL ', 'ROJAS', 21, 2, 1, 15, 54, 'syry-1409@hotmail.com', 13, 108, 1, NULL, NULL, NULL, 'SI', 'c978ad064fe0c90ddac4f620cc9cacce5d41bfb0', 'irisrojas', '2', '350a8a0eb606373de4742fcb947755d735f57501', '2017-08-15 15:02:56', '2017-08-09 20:26:21', 'Activo'),
(548, 'Luis Enrique', 'Montes ', 'Vega', 25, 1, 1, 15, 56, 'emontes2105@gmail.com', 43, 338, 2, NULL, NULL, NULL, 'SI', 'e209d97b571ab15616f981c1ac3c43a2364451d4', 'LuisQMV', '2', '630477cb04efb44109185904a207bb3172bc03ef', '2017-08-15 15:02:56', '2017-08-09 20:39:31', 'Activo'),
(549, 'Rosa María ', 'Espinoza', 'Madrigal', 33, 2, 1, 15, 56, 'rousme@hotmail.com', 43, 411, 3, NULL, NULL, NULL, 'SI', 'ac1f3b4daff66a74a6537983285357acbf8be3f4', 'RositaE', '2', '1750b88e2c690ae0536c3d316dd143aaa0a4780c', '2017-08-15 15:02:56', '2017-08-09 20:42:04', 'Activo'),
(550, 'José Carlos ', 'Delgado ', 'Garduño', 19, 1, 1, 15, 114, 'boy_charlye_1909@hotmail.com', 12, 103, 4, NULL, NULL, NULL, 'SI', '653443988bba558cd4fa8cc2212ee6a43a18f3ad', 'jossvick19', '2', 'ef266981a9d1c264175f40be04cacadf97fb7769', '2017-08-15 15:02:56', '2017-08-09 20:51:42', 'Activo'),
(552, 'Zoe', 'Infante', 'Jiménez', 18, 1, 1, 15, 56, 'zoeinfante@hotmail.com', 43, 335, 3, NULL, NULL, NULL, 'SI', '30c7d28cee74198174e87bbf26e8abd979b744ed', 'zoeinfante', '2', 'dccc28d0a03f3e4f0224f3182847b58f465f21d3', '2017-08-15 15:02:56', '2017-08-09 21:47:29', 'Activo'),
(553, 'Manuel Jesús', 'Arjona', 'Pérez', 41, 1, 1, 15, 77, 'carnot76@gmail.com', 8, 69, 2, NULL, NULL, NULL, 'SI', 'e7661d7709d9127475cd56f64e9009bf46e3bb5a', 'carnot76', '2', '0166fd50978c8c66ebe9f6c11bc45553ea4b3051', '2017-08-15 15:02:56', '2017-08-09 22:09:15', 'Activo'),
(554, 'Luciano', 'Renteria', 'Borja', 37, 1, 1, 15, 56, 'lucianorenteria@hotmail.com', 132, 456, 3, NULL, NULL, NULL, 'SI', '3668add9545fc7fbbd35da86baaf9820f01f8bb1', 'lucianooo37', '7', 'a33371f5e66bf6f0f527720c00deafdc49f47172', '2017-08-15 15:03:20', '2017-08-09 22:27:46', 'Activo'),
(555, 'MARISOL', 'MARTINEZ', 'MARTINEZ', 28, 2, 1, 15, 56, 'life_crazy24@hotmail.com', 43, 346, 2, NULL, NULL, NULL, 'SI', 'efd9aff98123a81eb6ffe25157b9bd98672b6967', 'MARISOL', '2', 'fb8754ece353d8d25588a5aef0b1c7362b4a8157', '2017-08-15 15:02:56', '2017-08-09 22:36:29', 'Activo'),
(556, 'Tania', 'Méndez', 'Pérez', 26, 2, 1, 15, 56, 'tanimep2.91@gmail.com', 43, 340, 2, NULL, NULL, NULL, 'SI', 'ffd8b0d8e37f7fde8222b9b514b5fa4c7449c8f4', 'tanimep', '2', 'e8200b91d9a2ff5c7e21aaba17338f5cb1b8c7bd', '2017-08-15 15:02:56', '2017-08-09 22:52:59', 'Activo'),
(557, 'Luis Enrique', 'Montes ', 'Vega', 26, 1, 1, 15, 56, 'emontes2105@gmail.com', 43, 338, 2, NULL, NULL, NULL, 'SI', '2e482a83b17dcb493bc34e6acafd55e6a7100963', 'EnriqueMV', '7', '896c0394a4fdadb6366bd6263e17cbcbac378715', '2017-08-15 15:03:20', '2017-08-09 23:05:00', 'Activo'),
(558, 'Ricardo', 'Santillan', 'Mendoza', 28, 1, 1, 15, 56, 'rsantillanm3734@gmail.com', 43, 412, 3, NULL, NULL, NULL, 'SI', '1ad5202ecd9359923c3e8b94b6c48c2bfa80d671', 'ricardosm', '2', 'e7468af177597d30bbd8b4a77b856185d6f26b9d', '2017-08-15 15:02:56', '2017-08-09 23:11:34', 'Activo'),
(646, 'Jesus Fernando', 'Padilla', 'Magaña', 30, 1, 1, 15, 104, 'fernando.padilla.upu@outlook.com', 27, 186, 2, NULL, NULL, NULL, 'SI', '37af6315075254548f758f9e6ba639e3d18a2909', 'Fherpadilla', '2', '9c9b430650a7a136e7ab9033c8b9ed2c307a0f69', '2017-08-15 15:02:56', '2017-08-10 19:16:32', 'Activo'),
(560, 'Rosa Maria', 'Espinoza', 'Madrigal', 33, 2, 1, 15, 56, 'rousme@hotmail.com', 43, 411, 3, NULL, NULL, NULL, 'SI', '00bd5bc813f06fbec4293f25400b07e4706116df', 'RositaEM', '7', '9107addcd20b32581b0297f9e0da47405f2c32b3', '2017-08-15 15:03:20', '2017-08-09 23:23:13', 'Activo'),
(561, 'Priscila', 'Ortega', 'Gómez', 35, 2, 1, 15, 56, 'prisog@hotmail.com', 43, 335, 3, NULL, NULL, NULL, 'SI', 'fc2bc9aac9ee632c9d3f38f7fd767d81ea0d3aed', 'Priscila', '2', '835392cfe6dc271d744334e4e0d2922587768d30', '2017-08-15 15:02:56', '2017-08-09 23:36:49', 'Activo'),
(562, 'ABELARDO', 'GUTIERREZ', 'HERNANDEZ', 24, 1, 1, 15, 56, 'Abel-gh7@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '6f05ce3732ed1ad9ed815378dcb676975041c0e6', 'AGH', '2', 'c97b230812c47a1f7a3866941f54fa4745335088', '2017-08-15 15:02:56', '2017-08-09 23:47:20', 'Activo'),
(563, 'Carlos Heriberto ', 'Mendoza', ' Pérez', 18, 1, 1, 15, 56, 'carloschmp@yahoo.com', 43, 350, 1, NULL, NULL, NULL, 'SI', '1c6caa7aaeacc3f5df8b838ba790351b5bca532a', 'carloschmp', '2', '0bae157d3f4006a1b863e8bdf56efd2e0de5d1c6', '2017-08-15 15:02:56', '2017-08-10 00:03:34', 'Activo'),
(564, 'Ma Guadalupe', 'Baez', 'Magaña', 24, 2, 1, 15, 56, 'lbm.bleu@gmail.com', 43, 346, 1, NULL, NULL, NULL, 'NO', '574c93395f05237295bb1847e0760a91a0a59f17', 'lbaez', '2', '227c0d7732432f194c9a8a1b0a43268c8e187e62', '2017-08-15 15:02:56', '2017-08-10 00:07:09', 'Activo'),
(565, 'Chantal Charlotte', 'Rosales', 'Ceja', 20, 2, 1, 15, 78, 'chantalcharlotte123@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', 'fcb87fa3a73eff967edd4afe7fba1f9697320052', 'chantal1', '2', '9c7870ad6b0dc2c7258f68a32474230086d9ff6f', '2017-08-15 15:02:56', '2017-08-10 00:12:02', 'Activo'),
(566, 'José Eduardo', 'Medina', 'Magallón', 28, 1, 1, 15, 56, 'jmedinamagallon@gmail.com', 43, 350, 2, NULL, NULL, NULL, 'SI', 'ba63e27ddeef421ad2d2f2823db289daf70bd8cc', 'jmedinamagallon60', '2', '6a77bdc7dd996b2dbb9ce4cf49d26045ef9b300b', '2017-08-15 15:02:56', '2017-08-10 00:14:29', 'Activo'),
(567, 'Francisco Emmanuel', 'Rosales', 'Villicaña', 21, 1, 1, 15, 78, 'enano_9006@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '13768c1dcc6c5df8a57a8c627df30387300380dc', 'emmanuel11', '2', 'b6a566bbb00e283bd02dc0f8b60e596d4bc9c738', '2017-08-15 15:02:56', '2017-08-10 00:18:58', 'Activo'),
(568, 'Francisco Emmanuel ', 'Rosales', 'Villicaña', 21, 1, 1, 15, 78, 'enano_9006@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', 'dd44d66fe3419e4616a0ad9b983cc83bdffbbb60', 'emmanuel11', '7', 'e5d7c49cbdd0cf69c18acf6f4c2443a098dc51ed', '2017-08-15 15:03:20', '2017-08-10 00:38:07', 'Activo'),
(569, 'Héctor Enrique', 'Cedillo ', 'Díaz', 26, 1, 1, 15, 74, 'iiahectordiaz@hotmail.com', 20, 150, 1, NULL, NULL, NULL, 'SI', 'd3d77196dd7f63166c6f64c8714019dbafdadaa0', 'Hector', '2', '4309f29ffbd1bf422c99e07f500f9a03d46c1f4f', '2017-09-08 16:41:57', '2017-08-10 00:40:15', 'Activo'),
(571, 'Chantal Charlotte', 'Rosales', 'Ceja', 20, 2, 1, 15, 78, 'chantalcharlotte123@hotmail.com', 43, 343, 1, NULL, NULL, NULL, 'SI', 'fcb87fa3a73eff967edd4afe7fba1f9697320052', 'chantal1', '7', '0085316ac5fdbe8953d55569b9f6e59d09662e54', '2017-08-15 15:03:20', '2017-08-10 00:42:16', 'Activo'),
(572, 'Ma Guadalupe ', 'Rojas ', 'Torres', 30, 2, 1, 15, 74, 'rojaslu_t@hotmail.com', 20, 150, 3, NULL, NULL, NULL, 'SI', 'd063a7bb2dcf8fc3f9fdca2d9ff1f67681407af9', 'Lupita-Rojas', '7', 'ed1b2164c64e03f1cac4e5f35e61837d79092c0c', '2017-08-15 15:03:20', '2017-08-10 00:43:43', 'Activo'),
(573, 'YOSHIRA', 'LÓPEZ', 'ANTONIO', 29, 2, 1, 15, 56, 'biol_yosh_2805@hotmail.com', 43, 338, 2, NULL, NULL, NULL, 'SI', '3d1d9310931bdba27cab25249e027cb7560c7210', 'Yoshira', '2', '2bbdf5042ebf3f9b5ba3d67f1a0361847945ee2e', '2017-08-15 15:02:56', '2017-08-10 01:06:55', 'Activo'),
(574, 'José Manuel', 'Rivera', 'Garnica', 29, 1, 1, 15, 56, 'manu.rivera.mr@gmail.com', 43, 340, 2, NULL, NULL, NULL, 'NO', '01daa2e6afa9490141f909e6617f4ccfcbbbab81', 'manurivera', '2', '4aa8d6f9831d10b8ffa0bb2890bc1d58f6d1cb75', '2017-08-15 15:02:56', '2017-08-10 01:08:19', 'Activo'),
(575, 'Lidia', 'Beiza', 'Granados', 41, 2, 1, 15, 56, 'lidiabeiza@yahoo.com', 43, 411, 3, NULL, NULL, NULL, 'SI', '9261db86fa91e0e7e0e029dcd7185eb5cffb7705', 'lidiabeiza', '7', '42e5c652e032dc66a8288ea521a474eb66a6f2fa', '2017-08-15 15:03:20', '2017-08-10 01:09:21', 'Activo'),
(576, 'Erick Daniel', 'Ríos', 'Silva', 21, 1, 1, 15, 56, 'rise_dan@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', 'a829beefd1619917c1f3a24a4667a2233fe4323d', 'erickdaniel', '7', 'bfd1da4c66b06584ecce25dc467817f356026cce', '2017-08-15 15:03:20', '2017-08-10 01:19:12', 'Activo'),
(577, 'MARIA DEL ROSARIO ', 'ARREOLA', 'GOMEZ', 30, 2, 1, 15, 53, 'scharon_ag@hotmail.com', 43, 346, 2, NULL, NULL, NULL, 'SI', '00bbe1d8a3ccaa90829a3eea9d58ac822455bdcb', 'chayo', '2', '2966324e3725848fb916ba36ac41f0767bc73c5a', '2017-08-15 15:02:56', '2017-08-10 01:21:28', 'Activo'),
(578, 'Abraham ', 'García', 'Zavala', 23, 1, 1, 15, 56, 'nck_36@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '593add12d5e8f1e1ae3908d7ed666121d6c9387a', 'Abramgz', '2', '9192f5dac24a6cb16710f9129bac149dbbb02b74', '2017-08-15 15:02:56', '2017-08-10 01:22:43', 'Activo'),
(579, 'Andrea', 'Rivera', 'Trigueros', 21, 2, 1, 15, 56, 'any_14capricornio@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '12afa38b1e50b3a4fd5399010565fe98a8424c7b', 'andrearivera', '7', '01734aa17a273ddfc5f7edd9d167da1da1ebcdef', '2017-08-15 15:03:20', '2017-08-10 01:25:14', 'Activo'),
(580, 'Luis Bernardo ', 'López ', 'Sosa', 28, 1, 1, 15, 56, 'ecoberso@gmail.com', 43, 417, 3, NULL, NULL, NULL, 'SI', '90829ffd279ddf00647d4e26bcb99462886fdf10', 'bernas10', '2', '4d559395544bdbdefee6ed4b9f512e07b7be6aec', '2017-08-15 15:02:56', '2017-08-10 01:33:43', 'Activo'),
(581, 'Raquel Lizbeth', 'Salinas', 'Chávez', 20, 2, 1, 15, 56, 'raqueliz17@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', 'fe45d7f682144af963c86d49accfd16697f5746e', 'raquelsalinas', '7', 'c0386224e3352638a900f7ce958fba15545f2a7f', '2017-08-15 15:03:20', '2017-08-10 01:36:29', 'Activo'),
(582, 'maría guadalupe', 'medina', 'muñoz', 26, 2, 1, 15, 56, 'lupe_mm_girl@hotmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', 'c79259fe86e3381722155ef5d10f43686cebac7b', 'guadalupemm', '2', '5654a968cafaef3d3e2151a57ce15fed70472b6a', '2017-08-15 15:02:56', '2017-08-10 01:38:44', 'Activo'),
(583, 'Marcos Alberto', 'Ramos', 'Ruíz', 23, 1, 1, 15, 56, 'marcosramosqfb@gmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '931111e803fc4b2d4ed3423b388f24af3cc66e5c', 'marcosalbertoramos', '7', '25f4045708c7d1164925d809dd9bdf02fa3ab92d', '2017-08-15 15:03:20', '2017-08-10 01:40:40', 'Activo'),
(584, 'Karina', 'Vázquez', 'Cruz', 22, 2, 1, 15, 56, 'kari.0910@outlook.com', 43, 344, 1, NULL, NULL, NULL, 'SI', 'ebd57cdb8fb0d45b53272063fb1a89a31725580c', 'karinavazquez', '7', 'a7c0c758f47673f29a26c1d65aa3e118ba849a1d', '2017-08-15 15:03:20', '2017-08-10 01:46:09', 'Activo'),
(585, 'Daniel Mauricio', 'Araiza', 'Salcedo', 24, 1, 1, 15, 56, 'arrasa_15@live.com.mx', 43, 341, 1, NULL, NULL, NULL, 'SI', '4a7f6dae6379bb6b90867bacc8bff96dbadd200d', 'daraizasalcedo', '2', 'd152249d4fe932028ad3df34950acd741a14c66e', '2017-08-15 15:02:56', '2017-08-10 02:01:05', 'Activo'),
(586, 'MARIA GABRIELA', 'RAUDA', 'ROBLES', 26, 2, 1, 15, 70, 'gaby_diegolin@hotmail.com', 19, 143, 1, NULL, NULL, NULL, 'SI', '475c08cb49c8362d1d1b2065a589c203dbdafb9f', 'gaby', '2', '149e25ddbff5a3fa3d785b7a1d037d8b60cc121a', '2017-08-15 15:02:56', '2017-08-10 02:02:49', 'Activo'),
(606, 'David Adrian', 'Hernández ', 'Guerrero', 26, 1, 1, 15, 56, 'dahg1s@gmail.com', 11, 71, 1, NULL, NULL, NULL, 'SI', 'de14684640d3fb1f6067726cf2192a1f1f1a9e5c', 'dahg', '2', '5972bfd8e4b485ed3d818605ee046c22dec5cdf7', '2017-08-15 15:02:56', '2017-08-10 14:46:42', 'Activo'),
(588, 'LAURA PATRICIA', 'FELIPE', 'PAULINO', 29, 2, 1, 15, 56, 'pathy_0027@hotmail.com', 43, 346, 1, NULL, NULL, NULL, 'NO', 'e103689d2d8ca7d7c701b75e436c3428261d058f', 'paufell', '2', '202e6fbad9686a9ba2c37306426daf39ce2e6386', '2017-08-15 15:02:56', '2017-08-10 02:11:24', 'Activo'),
(589, 'Alicia', 'Campos', 'Hernández', 51, 2, 1, 15, 56, 'alicia7ch@gmail.com', 19, 145, 2, NULL, NULL, NULL, 'SI', '2631196785a7bcc3493c6a36913b198633130417', 'Alicia7ch', '2', 'ef88e35e1918297be6ec99c133ca50f605da7c8e', '2017-08-15 15:02:56', '2017-08-10 02:15:49', 'Activo'),
(590, 'Gabriel', 'Arroyo', 'Correa', 55, 1, 1, 15, 56, 'gamagag@yahoo.com.mx', 43, 350, 2, NULL, NULL, NULL, 'SI', 'bfcebbac2f738fdfb934890ae49610aee88f9bde', 'garroyo', '2', '7f45fd6d13fa59d614e3ac2eb26cdd7c8c09167e', '2017-08-15 15:02:56', '2017-08-10 02:23:00', 'Activo'),
(591, 'EDGAR IVAN ', 'GONZALEZ', 'JIMENEZ', 27, 1, 1, 15, 6, 'ivan.gonzalez89@hotmail.com', 107, 454, 1, NULL, NULL, NULL, 'SI', '21d71cf8f1e8abc9791e6e89a892c93982e8a5eb', 'ivangonzalez', '2', 'd9d04c1dfbeed47bb97dc790a774c288aa5d7f19', '2017-08-15 15:02:56', '2017-08-10 02:49:12', 'Activo'),
(592, 'LUIS ENRIQUE', 'marin', 'arroyo', 18, 1, 1, 15, 114, 'luisrique_@hotmail.com', 12, 103, 1, NULL, NULL, NULL, 'SI', '93b398709a8fc3914718bc3fb7c118959dbbbf2f', 'lm565406', '2', '802e604ae6af9c8380722e412e5beb078441f528', '2017-08-15 15:02:56', '2017-08-10 03:04:19', 'Activo'),
(593, 'Ilse María', 'Hernández ', 'Romero', 26, 2, 1, 15, 56, 'ilsehdz_07@outlook.com', 43, 340, 2, NULL, NULL, NULL, 'SI', '4fd92e8137f1a11b5d69c2f11fa265dcf2d6d506', '0914216D', '2', '0af3c8a8886ccf7af600a1b5a8575d6d76791bab', '2017-08-25 14:06:53', '2017-08-10 03:17:47', 'Activo'),
(594, 'José Miguel', 'López ', 'Zepeda', 26, 1, 1, 15, 56, 'ingmiguel23@hotmail.com', 43, 341, 2, NULL, NULL, NULL, 'SI', '688648d25cc6016e8f8d7c4ee658af467d3fdaf9', 'ingmiguel23', '2', 'cc3bd861ca812d485e0eced8c8477304529153ab', '2017-08-15 15:02:56', '2017-08-10 03:48:20', 'Activo'),
(595, 'Jesús Antonio ', 'Rauda', 'Ceja', 21, 1, 1, 15, 56, 'jesus.rauda.25@hotmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', '0dbc4c5e37f8d358813ed02735dbef8b6f9e509d', 'JRauce', '2', '9b26533c2a4886141d0152b6542df7acfb202f97', '2017-08-15 15:02:56', '2017-08-10 04:40:26', 'Activo'),
(596, 'ALFONSO CHARACU', 'RUEDA', 'ROCHA', 42, 1, 1, 15, 56, 'characu@hotmail.es', 43, 344, 1, NULL, NULL, NULL, 'SI', '4b0dca22172a1729cbd8973a0f48454509ed67b4', 'characu', '2', 'c062798c0ce4de2f3b839ad957fbce23ecbea211', '2017-08-15 15:02:56', '2017-08-10 05:05:14', 'Activo'),
(608, 'Víctor Manuel ', 'Báez', 'Ángel', 22, 1, 1, 15, 78, 'eicvmba@gmail.com', 43, 341, 1, NULL, NULL, NULL, 'SI', '106affa1ff78f5783b9e4bfd91fe583c77a71ede', 'eicvmba', '2', 'a8bcc18e00bdcae977df4b596433bebfba71f706', '2017-08-15 15:02:56', '2017-08-10 15:05:16', 'Activo'),
(607, 'Alberto', 'Flores', 'García', 51, 1, 1, 15, 56, 'albertofg26@hotmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', '25f964409b53dfc1a7372ca571e86ebebb0bfcfd', 'AFG', '7', '9ba06c373368ba7c6690516bd06ebd8a73ab162a', '2017-08-15 15:03:20', '2017-08-10 14:50:59', 'Activo'),
(601, 'Emmanuel', 'González', 'Castro', 25, 1, 1, 15, 74, 'emmanuel.glezc@outlook.com', 43, 341, 1, NULL, NULL, NULL, 'NO', '6f9a5ec0312aaea5ad1ef412a7f0d675c57cc199', 'emms1003', '2', '10077c92270a74e443ad58f9ad9cd9ad743eebb4', '2017-08-15 15:02:56', '2017-08-10 13:04:29', 'Activo'),
(602, 'nancy', 'cambron', 'muñoz', 38, 2, 1, 15, 56, 'nycasia2006@hotmail.com', 13, 107, 2, NULL, NULL, NULL, 'SI', '89399d8d2e9c12c22aa215a1af79b25157869a68', 'nancm33', '2', '2de28841aa68b20df2c2fddf7064feeb07773231', '2017-08-15 15:02:56', '2017-08-10 13:25:06', 'Activo'),
(609, 'Carlos Amadeo', 'García', 'Ayala', 37, 1, 1, 15, 56, 'drcarlosamadeo@gmail.com', 42, 324, 3, NULL, NULL, NULL, 'SI', 'a3b7f04a264727dacaf9e5b9660102c554a34465', 'CarlosAmadeo', '2', '6351808b88c365290ca6eff2adc2eba40ee3f0ec', '2017-08-15 15:02:56', '2017-08-10 15:39:51', 'Activo'),
(610, 'Francisco Jesús', 'Arévalo', 'Carrasco', 47, 1, 1, 15, 104, 'pacoare2014@gmail.com', 22, 161, 1, NULL, NULL, NULL, 'SI', 'a48d6bd77bf6c2f3220287557b1a09ac7470eca7', 'pacoare', '2', 'bd55a16a8f794bfb52251ec4c1bdc3f0874927d5', '2017-08-15 15:02:56', '2017-08-10 15:51:10', 'Activo'),
(611, 'KEYLA MADAHI', 'SANCHEZ', 'JAIMES', 25, 2, 1, 15, 90, 'jaimeskey92@gmail.com', 43, 412, 1, NULL, NULL, NULL, 'SI', 'c135d6c7d8207b99c8fb0142e2e9cf8cdd78bac1', 'jaimesKey', '2', '3ed0d583004ed0be8b7c772d1911eac2d4e29add', '2017-08-15 15:02:56', '2017-08-10 15:59:03', 'Activo'),
(612, 'NANCY PATRICIA', 'ABREGO', 'SALGADO', 30, 2, 1, 15, 90, 'nabregos@hotmail.com', 43, 412, 1, NULL, NULL, NULL, 'SI', 'b55ed86252c63b15a7fa2a354ce8d7f35138f166', 'NanAbrego', '2', '1e769a588c70363cff7fcf7093883f4e456ac4b6', '2017-08-15 15:02:56', '2017-08-10 16:01:10', 'Activo'),
(613, 'David Adrian', 'Hernández ', 'Guerrero', 26, 1, 1, 15, 56, 'dahg1s@gmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', 'de14684640d3fb1f6067726cf2192a1f1f1a9e5c', 'dahg1', '7', 'de9ee678f63ec408692709726ea7a5d354b0f7a4', '2017-08-15 15:03:20', '2017-08-10 16:11:20', 'Activo'),
(618, 'humberto ', 'maldonado', 'arias', 20, 1, 1, 15, 114, 'humberto.ma.97@outlook.com', 12, 103, 1, NULL, NULL, NULL, 'SI', '29ede3e3c1d8d3cba9426559d34d87a4fe96ef38', 'humbertoXi', '2', '816a1b8e41c0c37e4d28366ef199f2ca9ae620aa', '2017-08-15 15:02:56', '2017-08-10 16:22:39', 'Activo'),
(616, 'Deyadira', 'Guzman', 'Othon', 25, 2, 1, 13, 127, 'deyadira.go@hotmail.com', 132, 456, 2, NULL, NULL, NULL, 'SI', '95c2ba49baf617cd8be00b20506dc1d375d75d5f', 'deyadirago', '2', 'a73846543262e92c9d9c1453711470eb8b6157e5', '2017-08-15 15:02:56', '2017-08-10 16:14:49', 'Activo'),
(617, 'JUAN CARLOS', 'VELAZQUEZ', 'BECERRIL', 23, 1, 1, 15, 114, 'carlosvelazb@hotmail.com', 12, 103, 1, NULL, NULL, NULL, 'SI', 'b329e0121110e981f5a9e8b8eb81dea4465eeaa6', 'carlosvelazb', '2', '07c40ea2902abcd7580b10395c621fb451fdb694', '2017-08-15 15:02:56', '2017-08-10 16:15:53', 'Activo'),
(619, 'Luis Francisco', 'Blancas', 'Baca', 22, 1, 1, 15, 34, 'luisblancas313@gmail.com', 43, 341, 1, NULL, NULL, NULL, 'SI', '91a9d3abee783c1fa588bb79d20033390b585cd4', 'Blancas', '2', '55baeae7c2c43c138bce98aba203fe3fbc4028b9', '2017-08-15 15:02:56', '2017-08-10 16:28:30', 'Activo'),
(620, 'Normando', 'Elizondo', 'Ortiz', 24, 1, 1, 15, 56, 'normandoelizondoortiz@hotmail.com', 43, 411, 1, NULL, NULL, NULL, 'SI', '82b35067d37a8ba790bd6708bf88d91341b4903f', 'Normando23', '7', 'fffb8059fcf5acce18c2fb825bc5c1061ca68a1a', '2017-08-15 15:03:20', '2017-08-10 16:30:16', 'Activo'),
(621, 'eliseo', 'molina', 'gonzalez', 22, 1, 1, 15, 76, 'cheo_mg18@hotmail.com', 43, 341, 1, NULL, NULL, NULL, 'NO', '8ff88a91fde27b97a69a38f4c414600950fade42', 'eliseo18', '2', '8457d6ee0edad96f27830bed2515cbaa75a262b0', '2017-08-15 15:02:56', '2017-08-10 16:30:55', 'Activo'),
(638, 'Rafael ', 'Soto ', 'Espitia', 39, 1, 1, 15, 56, 'espitia78@hotmail.com', 43, 341, 3, NULL, NULL, NULL, 'SI', 'd86a4708fe3249106e908cea015918ed63915d24', 'rsoto', '2', '7b48124583ccb37ddc3fa2d26d7411eeba157a99', '2017-08-15 15:02:56', '2017-08-10 18:21:29', 'Activo'),
(624, 'jennyfer victoria', 'ibarra', 'carmona', 22, 2, 1, 15, 100, 'jennyfer.victoria@hotmail.com', 43, 332, 1, NULL, NULL, NULL, 'SI', 'd7413df903027607076d107a94dd9997f15681bb', 'victoria', '2', '0c95b86ce76d61afd4d6cb32a6e5f34d0a65ce76', '2017-09-18 13:52:38', '2017-08-10 16:35:11', 'Activo'),
(639, 'Vanessa Ruby ', 'García ', 'Ortiz', 26, 2, 1, 15, 56, 'garciaortiz_vr@gmail.com', 43, 338, 1, NULL, NULL, NULL, 'SI', '1bfe6a7d51e740ba5f567399022835da01f7382c', 'VANESSA', '2', 'd639cd2dea37e4ab3f017c3d00f15511897172d3', '2017-08-15 15:02:56', '2017-08-10 18:25:31', 'Activo'),
(626, 'Gloria Janneth', 'López', 'Mercado', 33, 2, 1, 15, 110, 'jannlopezm@gmail.com', 130, 405, 3, NULL, NULL, NULL, 'SI', 'f8582301ddbd4a5e8e574b3d9f6ae6197173d023', 'jannlopezm', '2', '3cb678a1728d4e7fc7af32932be098a2368f4c13', '2017-08-15 15:02:56', '2017-08-10 16:38:09', 'Activo'),
(627, 'Olga Leticia ', 'Robles', 'Garcia ', 48, 2, 1, 15, 56, 'olgaletyrobles@hotmail.com', 132, 456, 3, NULL, NULL, NULL, 'SI', '5f7466080951152412051c4d410761b6cafc2ac6', 'olgalety', '2', '3f13f2d82abc98b820ff333470f1de4d89cbb579', '2017-08-15 15:02:56', '2017-08-10 16:38:34', 'Activo'),
(628, 'Reyna Celeste', 'Ascencio', 'Ortega', 24, 2, 1, 15, 56, 'CELES5193@GMAIL.COM', 43, 349, 1, NULL, NULL, NULL, 'SI', 'de2e719b99d9f7e583185f68c31439582953d7d5', 'celestejoa', '2', '58d23268ce2be3de1933f15195b977fd44348fc0', '2017-08-15 15:02:56', '2017-08-10 16:43:51', 'Activo'),
(629, 'Ulises ', 'Franco ', 'Huerta', 22, 1, 1, 15, 56, 'ulisesfh24@gmail.com', 43, 341, 1, NULL, NULL, NULL, 'SI', '007c024605d43719721fa371e22f47376e2bb32b', 'ulises2017sicdet', '2', '541beaf05b6db5d2545f0a7b1de9d54d68975f73', '2017-08-15 15:02:56', '2017-08-10 16:45:09', 'Activo'),
(630, 'MIGUEL ANGEL', 'TORRES', 'SANTANA', 24, 1, 1, 15, 56, 'mats_1193@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', 'ca69ab1e8338927a590db332be43c1a00bf42f2a', 'MIGUELQFB', '2', '05fc18d727e52dd42c346b2bf55cd31e0ec34129', '2017-08-15 15:02:56', '2017-08-10 16:48:49', 'Activo'),
(631, 'Gabriel', 'Arroyo', 'Correa', 55, 1, 1, 15, 56, 'gamagag@yahoo.com.mx', 43, 350, 2, NULL, NULL, NULL, 'SI', '0d9d87f915a7b9b9d72deb55474c850a9c965901', 'garroyo', '2', '49482a923b3a893e3453bf5cc289326f5015a18f', '2017-08-15 15:02:56', '2017-08-10 16:52:09', 'Activo'),
(632, 'Mauricio', 'Corona', 'Avalos', 22, 1, 1, 15, 56, 'ingmauro1994@gmail.com', 43, 341, 1, NULL, NULL, NULL, 'SI', '1620ba1d118774b8915479c10117ca5603d6e455', 'ingmau1994', '2', 'f69efc641ea9fd75db70d895b9c560d6eabe556b', '2017-08-15 15:02:56', '2017-08-10 16:54:11', 'Activo'),
(633, 'Alejandro', 'Garcia', 'Cervantes', 26, 1, 1, 15, 74, 'angel_malaya@hotmail.com', 20, 150, 1, NULL, NULL, NULL, 'SI', 'cf26e058cd3cd25df7a45c40c2668a36852c7e1a', 'JanoGc', '2', '80c66657b941297347f4b97d7cd3cf04dd7bb8e8', '2017-08-15 15:02:56', '2017-08-10 16:55:30', 'Activo'),
(634, 'Juan Roberto', 'Hernandez', 'Parrales', 21, 1, 1, 10, 124, 'betorocker14@hotmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', 'ae32b7d1aafa8e6e0a4e15efb2af0bf2faee583f', 'JRHP21', '2', 'e12b75337bf643f0915c2568817e792db02d5cd2', '2017-08-15 15:02:56', '2017-08-10 17:00:56', 'Activo'),
(635, 'Edgar Ismael', 'Olvera', 'Mendoza', 34, 1, 1, 10, 124, 'olmedgar@gmail.com', 43, 346, 3, NULL, NULL, NULL, 'NO', '94ad90782ee033b52f47dd9077844c9470b72619', 'olmedgar', '2', '0d94e19bd247dd95613b1e897f020f8bfb6fd51b', '2017-08-15 15:02:56', '2017-08-10 17:19:27', 'Activo'),
(636, 'Orlando', 'Lemus', 'Rodríguez', 24, 1, 1, 15, 56, 'spartanaco@hotmail.com', 43, 341, 1, NULL, NULL, NULL, 'SI', '5d3d57ab51b80c750ad36e41fd0152928b84b57d', 'Dorlo04', '2', '3cb698c6cedc6471a01db5830fbf834bfe35b1ff', '2017-08-15 15:02:56', '2017-08-10 17:22:46', 'Activo'),
(640, 'Jonathan', 'Quiroz', 'Bedolla', 23, 1, 1, 15, 56, 'teamutm17@gmail.com', 28, 199, 1, NULL, NULL, NULL, 'SI', 'd3b3945b89630b21c072813ccc5d7aa96949739c', 'jonathanqb', '2', '9ee387e21984dafa150dbe1d4e6acd3d0652d2fe', '2017-08-15 15:02:56', '2017-08-10 18:33:09', 'Activo'),
(641, 'Alfonso', 'Chang', 'Martínez', 23, 1, 1, 15, 56, 'achang794@gmail.com', 13, 108, 1, NULL, NULL, NULL, 'SI', '1af47a8a11a1bccfe74f3db972f8a5d538ec921b', 'achang794', '2', '51c4edf727e2d628ad8edc84d980836111315dfa', '2017-08-15 15:02:56', '2017-08-10 18:36:31', 'Activo'),
(642, 'Jesús Leonel', 'Morales', 'Cervantes', 22, 1, 1, 11, 125, 'morales.le28@gmail.com', 132, 456, 1, NULL, NULL, NULL, 'SI', 'e8f5c25aa45c1548c333beca875ab9d9438ec946', 'moralesUAGro', '2', 'eb62cf9c23d20c7dddac7a45d66247ef36f5ece1', '2017-08-15 15:02:56', '2017-08-10 18:47:06', 'Activo'),
(643, 'Diana Areli', 'Mora', 'Zimbrón', 34, 2, 1, 15, 56, 'dianazimbron@hotmail.com', 33, 228, 3, NULL, NULL, NULL, 'SI', 'be3374d9da84b6e133a06ed566f6ecd5b653b6a8', 'Dirnegocios', '2', '0a85e3d3bc87c4087f013c3ad52767b912523fe1', '2017-08-15 15:02:56', '2017-08-10 18:53:10', 'Activo'),
(644, 'RAFAEL', 'TRUEBA', 'REGALADO', 28, 1, 1, 15, 56, 'trueba_59@hotmail.com', 43, 414, 3, NULL, NULL, NULL, 'SI', 'f23e25884956f6591722c5ce47e53283fb7e80b2', 'trueba', '2', 'ace9650e827af3bec8667d5d25afd4a341e2b805', '2017-08-15 15:02:56', '2017-08-10 18:58:23', 'Activo'),
(645, 'Rocío ', 'Alvarado', 'Mayo', 22, 2, 1, 11, 125, 'mayito-942011@hotmail.com', 132, 456, 1, NULL, NULL, NULL, 'SI', '58f34dc07a8e199b896efe2af7f94ae1f1c5a28d', 'AlvaMayo', '2', 'd4c138fd69d28020b91353a6a5171ee8ad2fd893', '2017-08-15 15:02:56', '2017-08-10 19:00:27', 'Activo'),
(647, 'Carlos Heriberto ', 'Mendoza', 'Pérez', 29, 1, 1, 15, 56, 'carloschmp@yahoo.com', 43, 350, 1, NULL, NULL, NULL, 'SI', '0c1757f6e053a8352e4faf454572bae4ddfee6b5', 'carloschmp1', '2', '5b134a589a20508750c303033d13067500540090', '2017-08-15 15:02:56', '2017-08-10 19:22:29', 'Activo'),
(648, 'Andrea', 'Contreras', 'Méndez', 23, 2, 1, 15, 56, 'andy.CR16@yahoo.com.mx', 11, 93, 1, NULL, NULL, NULL, 'SI', '5214b561d07b92d45aa95e656c61f551b839ec56', 'Andrea', '7', '561eb414581950da6d122bb39578ad1360f282bb', '2017-08-15 15:03:20', '2017-08-10 19:22:57', 'Activo'),
(649, 'José Manuel', 'Jara', 'Guerrero', 18, 1, 1, 15, 56, 'jmjara70@gmail.com', 43, 341, 3, NULL, NULL, NULL, 'NO', '5bf39ff996cb87191d3ec43dc5db07c4031298cb', 'jmjara70', '2', '9092deeed7dabfe9ceefd3ee52cd69faba83c336', '2017-09-18 23:23:54', '2017-08-10 19:32:06', 'Activo'),
(650, 'Karina Erendira ', 'Torres ', 'González ', 30, 2, 1, 15, 56, 'lm.erendira.tg@gmail.com', 43, 414, 3, NULL, NULL, NULL, 'SI', 'd414d592dcb41fffbdf782e090799fb713dbb36a', 'Karina', '2', '016030ae25ffa0fb0dd9dead7b83a7fc00fbb7e3', '2017-09-08 16:45:56', '2017-08-10 19:34:53', 'Activo'),
(651, 'GUILLERMO', 'MARTINEZ', 'RUIZ', 45, 1, 1, 15, 56, 'guillermo.mtzruiz@gmail.com', 43, 341, 3, NULL, NULL, NULL, 'SI', '468a8448e20438d440c6609062a1f047c97c6df9', 'gmruiz', '2', '7d80fe5da9969f43578f108fab80d64bce15cad0', '2017-08-15 15:02:56', '2017-08-10 19:35:50', 'Activo'),
(652, 'Juan Ignacio', 'López', 'Pérez', 18, 1, 1, 15, 56, 'ing.lpjuan@gmail.com', 43, 341, 2, NULL, NULL, NULL, 'NO', '431d1314906e60292fd2c3dcb0ccaaa5a6714645', 'JuanIg', '2', 'a282116ce06578fd884a93b6c889adc1e16873db', '2017-08-15 15:02:56', '2017-08-10 19:36:57', 'Activo'),
(653, 'Zayet Joel', 'Ramirez', 'Cazarez', 25, 1, 1, 15, 56, 'darkyazu@hotmail.com', 43, 341, 1, NULL, NULL, NULL, 'SI', '9ea933222b3464868ca5454e38a5240d503f54ec', 'DaimonZhayeto', '2', '42c1414180e079a4241bc2ed0e55389eb6fa3d83', '2017-08-15 15:02:56', '2017-08-10 19:37:57', 'Activo'),
(654, 'Evelyn', 'Campos', 'Hernández', 26, 2, 1, 5, 119, 'evelyn_9191_@hotmail.com', 43, 417, 2, NULL, NULL, NULL, 'SI', '019a9a5156204480e9c5b4ca4a5f8aa88517a2eb', 'Evelyn240191', '2', 'be7178bd54cd00862205d4c999db43ece0a9fc10', '2017-08-15 15:02:56', '2017-08-10 19:52:17', 'Activo'),
(655, 'Nuria', 'Gómez', 'Dorantes', 32, 2, 1, 15, 56, 'nuriah@live.com.mx', 43, 411, 3, NULL, NULL, NULL, 'SI', '692088a922838b2caee37b8cf5185ff345a17dbe', 'ngomez2018', '2', '692088a922838b2caee37b8cf5185ff345a17dbe', '2017-08-15 15:02:56', '2017-08-12 00:31:42', 'Activo'),
(656, 'Hugo Enrique', 'Alva', 'Medrano', 29, 1, 1, 15, 56, 'hugoalva9@gmail.com', 43, 350, 3, NULL, NULL, NULL, 'NO', '32a3bc0fba9c4131f3832f53d106801d21891ea6', 'halva', '2', '4dee16ed13292e9553d2091dc697545e806851eb', '2017-08-15 15:02:56', '2017-08-10 19:56:41', 'Activo'),
(657, 'rafae', 'morales ', 'chavez', 35, 1, 1, 15, 56, 'rafaelmoraleschavez@gmail.com', 43, 418, 3, NULL, NULL, NULL, 'NO', '47f12b09814fa170fc6fa1c1a55c1a106cdedbb5', 'RafamoraCha1981', '2', 'fef1e9f6a3b68c43eeec32228d7d0a3e5c782e1e', '2017-08-15 15:02:56', '2017-08-10 20:00:46', 'Activo'),
(658, 'TERESA ', 'MANZO ', 'CERVANTES ', 24, 2, 1, 15, 106, 'manzocer_22@hotmail.com', 24, 174, 1, NULL, NULL, NULL, 'SI', 'd05a551f38bc4447c06251b05c9f07c9a3ae82a9', 'TereManzo', '2', '98d5434f66889f5a417d634a6bc4ed3b96648458', '2017-08-15 15:02:56', '2017-08-10 20:07:30', 'Activo'),
(659, 'JOSÉ TRINIDAD', 'SOTO', 'GONZÁLEZ', 24, 1, 1, 15, 56, 'sotoglzz@gmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', '93f0d7d7d1cf13f8d9ac3c934c0f52bb8eb0f950', 'JoseSoto', '2', '0f63eff22227b92e5e3c588d3601156faaa1d422', '2017-08-15 15:02:56', '2017-08-10 20:08:40', 'Activo'),
(660, 'Juan Angel', 'Ayala ', 'Rodríguez', 23, 1, 1, 15, 56, 'angelayala_ro@hotmail.com', 43, 411, 1, NULL, NULL, NULL, 'SI', '15a425748a3df43313531df8b1d3d9ab793594e5', 'AngelAyala3', '2', '18808fcf7e7cfb4b2a435d4ed19f6a1c0900218d', '2017-08-15 15:02:56', '2017-08-10 20:12:52', 'Activo'),
(661, 'ALICIA ', 'AGUILAR', 'CORONA', 39, 2, 1, 15, 56, 'aliac77@hotmail.com', 43, 329, 3, NULL, NULL, NULL, 'SI', '7ce72c578b3c8f843706a82f68f18e43718de918', 'aliac', '2', 'd56f2b55ed20b0cd032071557b1c28e188be1858', '2017-08-15 15:02:56', '2017-08-10 20:18:50', 'Activo'),
(662, 'ALICIA ', 'AGUILAR', 'CORONA', 39, 2, 1, 15, 56, 'aliac77@hotmail.com', 43, 329, 3, NULL, NULL, NULL, 'NO', '7ce72c578b3c8f843706a82f68f18e43718de918', 'aliac1', '7', '1fad0748041651a7a71b6f3ebd71046492fa4f5e', '2017-08-15 15:03:20', '2017-08-10 20:25:27', 'Activo'),
(663, 'HECTOR ROMULO', 'RICO', 'PONCE', 57, 1, 1, 15, 6, 'hrrpj_2360@hotmail.com', 107, 454, 1, NULL, NULL, NULL, 'SI', '3e934a604feb59066f5708ff51b7685a6668e05e', 'johnnymayte', '2', '0e00203aabff954a0a5974c9aa667f915f173b5a', '2017-08-15 15:02:56', '2017-08-10 21:08:45', 'Activo'),
(664, 'Gilberto', 'Espinoza', 'Quiroz', 58, 1, 1, 15, 56, 'gequiroz01@hotmail.com', 13, 107, 2, NULL, NULL, NULL, 'SI', '841fae522a89c5398d065e619abc1e4bd7199c12', 'Gilberto', '2', '8291f6fea43d0f09a9900c5b707711b47b57302f', '2017-08-15 15:02:56', '2017-08-10 21:17:11', 'Activo'),
(665, 'Maria ', 'Bermudez', 'Cazares', 28, 2, 1, 15, 70, 'yimavive17@hotmail.com', 43, 412, 1, NULL, NULL, NULL, 'SI', 'fa93722e6226dff5a1cc0d48de15dd76689258b3', 'airam', '2', '01ae5eca4e0cb1a2000f4b87af2279e1cfad58fc', '2017-08-15 15:02:56', '2017-08-10 21:43:08', 'Activo'),
(666, 'MARGARITA MONSERRAT', 'MARTINEZ', 'CAMPOS', 23, 2, 1, 15, 56, 'martinezca-monse@hotmail.com', 13, 108, 1, NULL, NULL, NULL, 'SI', '43a91fe1992a8a2fde0ac65089636e5bf2fa3bbd', 'MonseMtz', '2', '8f84560c47c153e31a79d6e77fcf0c93b83263d9', '2017-08-15 15:02:56', '2017-08-10 21:46:49', 'Activo'),
(891, 'Guillermo', 'Andrade', 'Espinosa', 42, 1, 1, 15, 56, 'andrade0001@hotmail.com', 13, 108, 3, NULL, NULL, NULL, 'SI', 'ace914a4a7ec13eb4c51b99f8329e08857ac2408', 'gandrade', '7', 'a75541a82d18dcaabf17fc34428b0f26ba40d304', '2017-08-15 17:44:27', '2017-08-15 17:44:27', 'Activo'),
(668, 'Ana Karen ', 'Diaz ', 'Romero', 18, 1, 1, 15, 56, 'kren_1995@hotmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', 'a86c8bd2106dfb586685e825b2291366effcbeb9', 'Karendiazz', '2', '38e3ebc22d6786e752b3160bdc6dcdacee970da1', '2017-08-15 15:02:56', '2017-08-10 22:03:42', 'Activo'),
(669, 'Omar', 'Bravo', 'Alcocer', 28, 1, 1, 15, 56, 'omar_oba_23@hotmail.com', 43, 332, 1, NULL, NULL, NULL, 'SI', 'b6962b70d6ee0334f07dec59bec4e38e5194afd3', 'OmarBravo', '2', 'a9721b64620b152c37409a16efe2f99bd2446b16', '2017-08-15 15:02:56', '2017-08-10 22:04:58', 'Activo'),
(718, 'carlos Javier', 'Villarreal', 'Monrreal', 22, 1, 1, 5, 119, 'carlos07_vim@hotmail.com', 132, 456, 1, NULL, NULL, NULL, 'SI', '65e5ac233c9f81ea8ca426e015f921fb36afbdf1', 'carlosvim', '2', '372945bb93021e96335eae799d81d6b374c99136', '2017-08-15 15:02:56', '2017-08-11 14:39:25', 'Activo'),
(672, 'Job Daniel', 'Alvarez', 'Pita', 24, 1, 1, 15, 83, 'job.186.niel@outlook.com', 43, 341, 1, NULL, NULL, NULL, 'SI', '75580e3bfb15996b64dd1813b268799e207b7408', 'Job186', '2', '86816706783c7302c0f21c62da160726243f4ff7', '2017-08-15 15:02:56', '2017-08-10 22:08:59', 'Activo'),
(673, 'Yiritzy Brigit', 'Valdés', 'García', 18, 2, 1, 15, 56, 'bry.valdes-03@hotmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', 'ff6fcf8460d9be6ecea7e3f2a94e1a7b8ecad5d6', 'Bryyvaldes', '2', 'ee4153701fc59a9ee4fab7064ed90971c85be7c6', '2017-08-15 15:02:56', '2017-08-10 22:16:50', 'Activo'),
(674, 'Jorge Armando', 'Ramos', 'Frutos', 22, 1, 1, 15, 77, 'jorgerf1095@gmail.com', 8, 69, 4, NULL, NULL, NULL, 'SI', '3d271b901471d4d0672bd97648e394349ed5d99e', 'jorgerf', '2', 'b0075939f0e1377b89d20b2a24ee9208db76e064', '2017-08-15 15:02:56', '2017-08-10 22:37:33', 'Activo'),
(675, 'Alicia ', 'Perez', 'Vieyra', 100, 2, 1, 15, 56, 'alicia.vieyra53@gmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', 'fcaecd16dbbe1e4de001baf4da0f1ac15b54a0ce', 'Alicia28', '7', '6604dd8bb7f70c689d1da0e87dc6f091d58bba85', '2017-08-15 15:03:20', '2017-08-10 22:44:18', 'Activo'),
(676, 'Emilio', 'Coria', 'Orozco', 28, 1, 1, 15, 56, 'emilio.coria.orozco@gmail.com', 43, 338, 1, NULL, NULL, NULL, 'SI', 'bcfd9e24f29cdea046609c48c11b45c80247700c', 'emiliocoriaorozco', '2', '678dd1ac8f67dbc5309f471a274160a5c21f1c40', '2017-08-15 15:02:56', '2017-08-10 22:56:21', 'Activo'),
(677, 'José Ángel', 'Chávez', 'Reyes', 24, 1, 1, 15, 56, 'pp_roccktowi@hotmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', '28f1c280094f10cbeaa818a180b9780baa8bf734', 'angel06', '2', '8d8ce52faff19703a500e89f5761b912de7e533b', '2017-08-15 15:02:56', '2017-08-10 22:58:12', 'Activo'),
(678, 'Karina', 'Gracía', 'Orozco', 36, 2, 1, 15, 56, 'laekaryna@hotmail.com', 43, 335, 2, NULL, NULL, NULL, 'SI', 'e93816aca2050935b91634be90a1f50305bfb974', 'KarinaGO', '2', 'f4624f13146a483a15e085b364cafafd55797f75', '2017-08-15 15:02:56', '2017-08-10 23:02:58', 'Activo'),
(679, 'JOSE', 'HERRERA', 'CAMACHO', 45, 1, 1, 15, 56, 'josheca@gmail.com', 132, 456, 3, NULL, NULL, NULL, 'SI', 'abab61d0ecc5673bdf20ab809c067202530f5a50', 'josheca2017', '2', '68340f613e1e0fe17730791c7acf28eb06d330a6', '2017-08-15 15:02:56', '2017-08-11 00:08:13', 'Activo'),
(680, 'Patricia', 'Juárez', 'González', 23, 2, 1, 15, 56, 'sirenazul1993@hotmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', 'f8455c13d27e8191b4c060e29a26b4bab8a36ecd', 'Patrik', '2', '55ee58d435d4bed829af55ccc1b73de5a2623c20', '2017-08-15 15:02:56', '2017-08-11 00:08:18', 'Activo'),
(681, 'Patricia', 'Juárez', 'González', 23, 2, 1, 15, 56, 'sirenazul1993@hotmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', 'f8455c13d27e8191b4c060e29a26b4bab8a36ecd', 'Patrick', '7', 'c7a988fd308bec55d3f4f4fbb248954d77831d0e', '2017-08-15 15:03:20', '2017-08-11 00:26:32', 'Activo'),
(682, 'Gabriel', 'Casarrubias', 'Guerrero', 29, 1, 1, 15, 34, 'gabrielcg_mech@hotmail.com', 15, 122, 2, NULL, NULL, NULL, 'SI', '93460cc53e2ef93f76574ac24e046840c94cb92b', 'gabo3023', '2', 'd7d1688331c68f8a9ea4a1e89234fee9da62e26e', '2017-08-15 15:02:56', '2017-08-11 01:04:31', 'Activo'),
(684, 'Luis Eduardo', 'Pascual ', 'García', 19, 1, 1, 15, 114, 'lalo_03oct@hotmail.com', 12, 103, 1, NULL, NULL, NULL, 'SI', 'c59ed35598e79af64deb2531fb67d7049ea9258b', 'Eduardo', '2', '53303ad7357525319fe30e1bffa5e5717ab970ad', '2017-08-15 15:02:56', '2017-08-11 01:07:26', 'Activo'),
(685, 'Luis Eduardo', 'Pascual', 'García', 19, 1, 1, 15, 114, 'lalo_03oct@hotmail.com', 12, 103, 1, NULL, NULL, NULL, 'SI', 'c59ed35598e79af64deb2531fb67d7049ea9258b', 'Eduardo03', '2', '01941f0c90f0b3eac377c46eb309201a6263b586', '2017-08-15 15:02:56', '2017-08-11 01:10:52', 'Activo'),
(686, 'Engelbert', 'Huape', 'Padilla', 36, 1, 1, 15, 56, 'pahuen@gmail.com', 43, 329, 3, NULL, NULL, NULL, 'SI', '29112cccc0d2a264ec525653eaa09748f6627ce6', 'Engelbert', '2', '5303874475326b22a529a817aa0fa500fbb24be5', '2017-08-15 15:02:56', '2017-08-11 01:11:01', 'Activo'),
(687, 'Mayra Fernanda ', 'Amaya ', 'Lucio', 23, 2, 1, 15, 56, 'amayafernanda93@hotmail.com', 11, 93, 1, NULL, NULL, NULL, 'NO', '494d29131f6afa6afbe6119c8cdbdf9129e1aa95', 'AmayaFernanda', '2', '03eb472286249fb019456904b00bcabd1398749e', '2017-08-15 15:02:56', '2017-08-11 01:43:26', 'Activo'),
(688, 'Maria del carmen ', 'Zamudio', 'Landeros', 22, 2, 1, 15, 40, 'maricarmenzl@hotmail.com', 15, 124, 1, NULL, NULL, NULL, 'SI', 'f4fd7488254803d73995ccdb0a952e034eb6ac53', 'Carmen', '2', '8897dd2b24d47483206a89538014c5dfeda7c513', '2017-08-15 15:02:56', '2017-08-11 02:06:57', 'Activo'),
(689, 'Roberto', 'Loaeza ', 'Valerio', 35, 1, 1, 15, 104, 'roberto.loaeza@gmail.com', 22, 159, 3, NULL, NULL, NULL, 'SI', '3f6a2d177b386472d44fff1c0f75d21405e2ebb2', 'robertoloaeza', '2', 'b78421f90e8c0addd21e3217622bd4858d2001f8', '2017-08-15 15:02:56', '2017-08-11 02:08:29', 'Activo'),
(690, 'Ingrid Karina', 'Gutiérrez', 'García', 23, 2, 1, 15, 34, 'ingridGtz.Ga@outlook.com', 15, 124, 1, NULL, NULL, NULL, 'SI', '8c1b4fc72f9de47d9feced280cb9ae62d8659f1c', 'Ingrid', '2', 'b5c51868d8cf47ca2488016648973758a5d4f0ba', '2017-08-15 15:02:56', '2017-08-11 02:28:12', 'Activo'),
(691, 'Alfredo', 'Reyes', 'Tena', 27, 1, 1, 15, 27, 'eyesnator@hotmail.com', 43, 412, 2, NULL, NULL, NULL, 'NO', 'd5b796ddeea8e9dfc3317b00e87918110ff45277', 'ART3', '2', 'bf06c7e748e297b9d0d5e511431247930c087c76', '2017-08-15 15:02:56', '2017-08-11 02:35:47', 'Activo'),
(692, 'Irma', 'Gutierrez', 'Miranda', 36, 2, 1, 15, 104, 'miranda.igm@gmail.com', 22, 164, 2, NULL, NULL, NULL, 'SI', '3f6a2d177b386472d44fff1c0f75d21405e2ebb2', 'irmagutierrez', '2', 'abdd6b9f6b81f0845f1edfd7f993d6f2ae9923d8', '2017-08-15 15:02:56', '2017-08-11 02:46:30', 'Activo'),
(693, 'Guillermo Capistrano', 'Zuñiga', 'Neria', 32, 1, 1, 15, 34, 'gzneria@gmail.com', 15, 122, 2, NULL, NULL, NULL, 'SI', 'bb7da82eb2ca56fc1b1c6aceb78cff05f319fd57', 'gzneria', '2', 'd8c3e57d0e956f1591c0c2a0ae1947bfb3a6cdcf', '2017-08-15 15:02:56', '2017-08-11 02:50:11', 'Activo'),
(714, 'Karina', 'Orozco', 'Natividad', 23, 2, 1, 15, 56, 'karinaa.on@gmail.com', 11, 93, 1, NULL, NULL, NULL, 'NO', '5bfad6f810e524cc4b2c2ca03994346e2e09bbb3', 'KarinaON', '2', '66db9471c9f88d4ab28f9ef8ded735ce8813d4d2', '2017-08-15 15:02:56', '2017-08-11 13:16:23', 'Activo'),
(695, 'wilmer', 'castillo', 'najar', 24, 1, 1, 15, 56, 'ironwil_16@hotmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', '6a4b42cd808b82022f703f8b46e3634ec1fff20f', 'castillonajar', '2', '5ce8b7433b96c6c5e06c3c96d0a64db5cf752cf5', '2017-08-15 15:02:56', '2017-08-11 03:04:33', 'Activo'),
(696, 'Noel Enrique', 'Rodríguez', 'Maya', 37, 1, 1, 15, 114, 'nerm14@hotmail.com', 12, 101, 3, NULL, NULL, NULL, 'SI', '6cd54d61b992a7dbc2208683bd2e13a8e1731b8d', 'nerm14', '2', '67119621c497e423d5970abb1b264bc087369d00', '2017-08-15 15:02:56', '2017-08-11 03:10:48', 'Activo'),
(697, 'Jorge Armando', 'Ramos', 'Frutos', 22, 1, 1, 15, 77, 'jorgerf1095@gmail.com', 8, 69, 1, NULL, NULL, NULL, 'SI', '3d271b901471d4d0672bd97648e394349ed5d99e', 'jorgerf', '2', '0a5e512321e59ef1d4e58a3f54b49cfbabb35e85', '2017-08-15 15:02:56', '2017-08-11 03:16:27', 'Activo'),
(698, 'Stephany', 'Rodríguez', 'Hernández', 24, 2, 1, 15, 56, 'fannie.rodriiguez@gmail.com', 43, 349, 1, NULL, NULL, NULL, 'SI', '1bc1207a904b34052eed1d806bfb0fad1e8f5011', 'srodriguez', '2', '917ac3e63ec2e5a76dc476ec640b37bfb4225dba', '2017-08-15 15:02:56', '2017-08-11 03:32:55', 'Activo'),
(699, 'Ana Velia', 'Coria', 'Téllez', 38, 2, 1, 15, 49, 'ana.coriatel@yahoo.com.mx', 68, 372, 3, NULL, NULL, NULL, 'SI', 'e4451325a9a88fb93c1667268c36d142d731e256', 'Ana', '2', '8e3f42f552560a90b84d385a6a0ee49a149c8cea', '2017-08-15 15:02:56', '2017-08-11 03:50:35', 'Activo'),
(700, 'JAZMIN KARINA ', 'MATEO', 'VALENTIN', 27, 2, 1, 15, 56, 'karinamateov@gmail.com', 43, 346, 2, NULL, NULL, NULL, 'SI', 'f307d9a87a8833ba70dec69c6192398b14df81a4', 'JAZMINKARINA', '7', 'bb475b8bb2082aad16cd4739207a416a2b895eb6', '2017-08-15 15:03:20', '2017-08-11 03:54:23', 'Activo'),
(701, 'Enrique', 'Virrueta', 'Martínez', 23, 1, 1, 15, 104, 'enrique.vm.94@gmail.com', 22, 158, 1, NULL, NULL, NULL, 'SI', '0b6dc493214fab475b35db4ddd272cdde1c51b43', 'enrike017', '2', 'b2a28fedf08b2db9509e5f97d3238fa1c7035449', '2017-08-15 15:02:56', '2017-08-11 03:57:02', 'Activo'),
(702, 'Alicia', 'Aguilar ', 'Corona', 36, 2, 1, 15, 56, 'aliac77@hotmail.com', 43, 329, 3, NULL, NULL, NULL, 'SI', '7ce72c578b3c8f843706a82f68f18e43718de918', 'aliac', '2', '516c1fca5d8043a2d13cf05a0259c98ed51f5000', '2017-08-15 15:02:56', '2017-08-11 04:02:03', 'Activo'),
(703, 'Jesus Armando', 'Vargas', 'Correa', 40, 1, 1, 15, 56, 'jearva@yahoo.com.mx', 43, 350, 2, NULL, NULL, NULL, 'SI', '1fc70affd4afd5cbe903d80f562a92d1066f18d2', 'jearva', '2', 'd03c2e9c01ce192fd806a63a1d4a07c61c5e332b', '2017-08-15 15:02:56', '2017-08-11 04:13:44', 'Activo'),
(704, 'Jesús Armando ', 'Vargas ', 'Correa', 40, 1, 1, 15, 56, 'jearva@yahoo.com.mx', 43, 350, 2, NULL, NULL, NULL, 'SI', '1fc70affd4afd5cbe903d80f562a92d1066f18d2', 'jearva2005', '7', '245c45f782616f0f48dd90ff702ce373e5ff76fd', '2017-08-15 15:03:20', '2017-08-11 04:24:53', 'Activo'),
(705, 'Luz Elena Alfonsina', 'Avila', 'Calderón', 46, 2, 1, 15, 56, 'lea.avilacalderon@gmail.com', 43, 338, 2, NULL, NULL, NULL, 'SI', '20bdb19260f97661434fe78afd293e3c22a1415d', 'lavila', '7', '796b77d32a2369b747578dffbf0e9cada74d9c19', '2017-08-15 15:03:20', '2017-08-11 04:33:11', 'Activo'),
(706, 'Alicia', 'Aguilar', 'Corona ', 39, 2, 1, 15, 56, 'aliac77@hotmail.com', 43, 329, 3, NULL, NULL, NULL, 'SI', '1fc70affd4afd5cbe903d80f562a92d1066f18d2', 'aliac77', '2', '24240cb91cdc41d29b387b622817cc43dcc38761', '2017-08-15 15:02:56', '2017-08-11 04:35:54', 'Activo'),
(707, 'MARCO YAIR', 'Gregorio', 'GUTIERREZ', 23, 1, 1, 15, 77, 'ireta.-34@hotmail.com', 24, 171, 1, NULL, NULL, NULL, 'SI', 'e2c3dbc9c373ec900aee1ce044de1392e310525e', 'yair34', '2', 'dab9784bf479236381362f2da4ea826df68c1505', '2017-08-15 15:02:56', '2017-08-11 04:42:21', 'Activo'),
(708, 'GUILLERMO IVÁN', 'FIGUEROA', 'BÉJAR', 24, 1, 1, 15, 56, 'guil_ivan93@gmail.com', 43, 349, 1, NULL, NULL, NULL, 'NO', 'aee211ff5fbc02553b10efedcfd35718f9f9c5ef', 'GuillermoIvan', '7', 'dba7a2838a46d6ffa14e73819eddafe9651be44d', '2017-08-15 15:03:20', '2017-08-11 09:03:35', 'Activo'),
(709, 'GUILLERMO IVÁN', 'FIGUEROA', 'BÉJAR', 24, 1, 1, 15, 56, 'guil_ivan93@gmail.com', 43, 349, 1, NULL, NULL, NULL, 'NO', 'aee211ff5fbc02553b10efedcfd35718f9f9c5ef', 'GuillermoIvan93', '2', '90da18beeca6b05430b2307ac5216ec3bbd30fc8', '2017-08-15 15:02:56', '2017-08-11 09:11:32', 'Activo'),
(710, 'MARÍA DEL SOCORRO', 'FIGUEROA', 'BÉJAR', 22, 2, 1, 15, 90, 'chapp_1502@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'NO', '5a1014afdf86d039733f9ec901b32e0281334b07', 'MariadelSocorro1502', '7', '380f207b98570480fc968f5bc840dfafe4ddd193', '2017-08-15 15:03:20', '2017-08-11 09:22:35', 'Activo'),
(711, 'MARÍA DEL SOCORRO', 'FIGUEROA', 'BÉJAR', 22, 2, 1, 15, 90, 'chapp_1502@hotmail.com', 43, 411, 1, NULL, NULL, NULL, 'NO', '5a1014afdf86d039733f9ec901b32e0281334b07', 'MariadelSocorro-1502', '2', 'eea7026e8e65492d0eda9f4ef0a2d753a430abe9', '2017-08-15 15:02:56', '2017-08-11 09:29:58', 'Activo'),
(712, 'Renato', 'González', 'Bernal', 41, 1, 1, 15, 56, 'resu2206@yahoo.com.mx', 43, 329, 2, NULL, NULL, NULL, 'SI', 'd73328db98f26952db152ef803a438017c00bdaa', 'resu2206', '2', 'b8651722868a25c6f2c488aedd61b9e9715c5d98', '2017-08-15 15:02:56', '2017-08-11 11:48:36', 'Activo'),
(713, 'Mariana', 'Alvarez', 'Navarrete', 36, 2, 1, 15, 56, 'maralvnav@yahoo.com.mx', 11, 93, 3, NULL, NULL, NULL, 'SI', '5ac793b4ce27516e747c267f955fb8757ae25d63', 'maralvnav', '2', 'b7ee52b9ee5427a5b3c5082ebff5a85173284057', '2017-08-15 15:02:56', '2017-08-11 12:46:16', 'Activo'),
(716, 'Alejandra ', 'Mondragon', 'Flores', 18, 2, 1, 15, 6, 'mondragon.flores@gmail.com', 107, 454, 2, NULL, NULL, NULL, 'SI', '6ae0d3f28be7a918eae7470912d3b79514af4ab5', 'alejandra2', '2', '481088aef69db2c51e67c4645f67f123093a9ecc', '2017-08-15 15:02:56', '2017-08-11 14:20:17', 'Activo'),
(717, 'esteban', 'gaona', 'sanchez', 27, 1, 1, 15, 42, 'enik_012@hotmail.com', 132, 456, 2, NULL, NULL, NULL, 'SI', '574aa180e547878d79e0a67a78262a5400872862', 'estebangaona', '2', '514e29104d9b61fc017a45093c78013767e216cf', '2017-08-15 15:02:56', '2017-08-11 14:26:15', 'Activo'),
(719, 'Marcos Ariel ', 'Villanueva ', 'Guzmán', 23, 1, 1, 15, 108, 'ariel219710@hotmail.com', 43, 341, 2, NULL, NULL, NULL, 'NO', 'd3ff427a94d8d87b1c6f9a081b7196b9ab98ceac', 'arielvg', '2', '7bf1e81cc5d4cceeec8530f2476c5bfb237d3d45', '2017-08-15 15:02:56', '2017-08-11 14:53:38', 'Activo'),
(720, 'Valeria', 'Gonzalez', 'Miranda', 25, 2, 1, 15, 56, 'valeriagonzalezmiranda@hotmail.com', 43, 418, 2, NULL, NULL, NULL, 'NO', 'e25a68c108df01974c757ff2361ad7d156e35115', 'ValeGlez', '2', '67bc3704465f4c38e16752a510e15c4623ce3476', '2017-08-15 15:02:56', '2017-08-11 15:15:02', 'Activo'),
(721, 'Karina Mariela', 'Figueroa', 'Mora', 40, 2, 1, 15, 56, 'karina.figueroa@gmail.com', 43, 350, 3, NULL, NULL, NULL, 'SI', '4f74a4251bd7449338d13c8938026d68f3cfb34a', 'kaarinita', '2', '4883fbcdea3e0935751f5f22852624cf9575c050', '2017-08-15 15:02:56', '2017-08-11 15:46:30', 'Activo'),
(722, 'Oscar', 'Zaragoza', 'Juarez', 30, 1, 1, 15, 56, 'ozj695@hotmail.com', 3, 23, 1, NULL, NULL, NULL, 'SI', '556dc0c2d6ceaddb5e3805fe190e0e2cb5ec1151', 'Oscar', '2', 'c5bcf0493792fc9b5ecbee564be102df4fce972e', '2017-08-15 15:02:56', '2017-08-11 15:50:27', 'Activo'),
(723, 'Luz Vanessa', 'Pacheco', 'Gordillo', 23, 2, 1, 15, 56, 'luzvapg@gmail.com', 43, 350, 1, NULL, NULL, NULL, 'SI', 'edb37247e15d2b2b630334e4ff9efb55cd3d80b3', 'Luz', '2', '338167b6f286474867e796475d7770883139edbe', '2017-08-15 15:02:56', '2017-08-11 15:53:26', 'Activo'),
(724, 'Marco Antonio', 'Iniestra', 'Aniceto', 18, 1, 1, 15, 56, 'dasahim@hotmail.com', 28, 193, 4, NULL, NULL, NULL, 'SI', '6950fe0e8acbff6c8fe3c2d01b07f67669866d24', 'marcoan', '2', '6410516b36fc1cc24f8e82448c3a4cce7f1a2b8a', '2017-08-15 15:02:56', '2017-08-11 15:59:17', 'Activo'),
(734, 'Juan Carlos', 'Barragán', 'Barajas', 55, 1, 1, 15, 44, 'jcbb05dk@gmail.com', 8, 69, 2, NULL, NULL, NULL, 'SI', '7c1b5e525737b0d70975b32128bbeccd82e75499', 'BABJ620718BJ9', '2', 'fe8c03db2b708143abf5e139a9ffad54d9c31deb', '2017-08-15 15:02:56', '2017-08-11 16:51:10', 'Activo');
INSERT INTO `usuarios` (`id_usuarios`, `nombre`, `a_paterno`, `a_materno`, `edad`, `genero`, `nacionalidad`, `estado`, `municipio`, `email`, `institucion`, `facultad`, `nivel`, `mesa`, `modalidad`, `area_id`, `mailing`, `password`, `username`, `puesto`, `token`, `created_at`, `request_token`, `status`) VALUES
(726, 'Cristina Mariana', 'Prieto', 'Barajas', 29, 2, 1, 15, 56, 'aconmayis@hotmail.com', 43, 411, 3, NULL, NULL, NULL, 'SI', '8296fb8592624832554edbf71d65b2b9b8a3e1b7', 'CristinaPrieto', '2', '4dd93299f647ccbd3779b5efc46c9e973c089abf', '2017-08-15 15:02:56', '2017-08-11 16:11:42', 'Activo'),
(727, 'David', 'Mendoza', 'Cachú', 31, 1, 1, 15, 96, 'david.mendozach@gmail.com', 43, 417, 2, NULL, NULL, NULL, 'SI', 'bbbdbb77a302c9473a70b60a9347f85c243f232f', 'DavidMzaC', '2', 'b318bef8673358a97fdcb4bed5e1ae3d5062b89e', '2017-08-15 15:02:56', '2017-08-11 16:20:34', 'Activo'),
(728, 'Nancy Gabriela', 'Castañeda', 'Córdova', 23, 2, 1, 15, 56, 'nancy_gabriela_castaneda@hotmail.com', 28, 193, 4, NULL, NULL, NULL, 'SI', 'a0e9f60f36af3c45260b14188f589b4426580745', 'Gabriela', '2', '524a33d5408a3a1051b2b35a1cea374c680f30e8', '2017-08-15 15:02:56', '2017-08-11 16:33:46', 'Activo'),
(729, 'Gerardo', 'García', 'Maldonado', 19, 1, 1, 15, 83, 'cros_eye@hotmail.com', 28, 193, 1, NULL, NULL, NULL, 'SI', '2f82ac81fbcff82132a10ad269011837d17e9d01', 'Gerardo', '2', 'f8e89d4fdcab89da4b079dcf950dd5cbd450547f', '2017-08-15 15:02:56', '2017-08-11 16:39:24', 'Activo'),
(730, 'Edith', 'Muñoz', 'Parra', 28, 2, 1, 15, 56, 'edithmparra@yahoo.com', 43, 411, 2, NULL, NULL, NULL, 'SI', '162e3c56a474a76c6bf296cf6bd5af338c2261b7', 'Edithmp', '2', '4aced00db7fffa2e11d725d9ea016a0bf7998d4d', '2017-08-15 15:02:56', '2017-08-11 16:40:01', 'Activo'),
(731, 'Alma Alejandra', 'García', 'Mendoza', 18, 2, 1, 15, 56, 'almaagmendoza@gmail.com', 28, 193, 4, NULL, NULL, NULL, 'SI', '92b30ac4df8538cf0bec7ce5012cbc522a7b6251', 'almagame', '2', '6dd53b1b247d9b3ec53f003290a84cc0f887d1dd', '2017-08-15 15:02:56', '2017-08-11 16:40:55', 'Activo'),
(732, 'Alondra', 'Vaca', 'Marin', 21, 2, 1, 15, 114, 'alondra.wy@hotmail.com', 12, 103, 1, NULL, NULL, NULL, 'SI', '75559d15a566616989231ff02f6d26c6beb92147', 'Alondra777', '2', '8bc2296298defba6becf65ee3456477b11afdc63', '2017-08-15 15:02:56', '2017-08-11 16:44:42', 'Activo'),
(733, 'J Guadalupe', 'Ramos', 'Díaz', 45, 1, 1, 15, 49, 'joguar@hotmail.com', 9, 75, 3, NULL, NULL, NULL, 'SI', 'c83b3aaf6124d5ad82603bbdf3e2ed68b6df818b', 'joguar', '2', '1a769217eed35757519cd7aa4ef6bcea9f3d7d81', '2017-08-15 15:02:56', '2017-08-11 16:45:37', 'Activo'),
(735, 'Saraí', 'Esparza', 'Reynoso', 28, 2, 1, 15, 56, 'sariesparza@gmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', 'dfe837e07d3f8380f7d21ecfab45289fa1d2f153', 'SarisEsparzaRey', '2', '010f59a083c8d9955810bbed6d878926670793cd', '2017-08-15 15:02:56', '2017-08-11 16:54:01', 'Activo'),
(736, 'David', 'Hernández ', 'Raya', 20, 1, 1, 26, 139, 'davidhraya_@outlook.com', 132, 456, 1, NULL, NULL, NULL, 'SI', '8de08ca319f22b22079cf868797a4d02353c71c0', 'Davidhraya', '2', '3b836bcf6cffbe9b6efcbb4c4e8f7684c533c155', '2017-08-15 15:02:56', '2017-08-11 16:56:17', 'Activo'),
(737, 'Karina', 'Garcia', 'Orozco', 36, 2, 1, 15, 56, 'laekaryna@hotmail.com', 43, 335, 1, NULL, NULL, NULL, 'NO', '15ba1d77a544b2f85d1ec1a34a64bee2af296613', 'KarinaGarcia', '2', '910577a5ba09ef3c10e084e8034aa09c8f00d0ba', '2017-09-13 22:26:18', '2017-08-11 16:56:22', 'Activo'),
(738, 'Itzel de Jesús', 'Espino', 'Plancarte', 19, 2, 1, 15, 56, 'itzel_espino1997@hotmail.com', 28, 193, 4, NULL, NULL, NULL, 'SI', '0d1b240e3ddc206cba1b0fe96e1b01c67f967c32', 'ItzelEspino', '2', 'bfb3ba7ccfbe942ac2f52948fc0b2079b43d055f', '2017-08-15 15:02:56', '2017-08-11 17:09:17', 'Activo'),
(749, 'ARMANDO ', 'GONZALEZ', 'ALEJO', 27, 1, 1, 15, 102, 'kayman_arm25@hotmail.com', 25, 179, 1, NULL, NULL, NULL, 'SI', '78abd79e2f81722dbe95575184ec6f7f61504b3d', 'arman', '2', '4b00059d0b8582df62e6f461714f387de0a3b94a', '2017-08-15 15:02:56', '2017-08-11 17:50:12', 'Activo'),
(981, 'Dhirendra Kumar', 'Tiwari', 'NA', 34, 1, 2, 15, 49, 'dkt.phy@gmail.com', 125, 429, 3, 1, NULL, NULL, 'SI', 'bd0aa1d2ce4b27914bd6d8f1755d3db76c9fae48', 'dktiwari', '3', '923418d3e239501ce6ba9d90f14e0f9bd4500e4e', '2017-08-22 16:17:48', '2017-08-22 16:17:48', 'Activo'),
(951, 'Andrea Isabel', 'Rangel', 'Leal ', 22, 2, 1, 15, 56, 'airl.electro@gmail.com', 11, 86, 1, NULL, NULL, NULL, 'SI', 'c67f47b3fab48c22ad00f872893a6ed71a39f955', 'Andy18', '2', '0720b367a9c38e0e531e9cedac0bf488ec073f7a', '2017-08-21 18:23:30', '2017-08-21 18:23:30', 'Activo'),
(949, 'JAIME MARIO EDMUNDO', 'VACA', 'SERRANO', 59, 1, 1, 15, 56, 'jaimevaka@hotmail.com', 43, 335, 2, NULL, NULL, NULL, 'SI', '76a7e84a1349c2a4c2044ddb564b461e0a562f8a', 'jmevaca', '2', '7b0c938bec4f8c70666cee2406862f76dedcc21a', '2017-08-21 17:26:42', '2017-08-21 17:26:42', 'Activo'),
(742, 'GUADALUPE JESSICA', 'SALMERON', 'BARRERA', 26, 2, 1, 15, 56, 'biosgs@gmail.com', 43, 411, 1, NULL, NULL, NULL, 'SI', '50cdb710a10d087aca9039b4ec49eb18d8432524', 'Atdhm1drr1', '2', '05f889ec27f614057069c10dc5156d2c4db4d3ef', '2017-08-15 15:02:56', '2017-08-11 17:21:42', 'Activo'),
(743, 'Victor', 'Castillo', 'Gallardo', 31, 1, 1, 15, 56, 'victor1_1@hotmail.com', 43, 350, 3, NULL, NULL, NULL, 'SI', '20266b5553f8ab5e6bd433a95c172126ddce2ba3', 'Victor1324', '2', '40834abba5389317ae381638b40b806289cec8a2', '2017-09-18 17:06:03', '2017-08-11 17:33:38', 'Activo'),
(744, 'Dennis Yuliel', 'Arreguin ', 'Zaragoza', 35, 1, 1, 15, 56, 'dennis.arreguin.z@gmail.com', 15, 124, 2, NULL, NULL, NULL, 'SI', '79c153ed8a6d704f3946807dd51398b67ff1d6bb', 'dennisarreguinz', '2', '856b0bd07adc716bc5bc71c0e67d019e22fa7b4f', '2017-08-21 14:08:38', '2017-08-11 17:35:28', 'Activo'),
(745, 'JUAN DANIEL', 'CALDERÓN ', 'MONGE', 23, 1, 1, 15, 32, 'daniel-199447@hotmail.com', 13, 107, 1, NULL, NULL, NULL, 'SI', 'cbd77ba42b73d0494762ea757aac49a4e371ffdd', 'dangu', '2', '38a894225994ee509e15640d2b541bcc26c3c4d0', '2017-08-15 15:02:56', '2017-08-11 17:37:56', 'Activo'),
(746, 'Victor', 'Castillo', 'Gallardo', 31, 1, 1, 15, 56, 'victor1_1@hotmail.com', 43, 350, 3, NULL, NULL, NULL, 'SI', 'ef439a214c69dcb2d3bce5e5e677738d5a2b7bab', 'Victor1324', '2', '54406b11798606b6278b6bf63da1de0e7a71f172', '2017-09-18 17:06:46', '2017-08-11 17:38:09', 'Activo'),
(747, 'LIRENNY', 'QUEVEDO', 'TINOCO', 28, 2, 1, 15, 56, 'liqueti_29@hotmail.com', 43, 411, 3, NULL, NULL, NULL, 'NO', '0d88d14e09f8d20971797d191f065279098a69ef', 'Liqueti', '2', 'a01005f04585ef7b11554eba70392bec6abf52ec', '2017-08-15 15:02:56', '2017-08-11 17:41:10', 'Activo'),
(748, 'Samuel', 'Montufar', 'Vieyra', 25, 1, 1, 15, 56, 'ing.samuel_mv@outlook.com', 43, 341, 2, NULL, NULL, NULL, 'SI', '84a6417a2f958145f3c27a657eda898c97b0096a', 'Samuel', '2', 'a89a3c6ba61cc63e828e4cb2a5183e646ea83aef', '2017-08-15 15:02:56', '2017-08-11 17:41:12', 'Activo'),
(750, 'Reynaldo', 'Solorio', 'Salgado', 20, 1, 1, 15, 56, 'reynaldo4327@hotmail.com', 28, 193, 4, NULL, NULL, NULL, 'SI', '5f7bf943fd59faf181a2e7db2f3c6166faebc6fd', 'Reynaldo4327', '2', '4e632582047545804d69db1dd862f18451f11782', '2017-08-15 15:02:56', '2017-08-11 18:06:46', 'Activo'),
(751, 'Elizabeth', 'García', 'Cárdenas', 28, 2, 1, 15, 56, 'Lizgarcia1003@gmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', 'b7833f61256f521b79068e0c7734da26990cf8f0', 'Ellie99', '2', '8dabb4a4f5099ee11dbd6c17a5e3be6e734a31ab', '2017-08-15 15:02:56', '2017-08-11 18:17:34', 'Activo'),
(752, 'Samara Janette', 'Reyes', 'Pérez', 21, 2, 1, 15, 56, 'samara_reyes@outlook.com', 13, 108, 1, NULL, NULL, NULL, 'SI', '2593f587608c9c11ba9e5e2fa16f4013e9a91670', 'SmaraReyes', '2', '23d7ff25451741cb1e5cc3be32a9aaaea87b9214', '2017-08-15 15:02:56', '2017-08-11 18:22:51', 'Activo'),
(753, 'Sergio Andres', 'Ochoa', 'Casillas', 27, 1, 1, 15, 77, 'ochoacasillas@hotmail.com', 24, 174, 1, NULL, NULL, NULL, 'SI', '30f0b5cf30e243fd03b2defcec5f00f3a034d989', 'ochoacasillas', '2', 'a1749efa6cb89a231bacf980b5ec96d77e1872e1', '2017-08-15 15:02:56', '2017-08-11 18:30:02', 'Activo'),
(754, 'daniel ', 'filomeno ', 'hernandez', 25, 1, 1, 15, 56, 'daniel_herdez@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '072498f50245471d52cdd1f8667588b264cff133', 'daniel1991', '2', 'd6711b4c06b83b31818d102bf61c35e701252bfc', '2017-08-15 15:02:56', '2017-08-11 19:07:35', 'Activo'),
(755, 'Victor Hugo ', 'Blancas', 'Herrera', 24, 1, 1, 15, 56, 'blancashugo05@gmail.com', 43, 341, 1, NULL, NULL, NULL, 'SI', 'd2d7049caee59e76c113f8ae9a0bd4fd4457c73b', 'hugoblancas', '2', '011d2e3af3a8e49b287bc9cd6435683daac14719', '2017-08-23 16:17:08', '2017-08-23 16:22:08', 'Activo'),
(756, 'Luis', 'Rojas', 'Abarca', 37, 1, 1, 15, 49, 'qfblrojas@gmail.com', 125, 429, 1, NULL, NULL, NULL, 'SI', 'b1112700605726ede4e24f6298c5fcc2d1845daa', 'fatima03', '7', '46ec1c1b8b0b6d1f825a30a6ba8d25533794fe6d', '2017-08-15 15:03:20', '2017-08-11 19:22:37', 'Activo'),
(757, 'MARLENE ', 'DIAZ', 'CELAYA', 32, 2, 1, 15, 56, 'marlene.dc@yahoo.com.mx', 43, 412, 2, NULL, NULL, NULL, 'NO', 'c3e16877927d29583e2b72a637e6c2ef2b1ea28b', 'marlene123', '2', 'e1c41aa11f88dfbd0a446f04d691ae44ac58a6a5', '2017-08-15 15:02:56', '2017-08-11 19:32:38', 'Activo'),
(758, 'Fidel', 'Bautista', 'León', 26, 1, 1, 15, 56, 'bautleon@gmail.com', 43, 341, 1, NULL, NULL, NULL, 'SI', '752ab01f59b44a14a30742dd37df3d0c379dc06b', 'bautistaleon', '2', '280c5bbdddcc2cfa7f6eb6b80fc232142ad10b56', '2017-08-15 15:02:56', '2017-08-11 19:35:26', 'Activo'),
(759, 'Joel', 'Bonales', 'Revuelta', 21, 1, 1, 15, 56, 'jbonalesr@hotmail.com', 5, 40, 1, NULL, NULL, NULL, 'NO', '39a099340d37c59651ff547a463c360199b8659a', 'JBR96', '2', 'e4c912fee83aa702812cc3021833a4e45db3d768', '2017-08-15 15:02:56', '2017-08-11 19:51:16', 'Activo'),
(760, 'Christian Vianey', 'Paz ', 'López', 30, 2, 1, 15, 56, 'cristianvianey26@gmail.com', 43, 340, 3, NULL, NULL, NULL, 'NO', 'c4cbe05de23047799a4f792c202ee203cd72203f', 'VPaz', '2', '86395573ee5dcb979a4cbdb2f1e21af17185f6dd', '2017-08-15 15:02:56', '2017-08-11 19:58:46', 'Activo'),
(761, 'Itzel', 'Sotomayor', 'Ocampo', 26, 2, 1, 15, 56, 'itzysotocam@gmail.com', 43, 349, 1, NULL, NULL, NULL, 'SI', '71af51676bba2ecd6e15e138317860eec002b521', 'itzelsotomayor', '2', '2960c40ef33192eec196ddad60906314d187e4db', '2017-08-15 15:02:56', '2017-08-11 20:03:00', 'Activo'),
(762, 'Ana Karen', 'García', 'Rueda', 24, 2, 1, 29, 142, 'a-k_08@hotmail.com', 43, 340, 2, NULL, NULL, NULL, 'SI', 'a5be0d4cc76f87caa4a904a16139c49b84c68f95', 'AnaKaren08', '2', '3a952ac831ba4649e176336920a747b29917e986', '2017-08-15 15:02:56', '2017-08-11 20:10:08', 'Activo'),
(763, 'Diana', 'Esquivel', 'Urrieta', 30, 2, 1, 15, 32, 'dianaesquivelu@gmail.com', 43, 418, 1, NULL, NULL, NULL, 'SI', '14d026669b64ee68b9e9a99b7fce1842878a37ab', 'DianaEsquivel', '2', '4ee95194cd3accfc10804fa2774b0e3516912182', '2017-08-15 15:02:56', '2017-08-11 20:20:19', 'Activo'),
(764, 'Cuauhtemoc ', 'Reyes', 'Torres', 23, 1, 1, 15, 114, 'temoh_2394@hotmail.com', 43, 341, 1, NULL, NULL, NULL, 'SI', '7c59d1458b99b338ea36cb598988f295793c354d', 'Cuauhtemoc', '2', 'e7861f358251548dc93ef2c54cf7b9e3060966c0', '2017-08-15 15:02:56', '2017-08-11 20:40:48', 'Activo'),
(765, 'Alicia', 'Perez', 'Vieyra', 100, 2, 1, 15, 56, 'alicia.vieyra53@gmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', 'fcaecd16dbbe1e4de001baf4da0f1ac15b54a0ce', 'Aliz2810', '2', 'b00de411e7ed4f92338c809c2bb42cac9c266a98', '2017-08-15 15:02:56', '2017-08-11 20:41:51', 'Activo'),
(766, 'María Silvia', 'Aguilera', 'Ríos', 62, 2, 1, 15, 56, 'arios1281@yahoo.com.mx', 43, 346, 1, NULL, NULL, NULL, 'NO', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'MSAR', '7', '1ffcd3060d8c4c566cf0cf88d9075a610da27691', '2017-08-15 15:03:20', '2017-08-11 20:44:47', 'Activo'),
(767, 'Luis Roberto', 'Ayala', 'Ayala', 27, 1, 1, 15, 90, 'luilli_robert@hotmail.com', 43, 349, 1, NULL, NULL, NULL, 'SI', '53625c67f82d7f6765813118cba145041d6933b5', 'congresistaestatal', '2', '45ee954ef437ffa842d8122a448cc97bb6846d58', '2017-08-15 15:02:56', '2017-08-11 20:47:16', 'Activo'),
(778, 'Alexis Gerardo', 'Ruiz', 'Benitez', 21, 1, 1, 15, 56, 'alexisgerardo.ruizbenitez@gmail.com', 28, 199, 1, NULL, NULL, NULL, 'SI', 'eee600dc5db6b2d7ef92e7c85015621d5ff24321', 'AlexisGerardo', '2', '3a3199d4498c6870fae14b444677abac7dfeb7fe', '2017-08-15 15:02:56', '2017-08-11 21:22:56', 'Activo'),
(769, 'Abelardo', 'Hernandez', 'Hernandez', 24, 1, 1, 15, 56, 'abelfly93@gmail.com', 43, 336, 1, NULL, NULL, NULL, 'SI', 'f11eadca5d2138b9eee4577d2bf2ed4f9b3f0640', 'Abelardo', '2', '8fd4bc6706e0fcc1e12627262c12894437d83674', '2017-08-15 15:02:56', '2017-08-11 20:49:04', 'Activo'),
(777, 'MARIA GUADALUPE', 'PINEDA', 'PIMENTEL', 34, 2, 1, 15, 56, 'mgppqfb@gmail.com', 43, 340, 2, NULL, NULL, NULL, 'SI', 'eb0e9424314cfddfa988c5b72f135e9dea9f13a2', 'mgppqfb', '2', '5df87a8e17c609da03fe82a85bcabb753d4dbbc4', '2017-08-15 15:02:56', '2017-08-11 21:22:06', 'Activo'),
(776, 'Lorena', 'Carrillo', 'Campa', 34, 2, 1, 15, 56, 'carrillocampalorena@gmail.com', 43, 336, 1, NULL, NULL, NULL, 'SI', '4ddde6c07c5ad4badb6e6a992e6292cb88385e29', 'Lorena', '2', '0114d93747986267d3c48dfe6426405ca8742af8', '2017-08-15 15:02:56', '2017-08-11 21:13:35', 'Activo'),
(774, 'MARIA GUADALUPE', 'PINEDA', 'PIMENTEL', 34, 2, 1, 15, 67, 'mgppqfb@gmail.com', 43, 340, 2, NULL, NULL, NULL, 'SI', 'eb0e9424314cfddfa988c5b72f135e9dea9f13a2', 'mgppqfb', '2', 'd131b4f58f7bf121905f94177650a38da186efad', '2017-08-15 15:02:56', '2017-08-11 21:04:20', 'Activo'),
(775, 'MARIA GUADALUPE', 'PINEDA', 'PIMENTEL', 34, 2, 1, 15, 56, 'mgppqfb@gmail.com', 43, 340, 2, NULL, NULL, NULL, 'SI', 'eb0e9424314cfddfa988c5b72f135e9dea9f13a2', 'mgppqfb', '2', 'e7226f12de066a7a632236118262f346c5ea531b', '2017-08-15 15:02:56', '2017-08-11 21:11:04', 'Activo'),
(779, 'Alejandra', 'Ramírez', 'López', 23, 2, 1, 15, 56, 'alejandriutx@gmail.com', 115, 450, 1, NULL, NULL, NULL, 'SI', '699df979d84926a64cb1ad546972b800c65616d5', 'aramirezl', '2', '15d712603bb12be315685d7c88d0f0a140a18dfa', '2017-08-15 15:02:56', '2017-08-11 21:23:55', 'Activo'),
(780, 'jorge luis', 'sagrero', 'tinoco', 23, 1, 1, 15, 56, 'jorge_lst@hotmail.es', 43, 341, 1, NULL, NULL, NULL, 'SI', '522a0539505bcb6e84062fe569a4444dc4b750f8', 'jor', '2', '464572b1488361dc1531ee0a30db9eb392d67aad', '2017-08-15 15:02:56', '2017-08-11 21:34:16', 'Activo'),
(781, 'Aarón Giovanni', 'Munguía', 'Rodríguez', 30, 1, 1, 15, 39, 'juifrewq@gmail.com', 43, 346, 2, NULL, NULL, NULL, 'SI', 'bfb1c7874d304f66b8d9586947a1ed2ef7d3e6e0', 'juifrewq', '2', '21e115fc514e7af19c6fa1f0a5cfdb03a561f54d', '2017-08-15 15:02:56', '2017-08-11 21:35:31', 'Activo'),
(782, 'MARIA GLORIA', 'SOLIS', 'GUZMAN', 46, 2, 1, 15, 56, 'gloriasolisg@gmail.com', 43, 346, 3, NULL, NULL, NULL, 'NO', '3123ccef7c97839cff441b6df7c19471ab46d44a', 'gloriasolisg', '2', '07e0cdf06c4f13f52ab903eb285924c678c1d320', '2017-08-15 15:02:56', '2017-08-11 21:40:54', 'Activo'),
(783, 'MARIA GUADALUPE', 'PINEDA', 'PIMENTEL', 82, 2, 1, 15, 56, 'mgppqfb@gmail.com', 43, 340, 2, NULL, NULL, NULL, 'SI', 'eb0e9424314cfddfa988c5b72f135e9dea9f13a2', 'mgppqfb', '7', 'ac7e2ca535cb244d50d61ed4026bfded29fa7008', '2017-08-15 15:03:20', '2017-08-11 21:41:16', 'Activo'),
(784, 'MARIA GUADALUPE', 'PINEDA', 'PIMENTEL', 34, 2, 1, 15, 56, 'mgppqfb@gmail.com', 43, 340, 2, NULL, NULL, NULL, 'SI', 'eb0e9424314cfddfa988c5b72f135e9dea9f13a2', 'mgppqfb', '2', 'e04a6e1b1ddf7e2ca98641dfc6615bc0e25b5781', '2017-08-15 15:02:56', '2017-08-11 21:48:05', 'Activo'),
(785, 'DIEGO', 'CAMBRON', 'MORA', 23, 1, 1, 15, 56, 'diegocambron21@gmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', 'a4d2afc4408af9aac4c83cede808bec9abf96444', 'Diegocambron', '2', 'ac738cd96858d59733a4eef04c7e46c72a1642aa', '2017-08-15 15:02:56', '2017-08-11 21:49:20', 'Activo'),
(786, 'Roberto Alexander', 'Zavala', 'Ruiz', 23, 1, 1, 15, 56, 'roberto.alex.yea23@gmail.com', 43, 341, 1, NULL, NULL, NULL, 'SI', '9ac98a605c91c11a71e73b99236904088252ad73', 'RobertoAlexander', '2', '82338692ff83db340289968e3ea34588f769e944', '2017-08-15 15:02:56', '2017-08-11 21:50:34', 'Activo'),
(787, 'JOSE MANUEL', 'ZAPIEN', 'RODRIGUEZ', 32, 1, 1, 15, 51, 'zapien_jomazaro@hotmail.com', 26, 183, 3, NULL, NULL, NULL, 'SI', 'f9c266dd2ea3bfc455e97c3705a3a8391c07e8ce', 'zapien', '2', 'c3ff74b693425543ba411979479214cb8c0ea57f', '2017-08-15 15:02:56', '2017-08-11 21:50:35', 'Activo'),
(863, 'María Claudia', 'Guillén', 'Gallegos', 36, 2, 1, 15, 56, 'clausfase4@yahoo.com.mx', 43, 350, 3, NULL, NULL, NULL, 'SI', '827e55fb4221a3e8a4b1b1462134096266a16e84', 'cguillen', '2', 'f8a4920f65b6db18d2320e805ab6b416da40e922', '2017-08-15 15:02:56', '2017-08-14 15:33:33', 'Activo'),
(790, 'Asdrubal', 'Aguilera', 'Méndez', 42, 1, 1, 15, 56, 'asdruaguilera@yahoo.com.mx', 43, 411, 3, NULL, NULL, NULL, 'SI', '930f764a084b6a9ef1675ebd02d807a2c585de6f', 'asdrubal', '7', '0fcd8a0f17bcfa6060b3144de476d5f3c5c81791', '2017-08-15 15:03:20', '2017-08-11 21:59:07', 'Activo'),
(791, 'Laura Arcelia', 'Vaca ', 'Arciga', 23, 2, 1, 15, 56, 'lauravaca13@hotmail.com', 43, 341, 1, NULL, NULL, NULL, 'NO', '11f83655e028174f9d8971eb0d2c5f0baa16ae3c', 'LauraVaca', '2', '1c51341c86b4131a0d5de2447ab3021a23dc6baf', '2017-08-15 15:02:56', '2017-08-11 22:06:30', 'Activo'),
(792, 'MARIA GUADALUPE', 'PINEDA', 'PIMENTEL', 34, 2, 1, 15, 56, 'mgppqfb@gmail.com', 43, 340, 2, NULL, NULL, NULL, 'SI', 'fd591d7252268d881981c372d041ab9a702568f7', 'lupita', '2', 'ef748fe1d282716504be910765c739f171e1a74b', '2017-08-15 15:02:56', '2017-08-11 22:11:54', 'Activo'),
(793, 'Jorge Isidro Aranda', 'Aranda', 'Sánchez', 50, 1, 1, 15, 56, 'jjorge_isidro@yahoo.com', 43, 350, 3, NULL, NULL, NULL, 'SI', 'cdc743c27946185b44dd2c1b5f52da827eb76d02', 'chilo', '2', '99d613da538f3cf1df3e935b03495f418047509c', '2017-08-15 15:02:56', '2017-08-11 22:13:05', 'Activo'),
(794, 'Héctor', 'Pérez', 'Aguilar', 39, 1, 1, 15, 56, 'hiperezag@yahoo.com', 43, 350, 3, NULL, NULL, NULL, 'SI', 'a1a54a2a54a355bc23ffc5dde96dbdb2e37d3c6e', 'hiperezag', '7', '67bc1c63e11f4cd1132622c96895376c1881f754', '2017-08-15 15:03:20', '2017-08-11 22:26:34', 'Activo'),
(795, 'JOSUÉ DE JESÚS', 'GARCÍA', 'CHÁVEZ', 25, 1, 1, 15, 56, 'gacjj91@gmail.com', 43, 341, 1, NULL, NULL, NULL, 'SI', '6a8b6c648bb0d27acc0fe6030ed7ef66e56fcddd', 'JOSUE', '2', 'c72629d2feed6b39ac153d1111f37494a1b440c7', '2017-08-15 15:02:56', '2017-08-11 22:34:09', 'Activo'),
(796, 'Ana', 'Karen', 'Reyes', 25, 2, 1, 15, 56, 'akreyes92@gmail.com', 43, 350, 2, NULL, NULL, NULL, 'SI', '6e8d50829f39d5d8033f064417d14ce7bdb95d64', 'akaren92', '2', '40193afb4c9d21fb286e0dfad2cc05cbda385a71', '2017-08-15 15:02:56', '2017-08-11 22:39:00', 'Activo'),
(797, 'ADRIANA', 'RODRIGUEZ', 'HIJAR', 37, 2, 1, 13, 127, 'arh1980@hotmail.com', 43, 417, 2, NULL, NULL, NULL, 'SI', '55a65851e74d6dd6a1eff3831ad1a9a66e708b05', 'arh1980', '2', '2cbc18e89b49a981678e9a0726a7305951da38a5', '2017-08-15 15:02:56', '2017-08-11 22:50:07', 'Activo'),
(798, 'Alondra', 'ALVAREZ', 'PEREZ', 25, 2, 1, 15, 56, 'alo.alva21@gmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', 'a8ea842831e014c58a57d794de5b29867adf44b5', 'alondra92', '2', '17310756a86aba9e843f3bdf8428020f89115601', '2017-08-15 15:02:56', '2017-08-11 22:51:28', 'Activo'),
(862, 'Brenda Karina', 'Trejo', 'Saucedo', 18, 2, 1, 15, 56, 'karinasaucedo@outlook.es', 3, 31, 1, NULL, NULL, NULL, 'SI', 'd2bd1c52d15a2632e2ee377e8c41675ec52dba1e', '21530308', '7', '34c6e773969fa217ed364a4f1954a8ea174b49ad', '2017-08-15 15:03:20', '2017-08-14 14:51:01', 'Activo'),
(933, 'Elizabeth ', 'Zetter', 'Salmón', 29, 2, 1, 15, 56, 'elizabethzetter@gmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', '3db6157b6a27d7d4c981b9b9c162ee39ef601300', 'zettersalmon', '2', 'e074cb12aa5fe1e1f50783d3f2e8111538dbd866', '2017-08-18 16:58:33', '2017-08-18 16:58:33', 'Activo'),
(802, 'Arlet', 'Rodríguez', 'Orozco', 49, 2, 1, 15, 56, 'arlet.orozco@gmail.com', 132, 456, 3, NULL, NULL, NULL, 'SI', '9387535a84872127541a4699c907bbae0c5da9ce', 'Arlet', '2', 'e22ab35657690b3e0b46918b86c2b06b53cbf9a2', '2017-08-18 15:22:13', '2017-08-11 23:41:58', 'Activo'),
(932, 'Diana Patricia', 'Ferreyra', 'Corral', 27, 2, 1, 15, 56, 'diana_ferreyra16@hotmail.com', 43, 416, 2, NULL, NULL, NULL, 'SI', 'a55bb5385fa80c17fa8185ee587c85d6a2ac7326', 'Dferreyra90', '2', '99fc8b22e4a607260fb80c2c77a09041c8dd4a98', '2017-08-18 16:15:24', '2017-08-18 16:15:24', 'Activo'),
(804, 'María Teresa', 'Vizcaíno ', 'López', 41, 2, 1, 15, 56, 'mtvizcaino.umsnh@gmail.com', 43, 349, 3, NULL, NULL, NULL, 'SI', 'a7eb27c5a5bebae06ce076da98816b6d07f3ed6b', 'mtvizcaino', '2', 'f151dfc3aa8b4d55daae8733be3e05e312771661', '2017-08-15 15:02:56', '2017-08-12 00:03:50', 'Activo'),
(805, 'Esteban de Jesús ', 'Silva ', 'Barriga', 26, 1, 1, 15, 76, 'stevan_sb@hotmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', '645fbed08ff047ae2f0a26032162a3f0eb8d7904', 'EstebanSB', '2', '689bc9003ef02a2d9aa2bfdb743570d665b34c79', '2017-08-15 15:02:56', '2017-08-12 00:19:07', 'Activo'),
(806, 'Ingrid Rubi', 'Romero', 'Campuzano', 21, 2, 1, 15, 56, 'ingrid_campuzano@hotmail.com', 42, 324, 1, NULL, NULL, NULL, 'SI', 'f599421464a7ffd038a7056e86223e3df8653f8d', 'IngridRomero', '2', 'b48714c6dc2aa89231c9ca883b54d375c483fe03', '2017-08-15 15:02:56', '2017-08-12 00:38:29', 'Activo'),
(807, 'Betsabe Sinai', 'Cardiel', 'Zalapa', 20, 2, 1, 15, 68, 'gueribetsabe@gmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', '326ba3566066041cd5a20a46130535933cee6302', 'BetsyCardiel', '2', '983df96110e06125b8d5f984052501a2b0268b39', '2017-08-15 15:02:56', '2017-08-12 00:41:57', 'Activo'),
(861, 'Rogelio Elicea Manzo', 'ELICEA', 'MANZO', 22, 1, 1, 15, 44, 'rogelio_em@live.com.mx', 24, 171, 1, NULL, NULL, NULL, 'SI', '6af3e9da7be587a3d6cc9cbe02f04b3a5bda421e', 'Rogelio', '2', '08dedf42a14796e0d66f2564e97ca3d747cdfd93', '2017-08-15 15:02:56', '2017-08-14 14:28:55', 'Activo'),
(809, 'Alejandro', 'Corona', 'Diaz', 28, 1, 1, 15, 56, 'alex_corona7@hotmail.com', 43, 411, 2, NULL, NULL, NULL, 'NO', 'c409122ee5cb77c978732f69093fa9d6bb10d2c3', 'alexcorona6', '2', '4cc2800b52bd3c1fba70b227e923ccc0f67c547a', '2017-08-15 15:02:56', '2017-08-12 00:58:28', 'Activo'),
(811, 'YAZMÍN', 'CARREÓN', 'ABUD', 54, 2, 1, 15, 56, 'ycabud@gmail.com', 43, 346, 3, NULL, NULL, NULL, 'SI', 'dbf153ce4959053bbd25953262657e28a2c4c219', 'ycabud', '2', 'a3abacbfa6eea9a5bd757ac5df70a324f31ef931', '2017-08-15 15:02:56', '2017-08-12 01:20:11', 'Activo'),
(812, 'Mariana', 'Méndez', 'Paredes', 20, 2, 1, 15, 56, 'marianamp971504@hotmail.com', 5, 40, 1, NULL, NULL, NULL, 'NO', '3d897ac28b23979b0104871849cb22a10cefe313', 'congreso12', '2', '61e49e0f775cca0e7bdc27039a4c0fc689eba414', '2017-08-15 15:02:56', '2017-08-12 01:22:28', 'Activo'),
(813, 'Sandra', 'Manzo', 'Valencia', 26, 2, 1, 15, 56, 'sandra_verde_17@hotmail.com', 43, 340, 2, NULL, NULL, NULL, 'SI', '1c80a87eee691d9b2e51b4088a692b9fa2b53730', 'Sandramv', '2', '6f28c4541c9fed3b4eca100f7e39e9f042b2e32e', '2017-08-15 15:02:56', '2017-08-12 01:23:42', 'Activo'),
(814, 'Alejandra Elizabeth ', 'Alvarez', 'Farfán', 23, 2, 1, 15, 43, 'alealvarezfarfan@gmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '65f511b8820125140a6556ecfe8432563f0954ee', 'AAFarfan', '7', 'b3f4c883f8def0e1f150323770536fe44d8f7f1a', '2017-08-15 15:03:20', '2017-08-12 01:31:56', 'Activo'),
(815, 'Maximino ', 'Flores', 'Márquez', 24, 1, 1, 15, 17, 'maximino_07@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', 'aad092b7b2e3557ab866c7e4235ab82f936c9818', 'Maxi', '2', '5bcf0af709a9a5139417f00c9829cccec41facc3', '2017-08-15 15:02:56', '2017-08-12 01:34:09', 'Activo'),
(816, 'leticia', 'lopez', 'leco', 23, 2, 1, 15, 16, 'lelachida@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '5b6019d8e1ea2fe444e9c3a721daa7e7ccb90144', 'lety', '2', '2058976aa20ce98a4c8c597572683931310e1f23', '2017-08-15 15:02:56', '2017-08-12 01:41:10', 'Activo'),
(817, 'Alejandra Elizabeth ', 'Alvarez', 'Farfán', 23, 2, 1, 15, 43, 'alealvarezfarfan@gmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '65f511b8820125140a6556ecfe8432563f0954ee', 'AFarfan', '2', '4f82d1e4f35c1581f71f833937a79a783a451a4f', '2017-08-15 15:02:56', '2017-08-12 01:42:28', 'Activo'),
(818, 'Andrea Isabel', 'Rangel', 'Leal ', 22, 2, 1, 15, 56, 'airl.electro@gmail.com', 11, 86, 1, NULL, NULL, NULL, 'SI', '83e0d7f65b47e6ff04455a8a3f2d33eae6225bba', 'AIRL', '7', 'c9e0a55cc4275309d50c5846de3bbd994835ad27', '2017-08-17 15:46:28', '2017-08-12 01:44:11', 'Activo'),
(819, 'FABIAN', 'GAONA', 'SANCHEZ', 21, 1, 1, 15, 42, 'fgsx5788@gmail.com', 8, 71, 1, NULL, NULL, NULL, 'SI', '367b189af424dafcc1b1a8bfb7ad4c7286175a7a', 'GAONA', '2', 'cdda5e4a9df1ff0ffd1d7a0cd1b4a568d4884966', '2017-08-15 15:02:56', '2017-08-12 01:49:48', 'Activo'),
(820, 'JUAN', 'GUZMÁN', 'CALDERÓN', 31, 1, 1, 15, 56, 'jgcmys_1.7@hotmail.com', 43, 343, 2, NULL, NULL, NULL, 'NO', '3f5b30482f6facc4834cf918421f295159ac9446', 'jguzcal', '2', 'a5e3a59c0119dea362068fbc05f4c6ee321f9d98', '2017-08-15 15:02:56', '2017-08-12 02:09:04', 'Activo'),
(821, 'Gerardo ', 'Lucatero', 'Núñez', 25, 1, 1, 15, 42, 'gera_lucas3000@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', 'a694865b742edf3235c1b4fc180fba38f33677b1', 'Lucatero', '2', '643cd77567e532dec8dc8a435ea10a461aa98297', '2017-08-15 15:02:56', '2017-08-12 02:11:07', 'Activo'),
(822, 'Texali Candelaria', 'Garcia', 'Garduño', 22, 2, 1, 15, 56, 'tex-sec02@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', 'e2d719073ada2dbe139cd557c494bb5bd4bd039e', 'texali', '2', 'ca71d7538350a0cabe31edc52a352c2cb5500c7f', '2017-08-15 15:02:56', '2017-08-12 02:37:51', 'Activo'),
(823, 'Gisela', 'Gutiérrez', 'Barajas', 23, 2, 1, 15, 56, 'shisela_3@hotmail.com', 11, 96, 1, NULL, NULL, NULL, 'SI', 'e352b96544961cf365ad107b00870ca24074c620', 'Gisela', '2', '1a40d847202bd73abfd55592c311c191a9d1a6ac', '2017-08-15 15:02:56', '2017-08-12 02:47:49', 'Activo'),
(824, 'YAZMÍN', 'CARREÓN', 'ABUD', 54, 2, 1, 15, 56, 'ycabud@yahoo.com.mx', 43, 346, 3, NULL, NULL, NULL, 'SI', 'dbf153ce4959053bbd25953262657e28a2c4c219', 'ycabud', '2', 'f6c5daf09b2aa843321743b06ac7af3fc912e16f', '2017-08-15 15:02:56', '2017-08-12 03:05:46', 'Activo'),
(825, 'Dhirendra Kumar', 'Tiwari', 'NA', 34, 1, 2, 15, 49, 'dkt.phy@gmail.com', 125, 429, 3, NULL, NULL, NULL, 'SI', '2686eed4e7a53097dc612fd0ff6f31eb6102b15e', 'dkt', '2', 'c53f686f736a77125b1aca9799a49c3794588716', '2017-08-15 15:02:56', '2017-08-12 03:07:42', 'Activo'),
(826, 'Mario Alberto', 'Pérez', 'Méndez', 24, 1, 1, 15, 56, 'albertmendex10@gmail.com', 43, 340, 1, NULL, NULL, NULL, 'SI', 'b084049ca7734383b9d7a765f4cc3fef637eedf6', 'albertmendex', '2', '9f9ca13ccf2bcffb53b6a32f5ecf1cf618408efa', '2017-08-15 15:02:56', '2017-08-12 03:08:31', 'Activo'),
(827, 'Julieta', 'Sandoval', 'Villaseñor', 19, 2, 1, 15, 56, 'julysanv@gmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', '42ec5a09f0134f2b46729170c220acfec643c462', 'Jull', '7', '4b058fb83d24b5628571bbaefedd81256c6ad16c', '2017-08-15 15:03:20', '2017-08-12 03:15:47', 'Activo'),
(828, 'Diana Patricia', 'Solis', 'Avilés ', 20, 2, 1, 15, 39, 'patysolis47@gmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', 'f43781bd77be35228e81d811766ece321694b34b', 'paty', '7', 'b5815f1aaefed4a6ced506c635ecb31718ced600', '2017-08-15 15:03:20', '2017-08-12 03:16:35', 'Activo'),
(829, 'Samara', 'Zamudio', 'López', 20, 2, 1, 15, 56, 'samara.zamudio@gmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', '4be05c40cf716773d58063eeff04e8b3ceceff62', 'SamZam', '7', 'b804d0db7c3211f6896d16e159c2ce25a88e997c', '2017-08-15 15:03:20', '2017-08-12 03:17:19', 'Activo'),
(830, 'Lexlie Ireri', 'Rangel', 'Vázquez', 37, 2, 1, 15, 56, 'lexlie3@gmail.com', 125, 427, 3, NULL, NULL, NULL, 'SI', 'fcb2b1b8702c55dbc803a41563001dcac24884fd', 'lexlie', '2', '1d97cdff05000259924845a00a30341459de6c3b', '2017-08-15 15:02:56', '2017-08-12 03:17:38', 'Activo'),
(831, 'Abraham', 'Sauno', 'Contreras', 25, 1, 1, 15, 56, 'asauno27@gmail.com', 28, 193, 4, NULL, NULL, NULL, 'SI', 'e29b94404d483f2312ed94db5a27e0d5a192ff75', 'AbrahamSauno', '2', 'c587e44b810e1cad41097ca611f5be49918435e2', '2017-08-15 15:02:56', '2017-08-12 03:17:49', 'Activo'),
(832, 'Gabriela', 'Rios', 'Diaz', 24, 2, 1, 15, 56, 'g.r.d1993@hotmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', 'd51f369e0174d9237102c55c85879c6ce98e1810', 'gabriela10', '2', '33723a845b3a1d059322356387cb344088703e5c', '2017-08-15 15:02:56', '2017-08-12 03:22:41', 'Activo'),
(833, 'Itzel ', 'Gracia', 'García', 20, 2, 1, 15, 56, 'itzel.ggg.11@gmail.com', 5, 40, 1, NULL, NULL, NULL, 'NO', 'efcbfa1c0f71ace525cdfd6d19050852f9308ff2', 'congreso-12', '2', '1246463c2cb48979b74ec84833f0eb479bedc40e', '2017-08-15 15:02:56', '2017-08-12 03:26:11', 'Activo'),
(834, 'Edgar', 'Cárdenas', 'Escamilla', 46, 1, 1, 15, 56, 'cardenas_edgar@yahoo.com', 11, 86, 2, NULL, NULL, NULL, 'SI', '3e2ddd8df986ced82952d9a66cd3a0e7571eb2e2', 'cardenas', '2', 'c38a972635bbd3dfd247a698b9021381039e979c', '2017-08-15 15:02:56', '2017-08-12 03:27:12', 'Activo'),
(835, 'Esperanza', 'Tinoco', 'Vega', 19, 2, 1, 15, 3, 'pera_coco13@hotmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', 'f0f2f9786180b6efb3a00f2d89fc4bd7ff8ae1d4', 'Pera', '7', 'bf53fb3c8cd29bb979e9ac66253eb6b9ec2d8b14', '2017-08-15 15:03:20', '2017-08-12 03:33:59', 'Activo'),
(836, 'Luis Miguel', 'Saavedra', 'Pimentel', 29, 1, 1, 15, 56, 'lmsp_603@hotmail.com', 43, 330, 2, NULL, NULL, NULL, 'SI', '86e3c87c22bcfbb6daca770a643d2afbbfebeb35', 'LUIS', '2', '24187b8943b4f1593edb6828f3a1c26fbcfd0611', '2017-08-15 15:02:56', '2017-08-12 03:35:12', 'Activo'),
(837, 'Jonathan Alejandro ', 'García ', 'loyola', 20, 1, 1, 15, 56, 'jgl2812@gmail.com', 5, 40, 1, NULL, NULL, NULL, 'NO', '8cc73346bf19bf08c6ff3a53821f9bf4b976203d', 'enes12', '2', '1b89dedbbaca482ad9ff32afd5b71775c5dfd79a', '2017-08-15 15:02:56', '2017-08-12 03:46:08', 'Activo'),
(838, 'Ana Carolina', 'Ángel', 'del Río ', 23, 2, 1, 15, 44, 'carolina.angel@outlook.com', 8, 71, 1, NULL, NULL, NULL, 'SI', 'ac49781dde539655d5e64c034cfc36d366975568', 'CarolinaAngel', '2', 'ca4bed461ace87517c39b131dfffc449e7da061b', '2017-08-15 15:02:56', '2017-08-12 03:47:44', 'Activo'),
(839, 'JULIO CESAR ', 'MENDOZA', 'ROJAS', 42, 1, 1, 15, 104, 'merojuce@hotmail.com', 132, 456, 2, NULL, NULL, NULL, 'SI', 'ce4dffdc2e7fe503029b9a9690e234b67524b822', 'jcmrsicdet2017', '2', '2164017f31754b37e02c472a707f7fbb19296363', '2017-09-04 17:16:21', '2017-08-12 03:51:14', 'Activo'),
(840, 'Julio César', 'Orantes', 'Avalos', 42, 1, 1, 15, 56, 'julio.orantes@gmail.com', 43, 346, 3, NULL, NULL, NULL, 'SI', '7cafc9b1aefd1455c3204cbc45da013957ed7f69', 'JCOA', '2', '9fba112785d92201aa32bafcf8bb0b77e43734b5', '2017-08-15 15:02:56', '2017-08-12 03:52:04', 'Activo'),
(841, 'Sandra Estefania ', 'Garcia', 'Rueda ', 24, 2, 1, 15, 56, 'biotecsegr@hotmail.com', 43, 346, 2, NULL, NULL, NULL, 'SI', 'd1cd761b09025f35582cb1d53fb575ac70b0776c', 'SANDRA', '2', 'f7836c445984061d1213493d4ab6e8cf1a560e5a', '2017-08-15 15:02:56', '2017-08-12 03:56:50', 'Activo'),
(842, 'Sandra Estefania ', 'Garcia', 'Rueda ', 24, 2, 1, 15, 56, 'biotecsegr@hotmail.com', 43, 346, 2, NULL, NULL, NULL, 'SI', 'd1cd761b09025f35582cb1d53fb575ac70b0776c', 'SandraE', '2', '4fd264549b3b3cad138f865d9ec581d087b69795', '2017-08-15 15:02:56', '2017-08-12 04:00:59', 'Activo'),
(843, 'blanca vanessa', 'carrillo', 'tello', 23, 2, 1, 15, 69, 'vaneza.carrillo94@gmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '289ff4feb6b7aa5916e52d26c4c6a0c0531be804', 'vanessacarrillo1994', '2', '63bd972ba2e257e4861f876f47c2ccb1f12c1b6d', '2017-08-18 14:46:04', '2017-08-12 04:16:48', 'Activo'),
(844, 'isela', 'navarro', 'alatorre', 39, 2, 1, 15, 49, 'jesliz28@hotmail.com', 9, 72, 1, NULL, NULL, NULL, 'SI', 'b5a3c6a500e43f9d6b17012c22970e99cd61ed7a', 'iselana', '2', '98e16877ce5d98f6f8e3b9367e89b4683b41120e', '2017-08-15 15:02:56', '2017-08-12 04:21:27', 'Activo'),
(845, 'Luis Bernardo', 'López ', 'Sosa', 28, 1, 1, 15, 56, 'ecoberso@gmail.com', 43, 417, 3, NULL, NULL, NULL, 'NO', '8cc73346bf19bf08c6ff3a53821f9bf4b976203d', 'bernas10', '2', '34e2c4a1ab50b0d7176e05699739c3d841c987e0', '2017-08-15 15:02:56', '2017-08-12 04:23:25', 'Activo'),
(847, 'Yuliana', 'Silva', 'Romero', 28, 2, 1, 15, 56, 'liy_3000@hotmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', '25e6dc00b6029773957a9fa24c35009d2c114838', 'yulianasilva', '2', 'd6d77d5a0e25b10bc7b595c1277509e8914e4c9f', '2017-08-15 15:02:56', '2017-08-12 04:54:22', 'Activo'),
(848, 'omar ', 'Guzmán ', 'quevedo', 37, 1, 1, 15, 83, 'gquevedomar@gmail.com', 43, 344, 3, NULL, NULL, NULL, 'SI', '649b0a8e1575b2f0826c22e7bc29439728b19f92', 'omarguzmanquevedo', '2', '554ee6de4ca59f29153fd47f49b86bdc94f1e8a6', '2017-08-15 15:02:56', '2017-08-12 04:56:14', 'Activo'),
(849, 'JULIO CESAR', 'MENDOZA', 'ROJAS', 39, 1, 1, 15, 104, 'merojuce@hotmail.com', 132, 456, 2, NULL, NULL, NULL, 'SI', '71d3b42922c26f9a04693d82a65e88b72fafa5e9', 'jcmr2017', '7', 'c6bd0559185cd7e9a410ed314b5032f60b6f1312', '2017-08-15 15:03:20', '2017-08-12 05:06:02', 'Activo'),
(850, 'Narda Paola', 'Reyes', 'Medina', 26, 2, 1, 15, 56, 'npreymed@gmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', '71d3facbaf2c64f61631bd29ba3977f56cd7bdd3', 'nardareyes', '2', '2f47bff53916bf7dd943526a80ba3e07dbd529b0', '2017-08-15 15:02:56', '2017-08-12 05:07:32', 'Activo'),
(851, 'PAULINA', 'RODRIGUEZ', 'FLORES', 32, 2, 1, 15, 56, 'linauap@hotmail.com', 43, 340, 1, NULL, NULL, NULL, 'SI', 'd421f5bc5928eb56c18752b4ebc5fde933252fe0', 'linauap', '2', 'ff64260cc314ea26d9b33cc685d86d30e556dc26', '2017-08-15 15:02:56', '2017-08-12 05:18:30', 'Activo'),
(852, 'ANACAREN', 'PAZ', 'COBARRUVIAS', 21, 2, 1, 15, 86, 'anacaren_1608@hotmail.com', 8, 66, 1, NULL, NULL, NULL, 'NO', '370ba535870325711fdd5cb6c807234a6483c4ba', 'anacaren', '7', 'd64a6ce650400d65570173376072d32867997143', '2017-08-15 15:03:20', '2017-08-12 05:21:04', 'Activo'),
(853, 'KENYA ANAYENCY', 'CASILLAS', 'MEZA', 30, 2, 1, 15, 56, 'kenya.casillas@hotmail.com', 43, 343, 2, NULL, NULL, NULL, 'SI', 'b65604f1e0fd32418b28571d5f19cb3fbc8d068f', 'kcasillasm', '2', '9f1deee529f845fb2f86ad1066d0d4aa781cdfc2', '2017-08-15 15:02:56', '2017-08-12 06:03:04', 'Activo'),
(854, 'Humberto', 'Prado', 'Lázaro', 28, 1, 1, 15, 110, 'humberto.prado.lazaro@gmail.com', 11, 95, 1, NULL, NULL, NULL, 'NO', '852eac6578cc691d34ea5cd66ae8543ed8a227e5', 'BetoPrado', '2', '8fc26dcd6fbf06ccae5a42d99f4d2d55c92ad845', '2017-08-15 15:02:56', '2017-08-12 06:32:24', 'Activo'),
(855, 'Luis', 'Enrique ', 'Aburto', 20, 1, 1, 15, 56, 'henry_leao97@hotmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', '01429cd780be2ec856cea5d3308072713501d15a', 'Leao777', '7', '577cecdbe654bca381e9dbe2a9fcfcaa67f5ba7b', '2017-08-15 15:03:20', '2017-08-12 11:58:17', 'Activo'),
(856, 'Luis Enrique', 'Aburto', 'Ortiz', 20, 1, 1, 15, 56, 'henryleao97@gmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', '01429cd780be2ec856cea5d3308072713501d15a', 'Leao7', '7', '0f34267de0b67f0b990c2e66fa99cfeed9b3289b', '2017-08-15 15:03:20', '2017-08-12 12:09:23', 'Activo'),
(857, 'jonanci', 'arreola', 'rivera', 24, 2, 1, 15, 56, 'jonanci.arreola@gmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', '20fe3adea5f73d3d923bfba2ff8cd2c4113e874b', 'jonanci92', '2', '40276a72defcbf7e1c21db0b62261fe2b35845d1', '2017-08-15 15:02:56', '2017-08-12 20:07:19', 'Activo'),
(864, 'Daniel', 'Rojas', 'Solis', 29, 1, 1, 15, 104, 'daniel_rojas21@hotmail.com', 43, 411, 3, NULL, NULL, NULL, 'SI', '37d882238b1cec68842bf967f2ac011ea050efdf', 'DanielRojasSolis', '2', '0118b72f1119a58d122e702e535736c47946857b', '2017-09-04 17:13:29', '2017-08-14 16:27:28', 'Activo'),
(860, 'Diana Patricia', 'Ferreyra', 'Corral', 27, 2, 1, 15, 56, 'diana_ferreyra16@hotmail.com', 43, 416, 2, NULL, NULL, NULL, 'SI', 'a55bb5385fa80c17fa8185ee587c85d6a2ac7326', 'Dferreyra', '2', '34840f5f1a54b52d0ea075a3f230d880810379f8', '2017-08-15 15:02:56', '2017-08-13 21:45:26', 'Activo'),
(865, 'Nuria', 'Gomez', 'Dorantes', 32, 2, 1, 15, 90, 'nuriah@live.com.mx', 43, 412, 3, NULL, NULL, NULL, 'SI', 'd9fdc2c9f737257dd44482fc2300e59829f964ac', 'nuriag', '2', '4e37c7e7861c707a290287400d437b1da85ac7e1', '2017-08-15 15:02:56', '2017-08-14 17:40:57', 'Activo'),
(866, 'Nuria', 'Gómez', 'Dorantes', 32, 2, 1, 15, 90, 'nuriah@live.com.mx', 43, 412, 3, NULL, NULL, NULL, 'SI', 'd9fdc2c9f737257dd44482fc2300e59829f964ac', 'nuriag1', '7', '4b89340545573bd02ab49f549527086ccadc9c1c', '2017-08-15 15:03:20', '2017-08-14 17:47:53', 'Activo'),
(867, 'Valentin', 'Toro', 'Castillo', 21, 1, 1, 15, 77, 'rjimenez2410@gmail.com', 24, 174, 1, NULL, NULL, NULL, 'SI', '1d59721d8e3f37d74e81290ee6c2a1d337c910e9', 'rjimenez', '2', 'e0dd4e11d7c4afb6e5f2bba6eb28be31e54eaf41', '2017-09-06 16:45:43', '2017-09-06 16:50:43', 'Activo'),
(868, 'Luis Armando', 'Ochoa', 'Franco', 59, 1, 1, 15, 56, 'luis1a1@yahoo.com', 43, 341, 3, 7, NULL, NULL, 'SI', '25c3ce33ea2c90584a3ce82fc38dcfad01b55c4f', 'evaluador', '3', '1036821cf679ab985fc10fe554215c973c86b6ba', '2017-08-15 15:03:07', '2017-08-14 19:43:12', 'Activo'),
(869, 'Luis Armando', 'Ochoa', 'Franco', 59, 1, 1, 15, 56, 'luis1a1@yahoo.com', 43, 341, 3, NULL, NULL, NULL, 'NO', 'edb88df17dc3ef98021c16e98fb713a6a683c19f', 'asistente1', '7', '77a8dc4f587538db36d38c6508ca18ecfe706548', '2017-08-15 15:03:20', '2017-08-14 19:52:13', 'Activo'),
(870, 'Jessica', 'Bravo', 'Ramírez', 26, 2, 1, 15, 56, 'jess_1206@hotmail.com', 43, 349, 2, NULL, NULL, NULL, 'SI', '739c7cbc4c195e6fe9ada5a4c14d9ce71b19ef6b', 'Lola333', '2', '6ea0faddb611ffdf4220e9bd49f8e76f2886aa9b', '2017-08-15 15:02:56', '2017-08-14 20:18:14', 'Activo'),
(871, 'Alistair', 'Hernández', 'Izquierdo', 22, 1, 1, 15, 56, 'ali2607_jnd@live.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '271196e85f67b6997e41623e35931be403ccb6b1', 'Alistair', '2', 'e6f95cbd58b8de067dc58a87b0ece27b04b59a09', '2017-08-15 15:02:56', '2017-08-14 20:36:22', 'Activo'),
(872, 'Alistair', 'Hernández', 'Izquierdo', 22, 1, 1, 15, 56, 'ali2607_jnd@live.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '271196e85f67b6997e41623e35931be403ccb6b1', 'Alistair1', '7', '8c4874d9c9a027f24876a5ac58454a6577a6519c', '2017-08-24 14:56:24', '2017-08-14 20:47:38', 'Activo'),
(873, 'Mario', 'Salgado', 'Chávez ', 18, 1, 1, 15, 56, 'mtromariosc@gmail.com', 43, 336, 2, NULL, NULL, NULL, 'SI', 'c6a2be818067037b48d94d090c040f7e8a658ad9', 'MarioSC', '2', '2ec1345276661113073a8d3d853d777848f0c18c', '2017-08-15 15:02:56', '2017-08-14 21:20:30', 'Activo'),
(874, 'Dante', 'Salgado', 'Álvarez ', 18, 1, 1, 15, 56, 'mtromariosc@gmail.com', 132, 456, 4, NULL, NULL, NULL, 'SI', 'c6a2be818067037b48d94d090c040f7e8a658ad9', 'DanteSA', '7', '459b7074c364af95cbef9f1422e3f647cb0b4769', '2017-08-15 15:03:20', '2017-08-14 21:48:27', 'Activo'),
(890, 'Alejandro', 'Romero', 'Bautista', 49, 1, 1, 12, 126, 'acls68059@hotmail.com', 13, 107, 3, NULL, NULL, NULL, 'SI', '8b3f8d3a1888ae21c03002963e58489a47d751de', 'CALUSO', '2', 'e688d3b98350adad8b7342808f7969318ecf1af5', '2017-08-15 15:02:56', '2017-08-15 14:10:24', 'Activo'),
(876, 'José Eduardo', 'Yépez', 'Torres', 62, 2, 1, 15, 90, 'yete54@hotmail.com', 13, 107, 2, NULL, NULL, NULL, 'SI', '2aad122d0efe29de8f572dd37f6c06dd6d01f8e7', 'joseeduardoyepeztorres', '2', '4639fc480c70e7fa545123ecb02d8b78e95aa603', '2017-08-15 15:02:56', '2017-08-14 23:03:47', 'Activo'),
(892, 'Miriam', 'Vázquez', 'Padilla', 23, 2, 1, 15, 56, 'miriamroyal7@gmail.com', 43, 329, 1, NULL, NULL, NULL, 'SI', '0e68b7e1beade3a4554eea0604215242fb74dc57', 'MiriamVaP', '2', 'daf50c790693d13203990a9a371d57ecd0c2b346', '2017-08-15 18:00:46', '2017-08-15 18:00:46', 'Activo'),
(880, 'JESÚS ARMANDO', 'LUCAS', 'BAUTISTA', 29, 1, 1, 15, 44, 'lukairo21@hotmail.com', 132, 456, 2, NULL, NULL, NULL, 'SI', '12848a023ef6853faaf0734d378cc59641f46c8d', 'Lucas', '2', '9f5044e7228ee2d49a459bc57835c6a36ea07079', '2017-08-15 15:02:56', '2017-08-15 00:56:20', 'Activo'),
(881, 'ZURISADDAI', 'HERNANDEZ', 'GALLEGOS', 51, 1, 1, 15, 56, 'zhernand2003@yahoo.com.mx', 43, 411, 3, NULL, NULL, NULL, 'SI', '673ae6e5978d31a65f01d0af6af60abb539ef256', 'zurisaddai', '7', '0df075ec2fcd2c859523e1f03646ab1eeaf85987', '2017-08-15 15:03:20', '2017-08-15 01:21:45', 'Activo'),
(882, 'Janelory Yunuen', 'Barbosa', 'Garibo', 33, 2, 1, 15, 56, 'barbosayk4@gmail.com', 5, 43, 1, NULL, NULL, NULL, 'SI', 'e73c8a7dfb9f06679da5d1212789e087e7b5bd2b', 'YunuenBarbosa', '2', '5e027936fb2ec3d3a84f0cfe2fbc2cc43d0710cc', '2017-08-15 15:02:56', '2017-08-15 01:31:38', 'Activo'),
(883, 'César Alfredo ', 'Domínguez', 'Gabriel', 25, 1, 1, 15, 56, 'cerk08_@hotmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', '0b7ccb7eb7650c64f17a3dbd1c4daa7058ba0a2e', 'cesardominguez', '2', '6c3047d621e5fdb692ef3ed2dc5a49b8ae8acab8', '2017-08-15 15:02:56', '2017-08-15 01:44:15', 'Activo'),
(884, 'Andrea Itzayana ', 'Barbosa', 'Martínez', 23, 2, 1, 15, 56, 'andreaa.bmtz@live.com', 28, 199, 4, NULL, NULL, NULL, 'SI', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'Itzayana', '2', '558a4397228b173e8fdb4a6977eb8d47fc326bcf', '2017-08-15 15:02:56', '2017-08-15 02:23:24', 'Activo'),
(885, 'Andrea Itzayana ', 'Barbosa', 'Martínez', 23, 2, 1, 15, 56, 'andreaa.bmtz@live.com', 28, 199, 4, NULL, NULL, NULL, 'SI', '9600333079f74e35fef67419d6a9c5e0ca8c7ad1', 'Itzayanaa', '2', 'd2470712cc6e58016a8fdf4daf7323ef336b464e', '2017-08-15 15:02:56', '2017-08-15 02:30:33', 'Activo'),
(886, 'Ana Karen', 'Villagómez', 'Guzmán', 27, 2, 1, 15, 56, 'kvillagomez@live.com', 43, 411, 2, NULL, NULL, NULL, 'SI', '14fa4606d803583becbf251fed7121f29fa0b9ed', 'karen1989', '2', '4872e667e974abae83f2f125b4cc27afcb739ade', '2017-08-15 15:02:56', '2017-08-15 02:42:13', 'Activo'),
(887, 'Ana Karen', 'Villagómez', 'Guzmán', 27, 2, 1, 15, 56, 'kvillagomez@live.com', 43, 411, 2, NULL, NULL, NULL, 'SI', '14fa4606d803583becbf251fed7121f29fa0b9ed', 'karen1989', '7', 'ceaf57c063f6c0c445b3938a17fb8a727d57d4a9', '2017-08-15 15:03:20', '2017-08-15 02:48:16', 'Activo'),
(888, 'ESTEFANY', 'DURÁN', 'ROJAS', 21, 2, 1, 15, 56, 'fanny_dr23@hotmail.com', 28, 199, 1, NULL, NULL, NULL, 'SI', 'e80fc732505b041afdd5875a939c48c35fabc24f', 'Estefany', '2', '100f7852b4ac2c6b1a752759aba5f6edb206d0f5', '2017-08-15 15:02:56', '2017-08-15 02:54:27', 'Activo'),
(889, 'Miriam Verónica', 'cervantes ', 'castro', 21, 2, 1, 15, 109, 'mimi.cervantes@outlook.es', 11, 93, 1, NULL, NULL, NULL, 'SI', 'e8166671a0b436a43b9e93b1c81afe57cdc381cb', 'CERVANTES', '7', '3e1d6ee0237fad36db8be5d95d7ef569e7bcf62e', '2017-08-15 15:03:20', '2017-08-15 03:54:52', 'Activo'),
(893, 'Paulo César', 'Navarrete', 'González', 25, 1, 1, 15, 110, 'paulo.navarrete.gonzalez@hotmail.com', 43, 341, 1, NULL, NULL, NULL, 'SI', '64f3f644780cf05367691191ceb1d282ac6c2c8a', 'paulo432', '2', 'c0d38bf4a7d955a36640bf0d3d951b2da9135d84', '2017-08-15 18:17:38', '2017-08-15 18:17:38', 'Activo'),
(894, 'Ana Karen ', 'Calderón ', 'Ordaz', 24, 2, 1, 15, 56, 'ana_karen_246@hotmail.com', 43, 340, 1, NULL, NULL, NULL, 'SI', '000aeac08381b47827282c09f5da295516146647', 'AnaKaren246', '2', 'b7052241343642075e2948797a9cf3cdc1eafa89', '2017-08-15 22:29:41', '2017-08-15 22:29:41', 'Activo'),
(895, 'Carlos Alberto', 'Colin', 'Sánchez', 21, 1, 1, 15, 56, 'betoodysey@gmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '13768c1dcc6c5df8a57a8c627df30387300380dc', 'Alberto1', '2', 'ae70a914b467ebc9c92e36d4f1135e4173302ec7', '2017-08-15 23:02:26', '2017-08-15 23:02:26', 'Activo'),
(896, 'Luis Miguel', 'Miranda ', 'Vieyra', 22, 1, 1, 15, 56, 'lmmv19950825@gmail.com', 43, 344, 1, NULL, NULL, NULL, 'NO', '45c2b63b22d79b30cc1e9a0baa01a7bfaeb3ead2', 'quimicovieyra', '2', '0605e9da4cbc67d0f82122a7b0a3961f418a12ef', '2017-08-15 23:13:40', '2017-08-15 23:13:40', 'Activo'),
(897, 'MIGUEL ANGEL', 'GARCIA', 'RUELAS', 23, 1, 1, 15, 56, 'angel.ruelitas03@gmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '2919678b3bdacfa66f276f2b82b99e26a7b2309d', 'angel666', '2', '11664e22780b36b2e24638663c3fd0035da55635', '2017-08-15 23:16:03', '2017-08-15 23:16:03', 'Activo'),
(898, 'Sergio Alejandro', 'Ayala', 'Ramírez', 24, 1, 1, 15, 56, 'jando_muert@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '0483c750e0eb9df0ba9fe1755f7cc4c54a4054e0', 'jano1', '2', 'caa6c4d261332ceaaac02e55816c01aa91db6b1a', '2017-08-15 23:23:39', '2017-08-15 23:23:39', 'Activo'),
(899, 'Ana Bertha ', 'Espinosa', 'Chavez', 23, 2, 1, 15, 56, 'anni_esp@yahoo.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '4b5592236c31fece7fd433ae22d2d3ce533dd048', 'anni1', '2', 'bc5e6a0e1a3dc819a12bf974213b8c319ab7f03f', '2017-08-15 23:49:38', '2017-08-15 23:49:38', 'Activo'),
(900, 'Ana Bertha', 'Espinosa', 'Chavez', 23, 2, 1, 15, 56, 'anni_esp@yahoo.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '4b5592236c31fece7fd433ae22d2d3ce533dd048', 'Bertha1', '7', '99a844c4a35a5b87e8d9c080aaa5bf5402563d1e', '2017-08-16 00:06:56', '2017-08-16 00:06:56', 'Activo'),
(901, 'Luz Elena Alfonsina', 'Avila', 'Calderón', 46, 2, 1, 15, 56, 'lea.avilacalderon@gmail.com', 43, 338, 2, NULL, NULL, NULL, 'SI', '5f37ffab8f1dc73eb6935d6ce254cb0f57178509', 'lavilacalderon', '7', '61910dd07a847bdaa59a230ba8506792cc68ff15', '2017-08-16 00:49:46', '2017-08-16 00:49:46', 'Activo'),
(902, 'María Guadalupe Josefina ', 'Nuncio', 'Ochoa', 56, 2, 1, 15, 56, 'kaab5@yahoo.com.mx', 13, 107, 3, NULL, NULL, NULL, 'SI', '0a967ccb1f7febebc4890cbf0ac60eeca1b4648c', 'GuadalupeNuncio', '2', '31e91338f98498b22fdf3d8afde42e308695a1e8', '2017-08-16 01:37:00', '2017-08-16 01:37:00', 'Activo'),
(903, 'Carlos', 'Colín', 'Sánchez', 21, 1, 1, 15, 56, 'betoodysey@gmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', 'b8351f5d0d334a1e26cfac250f3ef36d174454d4', 'Alberto2', '7', '2df67dff5782f5d4e4e3195343d212f977acfa88', '2017-08-16 03:06:50', '2017-08-16 03:06:50', 'Activo'),
(904, 'Carlos Alberto', 'Colín', 'Sánchez', 21, 1, 1, 15, 56, 'betoodysey@gmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '04e5db6b21399efa8baac8cf45265a4cd039b7bc', 'Alberto3', '7', 'bbeaf47982483daff3aaace4dcb73b0e97117ba3', '2017-08-16 03:15:13', '2017-08-16 03:15:13', 'Activo'),
(905, 'José Gerardo Alejandro', 'Ceballos', 'Corona', 59, 1, 1, 15, 56, 'jgaceballos@hotmail.com', 43, 346, 2, NULL, NULL, NULL, 'SI', 'c48d26160d8a354d5d2d87f4067d08fac4abb53c', 'jgaceballos', '2', 'd5ce25740fbb345e142b3318b5375aee1bf77f60', '2017-08-16 16:59:29', '2017-08-16 16:59:29', 'Activo'),
(906, 'Rebeca', 'Flores', 'Magallon', 43, 2, 1, 15, 44, 'rbk_fm@hotmail.com', 132, 456, 3, NULL, NULL, NULL, 'SI', '80d388268717c9c6b9f96679a343ba9c3fbb7fd7', 'rbkflores', '2', 'bb1ebc9f381f3cc47f552260972f7bb3a2cfdf24', '2017-08-16 17:10:58', '2017-08-16 17:10:58', 'Activo'),
(907, 'Andrea', 'Alcalá', 'Ferreira', 25, 2, 1, 15, 56, 'ing.alcala.f@gmail.com', 43, 341, 2, NULL, NULL, NULL, 'NO', '0ac20f79285dc258bcac9895d1f70d759eef044f', 'AndreaAF', '2', 'a6d3f1a4f56d3b38e8347645d3324a80cf7fa854', '2017-08-16 18:33:03', '2017-08-16 18:33:03', 'Activo'),
(908, 'Braulio Alberto', 'Lemus', 'Soriano', 41, 1, 1, 15, 104, 'lemus9@yahoo.com.mx', 43, 347, 2, NULL, NULL, NULL, 'SI', '48575ca488e7250fd7bfb6478594fd6da8870b29', 'lemus9', '7', '0e5eb4133431fe56721215f5822d9cbd34b2d91a', '2017-08-16 19:18:18', '2017-08-16 19:18:18', 'Activo'),
(912, 'leslie mirelle', 'castillo', 'lopez', 18, 2, 1, 15, 56, 'bruja_miris@hotmail.es', 3, 31, 1, NULL, NULL, NULL, 'NO', '5af5e6d7a1981a179b4c1b01effbbd1600092563', 'Leslie', '7', 'b710cc4a53dd58a4c4e70630aa763df01057e8f6', '2017-08-17 00:52:57', '2017-08-17 00:52:57', 'Activo'),
(911, 'David ', 'Espinosa', 'Gómez', 29, 1, 1, 15, 56, 'despinosa3187@gmail.com', 132, 456, 3, NULL, NULL, NULL, 'SI', 'b7de3c889a723746abcd44357d676447f7e52158', 'despinosa3187', '2', '33f7421728ce4a0945c831117a4f7836ce0568aa', '2017-08-16 20:27:17', '2017-08-16 20:27:17', 'Activo'),
(913, 'Gerardo Adad', 'Palomares', 'Avila', 47, 1, 1, 15, 56, '130adad@gmail.com', 132, 456, 4, NULL, NULL, NULL, 'NO', '0a5c11c0ef15a8e38e240b26085fde0e905f79fa', '13130', '7', '0e4d3ce09d96ed424127e371c78edfe623d3e1b5', '2017-08-17 02:20:59', '2017-08-17 02:20:59', 'Activo'),
(914, 'Diego ', 'Ortiz ', 'Corza', 22, 1, 1, 15, 56, 'Diego.ortiz.corza@outlook.es', 11, 93, 1, NULL, NULL, NULL, 'SI', 'ee943200205312563a051f50585fa93e47c33b38', 'DiegoOrtiz', '2', 'e214ae529694c355883f1a81703c43439db99cb4', '2017-08-17 03:05:26', '2017-08-17 03:05:26', 'Activo'),
(915, 'REBECA ', 'GONZALEZ', 'VILLEGAS', 36, 2, 1, 15, 56, 'leun21@hotmail.com', 13, 107, 3, NULL, NULL, NULL, 'SI', '80187c5e04d93452d934a4c2c9faed653c9f6851', 'REBECA', '2', 'fdd0ebc36b4222b779a9573cb991f6259265fc00', '2017-08-17 05:39:11', '2017-08-17 05:39:11', 'Activo'),
(916, 'SAUL', 'PARDO', 'MELGAREJO', 27, 1, 1, 15, 58, 'www.pardos.com@hotmail.com', 107, 454, 2, NULL, NULL, NULL, 'SI', '6ee1dad767913fa582951bb0421f7c3caf839bfc', 'SAULPARDO1990', '2', '9d76c2a9dba05cd63c2e8d463cfbed09b7b1c9e6', '2017-09-20 19:14:22', '2017-08-17 14:21:13', 'Activo'),
(917, 'JOSE NICANOR', 'FELIPE', 'PAULINO', 31, 1, 1, 15, 70, 'jpaulino.jnfp@gmail.com', 19, 140, 1, NULL, NULL, NULL, 'SI', '326f663eeb0a324b4b6b852d937117f567b723c2', 'nika', '2', 'cec6bcce2eada6bec6cf3dcac44df343be79c5fd', '2017-08-17 14:53:50', '2017-08-17 14:53:50', 'Activo'),
(918, 'Héctor Manuel ', 'Arreaga', 'González', 28, 1, 1, 15, 56, 'arreaga_qfb@hotmail.com', 43, 411, 3, NULL, NULL, NULL, 'SI', 'f060ae3493cf4b12a35374af32744c0ad5cfe5d2', 'Hectormanuelarreaga', '2', '9873f9eac83e86470ea1853f051b3a719a66fe44', '2017-08-17 14:57:36', '2017-08-17 14:57:36', 'Activo'),
(919, 'Rogelio', 'Elice', 'Manzo', 22, 1, 1, 15, 44, 'rogelio_em@live.com.mx', 24, 171, 1, NULL, NULL, NULL, 'SI', '6c0bbbfef5469a66d9afebf31a575dc66869592d', 'ELICEAMANZO', '2', '8956549cdf2b24fce2334fbb885eb39b24a02191', '2017-08-17 15:56:17', '2017-08-17 15:56:17', 'Activo'),
(920, 'jesús adrián  ', 'Barajas', 'González', 29, 1, 1, 15, 44, 'jbarajas087@gmail.com', 103, 373, 2, NULL, NULL, NULL, 'SI', '96c275668cb45e68bd19bc8f82a6087be25598aa', 'adrian087', '2', '0022ce68282097937325d83e9470518ed8d13e01', '2017-08-17 16:26:30', '2017-08-17 16:26:30', 'Activo'),
(921, 'Lorena Zuleima', 'Naranjo ', 'Padilla', 20, 2, 1, 15, 49, 'zuleima_music27@hotmail.com', 9, 77, 1, NULL, NULL, NULL, 'SI', '826380659e31ac96579c9715a7301732951a8ced', 'Zuleima', '2', 'f8c50348feeb020b7a89e5be189cff674781a8d8', '2017-08-17 16:42:36', '2017-08-17 16:42:36', 'Activo'),
(922, 'Mayra Melissa', 'Villegas ', 'Acosta', 20, 2, 1, 15, 49, 'harrypotterpollito@hotmail.com', 9, 77, 1, NULL, NULL, NULL, 'SI', '826380659e31ac96579c9715a7301732951a8ced', 'Melissa', '7', '02bf52230009185f837c2bb64915c1e0ab7d6dae', '2017-08-17 16:54:37', '2017-08-17 16:54:37', 'Activo'),
(923, 'Maria Dolores', 'Espitia', 'Ortega', 20, 2, 1, 15, 49, 'lolitaespitiao@hotmail.com', 9, 77, 1, NULL, NULL, NULL, 'SI', '826380659e31ac96579c9715a7301732951a8ced', 'Lolita', '7', 'b1673eb715ba0b51e7f303cf8d0796dc9cb46294', '2017-08-17 17:00:30', '2017-08-17 17:00:30', 'Activo');
INSERT INTO `usuarios` (`id_usuarios`, `nombre`, `a_paterno`, `a_materno`, `edad`, `genero`, `nacionalidad`, `estado`, `municipio`, `email`, `institucion`, `facultad`, `nivel`, `mesa`, `modalidad`, `area_id`, `mailing`, `password`, `username`, `puesto`, `token`, `created_at`, `request_token`, `status`) VALUES
(924, 'Luis Eduardo ', 'Puente', 'Díaz', 29, 1, 1, 15, 56, 'fmatpuente@gmail.com', 43, 350, 2, NULL, NULL, NULL, 'SI', '926c6faffd5ae8a5768240f2a3ba0993697e0c3c', 'puente17', '2', '8e944ea69e2321890cf86580c49b418af9c64664', '2017-09-15 15:11:38', '2017-08-17 18:28:57', 'Activo'),
(925, 'Juan Manuel', 'Santana', 'Flores', 26, 1, 1, 11, 125, 'juanmanuel_santa@hotmail.com', 43, 341, 2, NULL, NULL, NULL, 'NO', '6d625667d542698bec7f308ab2625cd2e38ff4b5', 'SANTANA', '2', '2eda292cdbdba0ce1552f80c9506f80ee0bb3054', '2017-08-17 19:19:26', '2017-08-17 19:19:26', 'Activo'),
(927, 'Jonatan', 'Vargas', 'Moreno', 22, 1, 1, 15, 110, 'jonatan_vmoreno@hotmail.com', 130, 405, 1, NULL, NULL, NULL, 'SI', 'd1997d540d24dfa71fe49f443a420a85df60d6c4', 'Jonatan', '2', '65ef68554faa0f6949439a82c18080b2fea04ce8', '2017-08-17 20:12:31', '2017-08-17 20:12:31', 'Activo'),
(928, 'Laura Susana', 'Ríos', 'Guzmán', 24, 2, 1, 15, 44, 'laura2405rios@hotmail.com', 103, 373, 1, NULL, NULL, NULL, 'SI', '9e92f522f46124d19e36e3ad049cf78022faaca5', 'LauraSusana', '2', 'ab3622405f13f4f19087dda6c6f26da20d033f69', '2017-08-17 21:18:12', '2017-08-17 21:18:12', 'Activo'),
(929, 'Sergio Alejandro', 'Ayala', 'Ramírez', 24, 1, 1, 15, 56, 'jando_muert@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'jando', '7', '1e78e5071126ae3012dfaff313452c1aeefed2d5', '2017-08-17 22:35:47', '2017-08-17 22:35:47', 'Activo'),
(930, 'Sergio Alejandro', 'Ayala', 'Ramírez', 24, 1, 1, 15, 57, 'jando_muert@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', 'c44166c47208b8c3e7cb109edcebdcb345e84e20', 'jando', '7', '6247e69868becca75cb630ca18988c28669b804b', '2017-08-17 22:41:30', '2017-08-17 22:41:30', 'Activo'),
(931, 'Julio Cesar', 'Pardo ', 'Novoa', 29, 1, 1, 15, 56, 'pardonovoa@hotmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', '03c7eaa1fa65eee13c78de81c420723daaa171ac', 'pardonovoa', '2', '813f747c409bb3e6200a62104cf60f8aa0ce019f', '2017-08-18 13:08:13', '2017-08-18 13:08:13', 'Activo'),
(936, 'Luis Felipe', 'Figueroa', 'Gallardo', 24, 1, 1, 15, 56, 'terpefindgri@gmail.com', 43, 329, 1, NULL, NULL, NULL, 'SI', 'e52323105a7fb9890b3a75ac7c42910f28faddb6', 'BODYCRUNCH', '7', 'b6e8c9881e2b3dba1488f058ba5f9e689708744f', '2017-08-18 19:27:14', '2017-08-18 19:27:14', 'Activo'),
(935, 'MARIO ALBERTO', 'MIRANDA', 'SALCEDO', 41, 1, 1, 15, 6, 'mmiranda8@hotmail.com', 107, 454, 3, NULL, NULL, NULL, 'SI', 'b55cecc1845c825887edb97f20b9923314775276', 'Mario1960', '2', '48ee86829ee429aaa5439ceebeb3bccbdc81c28f', '2017-08-18 18:03:52', '2017-08-18 18:03:52', 'Activo'),
(937, 'Marco Antonio', 'Martinez', 'Reyes', 25, 1, 1, 15, 5, 'hockt1000@gmail.com', 43, 329, 1, NULL, NULL, NULL, 'NO', '356ba9f0e10c346d2d7f84ceeee74e2c6e887aa0', 'Tony', '7', '50844554f596be7ddf73ac22c9210e4ce891616e', '2017-08-18 19:28:54', '2017-08-18 19:28:54', 'Activo'),
(938, 'Itzi Deni', 'Palomares', 'Avila', 34, 2, 1, 15, 56, 'itzipal08@gmail.com', 5, 43, 1, NULL, NULL, NULL, 'SI', 'd5b98097787d991429daa62c3cd24b642d5cfc3c', 'ItziDeni', '2', 'c7822e6423697d4f1c7fd7efc3baff37a1fe97cc', '2017-08-19 01:56:33', '2017-08-19 01:56:33', 'Activo'),
(939, 'Itzi Deni', 'Palomares', 'Avila', 18, 2, 1, 15, 56, 'itzipal08@gmail.com', 5, 43, 1, NULL, NULL, NULL, 'NO', '95ac78fcb6e5d4fdebf68e9b211d76a5e05c6c25', 'ItziPA', '7', '722724eca468ea6569e3b3556ec556f4f79278d9', '2017-08-19 02:02:25', '2017-08-19 02:02:25', 'Activo'),
(940, 'Wendy ', 'Zurita ', 'Valencia ', 32, 2, 1, 15, 56, 'spesiosa_zv@hotmail.com', 43, 346, 2, NULL, NULL, NULL, 'NO', '9034750244d57d2e4a4c79fb1d742fefb001bf97', 'wzurita', '2', 'c7800d464161c70a8e082ebd259ccc10e2a562d0', '2017-08-19 02:41:56', '2017-08-19 02:41:56', 'Activo'),
(941, 'Maria Guadalupe ', 'Huendo ', 'Blanco', 26, 2, 1, 10, 124, 'inghuendo@gmail.com', 132, 456, 1, NULL, NULL, NULL, 'SI', '50dc59fb18240019bfd202df56597fd15d454552', 'inghuendo', '7', 'de3fa9441bdd4ea6e3fee44f9be549a964ed5dad', '2017-08-19 05:00:23', '2017-08-19 05:00:23', 'Activo'),
(942, 'rafael', 'balvas', 'pineda', 26, 1, 1, 15, 56, 'rafa_balvas201013@hotmail.com', 13, 107, 1, NULL, NULL, NULL, 'SI', '39a410998ea8fe13b4746ca4f7a1b493cba40912', 'rafael', '2', 'a129f42cf950de2e73b6a9cbb7513f0e5c83b8f6', '2017-08-19 18:02:48', '2017-08-19 18:02:48', 'Activo'),
(943, 'Anna Elizabeth ', 'Rodas', 'Guzmán', 23, 2, 1, 15, 56, 'annarg25@hotmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', 'ace5e53e71cb6aa5db06e71382d9fd20df0fbaff', 'AnnaRodas', '2', 'f60503cb40eeb0b533215fd6198f23b5018743ad', '2017-08-20 03:20:17', '2017-08-20 03:20:17', 'Activo'),
(944, 'ANA ISABEL', 'SANTIAGO', 'BEDOLLA', 26, 2, 1, 15, 56, 'aisb.bio@gmail.com', 43, 418, 2, NULL, NULL, NULL, 'SI', '637b503b451601c4b3431d33307adba8b2ac44ae', 'IsabelSantiago', '2', '83f4f427f60c61102a6f9ce57107bc55329f4c87', '2017-08-20 05:14:06', '2017-08-20 05:14:06', 'Activo'),
(945, 'Dr Jorge Alejandro', 'Osuna', 'Villanueva', 37, 1, 1, 15, 104, 'george_osuna@hotmail.com', 132, 456, 3, NULL, NULL, NULL, 'SI', '62334a6e3d8f8a0535b75dc40143c6aeed380daf', 'Drosuna', '2', '5cd6ab0f764341553066aed244a659c85a5abc75', '2017-08-20 15:35:49', '2017-08-20 15:35:49', 'Activo'),
(946, 'VENICE', 'CHÁVEZ', 'VALENCIA', 38, 1, 1, 15, 56, 'drvenicechv@gmail.com', 106, 377, 2, NULL, NULL, NULL, 'SI', 'eb103ccedf296204c5888b05187ee1ada5598077', 'Venice', '7', '71f34e149088b14414103f3a73883ad0226ed756', '2017-08-21 02:35:26', '2017-08-21 02:35:26', 'Activo'),
(948, 'Odessa', 'Magallón ', 'Chávez', 24, 2, 1, 15, 56, 'ode_magallon@hotmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', 'c6a9a950bc6ed941586c6d6a3cce9ee2dca7cb92', 'Odessa', '2', '9e743ae437a8ad53910f930d8b750798291bcd72', '2017-08-21 14:12:15', '2017-08-21 13:54:21', 'Activo'),
(952, 'Gustavo', 'Ravelo', 'Ortega', 26, 1, 1, 15, 56, 'ravelogro@gmail.com', 43, 411, 2, NULL, NULL, NULL, 'NO', 'acc39e95026a5cbe0b0ac017253069bb48ab7144', 'ravelogro', '2', 'ae18c4260b28b8ae80670256707180c5b39a99a9', '2017-08-21 18:42:38', '2017-08-21 18:42:38', 'Activo'),
(953, 'Saúl Isac', 'Ambrocio', 'Ascención', 24, 1, 1, 15, 113, 'isaac_what@hotmail.com', 132, 456, 2, NULL, NULL, NULL, 'SI', 'dd62e30a5edd52569a70fe0598ecf89c2f2993c3', 'SaulIsac', '2', 'fbf4b03fc9ecab84a5a2af46a5294b50deb98e28', '2017-08-21 21:22:19', '2017-08-21 21:22:19', 'Activo'),
(954, 'Karina', 'Zamudio', 'Jaime', 23, 2, 1, 15, 104, 'ka_ry.27@hotmail.com', 43, 411, 1, NULL, NULL, NULL, 'SI', 'd3e19d34aa258c48027b78bebc969292373cf659', 'kary', '2', '9ed49b532720427c15a6ff4a9121c3038eeac425', '2017-08-21 22:09:08', '2017-08-21 22:09:08', 'Activo'),
(955, 'Andrea', 'García', 'Pérez', 21, 2, 1, 15, 56, 'andygp68@gmail.com', 43, 411, 1, NULL, NULL, NULL, 'NO', 'a001591e7951bb49aa64b4e6df01324e43a9bf43', 'andreagp68', '2', '1741274a036ccc0b181ca9c37e4fe64d48ad4e62', '2017-08-21 23:29:10', '2017-08-21 23:29:10', 'Activo'),
(956, 'Diana Carolina ', 'Magaña', 'Espinosa', 21, 2, 1, 15, 49, 'carolina.me12@gmail.com', 5, 40, 1, NULL, NULL, NULL, 'SI', 'bb02ee995f3d95264a5279eeffbe674a43a61fc9', 'carolinamagana', '7', '261f4f3d41f0e0972ebcac60229b5487a2bec7b9', '2017-08-21 23:33:46', '2017-08-21 23:33:46', 'Activo'),
(957, 'NINFA', 'MALDONADO', 'MALDONADO', 21, 2, 1, 15, 56, 'kininimaldonado@gmail.com', 43, 344, 1, NULL, NULL, NULL, 'NO', 'e940374f254ee3bbdc60e83e172b215f6f0db4b0', 'NINFA', '2', '20b204137a142270edbab71e805d48d7f6c3dc1c', '2017-08-21 23:40:19', '2017-08-21 23:40:19', 'Activo'),
(958, 'María Guadalupe', 'Alcántar', 'Orozco', 21, 2, 1, 15, 56, 'guadalupe.04.qfb@gmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', 'e937e63b87ff4cf713b238fff3d400c3ad1ea294', 'lupitaqfb', '2', '8d5011ebce139f336199de6cde12f78dd273bf30', '2017-08-22 00:19:39', '2017-08-22 00:19:39', 'Activo'),
(959, 'Cinthia Itzel', 'Landa', 'Moreno', 21, 2, 1, 15, 56, 'cinthia_landa10@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', 'a12e5dacf92b6e027e39e03e8555daccc34f9a5f', 'cinthialanda', '2', '93b3aabed448f5e245374e408970f19801febc86', '2017-08-22 00:25:35', '2017-08-22 00:25:35', 'Activo'),
(960, 'Xitlali ', 'Delgado', 'Martínez', 26, 2, 1, 15, 56, 'xitla.203.dm@gmail.com', 43, 350, 1, NULL, NULL, NULL, 'SI', '9d01c829bf63cb63bdaf9742c8ec3f9ebb1d9d72', 'xdelgado', '2', 'b5badf5a6fa3d3df659a32a7ff3a0ed9f079055b', '2017-08-22 01:49:46', '2017-08-22 01:49:46', 'Activo'),
(984, 'Celia América ', 'Nieto ', 'del Valle', 35, 2, 1, 15, 56, 'america_811027@hotmail.com', 43, 349, 3, NULL, NULL, NULL, 'SI', 'b08b082ce37cc14bf0357b577c7772d74ccb8a4b', 'america_811027@hotmail.com', '2', '20eb0a34bf68c7a82a7b43b8177fd65c36471ab3', '2017-08-22 17:41:42', '2017-08-22 17:41:42', 'Activo'),
(962, 'Brenda  Paulina ', 'Garcia ', 'Venegas ', 22, 2, 1, 15, 49, 'manzanita152054@hotmail.com', 9, 77, 1, NULL, NULL, NULL, 'SI', '9af5ec2ac748b6edce786284bb8dc77776a8fdd3', 'BrendaPau', '2', '015d1c60f53ece708842455bdf92960a948764cc', '2017-08-22 02:30:26', '2017-08-22 02:30:26', 'Activo'),
(963, 'Brenda  Paulina ', 'Garcia ', 'Venegas ', 22, 2, 1, 15, 49, 'paulina_pau_15@live.com', 9, 77, 1, NULL, NULL, NULL, 'SI', '9af5ec2ac748b6edce786284bb8dc77776a8fdd3', 'PauVenegas', '7', '78ed012af1410d7bedd811cff3c59fc88fe99c4b', '2017-08-22 02:36:59', '2017-08-22 02:36:59', 'Activo'),
(964, 'José Antonio ', 'Ferreirra ', 'Sereno', 23, 1, 1, 15, 56, 'jafs190594@hotmail.com', 43, 411, 1, NULL, NULL, NULL, 'SI', '619921d1e369e00cbb0c48e57a10819476a0ac46', 'AFsereno', '2', 'e180472d2ab6cd758d2e7bc5cf8f6716a675f8d3', '2017-08-22 02:37:35', '2017-08-22 02:37:35', 'Activo'),
(965, 'Maria Dolores', 'Espitia', 'Ortega', 20, 2, 1, 15, 49, 'lolitaespitiao@hotmail.com', 9, 77, 1, NULL, NULL, NULL, 'SI', '7f25b0603cdf433a3bbf6777f74cc4dc4161f82a', 'Mari', '2', '78c38718d0c4a1cd4b5490ed6b63ac4cce95ea7b', '2017-08-22 02:39:00', '2017-08-22 02:39:00', 'Activo'),
(966, 'Mayra Melissa ', 'villegas', 'acosta', 21, 2, 1, 15, 49, 'melissa_06acosta@hotmail.com', 9, 77, 1, NULL, NULL, NULL, 'SI', '684e1f31bf9c20df5c50d3a167404f44d4312da3', 'Melissa', '2', '69ae6e0c694077be046545a0c60abbe0c73592a2', '2017-08-22 02:44:05', '2017-08-22 02:44:05', 'Activo'),
(967, 'MARIA JANNET ', 'TENA', 'RODRIGUEZ', 20, 2, 1, 15, 56, 'tmariajannet@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '17386b09179cdb85721f238ea634cf7bf9d323eb', 'jannet1685', '2', '19c0b502fb24b5aaf586dcdd6a01f6503c0bf818', '2017-08-22 03:35:35', '2017-08-22 03:35:35', 'Activo'),
(968, 'Mauritania ', 'Martínez', 'Tirado', 25, 2, 1, 15, 77, 'mauritania-mtz@hotmail.com', 24, 174, 1, NULL, NULL, NULL, 'SI', '4449a3d3e3c5d51cab0cca6cce59214280cd4d16', 'Mauritania', '2', '0b65dc469c4c791ce8d428f92a74c85de12c5cc5', '2017-08-22 03:39:29', '2017-08-22 03:39:29', 'Activo'),
(970, 'Laura', 'Garcia', 'Quezada', 25, 2, 1, 15, 56, 'lau23991@hotmail.com', 43, 339, 2, NULL, NULL, NULL, 'SI', '6831336cfcec41bac1edcfa46978675c26601247', 'lau', '7', 'cb10a57643d4cd7ade8b4c0799a1673dad8e1e2e', '2017-08-22 04:04:57', '2017-08-22 04:04:57', 'Activo'),
(971, 'Jessica Estefania ', 'Vidal ', 'Ayala', 26, 2, 1, 15, 56, 'yesica_0330@hotmail.com', 132, 456, 2, NULL, NULL, NULL, 'SI', '132eed79bf5f5e3d71d66cd9b3e9a3c50c3c00e6', 'JEVA', '2', '619945e462ac84d13657f099b2e1675d9d255b22', '2017-08-22 04:33:51', '2017-08-22 04:33:51', 'Activo'),
(982, 'Gilberto', 'Chavez', 'Esquivel', 41, 1, 1, 15, 104, 'peruussi@gmail.com', 22, 161, 1, NULL, NULL, NULL, 'NO', '48d0ec8ce7289d67966e5249dc34a180bf007934', 'gilbertochavez', '2', '5228b550d9611f24ba735b9d1998af55dd683dae', '2017-08-22 16:28:03', '2017-08-22 16:28:03', 'Activo'),
(974, 'jacqueline', 'saavedra', 'velez', 20, 2, 1, 15, 56, 'amelia.velez@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '8e5c86e0546763c3d8e451f946c93e59986a7e9f', 'jacquelinesaavedra', '2', '5ddf2cd69a4a949f5000121c0f4a22cc463f1b34', '2017-08-22 04:50:57', '2017-08-22 04:50:57', 'Activo'),
(975, 'Pedro Angel ', 'Lopez ', 'onroy', 40, 1, 1, 15, 56, 'umsnhficclases@gmail.com', 43, 341, 2, NULL, NULL, NULL, 'SI', 'fb77349d279451d2d046c173781ec1fc5c4fc2be', 'pedrolopez', '2', '85c19678fc53b244dac0283522e0c05c516a403b', '2017-08-22 05:20:48', '2017-08-22 05:20:48', 'Activo'),
(976, 'Sandra Paola ', 'Medina', 'Sandate', 18, 2, 1, 15, 74, 'sandra_sandate09@hotmail.com', 42, 326, 1, NULL, NULL, NULL, 'SI', 'b1e2dc4d70e1e79932567d55d766ee6537851ea5', 'Sandysandate', '7', 'd2d956d8f3b5ca110c9ccb4cb9c6e86ca76fff5b', '2017-08-22 06:01:01', '2017-08-22 06:01:01', 'Activo'),
(983, 'Jonathan Daniel', 'Caballero', 'Cisneros', 22, 1, 1, 15, 104, 'dj97125@hotmail.com', 22, 158, 1, NULL, NULL, NULL, 'SI', 'd0084dd916ff0b8a6b36c954a7c668c35b9d5d05', 'cabadaniel', '2', 'c4de1503ecc2b7cecd3a3ceaa3ee0334cd17a775', '2017-08-22 16:36:26', '2017-08-22 16:36:26', 'Activo'),
(979, 'MARIO', 'SLAGADO', 'CHAVEZ', 33, 1, 1, 15, 56, 'mtromariosc@gmail.com', 43, 336, 2, NULL, NULL, NULL, 'SI', 'c6a2be818067037b48d94d090c040f7e8a658ad9', 'MarioSCh2017', '2', '1185447349bdccd09c9b6098110ce2291ab70a47', '2017-08-22 08:31:37', '2017-08-22 08:31:37', 'Activo'),
(980, 'MARIO', 'SALGADO', 'CHÁVEZ', 33, 1, 1, 15, 56, 'mtromariosc@gmail.com', 43, 336, 2, NULL, NULL, NULL, 'SI', '1351a93bac82bcb88def4a633f29501721bb81d3', 'Mario2017', '2', '3de6a335f75de9e140e3647e3445f8ab4ba62591', '2017-08-22 08:38:33', '2017-08-22 08:38:33', 'Activo'),
(985, 'JUAN LUIS', 'MORA', 'ROSAS', 27, 1, 1, 15, 56, 'jluis_789_@hotmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', '35409021c6c484eae385b3f9e2466931a4f78498', 'JUANLUIS17', '2', '1c19080bc07d9b27df25afec4e97f4d5cbba27a8', '2017-08-22 19:10:08', '2017-08-22 19:10:08', 'Activo'),
(986, 'XOCHITL', 'GONZALEZ', 'CARRILLO', 37, 2, 1, 15, 44, 'xocholu@hotmail.com', 8, 65, 2, NULL, NULL, NULL, 'SI', '7055baf1101c96e2add2021585994e15801d3f24', 'MIRANDAR', '2', '838ad33ac80998adbd78d6f51467752b27a8f408', '2017-08-22 19:31:52', '2017-08-22 19:31:52', 'Activo'),
(987, 'Lucila Amairani', 'Esquivel', 'Herrera', 20, 2, 1, 15, 56, 'Amairani_hes4@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'NO', '791dab554388f4a5bef2cc69f275f98f91b94d2d', 'Amairani', '2', '81d5b88fbb2c4d7eeca9ec20450a7ef8b989d232', '2017-08-22 20:56:05', '2017-08-22 20:56:05', 'Activo'),
(988, 'Carmen Judith ', 'Guerrero', ' Garcia ', 21, 2, 1, 15, 110, 'carmen.gro.gar@hotmail.com', 34, 241, 1, NULL, NULL, NULL, 'NO', '801337ecdf27c40dedf5de70395b97b36a0d29d9', 'judith', '2', '2558414204b448f029f14916027399832e9ed7bd', '2017-08-22 21:06:17', '2017-08-22 21:06:17', 'Activo'),
(990, 'Ubaldo', 'Alcaraz', 'Ortega', 27, 1, 1, 15, 9, 'uao_0517@hotmail.com', 28, 199, 1, NULL, NULL, NULL, 'SI', '37d34808feef98405ef88fa82087d67bed42689c', 'ubaldo', '7', 'ac7a9425e76d10505c293302d2365b709f2d5f68', '2017-08-22 21:38:04', '2017-08-22 21:38:04', 'Activo'),
(991, 'Nadia Alexandra', 'López', 'García', 20, 2, 1, 15, 56, 'nadiaa-lg@hotmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', '5c47e19ccb20941f2a1ab43e0abc689fb807b908', 'NadiaLg', '2', 'a4737049833e409df83808de062f3fc5d03881e8', '2017-08-22 21:49:49', '2017-08-22 21:49:49', 'Activo'),
(992, 'Xóchitl ', 'Tavera', 'Cervantes', 30, 2, 1, 15, 56, 'xtavera@gmail.com', 3, 28, 2, NULL, NULL, NULL, 'SI', '95a5f95afc182c28cdccdd9b3d5a2c9583b0f19c', 'xox27', '2', 'e27917fce924fa1aa61149bba75f7fc02161b4d2', '2017-08-22 22:26:39', '2017-08-22 22:26:39', 'Activo'),
(993, 'Ana Karen', 'Calderón ', 'Ordaz', 24, 2, 1, 15, 56, 'ana_karen_246@hotmail.com', 43, 340, 1, NULL, NULL, NULL, 'SI', 'b628227b922c7799be2d680894c56c78abf4d96d', 'AnaKaren246', '7', '89debccb0c651e686189a2f077719e4c45737d73', '2017-08-25 17:23:19', '2017-08-22 22:39:06', 'Activo'),
(994, 'Melissa Adriana', 'Mendoza', 'Vázquez', 27, 2, 1, 15, 56, 'melissa.mv.244@gmail.com', 43, 411, 2, NULL, NULL, NULL, 'NO', 'd560b1306dfdedf4ea11eb84ef5ff5afba6e23db', 'MelissaMendoza', '2', 'e0d90fc1379d41f1a6888d8bc20479a17283f7b4', '2017-08-22 22:43:07', '2017-08-22 22:43:07', 'Activo'),
(995, 'Melissa Adriana', 'Mendoza', 'Vázquez', 27, 2, 1, 15, 58, 'melissa.mv.244@gmail.com', 43, 411, 2, NULL, NULL, NULL, 'NO', 'd560b1306dfdedf4ea11eb84ef5ff5afba6e23db', 'MelissaMendoza01', '7', 'cfc922bee001cf7d8aa73086a96855d0aa05b04d', '2017-08-22 22:47:13', '2017-08-22 22:47:13', 'Activo'),
(996, 'maria fernanda', 'bravo', 'camacho', 18, 2, 1, 15, 49, 'fer_star-princes@hotmail.com', 43, 333, 1, NULL, NULL, NULL, 'NO', '6b6a5791217a8de7685928ded5a456b836c711fe', 'fernanda', '7', '1fe239d88acfd0cf95d750fa0767bd2457486277', '2017-08-22 23:43:15', '2017-08-22 23:43:15', 'Activo'),
(997, 'LAURA', 'ADAME', 'RODRIGUEZ', 31, 2, 1, 15, 70, 'laura_adame_r@hotmail.com', 19, 140, 2, NULL, NULL, NULL, 'SI', '5afc6494cd6bc479cec40bd571e57b336682a30a', 'LauraAdameRodriguez', '2', '6d094297e2020e117711cdfe15a9874a1bd7181f', '2017-08-23 00:26:36', '2017-08-23 00:26:35', 'Activo'),
(998, 'Adriana ', 'OCHOA', 'OCHOA', 22, 2, 1, 15, 86, 'adriana.ochoa10@hotmail.com', 24, 174, 1, NULL, NULL, NULL, 'SI', '175c129cee918a425fa2688b75ff60332314ecce', 'adrianaochoa', '2', 'f4ab156618b49a0367e2cdec225c6c670a184536', '2017-08-23 02:27:58', '2017-08-23 02:27:58', 'Activo'),
(999, 'Aaron Barush', 'oliva ', 'Zenteno ', 18, 1, 1, 15, 56, 'abozenteno@gmail.com', 1, 6, 1, NULL, NULL, NULL, 'SI', '50437d417bc530dfbb28c69a372faf4cd0ceb390', 'Aaronzenteno', '7', '01532c9fbe6a50dcb286fa4fec1d2ea9c79dad80', '2017-08-23 03:39:09', '2017-08-23 03:39:09', 'Activo'),
(1000, 'Juan antonio', 'Cervantes', 'Arroyo', 24, 1, 1, 15, 72, 'juan.cervantes2016@outlook.com', 43, 329, 1, NULL, NULL, NULL, 'NO', '5b8994da71fb2a1e4aa27c34d6bed04b36fde028', 'juancervantes', '7', 'dff09d02a2f0e750da4cb848ac51dc1d6de15a18', '2017-08-23 03:45:38', '2017-08-23 03:45:38', 'Activo'),
(1001, 'Rogelio', 'Vega', 'Agavo', 20, 1, 1, 15, 45, 'roy-simple-plan@hotmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', '7635c5eaf3d1dd35dacaf27c9314de088769a5da', 'Roy', '7', 'a1d06164eac27d087d6703918b566f85536491f3', '2017-08-23 03:48:58', '2017-08-23 03:48:58', 'Activo'),
(1002, 'Ma Elena', 'Hernández ', 'Manriquez', 18, 2, 1, 15, 49, 'manriquezz2@yahoo.es', 9, 73, 2, NULL, NULL, NULL, 'SI', '8dbdf553849cfac7ddd82ae649d959d9e4580e09', 'marielena', '2', '2eeb2553f5c84b29541e36013c24dd66d9e25dfe', '2017-08-23 03:50:25', '2017-08-23 03:50:25', 'Activo'),
(1202, 'EMMANUEL', 'CORTES', 'GASCA', 32, 1, 1, 15, 76, 'emmanuelcor90@hotmail.com', 132, 456, 1, NULL, NULL, NULL, 'SI', 'c8023ac69b7506a13d393975710de76a3fc00116', 'emmcor', '7', 'ec071249f0b1b73691209a61ed31fad7b8168400', '2017-08-30 16:18:38', '2017-08-30 16:18:38', 'Activo'),
(1179, 'Javier', 'Ríos', 'Gómez', 18, 1, 1, 15, 56, 'riosgomezjavier@gmail.com', 132, 456, 3, NULL, NULL, NULL, 'SI', '2cc01279dc5011a0540c44fb210f5ebca71047cf', 'Javier', '2', '7f99472deeca7301cf914665700ed386a52cbee1', '2017-08-28 17:36:36', '2017-08-28 17:36:36', 'Activo'),
(1007, 'Rogelio ', 'Vega ', 'Agavo', 20, 1, 1, 15, 56, 'roy-simple-plan@hotmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', 'dffa07ce9310cb98d5315236f91f53d829e78119', 'rvega', '2', '24e3eab8ba3d717d003214f7f23d6ef0ec1b2ac7', '2017-08-23 04:21:58', '2017-08-23 04:21:58', 'Activo'),
(1008, 'ALBERTO ', 'GIL', 'PUGA', 23, 1, 1, 15, 56, 'betto.gil.94@gmail.com', 43, 341, 1, NULL, NULL, NULL, 'SI', '7b932d0095ac952c0c7df8d91d8c116cdb264ea0', 'albertogil', '2', '54db394467416e37a61680a8c07a7d03b1ba72bb', '2017-08-23 04:53:49', '2017-08-23 04:53:49', 'Activo'),
(1009, 'María Ismaela', 'Vega', 'Agavo', 24, 2, 1, 15, 45, 'isma.lumis@gmail.com', 43, 418, 2, NULL, NULL, NULL, 'SI', '58ce241521de04fb3d4ccfddfcddc5c23caf8a0b', 'isma', '7', 'bf0f30875d9c71823d4da51adf6fa9a8674e17c2', '2017-08-23 04:56:43', '2017-08-23 04:56:43', 'Activo'),
(1010, 'Dulce Paloma ', 'Cruz ', 'Villa ', 23, 2, 1, 15, 56, 'dulce_pcv@hotmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', 'dffa07ce9310cb98d5315236f91f53d829e78119', 'dpcruz', '2', '343ad179fb7ecfa3eca1c160d177e14ba701ced3', '2017-08-23 05:52:34', '2017-08-23 05:52:34', 'Activo'),
(1011, 'JUAN CARLOS', 'SOLORIO', 'LEYVA', 51, 1, 1, 15, 49, 'juancsol@hotmail.com', 9, 75, 3, NULL, NULL, NULL, 'SI', 'c035c5b2616fdeb9c348bdddaa7a59ff7d3a3a16', 'juancsol', '2', '7839a03c469820cca5ebf24f5a2b203a60664bf7', '2017-08-23 15:07:32', '2017-08-23 15:07:32', 'Activo'),
(1012, 'JUAN JOSÉ', 'PIÑA', 'CASTILLO', 52, 1, 1, 15, 56, 'pcastillo_2000@yahoo.com', 43, 329, 2, NULL, NULL, NULL, 'SI', 'b7a2a4930fc513109dfec6bbaac6f0645b89ab64', 'pcastillo', '2', '5294a33a42c038af452bd6c4ce3025afc701d983', '2017-08-23 17:02:23', '2017-08-23 17:02:23', 'Activo'),
(1177, 'Joel', 'Alvarez', 'Garcia', 31, 1, 1, 15, 56, 'informatica.cecti@gmail.com', 129, 392, 1, 1, NULL, NULL, 'NO', '44b4af6681796f3c4acfff47531bf004bacb84d5', 'evaluador', '3', 'da61775aa8a52753476d1306b70d2ec1094619cc', '2017-08-28 15:05:25', '2017-08-28 15:05:25', 'Activo'),
(1014, 'Laura', 'Garcia', 'Quezada', 25, 2, 1, 15, 56, 'lgq_mcrlosno1_23991@hotmail.com', 43, 339, 2, NULL, NULL, NULL, 'SI', '159b193ad3ce20e9f5406198a4681d9284bd1786', 'lau23991', '2', '3cebaf55042e7731e53145fff2b62e24adca0080', '2017-08-23 17:36:27', '2017-08-23 17:36:27', 'Activo'),
(1015, 'Alan Michel', 'Pérez ', 'Espino', 24, 1, 1, 15, 100, 'alanmichelperezespino11@gmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '8e537839ccada049e0bd9ce9f28d6b6a3276928f', 'Alan1', '2', '5fbf5e96e854fe2239f4dc235c6e2f2ec1527a77', '2017-08-23 17:44:41', '2017-08-23 17:44:41', 'Activo'),
(1016, 'Victor Hugo ', 'Blancas', 'Herrera', 24, 1, 1, 15, 56, 'blancashugo05@gmail.com', 43, 341, 1, NULL, NULL, NULL, 'SI', 'bee252093de04ffc7172ccd9bfbd562ebc2cce68', 'Victor-Hugo', '2', '8e239983a7f3fbed938d6ddddefa744aa7527c28', '2017-08-23 18:17:53', '2017-08-23 18:17:53', 'Activo'),
(1017, 'EVA ESTHEFANY', 'SOTO', 'GUZMÁN', 23, 2, 1, 15, 56, 'eva_sogu@hotmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', '8230dc0a51ce926642586483ae1ecb9e09678c2f', 'evasoto', '2', '091b4638b8bfc2e5783e3a24b93166fa5e34854c', '2017-08-23 18:21:11', '2017-08-23 18:21:11', 'Activo'),
(1018, 'Juan Pablo', 'Figueroa ', 'Moran', 25, 1, 1, 15, 56, 'kliny18@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '45c2b63b22d79b30cc1e9a0baa01a7bfaeb3ead2', 'kliny18', '7', '99117b63410909e5da75b5bf9d7110d908c57e34', '2017-08-23 18:29:54', '2017-08-23 18:29:54', 'Activo'),
(1019, 'Juan Pablo', 'Figueroa', 'Moran', 25, 1, 1, 15, 56, 'kliny18@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', 'f27efb91b59ecd300949577fb2c3670dd02b0d68', 'kliny18', '2', 'c42b1c15ab4e2a87c9947ffbde6e26f10b880527', '2017-08-23 18:37:36', '2017-08-23 18:37:36', 'Activo'),
(1020, 'MARIELA', 'CASILLAS', 'CORONA', 30, 2, 1, 15, 56, 'marielacasillas25.04@gmail.com', 43, 346, 2, NULL, NULL, NULL, 'SI', '9117cbf00f5fe21db944e6ec2b20bb83046343a4', 'Mariel', '2', '3c486f1f035cad27f27591ba688a78d670247b97', '2017-08-23 18:51:14', '2017-08-23 18:51:14', 'Activo'),
(1021, 'ARMANDO', 'TALAVERA', 'ALEMAN', 29, 1, 1, 15, 56, 'talavera_armando@hotmail.com', 43, 411, 3, NULL, NULL, NULL, 'SI', '8ebd9c8138e099b53ae34455d7e92fd198609e9f', 'artalavera', '2', 'f75ff13285cc9b1d2a2b0978b6c83d4693293e66', '2017-08-23 19:38:48', '2017-08-23 19:38:48', 'Activo'),
(1022, 'Araceli', 'Álvarez', 'Ruiz', 27, 2, 1, 15, 56, 'araceli.alv@hotmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', 'e9c02d14d43502857743c66710f01372dd2df2ea', 'Araceli', '7', 'dd86f1fe3a4cb5f4c7b7bbf13514aee2e849a475', '2017-08-23 19:48:38', '2017-08-23 19:48:38', 'Activo'),
(1023, 'ROSALBA', 'CRUZ', 'CORONA', 24, 2, 1, 15, 56, 'ros_1421@hotmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', 'dfd9103eef284c7b0b77d9276363e4c84d63ba58', 'Rosalbaa', '7', '41d2ffe997f14d56f4eb16017a54196920065960', '2017-08-23 20:03:57', '2017-08-23 20:03:57', 'Activo'),
(1024, 'Karen Ibeth', 'Fernández', 'Alejandre', 27, 2, 1, 15, 56, 'karenybeth@hotmail.com', 132, 456, 2, NULL, NULL, NULL, 'NO', '9e9a280e8e1cecc8724e3cbbb8eb17b33f1bd7db', 'KarenIFernandez', '2', '88699b149fd98fc2e6a0dcddb0de7c4dab23f43d', '2017-08-23 20:05:11', '2017-08-23 20:05:11', 'Activo'),
(1025, 'VIRIDIANA ', 'AGUIILERA', 'SANCHEZ', 30, 2, 1, 15, 56, 'viridianaa12@hotmail.com', 43, 411, 3, NULL, NULL, NULL, 'SI', '95dd8fba9e9c2b49d64cb81fd6d4df02d20789df', 'viridiana1286', '7', 'de769e90cc88f1c1eec95cf36e07523b4ce041ea', '2017-08-23 20:20:32', '2017-08-23 20:20:32', 'Activo'),
(1181, 'OSCAR', 'PEREZ', 'VACA', 23, 1, 1, 15, 56, 'oscar.per.va@gmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', '1bf3e235505c9eb2cc8985f49687db5e9564d207', 'oscar9408', '7', 'aa650f1ca7b9482b3d0490d86c1639525d4f0cf1', '2017-08-28 19:01:08', '2017-08-28 19:01:08', 'Activo'),
(1028, 'Biviana', 'Sánchez', 'Aguilar', 25, 2, 1, 15, 3, 'biviana.sanchez.bioaguila@gmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', 'cef18ba23b6523dad86d7fcc2b908c20082e94f9', 'Biviana', '2', 'd25a053553f31b9165ee24d787396650c93ca6dd', '2017-08-23 23:38:47', '2017-08-23 23:38:47', 'Activo'),
(1029, 'AGUSTIN', 'VARGAS', 'RAMIREZ', 32, 1, 1, 15, 56, 'vragustin_pc@hotmail.com', 38, 278, 1, NULL, NULL, NULL, 'SI', '775ee969e7ebeb358aee42bd9e8de3f4cae147ca', 'agustinvr', '7', '775bc7cbb1052ed9047705e66ff91f9f4cffb1ba', '2017-08-23 23:59:58', '2017-08-23 23:59:58', 'Activo'),
(1030, 'Carlos Humberto', 'Gomez ', 'Martinez', 25, 1, 1, 15, 56, 'carlos-gomez1992@hotmail.com', 43, 329, 1, NULL, NULL, NULL, 'SI', '44b68e9a51b518def2ed3ab9c2dcbc9dbc05b613', 'Carlosgomez', '7', 'a6c6fe319e7fc13022d57b260c62b0e04898b013', '2017-08-24 00:40:56', '2017-08-24 00:40:56', 'Activo'),
(1031, 'Karina Claudia', 'Espinosa', 'Mónico', 22, 2, 1, 15, 56, 'clau118d1@gmail.com', 13, 109, 1, NULL, NULL, NULL, 'SI', 'f3d816e23021033753a5a22fbfd3f1a1569ea6a1', 'clauespinosa', '2', '109f94b57505bccc8fe16362252b3609d79f151f', '2017-08-24 01:03:25', '2017-08-24 01:03:25', 'Activo'),
(1032, 'Ignacio ', 'Pedrizco ', 'Infante ', 22, 1, 1, 15, 104, 'ipedrizco@gmail.com', 43, 347, 1, NULL, NULL, NULL, 'SI', '0c8328a6e9cc2cc960a4dc00d235845d434e4f78', 'Ipedrizco', '2', '127eb896a821ecd7fde76b80aa03c300cd60bec9', '2017-08-24 02:04:45', '2017-08-24 02:04:45', 'Activo'),
(1033, 'Alvaro', 'Pineda', 'Santana ', 22, 1, 1, 15, 110, 'pineda.sap43@gmail.com', 130, 405, 1, NULL, NULL, NULL, 'SI', '8600b6cf0e1877ba64f233739729e98e1d647668', 'alpineda', '2', 'f66bbae0232ae32302657a8b8ca608bd3dd50d8c', '2017-08-24 02:31:06', '2017-08-24 02:31:06', 'Activo'),
(1034, 'VENICE', 'CHÁVEZ', ' VALENCIA', 38, 1, 1, 15, 56, 'drvenicechv@gmail.com', 106, 377, 2, NULL, NULL, NULL, 'SI', '21c71ee4fab0513b03741285cc3ce27d487cebb3', 'venice', '7', '1ce36559d8032829ebef6631219d276a9d55e65b', '2017-08-24 02:56:17', '2017-08-24 02:56:17', 'Activo'),
(1035, 'VENICE', 'CHÁVEZ', 'VALENCIA', 38, 1, 1, 15, 56, 'drvenicechv@gmail.com', 106, 377, 2, NULL, NULL, NULL, 'SI', '21c71ee4fab0513b03741285cc3ce27d487cebb3', 'venice', '2', 'ebe71ab04ad51c4d7b8df4d579698afe18d69dcd', '2017-08-24 03:04:08', '2017-08-24 03:04:08', 'Activo'),
(1036, 'Maria Guadalupe', 'Guizar', 'Amezcua', 21, 2, 1, 15, 110, 'Maria-guizar1335@hotmail.com', 130, 405, 1, NULL, NULL, NULL, 'SI', 'b6ec55b16d527da4cd40c80580fe02ba4541e3c0', 'MaGuadalupe', '2', '926d275a873ea6e4513b90498cfbcb479758f18d', '2017-08-24 04:13:19', '2017-08-24 04:13:19', 'Activo'),
(1038, 'Carlos Alberto', 'Martínez', 'Guido', 26, 1, 1, 15, 56, 'carlos.alberto.martinez912601@gmail.com', 43, 341, 1, NULL, NULL, NULL, 'SI', '76a64d61d8afd12f98e7a043687defc02b531655', 'carlosguidoUMSNH', '2', '0df8d046a85eae586ab911f0fbabbebb254a3634', '2017-08-24 16:02:48', '2017-08-24 16:02:48', 'Activo'),
(1039, 'VENICE', 'CHAVEZ', 'VALENCIA', 38, 1, 1, 15, 56, 'drvenicechv@hotmail.com', 106, 377, 2, NULL, NULL, NULL, 'SI', '1815f5dc709078e9eff4ab79721b4d726bc58f3f', 'drvenicechv', '2', 'd6a444ccdfd56bbe0e06c67eb3376463012a1909', '2017-08-24 16:48:24', '2017-08-24 16:48:24', 'Activo'),
(1040, 'KAREN DEREK', 'ESCOBAR', 'FLORES', 24, 2, 1, 15, 56, 'karen_derek8@hotmail.com', 43, 411, 1, NULL, NULL, NULL, 'NO', '5ba085372b2b1f7b925f768d1f644c6a592d4e75', 'karenderek', '2', '2338b3a7ab30209c50b5c5d57066a99e53c97181', '2017-08-24 17:16:51', '2017-08-24 17:16:51', 'Activo'),
(1041, 'ÁNGEL ABAD', 'DEL RÍO', 'CHÁVEZ', 29, 1, 1, 15, 56, 'angelabadqfb@hotmail.com', 43, 411, 2, NULL, NULL, NULL, 'NO', '5ba085372b2b1f7b925f768d1f644c6a592d4e75', 'angelabad', '7', 'c54dd1704c1cbd5593f945715cd186a30e85960b', '2017-08-24 18:18:01', '2017-08-24 18:18:01', 'Activo'),
(1043, 'Celia América ', 'Nieto', 'del Valle', 35, 2, 1, 15, 56, 'america_811027@hotmail.com', 43, 349, 3, NULL, NULL, NULL, 'SI', 'b08b082ce37cc14bf0357b577c7772d74ccb8a4b', 'Acierema del Valle', '2', 'faa5b334a08f978f539fe0343ae355cf164c00af', '2017-08-24 18:38:55', '2017-08-24 18:38:55', 'Activo'),
(1044, 'Normando', 'Elizondo', 'Ortiz', 24, 1, 1, 15, 56, 'normandoelizondoortiz@hotmail.com', 43, 411, 1, NULL, NULL, NULL, 'NO', '7af1dabb9b5fe126cac37184b2fe97d6c349e1cd', 'Nor1', '2', '8588dc968b815e92a2ac84a221908c221b0d4829', '2017-08-24 18:42:04', '2017-08-24 18:42:04', 'Activo'),
(1045, 'Sandra', 'Manzo', 'Valencia', 25, 1, 1, 15, 56, 'sandra_verde_17@hotmail.com', 43, 340, 2, NULL, NULL, NULL, 'SI', '1c80a87eee691d9b2e51b4088a692b9fa2b53730', 'Sandramv', '7', '1de5058b7d72564875d57622bda48d60f3e4222a', '2017-08-24 19:11:29', '2017-08-24 19:11:29', 'Activo'),
(1046, 'Ernesto', 'Oregel', 'Zamudio', 30, 1, 1, 15, 44, 'ernesto_oregel@hotmail.com', 103, 373, 2, NULL, NULL, NULL, 'SI', '194b68920df931564e615f7477202f32e6115897', 'Eoregel', '2', '3a705e6d843ed0351e6220dc066d68e4396b731c', '2017-08-24 21:03:29', '2017-08-24 21:03:29', 'Activo'),
(1047, 'Francisco Javier', 'García', 'García', 25, 1, 1, 15, 44, 'javi30013@gmail.com', 103, 373, 2, NULL, NULL, NULL, 'SI', '3b28378d38fa58c45909723a4c277048ea379a17', 'Fjavier', '7', '68828c61004a794351a4a8fa8d21d3ccdeaecd3f', '2017-08-24 21:11:32', '2017-08-24 21:11:32', 'Activo'),
(1048, 'Cecilia ', 'Zamora', 'Sánchez', 26, 2, 1, 15, 85, 'cecy_zamora@hotmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', 'abe9ff8311b44c31ac3b9f8724cf8c7e4d1ba5d4', 'Cecilia', '2', '4547c9bb93008fb02fea829020c7c4233988814f', '2017-08-24 21:22:10', '2017-08-24 21:22:10', 'Activo'),
(1049, 'Christian', 'Hernández', 'Soberano', 27, 1, 1, 15, 56, 'khristhyan_15@hotmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', '997b91623530026377e02494bf52c6f75c357caf', 'khristhyan', '2', '632e18d83ce641f61d517d39fbf18b63f095408e', '2017-08-24 21:40:47', '2017-08-24 21:40:47', 'Activo'),
(1050, 'Alberto', 'Díaz', 'Vázquez', 42, 1, 1, 15, 110, 'alberto_diaz_vazquez@hotmail.com', 130, 403, 3, NULL, NULL, NULL, 'SI', '92451477b3bfb0facab75acef49d3b7a7191b8d9', 'Alberto', '2', 'f5c75e871f0917f648167281c4f1d83f44276cae', '2017-08-24 22:11:32', '2017-08-24 22:11:32', 'Activo'),
(1051, 'Fernando', 'Quiroz', 'Rivera', 23, 1, 1, 15, 70, 'fer_qui_23d93@hotmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', '3078a0ab8d1f7ec48037f4f6dfd4a253fb6dbe30', 'fqr', '2', 'ad3eea25227af0e1f85a7864a2005afe3f31d906', '2017-08-24 22:12:06', '2017-08-24 22:12:06', 'Activo'),
(1052, 'Cesar Dario', 'Mendez ', 'Horta', 22, 1, 1, 15, 77, 'dario_horta@hotmail.es', 24, 174, 1, NULL, NULL, NULL, 'NO', 'acedc38969858874a1616563523b70e3da75a25b', 'DarioMH', '2', 'bd8a6f2af5445ba541f423081513bd801ca08009', '2017-08-24 22:16:45', '2017-08-24 22:16:45', 'Activo'),
(1053, 'Ana Sophía', 'Árciga', 'Rodríguez', 22, 2, 1, 15, 56, 'Sophie.Arciga@gmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', 'e7f91e829711dbf8e271af17503cfe7b9c42c511', 'SophiaArciga', '2', '0ed9061bcffe7ae106dbecb68fcb60c18e547ca7', '2017-08-24 22:53:09', '2017-08-24 22:53:09', 'Activo'),
(1054, 'Jesús', 'Murillón', 'Duarte', 30, 1, 1, 15, 56, 'grupomacjes@hotmail.com', 43, 341, 3, NULL, NULL, NULL, 'SI', '53e9e99adcb88dbace0107665c16a82df8117134', 'JesusAldebaran', '2', 'd3596e1a0311d6bc94d477b0d625e5acb7e59976', '2017-08-24 22:58:19', '2017-08-24 22:58:19', 'Activo'),
(1055, 'María Fernanda ', 'Muñoz ', 'Sánchez', 23, 2, 1, 15, 95, 'fer_ms09@hotmail.com', 11, 93, 1, NULL, NULL, NULL, 'NO', '6bc6f15781b4823da9fec942fe6d7974cd963dfc', 'FerMS', '2', '606b608706a9d1787705fcdadc5ece92ca235fb3', '2017-08-25 01:19:37', '2017-08-25 01:19:37', 'Activo'),
(1056, 'Geovanni ', 'Rangel', 'Cortes ', 24, 1, 1, 15, 56, 'racg.93@gmail.com', 43, 350, 1, NULL, NULL, NULL, 'SI', 'f04f305ba28b08ef26a604574732f2bdd0f6a301', 'geovanni', '2', '8c796f6d7b82ee2f21edcc64a29be931a992f2f7', '2017-08-25 01:44:54', '2017-08-25 01:44:54', 'Activo'),
(1057, 'Teresa Ivveth', 'Martínez ', 'Flores', 21, 2, 1, 15, 1, 'tete0110@hotmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', '734bc7fd91e003535f7a4343a8fb242f617c72cb', 'Ivveth', '7', '9abc046428df98ee85d1b47f5e38adfcb44622dc', '2017-08-25 02:34:16', '2017-08-25 02:34:16', 'Activo'),
(1058, 'GUILLERMO', 'ASCENCIO', 'RODRIGUEZ', 47, 1, 1, 15, 49, 'ascgui@hotmail.com', 9, 75, 1, NULL, NULL, NULL, 'SI', '7be39debf31995e7f57f45d0eba8a243acf1a578', 'guillermolpd', '2', '4ed448529baadd061d5f963a74f3fcff8bed8af8', '2017-08-25 03:21:22', '2017-08-25 03:21:22', 'Activo'),
(1059, 'Alejandra', 'Higareda', 'Rodríguez', 23, 2, 1, 15, 92, 'alexah_139@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', 'fe69eec0a1e14b3b02e34bf205bfb334cc093d5d', 'AleHR', '2', '6fb123914a2af24988a08508546b4de0b29c55fa', '2017-08-25 03:53:26', '2017-08-25 03:53:26', 'Activo'),
(1060, 'Mayra Itzel', 'Huerta', 'Baltazar', 37, 2, 1, 15, 56, 'efetakumi@gmail.com', 43, 336, 3, NULL, NULL, NULL, 'SI', 'ce6e711c46d1a7fd0419fed2eaaa7c5a2a7eafb3', 'efetakumi', '2', '3ba7e0a6a8a1372f241bb6561b6b476a1ba977cc', '2017-08-25 04:07:05', '2017-08-25 04:07:05', 'Activo'),
(1061, 'Andrea', 'Alcalá', 'Ferreira', 25, 2, 1, 15, 56, 'ing.alcala.f@gmail.com', 43, 341, 2, NULL, NULL, NULL, 'NO', '36fd3dd56d24ad516c150877bd47efed74b64f1b', 'AndreaAF1', '2', '44d03bdc3d37377adef265d7e2b3b11b070355ab', '2017-08-25 04:26:40', '2017-08-25 04:26:40', 'Activo'),
(1062, 'Doris Berenice', 'Sánchez ', 'Prieto', 23, 2, 1, 15, 56, 'abrilbere_@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'NO', 'e6ca532224fdaa280186cfc37fcc315cacefec1e', 'dorissanchez', '2', 'e1e2be292bf4791d1ebd5c043000a40ba387fcd2', '2017-08-25 04:42:07', '2017-08-25 04:42:07', 'Activo'),
(1063, 'Gamaliel ', 'Valdivia', 'Rojas', 35, 1, 1, 15, 52, 'gamaxew@gmail.com', 18, 138, 2, NULL, NULL, NULL, 'SI', 'e95dde7670af8b963c3ba0fff61a7d09a842e9fb', 'gamaxew', '2', 'b88d273873c07af99525c99bed8bf32c33888ed0', '2017-08-25 04:42:20', '2017-08-25 04:42:20', 'Activo'),
(1064, 'ARIADNA LORENA', 'MONDRAGON', 'GARCIA', 27, 2, 1, 15, 56, 'ariadnamon_22_13@hotmail.com', 43, 339, 2, NULL, NULL, NULL, 'SI', '36c4160b7ce32a9f89520bbff1b2eb61a83ee161', 'ARIADNALORENA', '2', '1f19919c7ec60c85f1c0a4e3ddb6e3f43309ab32', '2017-08-25 05:17:49', '2017-08-25 05:17:49', 'Activo'),
(1065, 'José Alfredo', 'Arcos', 'Montejo', 23, 1, 1, 6, 120, 'hereford_malaria@hotmail.com', 43, 329, 1, NULL, NULL, NULL, 'SI', 'bd8944f5b98f6944f6f4075af907d58d2b9a47d4', 'Alfredo', '7', 'd3cc7de86dd99fa4255817811bbc400e1fe9e2fb', '2017-08-25 05:46:04', '2017-08-25 05:46:04', 'Activo'),
(1183, 'MA LILIA ALICIA', 'ALCÁNTAR', 'ZAVALA ', 60, 2, 1, 15, 56, 'lily.alcantar@yahoo.com.mx', 43, 336, 3, NULL, NULL, NULL, 'SI', 'b1d85583cb29cb298354e06a0d02053dfe172bc2', 'liliaalcantar', '2', '573e3b0d70604264c930572ee3a1241aaacc46ba', '2017-08-28 19:09:25', '2017-08-28 19:09:25', 'Activo'),
(1067, 'MARÍA ', 'ALCALÁ ', 'DE JESÚS', 56, 2, 1, 15, 56, 'tupuri12@hotmail.com', 43, 346, 3, NULL, NULL, NULL, 'SI', 'b1d2f13ad233159d03b8b144b8ecf896553db310', 'Maria', '7', '13f4a0550e22d02ea1f2749d09704271e7c605cc', '2017-08-25 09:55:49', '2017-08-25 09:55:49', 'Activo'),
(1068, 'José Alejandro', 'Chávez', 'Cortés', 25, 1, 1, 15, 6, 'ing_jchavez@hotmail.com', 43, 329, 1, NULL, NULL, NULL, 'SI', '51a1ec9ed873810721e718f53edf709e32c4142d', 'Jchavez', '2', '8a4c4e6ae88ce12817e0e7f9dbb0a2119494cc16', '2017-08-25 12:52:35', '2017-08-25 12:52:35', 'Activo'),
(1069, 'Omar Jorge', 'Trujillo', 'Anguiano', 21, 1, 1, 15, 56, 'omartruang141@gmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', 'c55661549d345839acfef924aacac49fcbe2e94c', 'OmarToThePast', '2', '1895f739b9f4b33a4a0ad88e7c930774fb9c21b3', '2017-08-25 13:41:12', '2017-08-25 13:41:12', 'Activo'),
(1070, 'Roxanna Pamela', 'Ramirez ', 'López ', 21, 2, 1, 8, 122, 'roxannanah@gmail.com', 5, 40, 1, NULL, NULL, NULL, 'SI', '04143f3faf9e2bfae29e935154cc57107268dbf4', 'Roxannanah', '2', '92d5ea2d6e329f8ba38dc3602dc4939500c88435', '2017-08-25 14:14:31', '2017-08-25 14:14:31', 'Activo'),
(1071, 'Luz Elena Alfonsina', 'Avila', 'Calderón', 46, 2, 1, 15, 56, 'lea.avilacalderon@gmail.com', 43, 338, 2, NULL, NULL, NULL, 'NO', '6046bdd499a0ef5bbfd0532c8483533098b7f906', 'lucecita', '2', '44461799071b3a5066f50cb25f94db8da4ed94af', '2017-08-25 15:43:08', '2017-08-25 15:43:08', 'Activo'),
(1072, 'JESICA', 'ARGUELLO', 'RAMIREZ', 22, 2, 1, 15, 3, 'acisej_ar@hotmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', '871b9d5921326e0ed5fe70ad9cf5468263d57b64', 'JesARG', '2', '38bc03f54d5381e4463b3896a8d4653c312b88b3', '2017-08-25 15:48:05', '2017-08-25 15:48:05', 'Activo'),
(1073, 'Teresa', 'Pamatz', 'Bolaños', 34, 2, 1, 15, 56, 'terepamatz@hotmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', '25261d8b97ef4377bee631b43c9f8250aa7280bd', 'tpamatz', '2', 'd482a7b13364c1e4d02c2da7a331f4857b0c85cf', '2017-08-25 16:20:31', '2017-08-25 16:20:31', 'Activo'),
(1074, 'José Pablo', 'López ', 'Sosa', 24, 1, 1, 15, 109, 'loptraba12@gmail.com', 24, 174, 1, NULL, NULL, NULL, 'SI', '175c129cee918a425fa2688b75ff60332314ecce', 'PABLO24', '2', 'd1805b4ae2bab899d9e4a81c7e6c7bbfb0e94596', '2017-08-25 16:26:02', '2017-08-25 16:26:02', 'Activo'),
(1075, 'José', 'López', 'Bucio', 45, 1, 1, 15, 56, 'joselopezbucio@yahoo.com.mx', 43, 411, 3, NULL, NULL, NULL, 'SI', '1a34bf415e27fcd58bbba615817f034a3e4aa1a5', 'joselopezbucio', '7', '3d66b6eed4c0a3ac6591710d91ddae9efd369a96', '2017-08-25 16:34:08', '2017-08-25 16:34:08', 'Activo'),
(1076, 'Jesús Salvador', 'López', 'Bucio', 34, 1, 1, 15, 56, 'lopbucio@yahoo.com', 43, 411, 3, NULL, NULL, NULL, 'NO', '327666d4c8ae115068aa5c115b0a747982ee9446', 'lopbucio', '2', '8a0c7fc00965b8392922a0811d74994eb7bf5724', '2017-08-25 16:46:41', '2017-08-25 16:46:41', 'Activo'),
(1077, 'Areli', 'Custodio', 'Hernández', 24, 2, 1, 15, 68, 'arq.ach2@gmail.com', 85, 458, 1, NULL, NULL, NULL, 'NO', 'c2fb867232309235d042e7a86bb106e948b4916e', 'Areli', '2', 'a9a90f165a7a9ceebd7cd35b485437c18c6ee4c1', '2017-08-25 16:49:16', '2017-08-25 16:49:16', 'Activo'),
(1078, 'Alejandro Cesar', 'Zavala', 'Alcaraz', 43, 1, 1, 15, 56, 'quangari44@yahoo.com.mx', 43, 334, 1, NULL, NULL, NULL, 'SI', '941db35968c45b51bcf984e63d69a601d0f57f16', '123456', '7', '1d672972c5bc84d58e6a6f550cb4e96052114e46', '2017-08-25 17:20:15', '2017-08-25 17:20:15', 'Activo'),
(1079, 'ROSENDA', 'AGUILAR', 'AGUILAR', 48, 2, 1, 15, 56, 'rosendaguilar@gmail.com', 43, 346, 2, NULL, NULL, NULL, 'SI', 'dffa07ce9310cb98d5315236f91f53d829e78119', 'RosendaAguilar', '2', '2c1c527945bf20d00618ccd948dc672509712bd7', '2017-08-25 17:41:34', '2017-08-25 17:41:34', 'Activo'),
(1080, 'Sandra', 'Manzo', 'Valencia', 25, 2, 1, 15, 56, 'sandra_verde_17@hotmail.com', 43, 340, 2, NULL, NULL, NULL, 'SI', '1c80a87eee691d9b2e51b4088a692b9fa2b53730', 'Sandramva', '2', '34431b25629104d3477f1e58216506e1b0ea7245', '2017-08-25 18:33:03', '2017-08-25 18:33:03', 'Activo'),
(1081, 'Rocio', 'Madrigal', 'Garcia', 22, 2, 1, 15, 57, 'rosy.maga.33@gmail.com', 43, 346, 1, NULL, NULL, NULL, 'NO', 'dffa07ce9310cb98d5315236f91f53d829e78119', 'rmadrigalg', '7', '4623da59209eecba33bdd675e1a73bf5e2ec3661', '2017-08-25 18:47:24', '2017-08-25 18:47:24', 'Activo'),
(1082, 'Cecilia', 'Ruiz', 'Ferrer', 30, 2, 1, 15, 56, 'cecilia_rferrer@hotmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', '581774b2b39dc2d73c4e6688ab92f67ad4aac09d', 'techyferrer', '2', 'cc608d5cc0cfc9a3f212f74b941739b0e554db01', '2017-08-25 18:51:25', '2017-08-25 18:51:25', 'Activo'),
(1083, 'Sandra', 'Manzo', 'Valencia', 25, 2, 1, 15, 56, 'sandra_verde_17@hotmail.com', 43, 340, 2, NULL, NULL, NULL, 'SI', '1c80a87eee691d9b2e51b4088a692b9fa2b53730', 'Sandramv', '2', 'f0910e99b962d85735694e33c58a8ef8a42344e0', '2017-08-25 19:06:24', '2017-08-25 19:06:24', 'Activo'),
(1084, 'María Teresa', 'Salgado', 'Rodríguez', 23, 2, 1, 15, 56, 'marytesalgado@gmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', '3b7994ea04bdf4b95475c3b3e383810606f13a2d', 'Maryte', '2', '0a6561de74e569e14fa77bebdec7c8e28efff2c2', '2017-08-25 19:10:23', '2017-08-25 19:10:23', 'Activo'),
(1086, 'Adalid', 'Abarca', 'Marcelo', 24, 2, 1, 11, 125, 'rousmem@gmail.com', 43, 411, 1, NULL, NULL, NULL, 'NO', '05234c7117feabfd6feaaf96dd1c9f1b3f37bb08', 'Adalid', '2', '415a3bf60cca1c06b03b76be6d27c83cf939c092', '2017-08-25 19:12:53', '2017-08-25 19:12:53', 'Activo'),
(1087, 'Claudia ', 'Lopez', 'Garcia', 28, 2, 1, 15, 56, 'marinalopez2508@gmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', '25bf4bb687468f97b4a123cc13acaa4ebaf079e9', 'Pecas2508', '2', '0605fa1e4b749c4a38270ce4424dd3ee6a4ebbc3', '2017-08-25 19:14:38', '2017-08-25 19:14:38', 'Activo'),
(1182, 'Karla Janette', 'Alfaro', 'Martínez', 23, 2, 1, 15, 56, 'janettealfaro94@gmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', 'd06700b5ddb4de8917c3338382bad172b914bc39', 'KarlaJAlfaroM', '7', '1faeb15cd12d1c35305adfa4438d6e43923e6f59', '2017-08-28 19:03:29', '2017-08-28 19:03:29', 'Activo'),
(1089, 'Adan', 'Victor ', 'Navarro', 26, 1, 1, 15, 77, 'oregelvero@hotmail.com', 24, 174, 1, NULL, NULL, NULL, 'SI', '094afe69d72166002bc29f447283094a9cb52b25', 'Adan', '2', 'a11d2de88e5ef6d400069fc5c2a69f79d19b0c46', '2017-08-25 19:48:53', '2017-08-25 19:48:53', 'Activo'),
(1185, 'RICARDO', 'GARCÍA', 'MORA', 18, 1, 1, 15, 56, 'rigarmora@hotmail.com', 43, 349, 3, NULL, NULL, NULL, 'SI', 'd33458dcec44906d69445516b5ba31e2d18382b6', 'rgmoramx', '2', '5958f556a747db7ec30930aee818389c6c3bd753', '2017-08-28 22:22:46', '2017-08-28 22:22:46', 'Activo'),
(1094, 'Heriberto', 'Aguilar ', 'Villa', 22, 1, 1, 15, 56, 'heriberto.agv@gmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '6f4a8478790c4ae15721c4d0531401744a9cdfde', 'Heriberto', '2', 'c28cda28313a278e70ac13876815cb5e72190828', '2017-08-25 20:04:14', '2017-08-25 20:04:14', 'Activo'),
(1095, 'Luis Miguel', 'Miranda', 'Vieyra', 22, 1, 1, 15, 56, 'lmmv19950825@gmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '6f4a8478790c4ae15721c4d0531401744a9cdfde', 'quimicovieyra22', '7', 'e10c6dfc8c14b0b11668c473372af7c0b80a4a1c', '2017-08-25 20:09:52', '2017-08-25 20:09:52', 'Activo'),
(1096, 'Adelaida', 'López', 'Gómez', 30, 2, 1, 6, 120, 'ade29_lg@hotmail.com', 43, 338, 2, NULL, NULL, NULL, 'SI', '9db98c69b0a4b93e30939ff1126fae01c4576c2a', 'adelaidalogo', '2', '75239070606e7bee94500f1d26d695794194888a', '2017-08-25 20:11:07', '2017-08-25 20:11:07', 'Activo'),
(1098, 'Abril', 'Munro', 'Rojas', 42, 2, 1, 15, 56, 'abrilmunro@gmail.com', 43, 338, 2, NULL, NULL, NULL, 'SI', 'd875015a30fbe1db8e33469cb844ab13637b108a', 'abrilmunro', '2', 'e974b56c69d979796b3b7a7dd28d4ef67fd3d2e0', '2017-08-25 20:19:37', '2017-08-25 20:19:37', 'Activo'),
(1099, 'Karina', 'Alvarado ', 'Huitron', 22, 2, 1, 15, 56, 'kary.china25@gmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', 'd3e4d4683f5297ed7667c02c45dda7706182dcad', 'KAH1994', '2', 'd07dfaa5ff79b6cc7e80f2c0aaf7af0e196376df', '2017-08-25 20:55:54', '2017-08-25 20:55:54', 'Activo'),
(1100, 'Gerchon', 'Laguerre', 'Tufaite', 23, 1, 2, 15, 56, 'gerchondo@gmail.com', 43, 411, 1, NULL, NULL, NULL, 'NO', 'ed5161e34a5600ed1a79ec7f179876065643fd00', 'gerchon27', '2', 'efaade6fb075fe55874c6159461616cd26fb4236', '2017-08-25 21:25:58', '2017-08-25 21:25:58', 'Activo'),
(1101, 'María Dolores ', 'Peña ', 'Padilla ', 21, 2, 1, 15, 49, 'lolita_presiosa@live.com', 9, 75, 1, NULL, NULL, NULL, 'SI', '8027c942fd942e721bc52f69acb6a9012f755f42', 'Marilo', '2', '5c235366e23f96ea3fb5c4b07ae787ad236a3901', '2017-08-25 21:59:21', '2017-08-25 21:59:21', 'Activo'),
(1102, 'KENYA ANAYENCY', 'CASILLAS', 'MEZA', 30, 2, 1, 15, 56, 'kenya.casillas@hotmail.com', 43, 343, 2, NULL, NULL, NULL, 'SI', 'b65604f1e0fd32418b28571d5f19cb3fbc8d068f', 'kcasillas', '7', 'b6d8a8141b222051e514824e663950b8d9598702', '2017-08-25 22:01:51', '2017-08-25 22:01:51', 'Activo'),
(1184, 'Juan', 'Perez', 'Prado', 30, 1, 1, 6, 120, 'fenix4839@hotmail.com', 12, 99, 2, NULL, NULL, NULL, 'NO', '8523fcef8ead3ee91a7ae93c68914863297284d4', 'Chiapitas45', '2', 'eba7b0495392725b5c562de5306fe1cac38dfe45', '2017-08-28 20:28:14', '2017-08-28 20:28:14', 'Activo'),
(1104, 'Elizabeth ', 'Oseguera', 'Bautista', 24, 2, 1, 15, 52, 'eli-030693@live.com.mx', 18, 138, 1, NULL, NULL, NULL, 'SI', '0baab64ddfb6c1a29a1e926839c298a50f05872a', 'Eliframbuesa', '2', '4162548db51612398ce52b842ec51dffbcced2aa', '2017-08-25 22:07:31', '2017-08-25 22:07:31', 'Activo'),
(1105, 'Cintyha Guadalupe', 'Pérez', 'Tirado ', 23, 2, 1, 15, 100, 'cintyha_20@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '1e5f93acacb53e9494d468cbc725e118f0b97951', 'Cintyha', '2', '5c9e111c2839e921a9c5cd22f034ced3fb2315db', '2017-08-25 22:16:41', '2017-08-25 22:16:41', 'Activo'),
(1106, 'Arturo ', 'Corona ', 'De la Cruz ', 21, 1, 1, 15, 49, 'z-cia-@hotmail.com', 9, 75, 1, NULL, NULL, NULL, 'SI', '39cb8264d1d644a41236b55fc42f72470451eb36', 'zkdna', '7', '6ad44e82c0a0c2ee5361416401547c1c2756a70a', '2017-08-25 22:23:31', '2017-08-25 22:23:31', 'Activo'),
(1107, 'Salvador', 'Lucas', 'Huacuz', 52, 1, 1, 15, 56, 'huacuz65@hotmail.com', 13, 107, 2, NULL, NULL, NULL, 'SI', '8e803890f6ddbd292c4fdd374ba3ca313a61657d', 'huacuz', '2', '8d3a37af3118ac5fbd850ec54ee3f829a490303d', '2017-08-25 22:27:56', '2017-08-25 22:27:56', 'Activo'),
(1108, 'Eduardo', 'León', 'Álvarez', 21, 1, 1, 15, 64, 'edleon115@gmail.com', 9, 75, 4, NULL, NULL, NULL, 'NO', '61c0e005bec82c0d80ef273c048d935eaaedbdd0', 'edleonalv', '7', '992cf0681463355591b27740b239edf75db1fa43', '2017-08-25 22:37:57', '2017-08-25 22:37:57', 'Activo'),
(1109, 'Eduardo', 'León', 'Álvarez', 21, 1, 1, 15, 64, 'edleon115@gmail.com', 9, 75, 4, NULL, NULL, NULL, 'NO', '61c0e005bec82c0d80ef273c048d935eaaedbdd0', 'ed115leon', '7', '20d7c5aaf879fb99d45bfb3bc7f27bc62e290a09', '2017-08-25 22:46:17', '2017-08-25 22:46:17', 'Activo'),
(1110, 'karina', 'zamudio', 'jaime', 23, 2, 1, 15, 104, 'ka_ry.27@hotmail.com', 43, 411, 1, NULL, NULL, NULL, 'SI', 'd3e19d34aa258c48027b78bebc969292373cf659', 'kari', '2', '51913d53e354a6358fb3a29494d1b9b513b8b1ec', '2017-08-25 23:12:40', '2017-08-25 23:12:40', 'Activo'),
(1111, 'Ana Karen', 'Villagomez', 'Guzmán', 28, 2, 1, 15, 56, 'kvillagomez@live.com', 43, 411, 3, NULL, NULL, NULL, 'SI', '7f158e7d827799060b5271988e861fe0b042aa9f', 'anakaren', '2', 'ea773a8544b60ac89fcde0ef5d7efc2c6b737e87', '2017-08-25 23:17:38', '2017-08-25 23:17:38', 'Activo'),
(1112, 'Monica', 'Linares', 'Heredia', 21, 2, 1, 15, 42, 'monica_linares@outlook.com', 130, 405, 1, NULL, NULL, NULL, 'SI', '163f5143c40730c7c0f04b7dc3ea489a10c791e4', 'monica-linares', '2', 'baaf90c189483a7e2362a7bab6e45e0927dbd71b', '2017-08-25 23:19:42', '2017-08-25 23:19:42', 'Activo'),
(1113, 'Edgardo Abdiel', 'Escoto', 'Sotelo', 29, 1, 1, 15, 51, 'edgardo_087@hotmail.com', 26, 183, 2, NULL, NULL, NULL, 'SI', 'b3a9c4c52b96204512e3b2067b466266fab3da31', 'Edgardo087', '2', 'c8b6aedad1b5a5619fb9f6c4d4e06a69d10428f3', '2017-08-25 23:20:09', '2017-08-25 23:20:09', 'Activo'),
(1114, 'Engelbert', 'Huape', 'Padilla', 36, 1, 1, 15, 56, 'pahuen@gmail.com', 43, 329, 3, 2, NULL, NULL, 'SI', '4ee28116d17923325d50c6b85d5e9aee4254c057', 'evaluador', '3', 'ea3036347f80cd7ad0e2b964a9a0c4f36a834333', '2017-08-25 23:23:31', '2017-08-25 23:23:31', 'Activo'),
(1115, 'Virginia A', 'Robinson', 'Fuentes', 56, 2, 1, 8, 122, 'vrobinsonf@yahoo.com', 43, 339, 3, 5, NULL, NULL, 'SI', '6718b850e8953d9e05069fdd197daf31164dfa79', 'vrobinsonf', '3', '1a7e382ab4f30674bd1cd5ff911392b104d7e4c3', '2017-08-25 23:29:08', '2017-08-25 23:29:08', 'Activo'),
(1116, 'Francisco Javier', 'Olivera', 'Guerrero', 43, 1, 1, 13, 127, 'fco_olivera@hotmail.com', 132, 456, 3, NULL, NULL, NULL, 'SI', '670752e7c943163943de03fa909f9c8137b090ab', 'folivera', '2', '78fd39f7314816e3067254d16ffdfa7266fd953a', '2017-08-25 23:40:45', '2017-08-25 23:40:45', 'Activo'),
(1117, 'Mario Eduardo', 'Abad', 'Javier', 29, 1, 1, 15, 56, 'ibq.mario.abad@outlook.com', 43, 417, 2, NULL, NULL, NULL, 'SI', '820620fdca6c4ee164a3db309f1c3249394660cc', 'MarioEduardo', '2', '8caa95923c81e13ce47f32d18b2f7a939597ed87', '2017-08-25 23:48:32', '2017-08-25 23:48:32', 'Activo'),
(1118, 'Marco Antonio', 'Alcasio', 'Valerio', 25, 1, 1, 15, 49, 'alcasiovalerio@gmail.com', 9, 75, 4, NULL, NULL, NULL, 'SI', 'c704b10b7847fa8506135479c551b2a76bbc32f5', 'alcasiovalerio', '7', 'ccdedf323c869cbc52f89742198b0e66dbd0252a', '2017-08-25 23:51:24', '2017-08-25 23:51:24', 'Activo'),
(1119, 'Marco Antonio', 'Alcasio', 'Valerio', 25, 1, 1, 15, 49, 'alcasiovalerio@gmail.com', 9, 75, 4, NULL, NULL, NULL, 'SI', 'c704b10b7847fa8506135479c551b2a76bbc32f5', 'alcasiovalerio', '7', 'a2b3f64f1b72e0af08ec87b046fd5b433f96166b', '2017-08-25 23:54:55', '2017-08-25 23:54:55', 'Activo'),
(1120, 'Marco Antonio', 'Alcasio', 'Valerio', 25, 1, 1, 15, 49, 'alcasiovalerio@gmail.com', 9, 75, 1, NULL, NULL, NULL, 'SI', 'c704b10b7847fa8506135479c551b2a76bbc32f5', 'MarcoAlcasio', '7', 'af1f14f01df6217548de956cd109ecdbd1e98917', '2017-08-26 00:13:52', '2017-08-26 00:13:52', 'Activo'),
(1121, 'Bianca Vanessa', 'Espinosa', 'De La Paz', 21, 2, 1, 15, 49, 'biankvanessa2h@hotmail.com', 9, 75, 1, NULL, NULL, NULL, 'SI', '21341125e2801cd5e852cc4889c86bcd5ee46f5f', 'BiancaEspinosa', '7', 'ad2754680ea4082035a0e43fce5ecb055150b92c', '2017-08-26 00:49:04', '2017-08-26 00:49:04', 'Activo'),
(1122, 'Daniel ', 'Albavera', 'Harfush', 21, 1, 1, 15, 49, 'aries_da110@hotmail.com', 9, 75, 1, NULL, NULL, NULL, 'NO', '20e5cc44d976a87c0f29fcff274a344da764554e', 'Danix', '7', '5dd65b9d04ed11aee4be29885dce63167fa9c7fa', '2017-08-26 01:00:50', '2017-08-26 01:00:50', 'Activo'),
(1123, 'Marina', 'Arredondo', 'Santoyo', 32, 2, 1, 15, 56, 'mas_mina@hotmail.com', 43, 330, 2, NULL, NULL, NULL, 'SI', '1676746633166ac01629deee42b165b4e62d7130', 'Marina', '2', 'b0e8f3a69c23962d58b30ae49e99e48e178c31d8', '2017-08-26 01:19:18', '2017-08-26 01:19:18', 'Activo'),
(1124, 'Chantal', 'Rosales', 'Ceja', 21, 2, 1, 15, 78, 'lnavabarrios@gmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', 'a61a72668d82da8f44f74c8664e9dc8060879337', 'charlote', '2', '09f3f4cedbfe50987723209f2f8134afeea87f1a', '2017-08-26 01:20:14', '2017-08-26 01:20:14', 'Activo');
INSERT INTO `usuarios` (`id_usuarios`, `nombre`, `a_paterno`, `a_materno`, `edad`, `genero`, `nacionalidad`, `estado`, `municipio`, `email`, `institucion`, `facultad`, `nivel`, `mesa`, `modalidad`, `area_id`, `mailing`, `password`, `username`, `puesto`, `token`, `created_at`, `request_token`, `status`) VALUES
(1125, 'Luis Fernando', 'Juárez', 'Rodríguez', 21, 1, 1, 15, 49, 'luiz_7-@hotmail.com', 9, 75, 1, NULL, NULL, NULL, 'SI', '216f8f186da4033d3dc540c9122fa7fb5952dc53', 'LuisJR', '7', '04bbab6f2e5d7582519f855f02f67008de15151f', '2017-08-26 01:26:35', '2017-08-26 01:26:35', 'Activo'),
(1126, 'LETCIA', 'LOPEZ', 'LECO', 23, 2, 1, 15, 16, 'lelachida@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '56a16be33fa5209a1f49a1506b01ad9f4945a8d6', 'LETTY', '2', '073648b03afd9baffd658efdd3e0733c3ad17fca', '2017-08-26 01:37:13', '2017-08-26 01:37:13', 'Activo'),
(1127, 'Laura', 'García', 'Quezada', 25, 2, 1, 15, 56, 'lau23991@hotmail.com', 43, 339, 2, NULL, NULL, NULL, 'SI', '1630c3f94b3832838433797940531c4bd8b1b377', 'lau565', '2', '23c0c01e1a88d88b3fef5e290c8d43e4efe4f0c2', '2017-08-26 01:47:00', '2017-08-26 01:47:00', 'Activo'),
(1128, 'Ruben', 'Hernández', 'Morales', 33, 1, 1, 15, 56, 'quercusbios@hotmail.com', 43, 346, 2, NULL, NULL, NULL, 'SI', 'dffa07ce9310cb98d5315236f91f53d829e78119', 'rhernandezm', '2', '487dbd2e60cc392a75088e97caf5fd7959952da3', '2017-08-26 01:52:15', '2017-08-26 01:52:15', 'Activo'),
(1203, 'Kathia Amital', 'Lemus', 'Sagrero', 22, 2, 1, 15, 56, 'amylemus1@hotmail.com', 13, 108, 1, NULL, NULL, NULL, 'SI', '245ee0b5f016082770b1b076165fb0376c30197f', 'amyls', '2', 'e7696ed61d7ab32554e7947b2af4de1eeb009b48', '2017-08-30 21:10:35', '2017-08-30 21:10:35', 'Activo'),
(1130, 'Ana Paulina ', 'Reyes', 'Ortega', 21, 2, 1, 15, 49, 'ana_pau26@hotmail.com', 9, 75, 1, NULL, NULL, NULL, 'SI', '198eac9c598cc3fc62a23f4b93d54d062a96ec6f', 'AnaPau', '7', '05a4c10ea1a847878d5980fe4008597d1eaa68d4', '2017-08-26 02:55:27', '2017-08-26 02:55:27', 'Activo'),
(1131, 'Mauricio', 'Muñoz', 'Martinez', 18, 1, 1, 15, 49, 'maurrricio83@hotmail.com', 9, 75, 1, NULL, NULL, NULL, 'SI', '613200ee29ea4f65ec1dde3c7c8f518fd423af65', 'Mauriciomm', '7', 'b6a6d63f3fcdd486fe8d1e7be8eec4595a25a5fe', '2017-08-26 03:20:13', '2017-08-26 03:20:13', 'Activo'),
(1132, 'Héctor Manuel ', 'Arreaga', 'González', 28, 1, 1, 15, 56, 'arreaga_qfb@hotmail.com', 43, 411, 3, NULL, NULL, NULL, 'NO', 'f3e988bf2aca967488a0b59d52c8a6aa4d9628ea', 'arreagagonzalezmanuel', '2', 'f2498e8adbef377fd5d877a8188607d3a0305321', '2017-08-26 03:29:43', '2017-08-26 03:29:43', 'Activo'),
(1133, 'Luis Enrique', 'Arroyo', 'Salgado', 20, 1, 1, 15, 20, 'EnriqueArroyo123@outlook.com', 9, 75, 1, NULL, NULL, NULL, 'SI', '466caf960ec4e2885926e227beb25ebeecc8f197', 'EnriqueArroyo', '7', '509236c70c46f9d44dfbf633fc2bf684355bcdc5', '2017-08-26 03:40:51', '2017-08-26 03:40:51', 'Activo'),
(1186, 'RICARDO', 'GARCÍA', 'MORA', 48, 1, 1, 15, 56, 'rigarmora@hotmail.com', 43, 349, 3, NULL, NULL, NULL, 'SI', '517c3b429dfb0f785139b8d73cd337deb195009a', 'rgmoramx', '2', '696f4e80f31139a6036221f1fdbfbb7f217e665b', '2017-08-28 22:36:24', '2017-08-28 22:36:24', 'Activo'),
(1136, 'jose saul', 'lopez', 'ramirez', 21, 1, 1, 15, 49, 'saul.lr@live.com', 9, 75, 1, NULL, NULL, NULL, 'SI', '085d1b51de4336576fb79612cbfa6c0833a5a936', 'lrsaul', '7', '255ad01cfbc8c0345f18c6a8117cae846d2d60fc', '2017-08-26 03:43:39', '2017-08-26 03:43:39', 'Activo'),
(1137, 'MARISOL', 'DIAZ', 'RODRIGUEZ', 34, 2, 1, 15, 56, 'mol97mx@gmail.com', 11, 89, 1, NULL, NULL, NULL, 'SI', 'f6d59c02cbbb7bc810a3e90b0007fae31b8e45ba', 'MarisolDiazRo', '2', '2327c39d4074b290b8c12866a36b8a27350d30d8', '2017-08-26 03:44:00', '2017-08-26 03:44:00', 'Activo'),
(1138, 'Perla Araceli ', 'Barbosa', 'Muñoz', 41, 2, 1, 15, 56, 'PERLA_ABM@HOTMAIL.COM', 43, 349, 3, NULL, NULL, NULL, 'SI', '09757329348e39360e9681b5afc67d741a18c7a0', 'pbarbosa', '2', 'b528941a5784ade1355b16c89c2104515ae8cd09', '2017-08-26 04:19:05', '2017-08-26 04:19:05', 'Activo'),
(1139, 'JUAN MIGUEL', 'MONZON ', 'MORENO', 22, 1, 1, 15, 56, 'juanmi-007@hotmail.com', 43, 329, 1, NULL, NULL, NULL, 'SI', 'b0972f8809b89ae52b308efce09147b6245fe7b5', 'JMMONZON', '7', 'cbcdb5b7ad61f7cf7c2fa10591caafbfbd5e0bae', '2017-08-26 04:21:29', '2017-08-26 04:21:29', 'Activo'),
(1196, 'María Dolores', 'peña', 'padilla', 21, 2, 1, 15, 49, 'lolita_presiosa@live.com', 9, 75, 1, NULL, NULL, NULL, 'SI', '274070cd55e44ffa7ad51633a3bdf07e335f5594', 'Mariloli', '7', '8141d79a02b9bf4310927218da2a51568fc42a8c', '2017-08-29 23:18:43', '2017-08-29 23:18:43', 'Activo'),
(1141, 'Jesus Cirilo', 'Trujillo', 'Jimenez', 35, 1, 1, 15, 56, 'jc.umich@gmail.com', 43, 329, 2, NULL, NULL, NULL, 'SI', '53ef3b919bbeefe2098784c8c8ce2c4b2b05fad1', 'jtrujillo', '2', '6015d973f9acbf51533ac6b254284852c2f3957c', '2017-08-26 04:27:00', '2017-08-26 04:27:00', 'Activo'),
(1194, 'Gerardo ', 'Rocha', 'Rodríguez', 23, 1, 1, 15, 56, 'gera_fz@hotmail.com', 43, 329, 1, NULL, NULL, NULL, 'SI', '57bb1a365d986c8dc4d340a0d055da314bc177d8', 'Rocha', '7', 'bcf2da6a5b7163cef71383697c792bf559726036', '2017-08-29 20:45:47', '2017-08-29 20:45:47', 'Activo'),
(1195, 'Edson Danny', 'Guzmán ', 'Crisantos', 23, 1, 1, 15, 56, 'eds2_danny@hotmail.com', 43, 329, 1, NULL, NULL, NULL, 'SI', '84d6398a47c27400a5677bea553ed50e4a99296c', 'Edson', '7', '3b38a53393a781543d91047cadb180dc63059472', '2017-08-29 20:46:19', '2017-08-29 20:46:19', 'Activo'),
(1144, 'Jesus Cirilo', 'Trujillo', 'Jimenez', 35, 1, 1, 15, 56, 'jc.umich@gmail.com', 43, 329, 2, 2, NULL, NULL, 'SI', '53ef3b919bbeefe2098784c8c8ce2c4b2b05fad1', 'JesusCirilo', '3', '4003881b01419f0508d9050ecb05d25e36a4bab0', '2017-08-26 04:35:38', '2017-08-26 04:35:38', 'Activo'),
(1191, 'Isahi', 'Sánchez', 'Suárez', 37, 1, 1, 15, 104, 'isanchez198@hotmail.com', 27, 186, 3, NULL, NULL, NULL, 'SI', 'abd7f8dbb9d29419a2a986a6a75228fa714013c9', 'isanchez1980', '2', '60f1af2d6848d05ef9e15c1e58d874745aff646e', '2017-08-29 14:15:34', '2017-08-29 14:15:34', 'Activo'),
(1192, 'Ana María', 'Méndez', 'Puga', 55, 2, 1, 15, 56, 'mendezana22@gmail.com', 43, 332, 3, 4, NULL, NULL, 'SI', '6a0860fd7d8b0b81375ea5afbefd8cea41af1bbb', 'ampugaevaluado3', '3', '6beb640909a2247ba85f00af2678c679d6bcad3e', '2017-08-29 16:11:17', '2017-08-29 16:11:17', 'Activo'),
(1188, 'JUAN CARLOS', 'GONZALEZ', 'HERNANDEZ', 44, 1, 1, 15, 56, 'jcgh1974@yahoo.com', 11, 93, 3, 3, NULL, NULL, 'SI', '3c4c8526ebccfb5a2409156c8adda0c9b0466f87', 'evaluador', '3', '9f9a04775afa69c287a515f98bb4bd95571fdb47', '2017-08-29 01:59:20', '2017-08-29 01:59:20', 'Activo'),
(1189, 'Norma Leticia', 'Onchi', 'Ramuco', 27, 2, 1, 15, 56, 'norma.onchi@gmail.com', 43, 418, 2, NULL, NULL, NULL, 'SI', '766f01948914d8ba159ceb18966050bc8c6ff1c5', 'normaonchi', '2', '38bfedee72907af851a281f1d50691fd44fc4cc0', '2017-08-29 03:24:43', '2017-08-29 03:24:43', 'Activo'),
(1190, 'Erik Celestino', 'Espinosa', 'Luna', 20, 1, 1, 15, 56, 'tatiserik16@gmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', '940d54cbb707279c528eaa451206d8d7698fe616', 'Erik', '7', 'cfaeea86c382980eefe3416931b2bdfdc416ca40', '2017-08-29 14:05:40', '2017-08-29 14:05:40', 'Activo'),
(1154, 'María ', 'Peña ', 'Padilla ', 21, 2, 1, 15, 49, 'lolita_presiosa@live.com', 9, 75, 1, NULL, NULL, NULL, 'SI', '8027c942fd942e721bc52f69acb6a9012f755f42', 'Marilopp', '7', '3a29c185757907271343622a9e4ef2b47e7e4994', '2017-08-26 04:54:07', '2017-08-26 04:54:07', 'Activo'),
(1155, 'Iván Karim', 'Salgado', 'Bucio', 29, 1, 1, 15, 6, 'ivansalgado1184@gmail.com', 43, 334, 1, NULL, NULL, NULL, 'SI', 'f607c9816d687b90dfcce7071b9329838a2b0d92', 'ivansalgado', '7', '7b0cdafe9c64dfaa2b2f9566942b0344c701eb22', '2017-08-26 04:58:53', '2017-08-26 04:58:53', 'Activo'),
(1156, 'Heriberto', 'Aguilar', 'Villa', 22, 1, 1, 15, 56, 'heriberto.agv@gmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', 'b62affecf1d3f49dc7144441069a72ff0a4b46a0', 'Heri22', '7', '1599cc56d9965e8ce4966a5bc83f7a9623264328', '2017-08-26 05:04:53', '2017-08-26 05:04:53', 'Activo'),
(1157, 'Estela Rubi ', 'Avila ', 'Ojeda', 21, 2, 1, 15, 56, 'Rubi.aviojeda@gmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', '80cb1342e6a3529949940a20a7a69ef208af0cc2', 'Rubiavi', '2', '28f921ffb9a18779cb35e11fab8635d7c2dc0932', '2017-08-26 05:05:46', '2017-08-26 05:05:46', 'Activo'),
(1158, 'Edgar Noé', 'Moreno', 'Porras', 21, 1, 1, 15, 49, 'noe.moreno2626@gmail.com', 9, 75, 1, NULL, NULL, NULL, 'NO', 'f66355b38e91d15bfb4cbb50d75adab355e5978b', 'noe2626', '7', '87c13df33f0707d57bd9f33663d09deee934bf57', '2017-08-26 06:07:32', '2017-08-26 06:07:32', 'Activo'),
(1159, 'Rosario Yadira ', 'Avalos', 'Barajas', 34, 2, 1, 15, 52, 'yavies@gmail.com', 18, 138, 1, NULL, NULL, NULL, 'SI', 'a879420f4ea2dc1daec56afd8c66101a8e22d3d4', 'yavies', '2', 'c7ae4c3582d2bead01067dca037806f6eecd8dfd', '2017-08-26 14:16:20', '2017-08-26 14:16:20', 'Activo'),
(1160, 'Omar Jehovani', 'López', 'Orozco', 42, 1, 1, 15, 6, 'omar.lopez.orozco@gmail.com', 14, 115, 3, NULL, NULL, NULL, 'SI', '93a68f290998c76121da50a721fac410a803ab30', 'omarlopez', '2', 'a03f1e21aa52c4dbe2b35fec8adadbeb58886975', '2017-08-26 15:38:56', '2017-08-26 15:38:56', 'Activo'),
(1161, 'Ma de Jesús', 'Ruiz', 'Recéndiz', 47, 2, 1, 15, 56, 'violetarr05@gmail.com', 43, 336, 3, NULL, NULL, NULL, 'SI', 'e39a15acbac005ef34f26b9345689d3c33d87960', 'MadeJesusRuiz', '7', '71232a37dc66ae209346f48427cb07434a2809b6', '2017-08-26 16:03:47', '2017-08-26 16:03:47', 'Activo'),
(1162, 'Ma de Jesús', 'Ruiz', 'Recéndiz', 47, 2, 1, 15, 56, 'violetarr05@gmail.com', 43, 336, 3, NULL, NULL, NULL, 'SI', '876c9ff64230d5730a227f471f9dbac1fc711021', 'MadeJesusRuizRecendiz', '2', '73884fdf195bb5f462317a4e8f43951196f2657d', '2017-08-26 16:08:11', '2017-08-26 16:08:11', 'Activo'),
(1163, 'FABIAN', 'GAONA', 'SANCHEZ', 21, 1, 1, 15, 42, 'fgsx5788@gmail.com', 8, 71, 1, NULL, NULL, NULL, 'SI', '367b189af424dafcc1b1a8bfb7ad4c7286175a7a', 'GAONA1', '7', 'd30e790319dc843b5b43342e28213bebfc505d2a', '2017-08-30 14:03:43', '2017-08-26 16:11:04', 'Activo'),
(1164, 'FABIAN', 'GAONA', 'SANCHEZ', 21, 1, 1, 15, 42, 'fgsx5788@gmail.com', 8, 71, 1, NULL, NULL, NULL, 'SI', '367b189af424dafcc1b1a8bfb7ad4c7286175a7a', 'GAONA', '2', '9916599226239d017b855ca931651fbe0cbfcb02', '2017-08-26 16:15:12', '2017-08-26 16:15:12', 'Activo'),
(1165, 'ANA CAROLINA', 'ANGEL ', 'DEL RIO', 23, 2, 1, 15, 42, 'carolina.angel@outlook.com', 8, 71, 1, NULL, NULL, NULL, 'SI', 'dc878438e721e0b51024347f41e57c0aeaee4530', 'CAROLINA', '7', '00022e28622cba834af3af163ec63b796edd6390', '2017-08-30 14:03:34', '2017-08-26 16:23:53', 'Activo'),
(1197, 'GILBERTO ALEJANDRO', 'ROMERO', 'PEDRAZA', 37, 1, 1, 15, 56, 'gil_a_r_p@hotmail.com', 28, 198, 2, NULL, NULL, NULL, 'SI', 'bc2c7cd8c68855585bb75063462f20f2976eca62', 'gromero', '2', '7ef7ebfc5e9cc0642c95131cec430bbfa02ef9ed', '2017-08-29 23:23:42', '2017-08-29 23:23:42', 'Activo'),
(1169, 'ANA CAROLINA ', 'ÁNGEL', 'DEL RÍO ', 23, 2, 1, 15, 44, 'carolina.angel@outlook.com', 8, 71, 1, NULL, NULL, NULL, 'SI', 'dc878438e721e0b51024347f41e57c0aeaee4530', 'CAROLINA1', '2', '562385a5ec4e55a40d52789edfa99da56ab431e4', '2017-08-26 18:15:03', '2017-08-26 18:15:03', 'Activo'),
(1198, 'Irving Osvaldo', 'Villanueva ', 'Perez', 22, 1, 1, 15, 49, 'bournount@hotmail.com', 9, 75, 4, NULL, NULL, NULL, 'NO', '8e63ac100e3e81a4298c97b7884ec0f13f9f83da', 'irvingosvaldo', '7', '07e60d7c60525814cf015614f94e2719631533a8', '2017-08-30 02:05:34', '2017-08-30 02:05:34', 'Activo'),
(1171, 'Juan Carlos', 'Corral', 'Huacuz', 43, 1, 1, 15, 56, 'jcch_04@yahoo.com.mx', 25, 179, 2, NULL, NULL, NULL, 'SI', 'a402fc34d82544585a1145cf814d20b8c7a2dd4e', 'jccorralh', '7', '6fc9dd71b6d57879afe0431e7c3386cc9aae788f', '2017-08-27 01:44:27', '2017-08-27 01:44:27', 'Activo'),
(1172, 'Guillermo Adrián', 'Estrada', 'Manríquez', 21, 1, 1, 15, 49, 'memo.capricornio@gmail.com', 9, 75, 4, NULL, NULL, NULL, 'SI', 'e14098c5522dfcaa15c49b789fc477584eda00cb', 'MemoEstrada', '7', 'f95c6a4ee34bbc4e029b43f40f92b40d9a3f3f12', '2017-08-27 01:49:51', '2017-08-27 01:49:51', 'Activo'),
(1173, 'Edgar Noé', 'Moreno', 'Porras', 21, 1, 1, 15, 49, 'noe.moreno2626@gmail.com', 9, 75, 1, NULL, NULL, NULL, 'NO', '4c216f0858c3044b1ced35ec61a47e8b3033bd70', 'noe26', '7', 'db5818c00162993dd025aeb87005723c3177671b', '2017-08-27 05:15:27', '2017-08-27 05:15:27', 'Activo'),
(1175, 'Sandra Estefania ', 'Garcia ', 'Rueda ', 24, 2, 1, 15, 114, 'biotecsegr@hotmail.com', 43, 346, 2, NULL, NULL, NULL, 'SI', 'd1cd761b09025f35582cb1d53fb575ac70b0776c', 'SandraE', '7', '26685b3c3428173229f5f6a29d04c17867d3fed9', '2017-08-28 00:23:15', '2017-08-28 00:23:15', 'Activo'),
(1176, 'Edgar Ivan ', 'Gonzalez', 'Jimenez', 27, 1, 1, 15, 6, 'ivan.gonzalez89@hotmail.com', 107, 454, 1, NULL, NULL, NULL, 'SI', '4a20f7d88a3c03416f732230b6a4b7a7449d0f8a', 'gonzalez', '7', 'e5c4f848a736189c29ba7ac0abdc94a706c87222', '2017-08-28 02:48:20', '2017-08-28 02:48:20', 'Activo'),
(1204, 'Martha', 'Garcia', 'Javier', 48, 2, 1, 11, 125, 'martha_enfra@hotmail.com', 43, 336, 2, NULL, NULL, NULL, 'SI', '5238db37e8303f10602e60e2a264846b9afd903f', 'marthagar', '2', '032a4db44ffe7fffd991665ece7491ee6e72cf72', '2017-08-31 18:14:18', '2017-08-31 18:14:18', 'Activo'),
(1200, 'JOSEFINA', 'Valenzuela', 'Gandarilla', 44, 2, 1, 15, 56, 'josefina_vgandarilla@yahoo.com.mx', 43, 336, 3, NULL, NULL, NULL, 'SI', 'e09c695dbb06d658de3fdda53c216426de3680fe', 'Josefina', '2', '978bf8a428acdb83a75192a3697e8ccaa13bcc04', '2017-08-30 04:26:07', '2017-08-30 04:26:07', 'Activo'),
(1201, 'esteban', 'anguiano', 'aguilar', 24, 1, 1, 15, 62, 'esteban_93_120@hotmail.com', 43, 347, 2, NULL, NULL, NULL, 'SI', 'a1cbb53078d7241a1b109299c122d44a0a58277e', 'steban', '7', '8cad47c505b21cc0642d0c15d7200b718731ff81', '2017-08-30 06:05:27', '2017-08-30 06:05:27', 'Activo'),
(1375, 'JOSE ISIDORO', 'HERNANDEZ', 'REYES', 21, 1, 1, 15, 56, 'jose96isidoro@hotmail.com', 43, 329, 1, NULL, NULL, NULL, 'SI', '0ac7d2e6ca3951aea7bd70dbbe7dd50a4dff3959', 'ISIDORO96', '7', 'f3df777a42c3773adcf2adbe727663462499d0bd', '2017-09-12 06:34:53', '2017-09-12 06:34:53', 'Activo'),
(1206, 'Ana Isabel ', 'Mejia ', 'Elvira', 25, 2, 1, 15, 104, 'annmejielvira1203@gmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', '959af712f1f645d8a30dc0f95d4e62af4c25b65e', 'amelv1203', '2', '163bde443e5870c2160f145d2e98d7b0d12ee95f', '2017-09-01 17:10:52', '2017-09-01 17:10:52', 'Activo'),
(1207, 'Dulce Stefany', 'Arreola', 'Rivera', 24, 2, 1, 15, 56, 'dulce_arreola@hotmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', '83b6565444d01dd999471b138a387a5eb80982cb', 'dularreoriv0711', '2', 'c438adc3c4eb4718b9e7078cedbfad8a69c5dc74', '2017-09-01 17:19:50', '2017-09-01 17:19:50', 'Activo'),
(1208, 'Erandi', 'Velasco', 'Morón', 24, 2, 1, 15, 51, 'nanisvemo@gmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', '4c9896f4e4d0e68fd4c350e923fa23b581a5481c', 'eravelasmo0794', '2', '62c32ccd931f19ebaa1689f6fecc1682f327e27f', '2017-09-01 17:37:38', '2017-09-01 17:37:38', 'Activo'),
(1209, 'David', 'Tapia', 'Saavedra', 18, 1, 1, 15, 56, 'davidtapia0207@live.com', 132, 456, 3, NULL, NULL, NULL, 'SI', '3b55ffeb31091ca987e433f4b3e7722b3ad7cc9a', 'TASD600216DD3', '2', 'da9614eb047bc57482221e4778fbfcde71466be5', '2017-09-01 19:10:50', '2017-09-01 19:10:50', 'Activo'),
(1210, 'Omar', 'Jaimes', 'Brito', 35, 1, 1, 15, 56, 'omarjaimes2@gmail.com', 11, 88, 1, NULL, NULL, NULL, 'SI', 'edc192c5327bb3ef4e167df7d11233511375037d', 'OmarJaiimes', '1', '2a74eb3cbeaae80ab4785dfaf29a8caed8ff08fe', '2017-09-01 19:26:12', '2017-09-01 19:25:38', 'Activo'),
(1211, 'Brian Santiago', 'Bautista', 'Estrada', 22, 1, 1, 15, 44, 'santiago141995@live.com', 24, 173, 1, NULL, NULL, NULL, 'SI', '29a811a6d34eab8d09c30ba546b5891acf355d7d', 'brianucem', '2', 'dcfe4e6590cc8824e0dfc3cfcef7495c9646b63b', '2017-09-02 04:35:52', '2017-09-02 04:35:52', 'Activo'),
(1212, 'Tomás Hamlet ', 'Escutia ', 'Monroy', 25, 1, 1, 15, 7, '1105hamlet@gmail.com', 43, 349, 2, NULL, NULL, NULL, 'SI', 'f239297775aa366f42d9345d484516ebdb2451d4', '1105hamlet', '2', '1592d3def86fb3f6d8348fb34fab1ad194da0039', '2017-09-02 14:14:19', '2017-09-02 14:14:19', 'Activo'),
(1406, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', NULL, '328d0bcd477800e53a3f45a3ee0850b869c6f3f3', '2017-09-18 18:14:08', '2017-09-18 18:14:08', NULL),
(1378, 'Héctor', 'Andrade', 'Prado', 29, 1, 1, 15, 44, 'tetor_2788@hotmail.com', 8, 71, 1, NULL, NULL, NULL, 'SI', '366a74517638e8d56be82836b9cce7b423a02f38', 'Hector88', '7', '087b5425132f33ea716b0ab6610bc79fd8d48510', '2017-09-12 22:58:07', '2017-09-12 22:58:07', 'Activo'),
(1215, 'SILVIA ECATERINA', 'GARCIA', 'JAIN', 27, 2, 1, 15, 56, 'ekt_jain12@hotmail.com', 43, 346, 2, NULL, NULL, NULL, 'NO', '7011e2dc00ee3230afdd336bb8dc11eeff5316a9', 'ECATERINA', '2', '485a00580f8bfb453e63b08ddb12573fe21a2f79', '2017-09-02 22:24:38', '2017-09-02 22:24:38', 'Activo'),
(1216, 'Fernando', 'Hernández', 'Hernández', 46, 1, 1, 15, 56, '1916540@gmail.com', 43, 350, 3, 6, NULL, NULL, 'NO', 'acb7be465af6922a29f011b395913f2856f13570', '1916540', '3', 'b21474738fbdb13b6b9daf8ab3959a897c62c556', '2017-09-03 13:02:25', '2017-09-03 13:02:25', 'Activo'),
(1218, 'victor meza carmen', 'MEZA', 'MEZA ', 42, 1, 1, 15, 56, 'VICTOR_MEZA2004@YAHOO.COM.MX', 43, 411, 3, NULL, NULL, NULL, 'SI', '642d5eddff7c5d0d8442f50f4e8cf7e3b381f067', 'victormezacaren74', '7', '06e172ae98eebc25f9d256415ee1f73f946b8be3', '2017-09-03 16:50:46', '2017-09-03 16:50:46', 'Activo'),
(1219, 'Martha Isela ', 'Ramirez', 'Diaz', 43, 2, 1, 15, 56, 'marthaisela_ramirez@hotmail.com', 43, 411, 3, NULL, NULL, NULL, 'SI', '3f23a9ce756b8977394c61f9750bd24c5de8fb43', 'marthaisela', '7', 'a0ad44f7ed84480a185539d4b5d61378ec7ba647', '2017-09-03 17:27:59', '2017-09-03 17:27:59', 'Activo'),
(1220, 'Agustín Emmanuel', 'Farías ', 'Flores', 22, 1, 1, 15, 44, 'airon195@gmail.com', 24, 177, 1, NULL, NULL, NULL, 'SI', '8dd75f4a3bf50a74f8df992294255c07363b7839', 'airon', '2', 'e24df3cb8e1ccbff1c978e19af6f30cb8443d87a', '2017-09-03 19:18:58', '2017-09-03 19:18:58', 'Activo'),
(1221, 'Brayan Francisco', 'Salazar', 'Sandoval', 21, 1, 1, 15, 52, 'hiatus0203@gmail.com', 24, 176, 1, NULL, NULL, NULL, 'SI', 'c54718ca6ebe0d98f5bc2b17b33ae32f3e43aeff', 'brsalazar', '2', '2261f3e7e5f7f5a7188397d7bda59081be275fb2', '2017-09-03 19:36:41', '2017-09-03 19:36:41', 'Activo'),
(1222, 'Bulmaro ', 'Villicaña ', 'Huerta ', 22, 1, 1, 15, 36, 'villicana_huerta_2012@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', 'c5c8681a90b2928855c03a789bb53109e02b6b87', 'Bulmaro', '7', '012c248e9305e4b03e42480e544e4793400d6e8a', '2017-09-04 00:12:08', '2017-09-04 00:12:08', 'Activo'),
(1223, 'MaMartha', 'Marín', 'Laredo', 65, 2, 1, 15, 56, 'marthita_marin@yahoo.com.mx', 43, 336, 3, NULL, NULL, NULL, 'SI', '40383443a04716796f33ef693454a482d2a75f9d', 'martha52', '2', 'a29020254dbf728c32040aa4023f6f819c525d82', '2017-09-04 02:37:37', '2017-09-04 02:37:37', 'Activo'),
(1225, 'Julia Inocencia ', 'Cortes', 'Sereno', 22, 2, 1, 15, 56, 'piolin.21@hotmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', 'c6ac76b4852a00920372dbd5bc011d72a49cff9a', 'Juliiz', '2', '36872b4b65e5aeb59c4719055dbd67586dd2ee6b', '2017-09-04 15:15:30', '2017-09-04 15:15:30', 'Activo'),
(1226, 'Hugo Alejandro', 'García ', 'Gutiérrez', 38, 1, 1, 15, 56, 'haggmormx@gmail.com', 43, 411, 3, NULL, NULL, NULL, 'SI', '1a0318f9295f55344208b06d9ac6e8d0bf0e70ae', 'hgarcia', '7', '3ab7e70b76a7acba038160783df427d75c126368', '2017-09-04 17:47:43', '2017-09-04 17:47:43', 'Activo'),
(1227, 'JOSE', 'HERRERA', 'CAMACHO', 45, 1, 1, 15, 56, 'josheca@gmail.com', 43, 412, 3, 3, NULL, NULL, 'SI', '99e9213e1c27c780f1c62faa01c2b32589736329', 'josherrera', '3', 'fe3c705b461d4d4ab6b36c103bf618556302d9c8', '2017-09-04 18:38:45', '2017-09-04 18:38:45', 'Activo'),
(1228, 'Ernesto ', 'Garcia', 'Pineda', 51, 1, 1, 15, 56, 'egapineda04@gmail.com', 43, 411, 3, 6, NULL, NULL, 'SI', 'f118130afb3250b4e9343b3bbb159f66a772b78c', 'egpineda', '3', 'c0ad86e8a7639648722451a0eb0d517679a591fb', '2017-09-08 18:42:06', '2017-09-04 18:51:02', 'Activo'),
(1376, 'Gerardo', 'Colin', 'Hernández', 21, 1, 1, 15, 56, 'gerachernandez@gmail.com', 43, 329, 1, NULL, NULL, NULL, 'SI', 'a2a04b29e37439b92b5023c20d6905749e6e48e7', 'GerardoCH', '7', 'c6009c9af3cfce228c46bc07e0794fc6d8f97f13', '2017-09-12 06:54:37', '2017-09-12 06:54:37', 'Activo'),
(1231, 'Ana Velia', 'Coria', 'Téllez', 41, 2, 1, 15, 49, 'ana.leo14@hotmail.com', 68, 372, 3, 1, NULL, NULL, 'NO', '5f900b9fbb2616085454e90f92204d7d1e6036ec', 'anacoria', '3', '823834c73ad037acee19439fe07cab6eff19000f', '2017-09-04 22:42:27', '2017-09-04 22:42:27', 'Activo'),
(1232, 'Mario Abraham', 'Vázquez ', 'Buitrón', 21, 1, 1, 15, 83, 'mariovazquez303@gmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', 'a864a30d67ac6a4aa9d3236194def798036b38db', 'mariovazquez', '2', '4c1914658a0742274c4aa01b974811198d26e10b', '2017-09-04 22:45:47', '2017-09-04 22:45:47', 'Activo'),
(1233, 'Juan Carlos', 'Corral', 'Huacuz', 43, 1, 1, 15, 56, 'jccorralh@gmail.com', 25, 179, 2, 7, NULL, NULL, 'SI', 'a402fc34d82544585a1145cf814d20b8c7a2dd4e', 'jccorralh', '3', 'a8efb0116fc76152c8f66a0e2584592a50c71de8', '2017-09-04 23:29:56', '2017-09-04 23:29:56', 'Activo'),
(1234, 'maria rosario', 'anguiano', 'aguilar', 20, 2, 1, 15, 62, 'rosarioang08.14@gmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', 'd13228bbc901c64fd4c8652d77a1c9cb9cc92495', 'chayito', '2', '2a159cdc92453e165178bd8fdc0015b4c6ec25b9', '2017-09-04 23:55:08', '2017-09-04 23:55:08', 'Activo'),
(1235, 'Blanca Celeste', 'Saucedo', 'Martinez', 25, 2, 1, 15, 56, 'celsm@live.com.mx', 43, 411, 2, 8, NULL, NULL, 'SI', 'a4d7e4f0e3c1118b4516ba10cda99a9ce16b5d0a', 'CelesteSauMtz', '3', '8db017bbc3764c32da268113ea36257327d5c18c', '2017-09-05 14:38:23', '2017-09-04 23:55:27', 'Activo'),
(1236, 'Iván Margarito', 'Álvarez', 'Rios', 21, 1, 1, 15, 56, 'ivan1129891d@gmail.com', 43, 350, 1, NULL, NULL, NULL, 'SI', 'aa4b83c5f323a4d867bda4be969346f0c28eb6fa', 'ivan', '2', '18c1c0133bfba78a234bd6f7ce94ef3046bdee74', '2017-09-05 00:05:27', '2017-09-05 00:05:27', 'Activo'),
(1237, 'jonanci', 'arreola', 'rivera', 24, 2, 1, 15, 56, 'jonanci.arreola92@gmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', '4b96880dcf7f74d4c1623b6f891b26f7763c2d08', 'jonanci92', '2', 'a6eafd7bec9a300911c120778f5a5a7494b721d6', '2017-09-05 01:35:19', '2017-09-05 01:35:19', 'Activo'),
(1238, 'Luis Raúl', 'Torres', 'Rojas', 21, 1, 1, 15, 104, 'raulspartan96@gmail.com', 43, 350, 1, NULL, NULL, NULL, 'SI', 'f29c45eef3bfad0e732ea61b50aed36e6af13157', 'rulspartan', '2', '78d36e0174bfffbe372c4bfbc99bc8227f888628', '2017-09-05 01:51:18', '2017-09-05 01:51:18', 'Activo'),
(1239, 'Oscar David', 'Navarrete', 'Morales', 36, 1, 1, 15, 56, 'navarrete.odin@gmail.com', 43, 412, 1, NULL, NULL, NULL, 'SI', '1c4fe4b0a5140af217d7c8085c6f4fc6922c0c4b', 'ODIN', '2', 'aee0614b31b5e3d0c36e0cbaf3fd70cf2b083b7e', '2017-09-05 01:53:57', '2017-09-05 01:53:57', 'Activo'),
(1379, 'CRISTIÁN ARTURO ', 'ROMÁN ', 'MEDINA', 19, 1, 1, 15, 56, 'cristiana.carnm@gmail.com', 49, 358, 1, NULL, NULL, NULL, 'SI', 'eeee8ed0e4d32e058e5aca65667fc18a196a19a3', 'CRISTIAN', '7', '2f103d2dc37927687c612046b98c1509af565d91', '2017-09-13 00:47:45', '2017-09-13 00:47:45', 'Activo'),
(1241, 'REBECA ANELI', 'RUEDA', 'JASSO', 45, 2, 1, 15, 56, 'rebeca.rueda@gmail.com', 43, 346, 3, 8, NULL, NULL, 'SI', 'aa07eaa4372f596c144b618b84808209c65e0629', 'rrueda-jasso', '3', 'ee83c57de932913b9ca99a46cd6176a3f96342e0', '2017-09-05 14:37:25', '2017-09-05 03:49:18', 'Activo'),
(1243, 'JUAN JESUS', 'RUIZ', 'LAGUNAS', 43, 1, 1, 15, 56, 'jruiz.lagunas@gmail.com', 11, 90, 1, 9, NULL, NULL, 'SI', '879d3580432c20c7002891f8260423a9e9c4ce8f', 'jruiz', '3', '0eca6cbc6a7354d013e60574aa1918d8f1dc2f85', '2017-09-05 13:10:43', '2017-09-05 13:10:43', 'Activo'),
(1244, 'Aldo ', 'Zamudio', 'Pérez', 31, 1, 1, 15, 29, 'CLALD25@HOTMAIL.COM', 43, 334, 2, NULL, NULL, NULL, 'SI', '8ed41c3083b6b79be546db261137c06bb6cd8c90', 'Aldo', '2', '8d345010ccaf9f47b3e6c98ae1cda8e626d1a0bd', '2017-09-05 14:33:09', '2017-09-05 14:33:09', 'Activo'),
(1248, 'Vanessa', 'Chávez', 'Zárate', 22, 2, 1, 15, 56, 'love_ssa120@hotmail.com', 43, 349, 1, NULL, NULL, NULL, 'SI', 'f9130792a00f947a9e3c3609a49a9b126d17ea8f', 'Vachavez2', '7', 'c741eca1e624de3468e36f4ccb8d7dfb470d02fe', '2017-09-05 17:37:22', '2017-09-05 17:37:22', 'Activo'),
(1246, 'Marceal Sofia ', 'Vaca ', 'Sanchez', 26, 2, 1, 15, 56, 'nolzalack@gmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', '9a0161323e088253f14c3acf58c26292369712e5', 'L', '2', '0bb8fc48fc58a89afcef2fe2f3b3a927c4b3d18e', '2017-09-05 16:41:25', '2017-09-05 15:59:35', 'Activo'),
(1247, 'Joan Sebastian', 'Aguilar', 'Peralta', 24, 1, 1, 15, 56, 'joan.science9@gmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', 'b941124c9a9658c8d41b396f00e88b2c2cbf5f91', 'Joan', '2', '2cb4db272c1b97e84d03a00a5f4c1ab050ce360c', '2017-09-05 16:31:31', '2017-09-05 16:31:31', 'Activo'),
(1249, 'JOSE GERARDO', 'GONZALEZ', 'ESQUIVEL', 25, 1, 1, 15, 56, 'gonzalezgerardolep@gmail.com', 43, 418, 2, NULL, NULL, NULL, 'SI', '4a6e0d330b840bf7063e3069e580e4657a382841', 'Gerardo21', '2', 'ca025be1e5393570dfe69386c0b30f132c040d7d', '2017-09-05 17:57:20', '2017-09-05 17:57:20', 'Activo'),
(1250, 'ELISA BANI', 'CALDERON', 'GIL', 36, 2, 1, 15, 56, 'edificada2@gmail.com', 49, 358, 3, NULL, NULL, NULL, 'SI', 'f786f643c494c3d34979774c5068428f2e1c2107', 'elisaensm', '7', '8f8d01b6e036e4c69293a4e7789f4c8a0976b006', '2017-09-05 18:35:13', '2017-09-05 18:35:13', 'Activo'),
(1251, 'José Carlos', 'Prado', 'Rodríguez', 25, 1, 1, 15, 104, 'carlos10_wade@hotmail.com', 43, 411, 1, NULL, NULL, NULL, 'SI', 'f94392c520b542966b6fe475bf4d16a7fe44cd86', 'CARLOSPRADO10', '2', '44337a0dc499ce276bdca65e015d895f65ffb5a6', '2017-09-05 19:59:59', '2017-09-05 19:59:59', 'Activo'),
(1252, 'Carlos Ignacio', 'Campos', 'Valadez', 21, 1, 1, 15, 77, 'carlosignaciocv12@gmail.com', 24, 172, 1, NULL, NULL, NULL, 'SI', '408a5ba8986df17efb0df8fdafb207434e3f7ce3', 'CarlosCampos', '2', 'e45dd0c36b18cbe5b76f559bb7a5f1b2974eeaeb', '2017-09-05 20:08:29', '2017-09-05 20:08:29', 'Activo'),
(1253, 'Oscar David', 'Navarrete', 'Morales', 36, 1, 1, 15, 56, 'graogaman@gmail.com', 43, 412, 1, NULL, NULL, NULL, 'SI', '1c4fe4b0a5140af217d7c8085c6f4fc6922c0c4b', 'ODIN', '2', 'b5588f23fcb963c712a63857073505da2813c867', '2017-09-05 21:23:53', '2017-09-05 21:23:53', 'Activo'),
(1254, 'Francisco Javier', 'López', 'Melgar', 30, 1, 1, 15, 56, 'paco517@hotmail.com', 43, 338, 2, NULL, NULL, NULL, 'SI', '0964422bf1222017a8b496084432f803c03226a6', 'pacofigo', '2', 'c6136f435007e6649f648488a633fed88f8b7430', '2017-09-05 21:31:15', '2017-09-05 21:31:15', 'Activo'),
(1255, 'Tohtli Laura Elena ', 'Zubieta', 'Rojas', 60, 2, 1, 15, 56, 'tzubieta@gmail.com', 43, 346, 2, 4, NULL, NULL, 'SI', 'd61c256a0f25b2e00f5e862ee36f6f57abb0a855', 'piscis5703', '3', '053ecbe7c4576cfbe3b6f8fdb0bc22d864cc83c9', '2017-09-06 17:07:34', '2017-09-05 22:02:15', 'Activo'),
(1256, 'José Luis', 'Solís', 'Domínguez', 23, 1, 1, 15, 56, 'luiis.220794@gmail.com', 11, 86, 1, NULL, NULL, NULL, 'SI', 'da8bb87d43c8dd7c3ddab4eea21c7480ea7bd045', 'LuisSolis22', '7', '6fa926a382d8177aeeb9879f6eac7fd8a05ff1cc', '2017-09-05 22:50:41', '2017-09-05 22:50:41', 'Activo'),
(1257, 'Natalia', 'Cruz', 'Alcantara', 22, 2, 1, 15, 54, 'nataliacruz@live.com.mx', 43, 344, 1, NULL, NULL, NULL, 'SI', '0fadebb2828bb248e9736cd936c6f21159c58168', 'natalia21', '7', '5df5df1bb10f4208687e9ffa10785be09881d4e2', '2017-09-05 23:29:11', '2017-09-05 23:29:11', 'Activo'),
(1258, 'Sonia Stephanie ', 'Nuñez ', 'Reyes', 22, 2, 1, 15, 56, 'stephnrr@gmail.com', 43, 332, 1, NULL, NULL, NULL, 'SI', '7ce911be7e53c4df287c9d1b87047f0b64094019', 'soniastephanie', '2', '32a81a5f8d22307c9e01ad41dd8d72ee5bba4a67', '2017-09-05 23:54:33', '2017-09-05 23:54:33', 'Activo'),
(1259, 'Eleazar', 'Arreygue', 'Rocha', 56, 1, 1, 15, 56, 'elearreygue@gmail.com', 43, 341, 3, 7, NULL, NULL, 'SI', '6b95883bb58d6e7fe615738e1ef3a49dcbebac70', 'Bologno', '3', '96b8b0f61813859bba8268e33d89955d84ccd717', '2017-09-06 00:47:50', '2017-09-06 00:47:50', 'Activo'),
(1260, 'Eleazar', 'Arreygue', 'Rocha', 56, 1, 1, 15, 56, 'elearreygue@gmail.com', 43, 341, 3, NULL, NULL, NULL, 'SI', '6b95883bb58d6e7fe615738e1ef3a49dcbebac70', 'Bologno', '7', '2c1104d680009fd7e12fc054ab4053cbee0c179e', '2017-09-06 01:05:52', '2017-09-06 01:05:52', 'Activo'),
(1261, 'Juan Ignacio', 'Miranda ', 'Macedo', 23, 1, 1, 15, 56, 'nmirandam4@gmail.com', 43, 332, 1, NULL, NULL, NULL, 'SI', '303c7f6cf0be87534a3e8ec83d037221b491d28a', 'juanignaciomiranda', '2', 'ed77891a06075804953d14cdd0ecf59504b74f1c', '2017-09-06 01:28:33', '2017-09-06 01:28:33', 'Activo'),
(1262, 'karla jacqueline ', 'duran', 'marquez', 23, 2, 1, 15, 56, 'jacki.ferre@gmail.com', 43, 332, 1, NULL, NULL, NULL, 'SI', '964a86be3f321a9052929e8c4d368c3eafc9ec64', 'jacquelineduran', '2', '869d3426ef9819a3ab4338c156446ce37b7d58a5', '2017-09-06 01:44:11', '2017-09-06 01:44:11', 'Activo'),
(1263, 'Karen', 'Villaseñor ', 'Villa', 22, 2, 1, 15, 56, 'villakaren28@gmail.com', 43, 332, 1, NULL, NULL, NULL, 'SI', 'c77a2c2d3f3bce9b0f7863f9c288dc41eaf7caa9', 'villakaren', '2', '48f4647b0db972f9adf75b384ff97cd53980c325', '2017-09-06 01:53:34', '2017-09-06 01:53:34', 'Activo'),
(1264, 'andrea liliana ', 'carbajal', 'chavez ', 18, 2, 1, 15, 49, 'andrealilianacarbajal@gmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '5595f46872b857108f3ba6ad07a0d0cab54fb1c5', 'andreaLcarbajal', '2', '51ff4a3169669f7b908826ce4a3cfc798d030ed7', '2017-09-06 02:07:33', '2017-09-06 02:07:33', 'Activo'),
(1265, 'María Magdalena', 'Lozano', 'Zúñiga', 18, 2, 1, 15, 56, 'lozanoz2003@gmail.com', 43, 336, 3, NULL, NULL, NULL, 'SI', 'cca921561b2496246b77391562e81c5ab83ee150', 'Profesora', '7', '4724053c5073401cabb7c680e4923262ebc55ccc', '2017-09-06 02:11:51', '2017-09-06 02:11:51', 'Activo'),
(1266, 'Nayeli', 'Galván ', 'Paniagua', 23, 2, 1, 15, 56, 'nayeli1114@hotmail.com', 43, 336, 1, NULL, NULL, NULL, 'SI', '7d1bef262bbdda06fae07bfad55d569d589c0b2d', 'Nayeli', '7', '1461359157bd23bc4580fd630ae0b9a1a4e1352f', '2017-09-06 02:22:49', '2017-09-06 02:22:49', 'Activo'),
(1267, 'Marcos', 'Ortiz', 'Avalos', 19, 1, 1, 15, 56, 'ortizavalosmarcos97@gmail.com', 43, 339, 1, NULL, NULL, NULL, 'SI', 'e42ec22ca6e348408e62ec67f2c57f40ae9f5418', 'Marcosortiz', '2', 'b581dc61f0318e0e497ec73fcb0fef5ce90412e3', '2017-09-06 02:51:39', '2017-09-06 02:51:39', 'Activo'),
(1268, 'Mitzi del Rosario', 'Lupián', 'Machuca', 20, 2, 1, 15, 77, 'mlupian96@hotmail.com', 24, 172, 1, NULL, NULL, NULL, 'SI', '59a21e45f2f635159db69c8e78908be4afec5324', 'Mlupian', '2', 'df750080716f0bf1a225ccf41d29234a3ce80cff', '2017-09-06 03:12:29', '2017-09-06 03:12:29', 'Activo'),
(1269, 'Maria', 'Bermudez', 'Cazares', 28, 2, 1, 15, 56, 'yimavive17@hotmail.com', 43, 412, 1, NULL, NULL, NULL, 'SI', 'fa93722e6226dff5a1cc0d48de15dd76689258b3', 'lluvia', '7', '8eedf31231b5ceb16eb642fed57259b847e401c2', '2017-09-06 04:17:15', '2017-09-06 04:17:15', 'Activo'),
(1270, 'Karina', 'Sanchez', 'Vargas', 23, 2, 1, 15, 55, 'karyucm93@gmail.com', 24, 171, 1, NULL, NULL, NULL, 'SI', '4c3737b15008ca63c06493c12f67f6b3c4c2d415', 'karinasv', '2', 'ceb9c788f92d4ba52c055c944ad8fa65968fa77c', '2017-09-06 04:18:45', '2017-09-06 04:18:45', 'Activo'),
(1271, 'Ana Rosa ', 'Atanacio', ' Hernandez', 18, 2, 1, 15, 56, 'anarosaatanacio@gmail.com', 43, 337, 1, NULL, NULL, NULL, 'SI', '8137289c254eab8ef12eb945bd4c4e6e36139e40', 'ana1259', '2', 'f0ee9f61211517aafc0b13c457b5706d7485668c', '2017-09-06 04:19:29', '2017-09-06 04:19:29', 'Activo'),
(1272, 'Lambertino', 'Campos', 'Amezcua', 40, 1, 1, 15, 77, 'lambertino@gmail.com', 24, 171, 2, NULL, NULL, NULL, 'SI', '302e1c433635ed23671c64061fae47cfed431a3f', 'lambertino', '2', 'b63f6a35e45ce524816f2a60302469dad0fbd34b', '2017-09-06 04:52:54', '2017-09-06 04:52:54', 'Activo'),
(1273, 'Ana Silvia', 'González', 'Pedraza', 20, 2, 1, 15, 33, 'ana_silvia1204@hotmail.com', 43, 340, 1, NULL, NULL, NULL, 'SI', '856f74d3f28e59675d89f6d2f15daaaa95551946', 'ASGonzalez', '2', 'ac873eb5d905d19839e70dfd74df8191e006d045', '2017-09-06 05:01:23', '2017-09-06 05:01:23', 'Activo'),
(1274, 'Luis Armando', 'Ochoa', 'Franco', 60, 1, 1, 15, 56, 'luis1a1@yahoo.com', 43, 341, 3, 10, NULL, NULL, 'NO', '4a37495e4ea6ec13f522c8aeabbb48e8ceb5b371', 'evaluador', '3', 'bdcdf09989b4c1da0a4f10daf818cb33aee1f64a', '2017-09-06 17:06:18', '2017-09-06 05:02:39', 'Activo'),
(1275, 'Luis Alejandro', 'Pérez', 'Ortiz', 34, 1, 1, 15, 56, 'luisalejandrocolmich@gmail.com', 68, 371, 2, NULL, NULL, NULL, 'SI', '3b580cc0fd9973d08c9971fda03935c6061cad7b', 'perezol', '2', '2ae700380385918cf0036db3e5f325aa5d065ae1', '2017-09-06 06:04:40', '2017-09-06 06:04:40', 'Activo'),
(1276, 'María Fernanda ', 'Rosas ', 'Corona ', 18, 2, 1, 15, 56, 'ferm5clt@gmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', '89799835eb9f50b454262bed9373dcbccd917309', 'MariaRosas11', '2', 'b74b48527f20d138b852320f91a3852d0c8855fd', '2017-09-06 06:08:39', '2017-09-06 06:08:39', 'Activo'),
(1277, 'Thamara', 'Gutiérrez ', 'Boyso', 21, 2, 1, 15, 56, 'thamaraboysoguti16@gmail.com', 43, 332, 1, NULL, NULL, NULL, 'SI', '5e8022fa4d7e8064bd9b8495d3a32afec3b32b9f', 'thamgut', '2', 'd0746d704939b656ca2bf34199ab29981e1d0385', '2017-09-06 13:26:45', '2017-09-06 13:26:45', 'Activo'),
(1278, 'Angel Daniel', 'Ramírez', 'Herrera', 22, 1, 1, 15, 77, 'angeldanielramirez@live.com', 24, 172, 1, NULL, NULL, NULL, 'SI', 'ce8e2526428a45e6c0b0e791950908ebed59f8eb', 'Angeldanielramirez', '2', '37220459b5b8549a030e96ae31efa50d2f4e77b2', '2017-09-06 15:06:13', '2017-09-06 15:06:13', 'Activo'),
(1279, 'Diana LAura ', 'Garcia ', 'Silva ', 21, 2, 1, 15, 56, 'garciadianalaura@outlook.com', 43, 332, 1, NULL, NULL, NULL, 'SI', '3cb16e940213041d9b02793862e14b3a8091ecc7', 'Diana', '2', '412ed1b6bdc9ed7dbdbc93990a77644b79266d25', '2017-09-06 15:18:27', '2017-09-06 15:18:27', 'Activo'),
(1280, 'Luis Antonio', 'Ruiz ', 'Saucedo', 23, 1, 1, 15, 56, 'luis4antrs@gmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', '6b2591161f2ec6160cf1aad4b109eb0755c1ac5f', 'luis4antr', '2', '53e508deb1364667c6f8bcab4342814783489781', '2017-09-06 15:34:00', '2017-09-06 15:34:00', 'Activo'),
(1281, '  María Fernanda', 'Gutiérrez', ' Molina', 22, 2, 1, 15, 56, 'fernanda0gtzm@gmail.com', 43, 332, 1, NULL, NULL, NULL, 'SI', '3d4f228a99d490b4a7316bcd3a465a73e8b9a601', 'fernandagutierrez', '2', '73c2b3d872ff96f29a51634fef11266bff9b48ea', '2017-09-06 16:16:33', '2017-09-06 16:16:33', 'Activo'),
(1282, 'Cynthia Yaneli', 'Bartolo', 'Guzmán', 29, 2, 1, 15, 34, 'cynthia.bartolo@gmail.com', 15, 124, 1, NULL, NULL, NULL, 'SI', '6d71305fd860bf47d30c3d72f262d1f5d6b4809c', 'Cynthia', '7', 'c512310e48eb390cf218d1448404bc983fb3ff04', '2017-09-06 16:40:07', '2017-09-06 16:40:07', 'Activo'),
(1283, 'Yhoana Laura', 'León', 'Márquez', 33, 2, 1, 15, 34, 'yhoana_lm@hotmail.com', 15, 124, 2, NULL, NULL, NULL, 'NO', '94c1f764645880c0e0ef9aca58eb59f01e5f6849', 'Yhoana', '7', 'e388726aa67648e553ab2ffd9beb602378cc4d29', '2017-09-06 16:46:43', '2017-09-06 16:46:43', 'Activo'),
(1284, 'Diana Laura ', 'Garcia ', 'Silva ', 21, 2, 1, 15, 56, 'garciadianalaura@outlook.com', 43, 332, 1, NULL, NULL, NULL, 'SI', '3cb16e940213041d9b02793862e14b3a8091ecc7', 'Lauraa', '2', 'e6839a18a4a8d39d5cfcad7df99c3ffddd4cd1ab', '2017-09-06 16:51:20', '2017-09-06 16:51:20', 'Activo'),
(1285, 'Agustín', 'Torres', 'Núñez', 22, 1, 1, 15, 42, 'agus_0806@hotmail.com', 24, 172, 1, NULL, NULL, NULL, 'SI', 'e1d5dc5359b0e1713eefd3570abb3d7854b932aa', 'Agus', '7', 'ff547e64c3e8348c141a8c3577fbafc03cceb7f6', '2017-09-06 17:03:54', '2017-09-06 17:03:54', 'Activo'),
(1286, 'Guillermo', 'Andrade', 'Espinosa', 42, 1, 1, 15, 56, 'andrade0001@hotmail.com', 13, 108, 3, NULL, NULL, NULL, 'SI', 'e9a579c723366fd30125685c3a000d247f732430', 'gandrade01', '2', '8268e79c2a4f8c027dcb54791813d212d90cb639', '2017-09-06 17:40:38', '2017-09-06 17:40:38', 'Activo'),
(1287, 'Andrea Yamile', 'Murguía', 'Garnica', 18, 2, 1, 15, 110, 'elimay_211094@hotmail.com', 24, 172, 1, NULL, NULL, NULL, 'SI', 'b2a731eadb0818dffb1d56cc3b31298e31fe43c0', 'Anmurguia', '2', '4619aca7968015035ffd9e6dec69e761e0cd2aef', '2017-09-06 17:44:14', '2017-09-06 17:44:14', 'Activo'),
(1288, 'karla isabel', 'ponce de león', 'león', 23, 2, 1, 15, 13, 'carlipdl@gmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', 'b4f7af1fdcd0169bbc183561354be3b19333f2ac', 'carliponce', '2', 'e8c35cd1d6f3131c5b4e844a8a0448a03f7db3bf', '2017-09-06 18:03:48', '2017-09-06 18:03:48', 'Activo'),
(1290, 'Janett', 'Gutiérrez', 'Ocegueda', 24, 2, 1, 15, 77, 'janett.go@hotmail.com', 24, 171, 1, NULL, NULL, NULL, 'SI', 'e4d6a3f2c955ac3136f1e06a6d71e993292a5ee2', 'Janett', '2', 'cb673946ab33a6cf3b6bf320e08851e62763499f', '2017-09-06 18:13:29', '2017-09-06 18:13:29', 'Activo'),
(1291, 'Elisa', 'Valencia', 'Farías', 28, 2, 1, 15, 56, 'elisavalenciafarias@gmail.com', 6, 51, 2, NULL, NULL, NULL, 'NO', 'e27db959c46a9d317977e81f54ddb7692c2fd2d8', 'ElisaIMCED', '2', 'bcc93f71b10b84b57945f753d3bd42635697f760', '2017-09-06 18:29:56', '2017-09-06 18:29:56', 'Activo'),
(1292, 'Raúl', 'Espinoza ', 'Herrera', 18, 1, 1, 15, 56, 'espinozahr@hotmail.com', 43, 338, 3, NULL, NULL, NULL, 'SI', 'b96fa3c23d5959e07328b201023a11e80a0e0fd7', 'espinozahr', '2', 'c007ad09513d37470b6e0ea43cd1e136c685281c', '2017-09-06 18:56:03', '2017-09-06 18:56:03', 'Activo'),
(1296, 'Héctor ', 'Urquiza', 'Marín', 65, 1, 1, 15, 56, 'hurqmar@gmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', 'b110ea9ed9ecf0d31960faea1a0a5045eec2883b', 'hurqmar', '2', '667d91625da47408bf830d31407feb1e5b35ba40', '2017-09-06 20:44:12', '2017-09-06 20:44:12', 'Activo'),
(1297, 'Alan Eduardo ', 'Ceja', 'Rodríguez', 25, 1, 1, 15, 44, 'zigmazero91@gmail.com', 24, 176, 1, NULL, NULL, NULL, 'SI', '23f82b0bdd0ee7c38a63e1566b29fc35aaab1a78', 'Alan', '2', '1ac882afbd7c6397b2d4fb5c49788f0c4648386a', '2017-09-06 20:54:28', '2017-09-06 20:54:28', 'Activo'),
(1298, 'Graciela', 'González', 'Villegas', 42, 2, 1, 15, 56, 'gracielagonzalezvillegas@gmail.com', 43, 336, 2, NULL, NULL, NULL, 'SI', '69d7fc0bc31513545b33eff632c22a5a6fa8d75e', 'GGV', '2', '6bbb022793b0d0b1a35bcfd85f265e1047ded595', '2017-09-06 20:55:19', '2017-09-06 20:55:19', 'Activo'),
(1380, 'Raquel Amparo', 'García', 'Gómez', 92, 2, 1, 15, 56, 'raggk_93@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '376aed3354b6aca7a1d853f02f4defe3ba9695cc', 'RaquelA', '7', '0e7872428b42148a94022dea2bba4d145464da4e', '2017-09-13 01:42:19', '2017-09-13 01:42:19', 'Activo'),
(1301, 'LUIS JAVIER', 'CALVILLO', 'CARRANZA', 27, 1, 1, 15, 36, 'lui_0_4@hotmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', '9761552ba671066e7a413fd486b7310eb73ef125', 'solamenteluis', '7', 'd7c5077bac6c868a3260971119c46b78c33ab584', '2017-09-06 21:17:38', '2017-09-06 21:17:38', 'Activo'),
(1302, 'Luis Ángel', 'Cabezas', 'Sánchez', 26, 1, 1, 15, 77, 'l-angel-69@hotmail.com', 24, 173, 1, NULL, NULL, NULL, 'SI', '690fda29ad02ec106a610e5b7886eae98d43cd54', 'AngelCabezas', '2', 'd7cbffbe78698072dd2e47ad6559e8b80a35a656', '2017-09-06 21:22:20', '2017-09-06 21:22:20', 'Activo'),
(1303, 'David', 'Calderón ', 'Rangel', 25, 1, 1, 15, 56, 'david_151991@hotmail.com', 43, 411, 3, NULL, NULL, NULL, 'SI', '603aab45ccfa3c8c0c24a76694e6c62dafbfe33c', 'Davidcr', '7', '63ee28673df123f1da7f1543acb33f3e803fb3e2', '2017-09-06 21:30:28', '2017-09-06 21:30:28', 'Activo'),
(1304, 'Miriam', 'Leco', 'González', 25, 2, 1, 8, 122, 'miriamleco_gz@hotmail.com', 43, 411, 2, NULL, NULL, NULL, 'SI', 'fb6cb41b6e7e30485827fec77138e840f8865dee', 'Leco', '7', 'a6f2f2eb730127d1301b8969cc37078b11c0a902', '2017-09-06 21:35:13', '2017-09-06 21:35:13', 'Activo'),
(1305, 'Marili', 'Martínez', 'Cabello', 23, 2, 1, 15, 71, 'cabellomartinez@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '8ba1d19fb35e94db4edaa2f4de01326c3bb4aff6', 'cabello', '7', '28f8a8b54bc440094dc251d04b9d95462099c3b6', '2017-09-06 21:39:34', '2017-09-06 21:39:34', 'Activo'),
(1306, 'Francisco', 'Juárez', 'Carrillo', 21, 1, 1, 15, 16, 'pantho14@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', 'cccce2cf29a58d61e02a9f0156d2b931e610be46', 'fran14', '7', 'b3fb031cbb84ffa20959f486014d0ef590a6967d', '2017-09-06 21:44:12', '2017-09-06 21:44:12', 'Activo'),
(1307, 'Daniela Eréndira', ' Acatitla ', 'Mote', 19, 2, 1, 15, 56, 'daniela_9512_@hotmail.com', 43, 411, 1, NULL, NULL, NULL, 'NO', '9fd5f015b39d4ee82b2398340b0c10056e4026df', 'danielaerendira', '2', '428b5dc1b4d92156a734053ec51f5fe04ed7d2e2', '2017-09-06 22:00:33', '2017-09-06 22:00:33', 'Activo'),
(1308, 'José Martín ', 'Chavarría', 'Sánchez', 25, 1, 1, 15, 77, 'chanel_zac_14@hotmail.com', 24, 173, 1, NULL, NULL, NULL, 'SI', '6778b1e8787c3033b7e3313fc38df5be180afa55', 'martinchsj', '2', 'd734ebdce6eee985f3faacc408036cdbe5c37a06', '2017-09-06 22:11:10', '2017-09-06 22:11:10', 'Activo'),
(1309, 'Yessica Jazmin', ' Díaz ', 'Alvarado', 21, 2, 1, 15, 56, 'luna.yess94@gmail.com', 43, 344, 4, NULL, NULL, NULL, 'NO', '70fe776b9dd94b6aa5352d9e3272ad9ef08c6633', 'Yessicajazmin', '2', '946c977f32f6d5883bc53af06517462f3918f089', '2017-09-06 22:13:04', '2017-09-06 22:13:04', 'Activo'),
(1310, 'Cinthya Ivon ', 'Velázquez', 'Fabián', 27, 2, 1, 15, 16, 'cinthyapretty@hotmail.com', 43, 332, 1, NULL, NULL, NULL, 'SI', 'ec1204d32d2c858498034cdb33577b6042983f3c', 'Ivonne', '7', 'b3634faf0a37cd098f708614a368c67f6930046b', '2017-09-06 22:13:15', '2017-09-06 22:13:15', 'Activo'),
(1382, 'LETICIA', 'PEREZ', 'ORDAZ', 48, 2, 1, 15, 56, 'perez.ordaz@gmail.com', 43, 339, 2, NULL, NULL, NULL, 'SI', 'c04499703be718c0a865ee3fd4c969264f1fcecc', 'LETICIA', '7', '4b226e000213e4b56f25b9ab8f83a61f79bb1def', '2017-09-13 21:29:49', '2017-09-13 21:29:49', 'Activo'),
(1312, 'Cinthya Ivon ', 'Velázquez', 'Fabián', 27, 2, 1, 15, 16, 'cinthyapretty@hotmail.com', 43, 332, 1, NULL, NULL, NULL, 'SI', 'ec1204d32d2c858498034cdb33577b6042983f3c', 'Ivonne', '7', '8c25d3b707cfe7d7cbb43d1ed191db267f3a9013', '2017-09-06 22:23:00', '2017-09-06 22:23:00', 'Activo'),
(1313, 'Yessica Jazmin', 'Diaz', 'Alvarado', 21, 2, 1, 15, 56, 'luna.yess94@gmail.com', 43, 344, 1, NULL, NULL, NULL, 'NO', '8035f002db1891039cf7aeb5bfdea6f553887194', 'Jazmin', '2', '7b29638cc60a9c25883e053e68aa110504ef9c16', '2017-09-06 22:23:10', '2017-09-06 22:23:10', 'Activo'),
(1314, 'sergio', 'jacobo', 'jacobo', 28, 1, 1, 15, 57, 'sergiojacobojacobo@gmail.com', 43, 341, 1, NULL, NULL, NULL, 'SI', 'a39d735101c9498e4babef4cafa8f39b2fbb1fab', 'sergiojacobojacobo', '2', 'c9768ca8862713315790d35da070680557aed0cd', '2017-09-06 23:48:10', '2017-09-06 23:48:10', 'Activo'),
(1315, ' Joanna Koral', 'Chávez ', 'López', 38, 2, 1, 15, 56, 'joanna.koral.ch@gmail.com', 43, 332, 2, NULL, NULL, NULL, 'SI', '560d1b53f5aa98917233bd836f77f61b85d9dabb', 'joannakoral', '2', '831d559b1242fbb1934e88d6bfd74a98d127aedd', '2017-09-06 23:49:08', '2017-09-06 23:49:08', 'Activo'),
(1316, 'Esperanza Vianney', 'Núñez', 'Cárdenas', 22, 2, 1, 15, 56, 'viianeyo6363@gmail.com', 43, 346, 1, NULL, NULL, NULL, 'SI', '91553efacfb5e9884cf778de75ee3981acb0c2da', 'VianneyNu7', '2', '7b4f1f5c1574efc8ced8177fc5bbcbbb9096efed', '2017-09-07 00:27:19', '2017-09-07 00:27:19', 'Activo'),
(1317, 'Atziri Estephany ', 'Cervantes ', 'Espinoza', 22, 2, 1, 15, 56, 'stephanycervantes07@gmail.com', 43, 332, 1, NULL, NULL, NULL, 'SI', '3641f90fc6ce33bccb1690615ff701ab32a2c446', 'Estephanycervantes', '2', '12880b9ab17cfdc055ce9684ec4e8f2065b472ba', '2017-09-07 00:29:41', '2017-09-07 00:29:41', 'Activo'),
(1318, 'Laura Karen ', 'Castro', 'Cedeño', 21, 2, 1, 15, 90, 'lkarencastro13@gmail.com', 43, 332, 1, NULL, NULL, NULL, 'SI', 'ae081b5b9f064076fb69475b07193f1387cf5d01', 'laurakarencastro13', '7', '7b3dc530019247cab2ba2dee2b6eaf0dde807c95', '2017-09-07 00:31:29', '2017-09-07 00:31:29', 'Activo'),
(1319, 'Laura Karen ', 'Castro', 'Cedeño', 21, 2, 1, 15, 90, 'lkarencastro13@gmail.com', 43, 332, 1, NULL, NULL, NULL, 'SI', 'e7145ff91f2c7e5095ac97e9ca152e9f524b3b90', 'laurakarencastro', '2', 'e823b3d2578eb196628defa879dc8ad5404a6b72', '2017-09-07 00:39:50', '2017-09-07 00:39:50', 'Activo'),
(1320, 'Esteban', 'Anguiano', 'Aguilar', 24, 1, 1, 15, 62, 'esteban.an.ag@gmail.com', 43, 347, 2, NULL, NULL, NULL, 'SI', 'cd110e0602ca09c79ee32e87a19db9a9c2f78de0', 'steban12', '2', '46a3f04fd0468cefe7773377aa4d637d1ffb6a3f', '2017-09-07 00:58:59', '2017-09-07 00:58:59', 'Activo'),
(1321, 'Rafael', 'Jiménez', 'Mejía', 39, 1, 1, 15, 77, 'rjimenez2410@gmail.com', 24, 174, 3, NULL, NULL, NULL, 'SI', '9e20e12c90abece118366e8b0ffa57d6f294b337', 'rjimenez', '7', 'dc45dadd6b4ae3e852107d9049c64e73baafd533', '2017-09-07 02:06:48', '2017-09-07 02:06:48', 'Activo'),
(1322, 'JUAN CARLOS', 'TINOCO', 'MAGAÑA', 35, 1, 1, 15, 56, 'jcarlos2219@hotmail.com', 43, 330, 2, NULL, NULL, NULL, 'SI', 'abffa98bdb953b195fb787243f0a8df11ffdce7f', 'jucatima2219', '7', '907dc69e58b766533133183bf100b792e10929d7', '2017-09-07 02:23:38', '2017-09-07 02:23:38', 'Activo'),
(1323, 'María Magdalena', 'Lozano', 'Zúñiga', 52, 2, 1, 15, 56, 'lozanoz2003@yahoo.com.mx', 43, 336, 3, NULL, NULL, NULL, 'SI', '7f7c5b7a3ffb09dc93181c413327564f8c80f26b', 'MagadalenaLozano', '2', 'bae493e26a484a47e8bd9303ef821f0b7e7866fb', '2017-09-07 02:33:10', '2017-09-07 02:33:10', 'Activo'),
(1324, 'LIDIA', 'MANZO', 'RODRIGUEZ', 22, 2, 1, 15, 56, 'lidiamanzo2@hotmail.com', 43, 339, 1, NULL, NULL, NULL, 'NO', '0955ada3829062f6423ad37f6cb1c7a26d8163f5', 'LIDIAMAN', '2', '886a6df66127e8db6db1bdde4aecfe348702b2f8', '2017-09-07 02:40:04', '2017-09-07 02:40:04', 'Activo'),
(1325, 'Alan Alexis ', 'González ', 'Gutiérrez', 22, 1, 1, 15, 90, 'alanalexisgon@gmail.com', 43, 332, 1, NULL, NULL, NULL, 'SI', 'face85da5805d2bee8d34911e7f3eb53dd966c90', 'alangonzalez', '2', '8b69a6cf7cb84217ca09a80fbd19c2383b3f71eb', '2017-09-07 03:12:54', '2017-09-07 03:12:54', 'Activo'),
(1326, 'Annecy Vianney ', 'Díaz', 'García', 22, 2, 1, 15, 56, 'annecy1927@gmail.com', 43, 332, 1, NULL, NULL, NULL, 'SI', '8c37d6c9f80e4716edb49e38a6961b4e98eebc4e', 'AVDG', '2', '5406b66ce031ce0d1ef6b54eebd36efd3a4cee9a', '2017-09-07 03:18:02', '2017-09-07 03:18:02', 'Activo'),
(1327, 'Roxana', 'Alcaraz', 'Alcaraz', 23, 2, 1, 15, 56, 'roxana.alcaraz1594@gmail.com', 43, 332, 1, NULL, NULL, NULL, 'SI', '3bef7336ee063ad4fd9b1d367e81edb73c08ffd1', 'RAA', '2', '54edad941df0215495a03f5d7684e5e6592a7f74', '2017-09-07 03:24:43', '2017-09-07 03:24:43', 'Activo'),
(1328, 'Alma Rosa ', 'Picazo', 'Carranza', 44, 2, 1, 15, 56, 'picazoalma@yahoo.com.mx', 43, 336, 2, NULL, NULL, NULL, 'SI', 'cf8b94ed52251a7079c94ff9b457d2495f2fd16c', 'ARPC', '2', 'e237f3f37d0a549b6210397bedd4fd952a0eeca7', '2017-09-07 03:29:18', '2017-09-07 03:29:18', 'Activo'),
(1329, 'Roberto Carlos', 'Tapia', 'Pérez', 25, 1, 1, 15, 56, 'qarolth@gmail.com', 43, 332, 1, NULL, NULL, NULL, 'SI', '37d72928a96b75e9b013c61f5830726392f8a879', 'qarolth', '2', '3688a7f67757e72117a887439303be08ec3626c8', '2017-09-07 04:56:33', '2017-09-07 04:56:33', 'Activo'),
(1330, 'Alma Rosa', 'Ayala', 'Virelas', 39, 2, 1, 15, 56, 'almaxenakis@gmail.com', 43, 349, 3, NULL, NULL, NULL, 'SI', '4edd45227f2e921e69700f52b054fed361993273', 'AlmaRosa', '2', 'aca6d84ff1f6fe963c4aa95482af2bb22ca0a96f', '2017-09-07 05:07:53', '2017-09-07 05:07:53', 'Activo'),
(1332, 'Eduardo', 'Fernández', 'Guzmán', 47, 1, 1, 15, 35, 'kutibirrin10@gmail.com', 43, 337, 3, 4, NULL, NULL, 'SI', '9a7043ad0fdd61505602787bccebfd1b97306001', 'evaluador10', '3', 'ce1bf72230220907260700b195f2bf06f0b0dca3', '2017-09-08 01:13:08', '2017-09-08 01:13:08', 'Activo'),
(1333, 'REBECA ANELI ', 'RUEDA', 'JASSO', 47, 2, 1, 15, 56, 'rebeca.rueda@gmail.com', 43, 346, 3, 5, NULL, NULL, 'SI', 'aa07eaa4372f596c144b618b84808209c65e0629', 'rrueda-jasso', '3', '4721652f2203438da11c6f5d5d41ba253ca20f61', '2017-09-08 18:41:15', '2017-09-08 02:15:34', 'Activo'),
(1381, 'Miroslava', 'Vizcaíno', 'López', 33, 2, 1, 15, 56, 'mivilo@gmail.com', 132, 456, 2, NULL, NULL, NULL, 'NO', '975784083558454109c5ef9579395a6fe3c5850a', 'mivilo', '7', 'e22c67a595232cfab619b46272631df27e1691a7', '2017-09-13 03:06:05', '2017-09-13 03:06:05', 'Activo'),
(1335, 'César Benjamín', 'García', 'Martínez', 34, 1, 1, 15, 56, 'mathereall@gmail.com', 84, 7777, 1, 9, NULL, NULL, 'NO', 'be6bf7f0a2b2c103884bacb483b2fa5c73fea797', 'nizhisaeba', '3', 'bc1978c089058f08046e5c350279f57f0dd7d2a9', '2017-09-08 02:27:13', '2017-09-08 02:27:13', 'Activo'),
(1336, 'Cecilia', 'Lazo de la Vega', 'de Castro', 32, 2, 1, 15, 56, 'cecilialvc@hotmail.com', 43, 349, 2, 6, NULL, NULL, 'NO', 'c94c489d2c593a1b7f3f89312c7dc9f8409a2243', 'CeciliaLazo', '3', '461b74cd89e5611423317c3c6e96d48ff09aa02c', '2017-09-08 18:42:45', '2017-09-08 02:54:03', 'Activo'),
(1337, 'Nelly', 'Flores', 'Ramirez', 42, 2, 1, 15, 56, 'fr_nelly@yahoo.com', 43, 338, 3, 2, NULL, NULL, 'SI', 'b6f5dc6f9a78c26e620c7ca649cd3e592bfaf82b', 'nflores', '3', '8935fa35669eadeff01d6d2c36e46ee9dbd72334', '2017-09-08 04:36:25', '2017-09-08 04:36:25', 'Activo'),
(1338, 'VICTOR MANUEL', 'HERNANDEZ', 'MADRIGAL', 44, 1, 1, 15, 56, 'viclandslide@gmail.com', 43, 417, 3, 5, NULL, NULL, 'SI', 'cb79d1fceaff7d9af2d1aceb90a46eb70a279fa5', 'VICMAN', '3', 'cb4ef2eb48343672f08b9aa0b4bd46700872cd9e', '2017-09-08 18:40:38', '2017-09-08 05:38:51', 'Activo'),
(1339, 'Miguel Angel', 'Garcia', 'Ruiz', 41, 1, 1, 15, 56, 'angeldenatura@gmail.com', 32, 216, 2, 8, NULL, NULL, 'SI', 'b9849689a394e27c671b098c449523897cc83364', 'L01107011', '3', '9ba4a9f597a82b56ac322dc80e2cdd330b06f60b', '2017-09-08 18:43:11', '2017-09-08 14:58:33', 'Activo'),
(1343, 'MARIA DEL CARMEN', 'ROCHA', 'GRANADOS', 18, 2, 1, 15, 104, 'crochagra@hotmail.com', 43, 347, 3, 3, NULL, NULL, 'SI', '6175c176f6deee9a220ec7b6b80d369b8f967a62', 'mcrochagranados', '3', 'd3c8d514db3c7ae6ab503eca70bbe7e680d03c11', '2017-09-08 17:43:04', '2017-09-08 17:43:04', 'Activo'),
(1341, 'Carlos Francisco', 'Ortiz', 'Paniagua', 18, 1, 1, 15, 56, 'carlinortiz@yahoo.com', 43, 414, 3, 9, NULL, NULL, 'SI', 'cd241407053ab7046f848d293270580b5e88e1c5', 'carlinortiz', '3', 'cccba6fdf69df49fb5020ec274e96be246b12a8f', '2017-09-08 15:20:48', '2017-09-08 15:20:48', 'Activo'),
(1342, 'DANIEL', 'VILLAMAR', 'REYES', 36, 1, 1, 15, 56, 'sarvird@gmail.com', 11, 96, 1, NULL, NULL, NULL, 'SI', '4ae299dd199e6e819c1e682626269f2e21c47470', 'POLVOS', '2', 'feaf27d5327cab16fa896ca34b6bf746a4e32832', '2017-09-08 16:12:34', '2017-09-08 15:58:59', 'Activo'),
(1344, 'Humberto Alejandro', 'García', 'martínez', 24, 1, 1, 10, 124, 'gamh1214@outlook.com', 43, 329, 1, NULL, NULL, NULL, 'SI', '376d37f06de4c2d5c276a6b85f2f957bb4bf5095', 'HUMBERTOGARCIA', '7', '1fa7751b1c00cfe9dde8caf976673f065a46aef6', '2017-09-08 18:35:35', '2017-09-08 18:35:35', 'Activo');
INSERT INTO `usuarios` (`id_usuarios`, `nombre`, `a_paterno`, `a_materno`, `edad`, `genero`, `nacionalidad`, `estado`, `municipio`, `email`, `institucion`, `facultad`, `nivel`, `mesa`, `modalidad`, `area_id`, `mailing`, `password`, `username`, `puesto`, `token`, `created_at`, `request_token`, `status`) VALUES
(1385, 'Laura Soledad', 'Aguilar', 'Rodríguez', 22, 2, 1, 15, 56, 'lsar_shian@outlook.com', 43, 344, 1, NULL, NULL, NULL, 'SI', 'c1c8934502bbe31d6b77c2310c40936f3f2d3e79', 'Soledad', '7', '29738ed301345ad35a2b60cf8493c40229f7aab3', '2017-09-13 23:06:23', '2017-09-13 23:06:23', 'Activo'),
(1347, 'David', 'Herrejon', 'Piñon ', 24, 1, 1, 15, 56, 'davidherrejon23@hotmail.com', 49, 358, 1, NULL, NULL, NULL, 'SI', '7c69ee220cf28552f59876be504ea457512beb39', 'davidherrejon23', '7', '27f25c2e551fe69f2ba374e1e42873f0535333cb', '2017-09-09 03:28:25', '2017-09-09 03:28:25', 'Activo'),
(1348, 'Olga Zulema', 'Andrade', 'Luna', 21, 2, 1, 15, 56, 'preciuoszule@gmail.com', 49, 358, 1, NULL, NULL, NULL, 'SI', '3a772524fb628715c49164d923ed83c46a581351', 'ZULYLUNA', '7', 'c11e2bde35d5bce38c61b28e68811c97d633f822', '2017-09-09 03:39:45', '2017-09-09 03:39:45', 'Activo'),
(1349, 'DENI GUADALUPE', 'HERNANDEZ ', 'MERCADO', 19, 2, 1, 15, 56, 'denihdez1227@gmail.com', 49, 358, 1, NULL, NULL, NULL, 'SI', '690bb5e2776a19ace9480a0d7ed21fea0cba4cca', 'DENIHERNANDEZ', '7', 'dda9092a994cb4ff12cf0530b5f2e89691918f65', '2017-09-09 03:59:23', '2017-09-09 03:59:23', 'Activo'),
(1350, 'Brandon Horacio', 'Escandón', 'Rodriguez', 20, 1, 1, 15, 109, 'horacio1234@live.com.mx', 49, 358, 1, NULL, NULL, NULL, 'SI', 'a09fb53673fabf61d92d35769abe527dc5c2879e', 'Brandon', '7', '4ca79300039f0feb55cd2ac9f49061cf17b738a8', '2017-09-09 04:10:46', '2017-09-09 04:10:46', 'Activo'),
(1351, 'Miriam cristel', 'Villazana', 'Moreno', 19, 2, 1, 15, 56, 'micrisvi16@gmail.com', 49, 358, 1, NULL, NULL, NULL, 'SI', 'b37a16873fb67973de387e49d0094429109eee44', 'Miriam', '7', '9a0025589945b384b22511cd1ce8c07746270868', '2017-09-09 04:21:30', '2017-09-09 04:21:30', 'Activo'),
(1352, 'Sergio', 'Herrejón', 'Terrero', 21, 1, 1, 15, 56, 'troca42@gmail.com', 49, 358, 1, NULL, NULL, NULL, 'SI', 'dcd099575a31e5ed84624e77019643947256cca1', 'Troca', '7', '31b063226fd5ff04aace01ac04dfd725c7654c25', '2017-09-09 04:27:56', '2017-09-09 04:27:56', 'Activo'),
(1353, 'Laura', 'Nieto', 'Sierra', 18, 2, 1, 15, 56, 'nietoshmat@gmail.com', 49, 358, 1, NULL, NULL, NULL, 'SI', '71a892b04bc37739ebe32cd2311f20eb3891b973', 'Laura', '7', 'd2b0969f8424b46f2347ee6d6fab272263ff0bc7', '2017-09-09 05:00:42', '2017-09-09 05:00:42', 'Activo'),
(1354, 'Ana Beatriz ', 'Pineda', 'Rubio ', 19, 2, 1, 15, 51, 'anita_j@live.com.mx', 49, 358, 1, NULL, NULL, NULL, 'SI', '003469ea487cf02f15f72ff5b895fc4b72bcbc00', 'Anita', '7', 'cf05300d4756c18ad427b5a139e2bf590a31fd49', '2017-09-09 06:38:58', '2017-09-09 06:38:58', 'Activo'),
(1355, 'Cesar Santiago', 'Gomez', 'Arias', 19, 1, 1, 15, 56, 'santiarias954@gmail.com', 49, 358, 1, NULL, NULL, NULL, 'SI', 'a3af71e783c0b1cd57405b07f80549e5af3dc19b', 'Santiago227', '7', '8dee03a505a20681fb93484bea43f680695aa084', '2017-09-09 09:37:23', '2017-09-09 09:37:23', 'Activo'),
(1384, 'JUAN CARLOS', 'CORTES', 'GARCIA', 54, 1, 1, 15, 56, 'gccjbfq@hotmail.com', 43, 339, 2, NULL, NULL, NULL, 'SI', '2295c632de259ed6cd966638320d1604c7bf894e', 'JCARLOS', '7', 'e1bfb73cc987fd1a23016005f9ff00a97c2747b1', '2017-09-13 21:54:56', '2017-09-13 21:54:56', 'Activo'),
(1359, 'Gilberto ', 'Domínguez ', 'Serna', 18, 1, 1, 15, 50, 'gil-serna-28@hotmail.com', 49, 358, 1, NULL, NULL, NULL, 'SI', '7cda8ad917615bed70181270c32fb542f1ad8176', 'Gil32', '7', '57a0420dc3213d3a6636788406e7dae6ce2d9d82', '2017-09-09 18:09:38', '2017-09-09 18:09:38', 'Activo'),
(1383, 'MARIA GRICELDA', 'PEREZ', 'ORDAZ', 45, 2, 1, 15, 56, 'mgris_2003@yahoo.com.mx', 43, 344, 2, NULL, NULL, NULL, 'SI', 'ee2fabbdf55a3b43fc2349cec820869bf7e4f8b9', 'GRIS', '7', 'b72f02d59399696602498b21594f1e07a83d7841', '2017-09-13 21:49:49', '2017-09-13 21:49:49', 'Activo'),
(1362, 'Erick', 'García ', 'Rosales ', 22, 1, 1, 15, 54, 'rosales1995erick@gmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', 'c91d50209c65034c0628d6c5e655727b6a912e44', 'Erick5', '7', 'fe8d49250cfc3535a0cc3f946d2c69c971a746a9', '2017-09-09 22:03:19', '2017-09-09 22:03:19', 'Activo'),
(1363, 'Floeribel', 'Mendoza', 'Hernández ', 22, 2, 1, 15, 83, 'floribel_mendoza@hotmail.com', 49, 358, 1, NULL, NULL, NULL, 'NO', '618ef7a94d7d1a61a91fafae98d64bec91e8a3f2', 'personsflori', '7', 'd68b8404bbf2c11736856e3a840f50634ef61546', '2017-09-09 22:57:40', '2017-09-09 22:57:40', 'Activo'),
(1364, 'Floribel', 'Mendoza', 'Hernández', 22, 2, 1, 15, 83, 'floribel_mendoza@hotmail.com', 49, 358, 1, NULL, NULL, NULL, 'NO', '26c88cbe7cce57b3f4c8ea6c18880360f726bc07', 'chocolate', '7', '20b43cde6214721bb12574c05dfd9ad86c79fd6c', '2017-09-09 23:01:55', '2017-09-09 23:01:55', 'Activo'),
(1365, 'abelino', 'cacari', 'magaña', 20, 1, 1, 15, 68, 'choper32-@hotmail.com', 49, 358, 1, NULL, NULL, NULL, 'SI', 'd8556f20681a992ec202b11ce000c96258f2d2fa', 'abelino1997', '7', 'd9f11f1544e6dd9b0ddb63d47ead6ddb614a548d', '2017-09-09 23:55:41', '2017-09-09 23:55:41', 'Activo'),
(1366, 'David', 'Alonzo', 'Baca', 21, 1, 1, 15, 76, 'davudlapiz5236@gmail.com', 49, 358, 1, NULL, NULL, NULL, 'SI', '695d938a3accb3753c423741486076af577383a1', 'DavidAB', '7', '5491a8cba4e014ddbcddc64c6c75f479ac19555e', '2017-09-10 00:20:03', '2017-09-10 00:20:03', 'Activo'),
(1367, 'Hugo Andres', 'Cespedes', 'Sanchez', 22, 1, 1, 15, 56, 'cespds_@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '1bbc06c17875f02d2b3fc226310a7f20422142d3', 'hugoandres', '7', '46563eea562be6fdb6993c6f6f9b58a59db61305', '2017-09-10 00:25:23', '2017-09-10 00:25:23', 'Activo'),
(1368, 'Heriberto', 'Aguilar', 'Villa', 22, 1, 1, 15, 56, 'heriberto.agv@gmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '525e2d7c39a902a45f915eaa5a62c7c189e017f4', 'Heriberto22', '7', 'bb4202f9fd0a5b28a1e8bce01d66c4e933068a8b', '2017-09-10 00:36:29', '2017-09-10 00:36:29', 'Activo'),
(1369, 'Yolanda Montserrat ', 'Romero', 'Macias', 19, 2, 1, 15, 16, 'monseromeromacias@gmail.com', 49, 358, 1, NULL, NULL, NULL, 'SI', 'a3a08b837d0893674ad135f58a796ec9425ca70b', 'Romero', '7', '819b8e0c5c88e7415797ef908fe985dedd834e2a', '2017-09-10 01:37:15', '2017-09-10 01:37:15', 'Activo'),
(1370, 'Yuritzi Cecilia', 'Calderón ', 'Ayala', 20, 2, 1, 15, 56, 'yenedith_0905@hotmail.com', 43, 330, 1, NULL, NULL, NULL, 'SI', '7946b89a80e23ba30a8771522a24f6394babd4f1', 'mvzyuri82', '7', '94a98fa765e79da88845b6db9a4c471585194aeb', '2017-09-10 01:48:03', '2017-09-10 01:48:03', 'Activo'),
(1371, 'Ulises Daniel ', 'Silva', 'vazquez ', 24, 1, 1, 15, 56, 'danielvazquez.ds21@gmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '0ad23c9676dc22a4015be0bec1ddbd08a885df9d', 'dan', '7', 'fdded6681e60b0313c727a1b7b8acd0728482392', '2017-09-10 15:25:32', '2017-09-10 15:25:32', 'Activo'),
(1372, 'AVIGAIL', 'MORENO', 'ANDRES', 21, 2, 1, 15, 15, 'aviimoreno@hotmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', 'cd48743a967b03b74e30bcb784ec2cdc4615b95a', 'AVIGAIL', '7', '5638bfa77e4cbf91d3e3238ffb108d77c166393f', '2017-09-10 17:15:32', '2017-09-10 17:15:32', 'Activo'),
(1386, 'Elena', 'Sermeño', 'x', 19, 2, 1, 15, 35, 'helena_9825@hotmail.com', 49, 358, 1, NULL, NULL, NULL, 'SI', '9a7043ad0fdd61505602787bccebfd1b97306001', 'Elena', '7', '51a3c33c8ec309c2cd44e705df8a838dc115e9f2', '2017-09-14 03:39:59', '2017-09-14 03:39:59', 'Activo'),
(1387, 'DIANA LAURA', 'CONEJO', 'PIEDRA', 18, 2, 1, 15, 99, 'dilacopi@outlook.com', 49, 358, 1, NULL, NULL, NULL, 'SI', 'a3b87bef99ed2e1d4004f717d45354483a28e08f', 'dilacopi', '7', '417844be96341e085e85dd9722dd1c57ebf75a07', '2017-09-14 16:15:45', '2017-09-14 16:15:45', 'Activo'),
(1388, 'Victor', 'Castillo', 'Gallardo', 31, 1, 1, 15, 56, 'victor1_1@hotmail.com', 43, 350, 3, NULL, NULL, NULL, 'NO', '25792f2063f5dc140a87de01f3392ff441185a97', 'Victor1324', '7', '75baf18feaf31d0299c622ece8ef09add311a417', '2017-09-18 17:07:52', '2017-09-14 16:25:30', 'Activo'),
(1389, 'Elba del Carmen', 'Santos', 'Garfias', 20, 2, 1, 15, 56, 'elbadelcarmen8@gmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', 'f45f205d94c9f04602e273a8f149bb6f0c8dcf65', 'Elba8', '7', '3da2b57848d5882c1fb4711f81dd09ef31424a14', '2017-09-15 02:39:27', '2017-09-15 02:39:27', 'Activo'),
(1390, 'DANIEL', 'VILLAMAR', 'REYES', 36, 1, 1, 15, 56, 'sarvird@gmail.com', 11, 96, 1, NULL, NULL, NULL, 'SI', '31c474fbea40cb13f58046ec248d84c428cbfdd8', 'PULVIMETALURGIA', '7', 'ccdaf77ec36fc5697b4ed7f6fe819b2c2adb8ce9', '2017-09-15 03:39:08', '2017-09-15 03:39:08', 'Activo'),
(1391, 'Cuauhtémoc', 'Santos', 'Garfias', 19, 1, 1, 15, 56, 'temirrisantos69@gmail.com', 11, 86, 1, NULL, NULL, NULL, 'SI', '8b99fe465fc7ef0937150bde8c0c535bb4593558', 'SantosGarfias', '7', '671f0c555ade5392d25107285317a827e9435579', '2017-09-15 14:36:48', '2017-09-15 14:36:48', 'Activo'),
(1392, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', NULL, '34c7b0ad8c7854e7e320d4a8a25ed719964ace3c', '2017-09-15 21:43:52', '2017-09-15 21:43:52', NULL),
(1393, 'Claudia Yaneth ', 'Rodriguez', 'Esquivel', 21, 2, 1, 15, 85, 'yani-nemal-@outlook.com', 43, 344, 1, NULL, NULL, NULL, 'SI', 'b1428025f83bd42f584dfd8885796dda74e37c10', 'Yaneth', '7', '8083177593232cc7840f01da79f6272ca9bb4d4e', '2017-09-16 00:28:20', '2017-09-16 00:28:20', 'Activo'),
(1394, 'Yolanda', 'León', 'Olvera', 50, 2, 1, 15, 56, 'olverayolanda15@gmail.com', 47, 356, 2, NULL, NULL, NULL, 'SI', '13d4db24e9a1d5c15f5f604673d3377d39ce2912', 'yolanda', '7', 'af4b92a8183973cb304910837112d983e5cb1a13', '2017-09-16 00:53:39', '2017-09-16 00:53:39', 'Activo'),
(1395, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', NULL, 'e557b0dbd970cff0e52acb5381c2af0b34577a22', '2017-09-16 09:41:32', '2017-09-16 09:41:32', NULL),
(1396, 'Fernando', 'Romero', 'Virrueta', 18, 1, 1, 15, 58, 'fernandoromero5000@gmail.com', 43, 329, 1, NULL, NULL, NULL, 'SI', 'ad750c351e90eb35df250f4da9a7c3eb4c2358f1', 'FernandoRVirrueta', '7', '9622c4ac623cc913e6f22dc7e7d95e97c248ba4e', '2017-09-17 02:09:44', '2017-09-17 02:09:44', 'Activo'),
(1397, 'Kevin Alberto', 'Montero', 'Renteria', 18, 1, 1, 15, 58, 'taalibaan007@hotmail.com', 43, 329, 1, NULL, NULL, NULL, 'SI', '1830668e5b37c800f1e21fcbdfe79f1f67f50631', 'Kevin', '7', '4738f08497f183e9a606ac531a86a5f8a222f08c', '2017-09-17 02:30:34', '2017-09-17 02:30:34', 'Activo'),
(1398, 'Carlos Eduardo', 'Manzo', 'Pérez', 18, 1, 1, 15, 110, 'lalito.liveid@hotmail.com', 43, 329, 1, NULL, NULL, NULL, 'SI', 'a0816a8d39b138fa3fec9e62476948b6db35db0b', 'Lalo4', '7', 'd1fd92a8622a94a4e5b49ceb1f085e3cf44d273f', '2017-09-17 02:45:57', '2017-09-17 02:45:57', 'Activo'),
(1399, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', NULL, '7e73f9b37a1a24fede81cf3e6d04bfb9af7965fe', '2017-09-17 04:50:31', '2017-09-17 04:50:31', NULL),
(1400, 'Emanuel', 'Aguilar', 'Martínez', 18, 1, 1, 15, 1, 'manemtz999@gmail.com', 43, 329, 1, NULL, NULL, NULL, 'SI', '2124935ecff2142ff091df6e8d74496981a929e0', 'ManeMtz11', '7', '7640347495f7fabbd96e51898f34ba838a6775b4', '2017-09-17 05:39:07', '2017-09-17 05:39:07', 'Activo'),
(1401, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', NULL, 'a1378d02d47017265b78ba2a672ac5c4f4a02a64', '2017-09-17 05:59:56', '2017-09-17 05:59:56', NULL),
(1402, 'maria rosario', 'Anguiano', 'Aguilar', 20, 2, 1, 15, 62, 'rosarioang08.14@gmail.com', 43, 346, 1, NULL, NULL, NULL, 'NO', 'cd110e0602ca09c79ee32e87a19db9a9c2f78de0', 'chayito1', '7', '66d4a0298b49c2f82ef1fe2a02e86fd1b27839d2', '2017-09-17 18:56:01', '2017-09-17 18:56:01', 'Activo'),
(1403, 'Patricia Lizeth', 'Castro', 'Saucedo', 20, 2, 1, 15, 56, 'patiecs@hotmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', 'afcfbfb7c0c4f112d91f801af2a0a5c8ad6522bd', 'patiecs', '7', '7aefd10d0b28bb3199828a28d2d6457e9283c794', '2017-09-18 03:50:26', '2017-09-18 03:50:25', 'Activo'),
(1404, 'Giovanna Montserrat', 'Padilla', 'Marin', 22, 2, 1, 15, 56, 'geopadesa@gmail.com', 43, 349, 1, NULL, NULL, NULL, 'SI', '71e56c093b8145ebc536dc510a52a0ca4189f76d', 'wheresgio', '7', 'ce6d842ffd8a70c1419d4775781b0c55348c766a', '2017-09-18 04:19:58', '2017-09-18 04:19:58', 'Activo'),
(1405, 'Perla Brizeyda', 'Orozco', 'Espindola', 18, 2, 1, 15, 70, 'peponer_17@hotmail.com', 49, 358, 1, NULL, NULL, NULL, 'NO', 'ea28bfc872d5cc3e569cea9abdbcdf8902fc4b4d', 'oruga', '7', '18243029a5388ed6fc04f32fa91effcbfd0ca89b', '2017-09-18 15:12:42', '2017-09-18 15:12:42', 'Activo'),
(1407, 'Andrea', 'Medina', 'Madrid', 20, 2, 1, 8, 122, 'andrea_m0823@hotmail.com', 5, 40, 1, NULL, NULL, NULL, 'SI', 'ae86b2a3ba80796a19d9c94b1a5992bb173ac733', 'AndreaMedina', '7', '779108aa5fd9422eaf23744df4be76472a270088', '2017-09-18 19:59:09', '2017-09-18 19:59:09', 'Activo'),
(1408, 'Luis Antonio', 'Torres', 'Villalobos', 20, 1, 1, 15, 56, 'luisantoniotv97@hotmail.com', 5, 40, 1, NULL, NULL, NULL, 'NO', '78195787cc8971b5a90881b5c024faafd35f6ebc', 'LuisTorres', '7', '90e6021ad748ca8e97a2281f6dd5e6d5c9d90da1', '2017-09-18 20:03:19', '2017-09-18 20:03:19', 'Activo'),
(1409, 'Diana Carolina', 'Magaña', 'Espinosa', 21, 2, 1, 15, 49, 'carolina.me1@hotmail.com', 5, 40, 1, NULL, NULL, NULL, 'SI', '48991bc628d114ce4ac8a43f3da6d677ef3180c5', 'carolinamagana', '7', '29a86191e40da6e5e109f8a5c6941edc694bc7f0', '2017-09-18 20:17:05', '2017-09-18 20:17:05', 'Activo'),
(1410, 'Mijail ', 'Radilla', 'Basurto', 21, 1, 1, 15, 56, 'mijail.aguilas@hotmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', '911679b96288d0f0b78f8668527c7c32a08f0754', 'mijailradilla', '7', 'ec61ef81e0e4c983087d9684f96ef0e28fb3b87e', '2017-09-18 20:37:43', '2017-09-18 20:37:43', 'Activo'),
(1411, 'Victor Hugo', 'Bejarano', 'García', 21, 1, 1, 15, 104, 'vbejaranogarcia@gmail.com', 11, 93, 1, NULL, NULL, NULL, 'SI', '25eb922bffc6bfb98d5ca6c1ff53a0a56e19947e', 'victorbejarano', '7', '37b8de2539428b69717bead10a4b24a29e15236a', '2017-09-18 20:41:17', '2017-09-18 20:41:17', 'Activo'),
(1412, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', NULL, '012d7f9a908dee406867c6f1fb7db526dd485529', '2017-09-18 22:30:51', '2017-09-18 22:30:51', NULL),
(1413, 'ERENDIRA', 'PONCIANO', 'CORRAL', 20, 2, 1, 15, 56, 'erecorral@live.com.mx', 11, 93, 1, NULL, NULL, NULL, 'NO', '216af53baed806e5925c2a0f6814697c1e1ce7ef', 'ErendiraP', '7', '2d0c8b22aa5c11bfb1dc8f5ec2133782a41fc434', '2017-09-18 23:11:38', '2017-09-18 23:11:38', 'Activo'),
(1414, 'ALMA YOSELIN', 'MARQUEZ', 'ZACARIAS', 27, 2, 1, 15, 56, 'yose_maz@hotmail.com', 43, 417, 2, NULL, NULL, NULL, 'SI', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '0505021234567891011121', '7', '488d816bd4d3745deca5103c22213037b87c6dcf', '2017-09-18 23:37:21', '2017-09-18 23:37:21', 'Activo'),
(1415, 'ALMA YOSELIN', 'MARQUEZ', 'ZACARIAS', 27, 2, 1, 15, 56, 'almayoselinmaz@gmail.com', 43, 417, 2, NULL, NULL, NULL, 'SI', '802fed40a5ec2a2da98d4029df71d4cbb6885239', 'PONYO01', '7', '065819acb0ff4dc5ef6e079a6f3e9b3bf692c624', '2017-09-18 23:43:02', '2017-09-18 23:43:02', 'Activo'),
(1416, 'Yulissa Paola', 'Galeana', 'Ramos', 21, 2, 1, 15, 57, 'yulissapaola1896@outlook.com', 43, 344, 1, NULL, NULL, NULL, 'NO', '2f6550e7c807acdc3479c2371d2244a21a4561c9', 'yulissag', '7', '775e863fb674995a35b45463fc42b3e0cb71ab16', '2017-09-19 03:33:41', '2017-09-19 03:33:41', 'Activo'),
(1417, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', NULL, '4fdd14b72f7f66c5784ba01f60bcd314942f5276', '2017-09-19 03:45:37', '2017-09-19 03:45:37', NULL),
(1418, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', NULL, '6782b73b659dd6b7dd127cf5bf5d1ec941e6738d', '2017-09-19 03:45:56', '2017-09-19 03:45:56', NULL),
(1419, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', NULL, '31e5817f9716ab349282fbd75d433fcb3b0fec0e', '2017-09-19 03:46:05', '2017-09-19 03:46:05', NULL),
(1420, 'Daniela', 'Camacho', 'Caballero', 18, 2, 1, 15, 56, 'danielacamachocaballero@gmail.com', 43, 344, 1, NULL, NULL, NULL, 'SI', '0314934eb2f08374123c9a10b250df8df4d49c18', 'DaniBTC', '7', '00206979c5cead779051dff52669743445744240', '2017-09-19 03:46:06', '2017-09-19 03:46:06', 'Activo'),
(1421, 'EROZAIDA', 'LEYVA', 'JIMENEZ', 45, 2, 1, 15, 56, 'oscararieljara@outlook.com', 13, 107, 1, NULL, NULL, NULL, 'SI', '9a0fa3f122b3f3edaac4a8df3267e17ff2e04129', 'EROZAIDA', '7', '3b9e051d6944ac34bd0d016e5dcdb60d32a69705', '2017-09-19 18:50:58', '2017-09-19 18:50:58', 'Activo'),
(1422, 'Luis Enrique', 'Valadez', 'Hernández', 41, 1, 1, 15, 49, 'quikevaladez@gmail.com', 9, 75, 1, NULL, NULL, NULL, 'SI', '6f2882bd60f89282b983f54329b4cf539e83e308', 'quikevaladez', '7', '8bb05a46b25d880e6c2d3518a6d963b42fe94e4d', '2017-09-19 19:09:32', '2017-09-19 19:09:32', 'Activo'),
(1423, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', NULL, 'ddefe4899a062f35d0dce045b0abbb6040777def', '2017-09-20 02:20:44', '2017-09-20 02:20:44', NULL),
(1424, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', NULL, '497309a324d60055c656dd5a3509366bfc46ceb2', '2017-09-20 02:20:45', '2017-09-20 02:20:45', NULL),
(1425, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', NULL, 'd5e8bed102cdfea6c62ade37b5956cfccbfb0800', '2017-09-20 02:20:46', '2017-09-20 02:20:46', NULL),
(1426, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', NULL, '377a854ee799a6982a6eff2c5d601effb9a9bbab', '2017-09-20 02:20:47', '2017-09-20 02:20:47', NULL),
(1427, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', NULL, '2ab139b52866d8518b8f95f2177b691717e0d336', '2017-09-20 02:20:48', '2017-09-20 02:20:48', NULL),
(1428, 'Mario', 'Morales', 'Máximo', 27, 1, 1, 15, 93, 'mmoralesmaximo@gmail.com', 43, 338, 1, NULL, NULL, NULL, 'SI', 'a5b02187603ba0890db7ce9d69d20539c8bf44ff', 'morenomorales', '7', 'a7b260a7cc0221dd6fad61fc6cb76278bea05bfe', '2017-09-20 05:37:41', '2017-09-20 05:37:41', 'Activo'),
(1429, 'Mariana', 'Alvarez', 'Navarrete', 36, 2, 1, 15, 56, 'maralvnav@yahoo.com.mx', 11, 93, 3, NULL, NULL, NULL, 'SI', '5ac793b4ce27516e747c267f955fb8757ae25d63', 'maralvnav', '7', '11dc1b6471b99f33cc715db9a0873dc10a6a84ab', '2017-09-20 13:32:41', '2017-09-20 13:32:41', 'Activo'),
(1430, 'Jose Luis', 'Campos', 'Villafuerte', 53, 1, 1, 15, 56, 'jlcamposv@yahoo.com', 28, 197, 2, NULL, NULL, NULL, 'SI', 'f08e28104ac2f3864068e7b1ff8868b57b74ffc5', 'jlcampos', '7', '053d89270fc48b3c0d35a4cda86de06f6ec6f13f', '2017-09-20 17:42:43', '2017-09-20 17:42:43', 'Activo'),
(1431, 'wilmer', 'castillo', 'najar', 24, 1, 1, 15, 57, 'ironwil_16@hotmail.com', 43, 346, 2, NULL, NULL, NULL, 'SI', '2b5b0b8ffc87ec7f98b760c5204d123eb857dc61', 'wilmercastillo', '7', '5f1759dbf377a5f8bbde743289a1cda0c6e5bdee', '2017-09-20 18:19:15', '2017-09-20 18:19:15', 'Activo'),
(1432, 'Luisa Fernanda', 'Chávez', 'Zárate', 18, 2, 1, 15, 56, 'fercha.issa@hotmail.com', 43, 339, 1, NULL, NULL, NULL, 'SI', '587ad949ec79b36da311f0253d9fd2f9679018b2', 'fercz', '7', 'b526b7f7d275c8518c004be407f53ead805482b1', '2017-09-20 19:05:20', '2017-09-20 19:05:20', 'Activo'),
(1433, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', NULL, '9d16c5e8370b2282c8146ff652a78660adf12993', '2017-09-20 19:26:53', '2017-09-20 19:26:53', NULL),
(1434, 'Mario Alberto', 'Agulera', 'Alvarez', 23, 1, 1, 15, 56, 'malberto1994.sicdet@gmail.com', 132, 456, 1, NULL, NULL, NULL, 'SI', '4b36782f6d0d1843c5e7f64c97db5baf5292ab64', 'malberto', '7', 'b93121d6950e08e79a1127fe67661248f7e34768', '2017-09-29 14:59:40', '2017-09-29 14:59:40', 'Activo'),
(1435, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '', NULL, '6bd3a19b8bf9b59f0ea8628ce2e2de409c94a7a0', '2017-09-29 14:59:54', '2017-09-29 14:59:54', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alertas`
--
ALTER TABLE `alertas`
  ADD PRIMARY KEY (`id_alerta`);

--
-- Indices de la tabla `area_apoyo`
--
ALTER TABLE `area_apoyo`
  ADD PRIMARY KEY (`id_area_apoyo`);

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
-- Indices de la tabla `clave`
--
ALTER TABLE `clave`
  ADD PRIMARY KEY (`id_clave`);

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
-- AUTO_INCREMENT de la tabla `alertas`
--
ALTER TABLE `alertas`
  MODIFY `id_alerta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `area_apoyo`
--
ALTER TABLE `area_apoyo`
  MODIFY `id_area_apoyo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
  MODIFY `id_asignacion` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `clave`
--
ALTER TABLE `clave`
  MODIFY `id_clave` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT de la tabla `evaluaciones`
--
ALTER TABLE `evaluaciones`
  MODIFY `id_evaluacion` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `facultad`
--
ALTER TABLE `facultad`
  MODIFY `id_facultad` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=467;
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
  MODIFY `id_institucion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;
--
-- AUTO_INCREMENT de la tabla `jovenes`
--
ALTER TABLE `jovenes`
  MODIFY `id_jovenes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
  MODIFY `id_municipio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;
--
-- AUTO_INCREMENT de la tabla `nacionalidad`
--
ALTER TABLE `nacionalidad`
  MODIFY `id_nacionalidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `nivel_academico`
--
ALTER TABLE `nivel_academico`
  MODIFY `id_academico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `ponencias`
--
ALTER TABLE `ponencias`
  MODIFY `id_ponencias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=925;
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
  MODIFY `id_puesto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
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
  MODIFY `id_usuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1436;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
