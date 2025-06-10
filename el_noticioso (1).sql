-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-05-2025 a las 16:37:49
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
-- Base de datos: `el_noticioso`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `etiqueta`
--

CREATE TABLE `etiqueta` (
  `id_etiqueta` int(11) NOT NULL,
  `nombre_etiqueta` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favorito`
--

CREATE TABLE `favorito` (
  `id_favorito` int(11) NOT NULL,
  `fecha_guardado` date NOT NULL,
  `id_noticia` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticia`
--

CREATE TABLE `noticia` (
  `id_noticia` int(11) NOT NULL,
  `autor` varchar(255) NOT NULL,
  `fecha_publicacion` date NOT NULL,
  `imagen_url` varchar(255) DEFAULT NULL,
  `localia` varchar(255) NOT NULL,
  `resumen` text NOT NULL,
  `titulo_noticia` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `noticia`
--

INSERT INTO `noticia` (`id_noticia`, `autor`, `fecha_publicacion`, `imagen_url`, `localia`, `resumen`, `titulo_noticia`) VALUES
(1, 'Juan Pérez', '2025-05-20', 'https://www.bing.com/th/id/OIP.SKeV6xSSIkVbbzyPnpWY9AHaE8?w=245&h=215&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2', 'local', 'El festival anual de cultura local reunió a miles de personas en la plaza central, con presentaciones de música, danza y artesanía tradicional. Este evento busca fortalecer la identidad cultural, promover el talento local y fomentar el turismo en la zona. Participaron grupos folclóricos y artistas emergentes que ofrecieron espectáculos para todas las edades, generando un ambiente de alegría, inclusión y unión comunitaria que reafirma el valor de las tradiciones.', 'Festival cultural local atrae a miles'),
(2, 'Ana Gómez', '2025-05-19', 'https://th.bing.com/th/id/OIP.3hOIX8GGGDFDRN0dNIPpAAHaFj?w=235&h=180&c=7&r=0&o=5&pid=1.7', 'regional', 'El equipo regional de fútbol se coronó campeón tras un emocionante partido que se definió en penales. La final disputada en el estadio principal reunió a miles de aficionados que apoyaron con entusiasmo a sus jugadores. Este triunfo representa un hito importante para el deporte local, abre las puertas a competencias nacionales y motiva a jóvenes talentos a soñar con carreras profesionales en el deporte.', 'Equipo regional gana campeonato'),
(3, 'Carlos López', '2025-05-18', 'https://th.bing.com/th/id/OIP.r0ENJ_JtSnhUI_pjTqac4AHaEK?w=314&h=180&c=7&r=0&o=5&pid=1.7', 'nacional', 'El Congreso aprobó una nueva ley que reformará el sistema educativo nacional, con un enfoque en la inclusión tecnológica y la mejora de la calidad docente. La normativa busca reducir la brecha educativa, especialmente en zonas rurales y vulnerables, garantizando el acceso equitativo y de calidad. Esta reforma es considerada fundamental para el desarrollo sostenible del país y la preparación de futuras generaciones.', 'Nueva ley nacional sobre educación'),
(4, 'Laura Martínez', '2025-05-17', 'https://th.bing.com/th/id/OIP.DgCU857ZTolniGfn1KmgsAHaEK?w=294&h=180&c=7&r=0&o=5&pid=1.7', 'internacional', 'Líderes mundiales se reunieron en una cumbre climática para discutir acciones concretas contra el cambio climático. Se acordaron metas ambiciosas para reducir emisiones de gases de efecto invernadero, destacando la cooperación global y la inversión en energías renovables. Este evento subrayó la urgencia de actuar para proteger el medio ambiente y garantizar un futuro sostenible para las próximas generaciones.', 'Cumbre internacional sobre cambio climático'),
(5, 'Miguel Torres', '2025-05-16', 'https://th.bing.com/th/id/OIP.Mhh5N1jBSB4eXm2Z2N2CRAHaEK?w=333&h=187&c=7&r=0&o=5&pid=1.7', 'local', 'Artistas locales ofrecieron un vibrante concierto gratuito en la plaza central, fusionando música tradicional y contemporánea. El evento atrajo a familias y jóvenes, promoviendo la cultura y generando un espacio de esparcimiento. La iniciativa busca apoyar a músicos emergentes, fortalecer la identidad cultural y revitalizar los espacios públicos como centros de encuentro comunitario.', 'Concierto cultural en plaza local'),
(6, 'Sofía Ruiz', '2025-05-15', 'https://th.bing.com/th/id/OIP.qGragk82LnOZ_e6HSpCRbAHaE8?w=285&h=190&c=7&r=0&o=5&pid=1.7', 'regional', 'Con la participación de 10 equipos, comienza hoy el torneo regional de baloncesto. Durante un mes se jugarán partidos en distintas sedes, con el objetivo de fomentar el deporte amateur, promover la integración comunitaria y descubrir nuevos talentos. El evento también incluirá actividades educativas y recreativas dirigidas a niños y jóvenes.', 'Torneo regional de baloncesto inicia hoy'),
(7, 'Pedro Sánchez', '2025-05-14', 'https://th.bing.com/th/id/OIP.NBzT9L08vasrpFCi6h5GjgHaE8?w=270&h=180&c=7&r=0&o=5&pid=1.7', 'nacional', 'El último informe económico del gobierno revela un crecimiento del 3% en el Producto Interno Bruto (PIB), impulsado principalmente por los sectores de la industria manufacturera y el comercio. Expertos destacan la recuperación económica postcrisis y llaman a implementar políticas sostenibles que mantengan la estabilidad y beneficien a los sectores más vulnerables.', 'Informe económico nacional revela crecimiento'),
(8, 'Elena Fernández', '2025-05-13', 'https://th.bing.com/th/id/OIP.vlo7yDBn2rfcw3R0WkDkiAHaE8?w=246&h=180&c=7&r=0&o=5&pid=1.7', 'internacional', 'Se intensifican los enfrentamientos en la frontera entre dos países vecinos, provocando el desplazamiento de cientos de civiles. Organismos internacionales hacen un llamado urgente a la mediación y al respeto del derecho internacional. Las tensiones surgen de disputas territoriales y el control de recursos naturales estratégicos, generando preocupación global.', 'Conflicto internacional en zona fronteriza'),
(9, 'Diego Morales', '2025-05-12', 'https://th.bing.com/th/id/OIP.8eNwrDVZXQfpUu18vhG8yAHaFj?w=270&h=203&c=7&r=0&o=5&pid=1.7', 'local', 'El museo local inauguró una muestra de arte contemporáneo con obras de artistas nacionales e internacionales. La exposición busca acercar el arte a la comunidad mediante talleres, visitas guiadas y actividades para estudiantes. Esta iniciativa también promueve el diálogo intercultural y apoya el crecimiento del circuito artístico en la región.', 'Exposición cultural en museo local'),
(10, 'Natalia Vargas', '2025-05-11', 'https://th.bing.com/th/id/OIP.fYtWaCpkzXJ4bxj8rcpVTQHaFI?w=272&h=187&c=7&r=0&o=5&pid=1.7', 'regional', 'La carrera anual de ciclismo reunió a más de 500 participantes en un recorrido de 120 kilómetros, atravesando paisajes naturales y urbanos. La competencia destacó por su enfoque en la inclusión, la participación femenina y la promoción de estilos de vida saludables. Además, se fomentó el turismo deportivo y el respeto al medio ambiente.', 'Carrera regional de ciclismo convocó a cientos'),
(11, 'Jorge Castillo', '2025-05-10', 'https://th.bing.com/th/id/OIP._U93dooeST8Om8CGBv3qQAHaE8?w=258&h=180&c=7&r=0&o=5&pid=1.7', 'nacional', 'Una propuesta de reforma política ha generado opiniones divididas en el país. Los principales puntos incluyen mayor transparencia electoral, fomento a la participación ciudadana y nuevas reglas para el financiamiento de campañas. La sociedad civil exige mayor vigilancia y participación en el proceso para fortalecer la democracia.', 'Reforma política nacional genera debate'),
(12, 'María Herrera', '2025-05-09', 'https://th.bing.com/th/id/OIP.CHtaQkNCOUjLHu8B12_qPwHaDe?w=333&h=164&c=7&r=0&o=5&pid=1.7', 'internacional', 'Representantes de varios países firmaron un acuerdo que promueve el comercio justo y sostenible. El pacto busca garantizar condiciones equitativas para productores, proteger el medio ambiente y fomentar el desarrollo económico en regiones vulnerables. Se espera que esta alianza tenga un impacto positivo en las relaciones comerciales globales.', 'Acuerdo internacional para comercio justo'),
(13, 'Ricardo Díaz', '2025-05-08', 'https://th.bing.com/th/id/OIP.q-rTl9dYCmyX2NN8kbEKHgHaE8?w=285&h=190&c=7&r=0&o=5&pid=1.7', 'local', 'Se realizó un evento cultural con danzas, gastronomía y artesanías tradicionales. Participaron comunidades indígenas, grupos folclóricos y vecinos que compartieron expresiones culturales autóctonas. La actividad promovió el respeto por las raíces, la cohesión comunitaria y la revalorización del patrimonio cultural local.', 'Evento cultural local celebra tradiciones'),
(14, 'Claudia Jiménez', '2025-05-07', 'https://th.bing.com/th/id/OIP._e3CM5JhHEL2FkZG8m6rsQHaE8?w=240&h=180&c=7&r=0&o=5&pid=1.7', 'regional', 'El equipo femenino regional clasificó a la final del torneo luego de una destacada serie de partidos. El nivel técnico mostrado ha sido elogiado por la crítica deportiva, y ha generado entusiasmo en la afición. Este avance visibiliza el talento femenino en el deporte y refuerza la igualdad de oportunidades.', 'Selección regional de fútbol femenino avanza'),
(15, 'Fernando Ruiz', '2025-05-06', 'https://th.bing.com/th/id/OIP.9i01kmVINrnQHQWCtQAGUAHaFA?w=233&h=180&c=7&r=0&o=5&pid=1.7', 'nacional', 'Economistas analizan los efectos de la crisis que afecta al país, marcada por inflación alta y crecimiento lento. Se proponen políticas fiscales y monetarias para recuperar la estabilidad, proteger el empleo y fortalecer los sectores productivos. La situación plantea desafíos complejos en un contexto social ya afectado.', 'Crisis económica nacional preocupa a expertos'),
(16, 'Isabel Gómez', '2025-05-05', 'https://th.bing.com/th/id/OIP.zYxIhI6A0qtB5zdC5m-3ZQHaE6?w=253&h=180&c=7&r=0&o=5&pid=1.7', 'internacional', 'Una antigua disputa territorial entre dos naciones ha generado un aumento de tensiones diplomáticas y militares. Las movilizaciones de tropas y los comunicados cruzados han elevado el riesgo de conflicto armado, mientras la comunidad internacional exige diálogo y soluciones pacíficas para evitar una escalada mayor.', 'Tensión internacional por disputa territorial'),
(17, 'Alberto Mendoza', '2025-05-04', 'https://th.bing.com/th/id/OIF.0kkUFVMhFqeTFMBwCcIPsg?w=285&h=190&c=7&r=0&o=5&pid=1.7', 'local', 'El concurso anual reconoció a jóvenes artistas en disciplinas como música, pintura y literatura. Los ganadores fueron seleccionados por un jurado especializado y recibirán becas para continuar su formación. La iniciativa promueve la creatividad y el desarrollo artístico como herramientas de transformación social.', 'Concurso cultural local premia talentos'),
(18, 'Verónica Salazar', '2025-05-03', 'https://th.bing.com/th/id/OIP.lm8KAToXTT0a0-fTCgwpEwHaD4?w=297&h=180&c=7&r=0&o=5&pid=1.7', 'regional', 'Con entusiasmo comenzó la nueva temporada de la liga regional, incorporando disciplinas como voleibol, atletismo y fútbol. La organización apuesta por la participación comunitaria y la promoción de hábitos saludables. Se espera que el evento fortalezca la integración social y la visibilidad de nuevos talentos.', 'Liga regional de deportes inicia temporada'),
(19, 'Luis Ortega', '2025-05-02', 'https://th.bing.com/th/id/OIP.lSh_xiyznewSRApwuItyzgHaE8?w=244&h=180&c=7&r=0&o=5&pid=1.7', 'nacional', 'Tras las recientes elecciones, nuevos actores políticos emergieron y se formaron nuevas coaliciones que reconfiguran el escenario político nacional. Se anticipan cambios significativos en políticas públicas y gobernabilidad. La participación ciudadana alcanzó niveles históricos, mostrando un renovado interés en la democracia.', 'Política nacional en foco tras elecciones'),
(20, 'Gabriela Núñez', '2025-05-01', 'https://th.bing.com/th/id/OIP.Obk01as2pc8CoVHeg2OzGAHaEp?w=283&h=180&c=7&r=0&o=5&pid=1.7', 'internacional', 'Un acuerdo de paz histórico fue firmado en una región en conflicto, con apoyo de mediadores internacionales y representantes diplomáticos. El pacto contempla el cese de hostilidades, el desarme y medidas para la reconciliación social. La comunidad internacional celebra este paso como una oportunidad para la estabilidad regional.', 'Acuerdo internacional de paz firmado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticia_etiqueta`
--

CREATE TABLE `noticia_etiqueta` (
  `id_noticia_etiqueta` int(11) NOT NULL,
  `id_etiqueta` int(11) NOT NULL,
  `id_noticia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preferencia`
--

CREATE TABLE `preferencia` (
  `id_preferencia` int(11) NOT NULL,
  `id_noticia_etiqueta` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `rol` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `rol`) VALUES
(1, 'Administrador'),
(2, 'Usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `contrasenia` varchar(255) NOT NULL,
  `correo_electronico` text NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `telefono` varchar(9) NOT NULL,
  `id_cargo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `apellido`, `contrasenia`, `correo_electronico`, `nombre`, `telefono`, `id_cargo`) VALUES
(3, 'Carbajal Rivera', 'admin12121212', 'aldo@gmail.com', 'Aldo', '912323124', 2),
(4, 'Carbajal', 'sssssssssssssssssssssssssss', 'chindrinol@gmail.com', 'Aldo', '912410975', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `etiqueta`
--
ALTER TABLE `etiqueta`
  ADD PRIMARY KEY (`id_etiqueta`),
  ADD UNIQUE KEY `UK8lfdtt9ladi39gjb1rqlwjscq` (`nombre_etiqueta`);

--
-- Indices de la tabla `favorito`
--
ALTER TABLE `favorito`
  ADD PRIMARY KEY (`id_favorito`),
  ADD KEY `FK3s0w2ds0u6nrh5o1gca08hjuw` (`id_noticia`),
  ADD KEY `FK5vmlgfa4nyi848sknxb237yjt` (`id_usuario`);

--
-- Indices de la tabla `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`id_noticia`);

--
-- Indices de la tabla `noticia_etiqueta`
--
ALTER TABLE `noticia_etiqueta`
  ADD PRIMARY KEY (`id_noticia_etiqueta`),
  ADD UNIQUE KEY `UK2bmvf90jh7xraovsus6myy4dx` (`id_noticia`,`id_etiqueta`),
  ADD KEY `FK1l34rbace9q4t8fw9b1rlhso` (`id_etiqueta`);

--
-- Indices de la tabla `preferencia`
--
ALTER TABLE `preferencia`
  ADD PRIMARY KEY (`id_preferencia`),
  ADD KEY `FK8mmixgf52jr4axiaqsgllhgop` (`id_noticia_etiqueta`),
  ADD KEY `FKfim36ra54m6oe46xl9k0dnfi7` (`id_usuario`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `UKf7w2jekriedf7k6a4kaclt9t7` (`correo_electronico`) USING HASH,
  ADD KEY `FKlfylgwq27cmcsmijyg0dl29md` (`id_cargo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `etiqueta`
--
ALTER TABLE `etiqueta`
  MODIFY `id_etiqueta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `favorito`
--
ALTER TABLE `favorito`
  MODIFY `id_favorito` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `noticia`
--
ALTER TABLE `noticia`
  MODIFY `id_noticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `noticia_etiqueta`
--
ALTER TABLE `noticia_etiqueta`
  MODIFY `id_noticia_etiqueta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `preferencia`
--
ALTER TABLE `preferencia`
  MODIFY `id_preferencia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `favorito`
--
ALTER TABLE `favorito`
  ADD CONSTRAINT `FK3s0w2ds0u6nrh5o1gca08hjuw` FOREIGN KEY (`id_noticia`) REFERENCES `noticia` (`id_noticia`),
  ADD CONSTRAINT `FK5vmlgfa4nyi848sknxb237yjt` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `noticia_etiqueta`
--
ALTER TABLE `noticia_etiqueta`
  ADD CONSTRAINT `FK1l34rbace9q4t8fw9b1rlhso` FOREIGN KEY (`id_etiqueta`) REFERENCES `etiqueta` (`id_etiqueta`),
  ADD CONSTRAINT `FKacbaodsx76vx9hvpf836qa76p` FOREIGN KEY (`id_noticia`) REFERENCES `noticia` (`id_noticia`);

--
-- Filtros para la tabla `preferencia`
--
ALTER TABLE `preferencia`
  ADD CONSTRAINT `FK8mmixgf52jr4axiaqsgllhgop` FOREIGN KEY (`id_noticia_etiqueta`) REFERENCES `noticia_etiqueta` (`id_noticia_etiqueta`),
  ADD CONSTRAINT `FKfim36ra54m6oe46xl9k0dnfi7` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `FKlfylgwq27cmcsmijyg0dl29md` FOREIGN KEY (`id_cargo`) REFERENCES `rol` (`id_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
