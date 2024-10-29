-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-11-2023 a las 19:29:36
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vapor`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `desarrollador`
--

CREATE TABLE `desarrollador` (
  `ID` int(3) NOT NULL,
  `Desarrollador` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `desarrollador`
--

INSERT INTO `desarrollador` (`ID`, `Desarrollador`) VALUES
(1, 'Valve'),
(2, 'Starbeeze Entertainment'),
(3, 'Studio MDHR Entertainment Inc.'),
(4, 'Rockstar Games'),
(5, 'KRAFTON, Inc.'),
(6, 'ConcernedApe'),
(7, 'Maxis'),
(8, 'Mediatonic'),
(9, 'Scott Cawthon'),
(10, 'Capcom'),
(11, 'Frictional Games'),
(13, 'Nicalis, Inc.'),
(14, 'semiwork'),
(15, 'Motion Twin'),
(16, 'Pugstorm'),
(17, 'Klei Entertainment'),
(18, 'Re-Logic'),
(19, 'LucasArts'),
(21, 'Red Hook Studios'),
(22, 'Obsidian Entertainment'),
(23, 'Visual Concepts');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editor`
--

CREATE TABLE `editor` (
  `ID` int(8) NOT NULL,
  `Editor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `editor`
--

INSERT INTO `editor` (`ID`, `Editor`) VALUES
(1, 'Valve'),
(2, 'Starbeeze Entertainment'),
(3, 'Studio MDHR Entertainment Inc.'),
(4, 'Rockstar Games'),
(5, 'KRAFTON, Inc.'),
(6, 'ConcernedApe'),
(7, 'Electronic Arts'),
(8, 'Epic Games'),
(9, 'Scott Cawthon'),
(10, 'Capcom'),
(11, 'Frictional Games'),
(12, 'Nicalis, Inc.'),
(13, 'semiwork'),
(14, 'Motion Twin'),
(15, 'Fireshine Games'),
(16, 'Klei Entertainment'),
(17, 'Re-Logic'),
(18, 'LucasArts'),
(19, 'Red Hook Studios'),
(20, 'Ubisoft'),
(21, ' 2K');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(3) NOT NULL,
  `genero` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `genero`) VALUES
(1, 'ACCIÓN'),
(2, 'CASUAL'),
(3, 'TERROR'),
(4, 'SHOOTER'),
(5, 'ROGUELIKE'),
(6, 'AVENTURA'),
(7, 'RPG'),
(8, 'DEPORTES');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos`
--

CREATE TABLE `juegos` (
  `ID` int(3) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Lanzamiento` date NOT NULL,
  `codigo_genero` int(8) DEFAULT NULL,
  `codigo_desarrollador` int(8) DEFAULT NULL,
  `codigo_editor` int(8) DEFAULT NULL,
  `Descripcion_Chica` text NOT NULL,
  `Descripcion_Grande` text NOT NULL,
  `Requisitos` text NOT NULL,
  `Ruta_Imagenes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `juegos`
--

INSERT INTO `juegos` (`ID`, `Nombre`, `Lanzamiento`, `codigo_genero`, `codigo_desarrollador`, `codigo_editor`, `Descripcion_Chica`, `Descripcion_Grande`, `Requisitos`, `Ruta_Imagenes`) VALUES
(1, 'COUNTER STRIKE 1.6', '2000-11-01', 4, 1, 1, 'Disfruta del juego de acción en línea n° 1 en el mundo. Sumérgete en el fragor de la guerra antiterrorista más realista con este archiconocido juego por equipos. Alíate con compañeros para superar misiones estratégicas, asalta bases enemigas, rescata rehenes, y recuerda que tu personaje contribuye al éxito del equipo y viceversa.', 'Disfruta del juego de acción en línea n° 1 en el mundo. Sumérgete en el fragor de la guerra antiterrorista más realista con este archiconocido juego por equipos. Alíate con compañeros para superar misiones estratégicas, asalta bases enemigas, rescata rehenes, y recuerda que tu personaje contribuye al éxito del equipo y viceversa.', 'MÍNIMO: <br><br>procesador de 500 MHz, <br>96 MB de RAM, <br>tarjeta de vídeo de 16 MB, <br>Windows XP, <br>ratón, teclado y conexión a Internet<br><br><br><br>RECOMENDADO: <br><br>procesador de 800 MHz, <br>128 MB de RAM, <br>tarjeta de video de 32 MB, <br>Windows XP, <br>ratón, teclado y conexión a Internet', 'images/Capturas/Counter_Old/Counter_Old'),
(2, 'PAYDAY 2', '2013-08-13', 4, 2, 2, 'PAYDAY 2 es un juego de acción cooperativo para cuatro jugadores que, una vez más, permite a los jugadores ponerse en la piel del equipo original de PAYDAY - Dallas, Hoxton, Wolf y Chains - mientras descienden por Washington DC en una épica ola de crímenes.\r\n\r\n', 'PAYDAY 2 es un juego de acción cooperativo para cuatro jugadores que, una vez más, permite a los jugadores ponerse en la piel del equipo original de PAYDAY - Dallas, Hoxton, Wolf y Chains - mientras descienden por Washington DC en una épica ola de crímenes.\n<br><br>La red CRIMENET ofrece una amplia gama de contratos dinámicos, y los jugadores son libres de elegir cualquier cosa, desde pequeños atracos a tiendas de conveniencia o secuestros, hasta grandes ciberdelitos o vaciar importantes cámaras acorazadas para ese épico PAYDAY. Y mientras estás en DC, ¿por qué no participas en la comunidad local y haces algunos encargos políticos?\n<br><br>Hasta cuatro amigos cooperan en los golpes y, a medida que el equipo avanza, los trabajos se hacen más grandes, mejores y más gratificantes. Además de ganar más dinero y convertirse en un criminal legendario, existe un sistema de personalización y creación de personajes que permite a los equipos construir y personalizar sus propias armas y equipamiento.', 'MÍNIMO:<br><br>\r\nSO: Windows 7<br>\r\nProcesador: 2 GHz Intel Dual Core Processor<br>\r\nMemoria: 4 GB de RAM<br>\r\nGráficos: Nvidia & AMD (512MB VRAM)<br>\r\nDirectX: Versión 9.0c<br>\r\nAlmacenamiento: 83 GB de espacio disponible<br>\r\nCompatibilidad con RV: SteamVR. Standing or Room Scale<br>\r\n<br><br>\r\n<br><br>\r\nRECOMENDADO:<br><br>\r\nSO: Windows 10<br>\r\nProcesador: 2.3 GHz Intel Quad Core Processor<br>\r\nMemoria: 8 GB de RAM<br>\r\nGráficos: Nvidia & AMD (1GB VRAM)<br>\r\nDirectX: Versión 9.0c<br>\r\nAlmacenamiento: 83 GB de espacio disponible<br>\r\nCompatibilidad con RV: SteamVR. Standing or Room Scale', 'images/Capturas/PayDay2/PayDay2'),
(3, 'CUPHEAD', '2017-09-29', 1, 3, 3, 'Cuphead es un juego de acción clásico estilo \"dispara y corre\" que se centra en combates contra el jefe. Inspirado en los dibujos animados de los años 30, los aspectos visual y sonoro están diseñados con esmero empleando las mismas técnicas de la época, es decir, animación tradicional.', 'Cuphead es un juego de acción clásico estilo \"dispara y corre\" que se centra en combates contra el jefe. Inspirado en los dibujos animados de los años 30, los aspectos visual y sonoro están diseñados con esmero empleando las mismas técnicas de la época, es decir, animación tradicional a mano, fondos de acuarela y grabaciones originales de jazz. <br><br>Juega como Cuphead o Mugman (en modo de un jugador o cooperativo) y cruza mundos extraños, adquiere nuevas armas, aprende poderosos supermovimientos y descubre secretos ocultos mientras procuras saldar tu deuda con el diablo.', 'MÍNIMO:<br><br> Requiere un procesador y un sistema operativo de 64 bits<br> SO: Windows 7<br> Procesador: Intel Core2 Duo E8400, 3.0GHz or AMD Athlon 64 X2 6000+, 3.0GHz or higher<br> Memoria: 3 GB de RAM<br> Gráficos: Geforce 9600 GT or AMD HD 3870 512MB or higher<br> DirectX: Versión 11<br> Almacenamiento: 4 GB de espacio disponible <br><br> <br><br> RECOMENDADO:<br><br> Requiere un procesador y un sistema operativo de 64 bits', 'images/Capturas/Cuphead/Cuphead'),
(4, 'GRAND THEFT AUTO: SAN ANDREAS', '2005-06-06', 1, 4, 4, 'Hace cinco años, Carl Johnson escapó de la presión de la vida en Los Santos, San Andreas, una ciudad desgarrada por los enfrentamientos entre bandas, las drogas y la corrupción. Donde las estrellas de cine y los millonarios hacen todo lo posible por evitar a los camellos y pandilleros armados.', 'Hace cinco años, Carl Johnson escapó de la presión de la vida en Los Santos, San Andreas, una ciudad desgarrada por los enfrentamientos entre bandas, las drogas y la corrupción. Donde las estrellas de cine y los millonarios hacen todo lo posible por evitar a los camellos y pandilleros armados. Ahora estamos a comienzos de los 90. Carl ha vuelto a casa. Su madre ha sido asesinada, su familia se ha deshecho y sus amigos de la infancia se han visto arrastrados hacia el desastre. En su regreso a su antiguo vecindario, una pareja de polis corruptos lo incriminan en un homicidio. CJ se ve forzado a emprender un viaje que lo llevará a través de todo el estado de San Andreas, para así salvar a su familia y recuperar el control de las calles.', 'MÍNIMO:<br><br> OS: Microsoft® Windows® 2000/XP<br> Processor: 1Ghz Pentium III or AMD Athlon Processor<br> Memory: 256MB of RAM<br> Graphics: 64MB Video Card (Geforce 3 or better)<br> Hard Drive: 3.6GB of free hard disk space (minimal install)<br> Other Requirements: Software installations required including DirectX and Sony DADC SecuROM<br> Partner Requirements: Please check the terms of service of this site before purchasing this software. <br><br> <br><br> RECOMENDADO:<br><br> Processor: Intel Pentium 4 or AMD Athlon XP Processor<br> Memory: 384MB of RAM (the more the better!)<br> Graphics: 128MB (or greater) Video Card (Geforce 6 Series Recommended)<br> Hard Drive: 4.7GB of free hard disk space (full install)<br> Sound Card: DirectX 9 compatible Sound Card (Sound Blaster Auidgy 2 Recommended)', 'images/Capturas/GTA_Old/GTA_Old'),
(5, 'PUBG: BATTLEGROUNDS', '2017-12-21', 1, 5, 5, 'Juega gratis a PUBG: BATTLEGROUNDS. Aterriza en posiciones estratégicas, saquea armas y suministros, y sobrevive para que vuestro equipo sea el único en pie en los distintos y variados campos de batalla.', '¡ATERRIZA, SAQUEA Y SOBREVIVE!<br> Juega gratis a PUBG: BATTLEGROUNDS.<br> Aterriza en posiciones estratégicas, saquea armas y suministros, y sobrevive para que vuestro equipo sea el único en pie en los distintos y variados campos de batalla. Forma equipo y participa en los campos de batalla para experimentar el Battle Royale original como solo existe en PUBG: BATTLEGROUNDS. <br><br> Con esta descarga de contenido, también podrás acceder al servidor de pruebas de BATTLEGROUNDS (para jugar, es necesario realizar una descarga independiente).  Es posible realizar compras en el juego opcionales.', 'MÍNIMO: <br><br> Requiere un procesador y un sistema operativo de 64 bits<br> SO: 64-bit Windows 10<br> Procesador: Intel Core i5-4430 / AMD FX-6300<br> Memoria: 8 GB de RAM<br> Gráficos: NVIDIA GeForce GTX 960 2GB / AMD Radeon R7 370 2GB<br> DirectX: Versión 11<br> Red: Conexión de banda ancha a Internet<br> Almacenamiento: 40 GB de espacio disponible <br> <br> <br> <br> RECOMENDADO: <br><br> Requiere un procesador y un sistema operativo de 64 bits<br> SO: 64-bit Windows 10<br> Procesador: Intel Core i5-6600K / AMD Ryzen 5 1600<br> Memoria: 16 GB de RAM<br> Gráficos: NVIDIA GeForce GTX 1060 3GB / AMD Radeon RX 580 4GB<br> DirectX: Versión 11<br> Red: Conexión de banda ancha a Internet<br> Almacenamiento: 50 GB de espacio disponible', 'images/Capturas/PUBG/PUBG'),
(6, 'STARDEW VALLEY', '2016-02-26', 2, 6, 6, 'Acabas de heredar la vieja parcela agrícola de tu abuelo de Stardew Valley. Decides partir hacia una nueva vida con unas herramientas usadas y algunas monedas. ¿Te ves capaz de vivir de la tierra y convertir estos campos descuidados en un hogar próspero?.', 'Te vas a vivir al valle... <br>Acabas de heredar la vieja parcela agrícola de tu abuelo de Stardew Valley. Decides partir hacia una nueva vida con unas herramientas usadas y algunas monedas. ¿Te ves capaz de vivir de la tierra y convertir estos campos descuidados en un hogar próspero?. <br><br><strong>¡Crea la granja de tus sueños!</strong> Constrúyela desde cero en una de las cinco configuraciones del mapa. <br><br><strong>¡Domina tu habilidad con la ganadería!</strong> Cría animales, siembra cultivos y fabrica maquinaria útil entre muchas más cosas. <br><br><strong>¡Únete a la comunidad local!</strong> Entabla amistad con más de 30 habitantes de Pelican Town. <br><br><strong>¡Personaliza a tu granjero!</strong> Podrás elegir entre cientos de opciones de personalización de personajes. <br><br><strong>¡Instálate y empieza a formar una familia!</strong> Comparte tu vida en la granja con uno de los doce personajes con los que podrás tener una relación. <br><br><strong>¡Explora grandes y misteriosas cuevas!</strong> Encuentra monstruos peligrosos y tesoros valiosos.', 'MÍNIMO:<br><br> SO: Windows Vista or greater<br> Procesador: 2 Ghz<br> Memoria: 2 GB de RAM<br> Gráficos: 256 mb video memory, shader model 3.0+<br> DirectX: Versión 10<br> Almacenamiento: 500 MB de espacio disponible <br><br> <br><br> RECOMENDADO:<br><br> SO: Windows Vista or greater<br> Procesador: 2 Ghz<br> Memoria: 2 GB de RAM<br> Gráficos: 256 mb video memory, shader model 3.0+<br> DirectX: Versión 10<br> Almacenamiento: 500 MB de espacio disponible', 'images/Capturas/Stardew_Valley/Stardew_Valley'),
(7, 'THE SIMS 4', '2014-09-02', 2, 7, 7, 'Disfruta del poder de crear y controlar a personas en un mundo virtual donde no hay reglas. ¡Ejerce tu poder con total libertad, diviértete y juega a la vida!.', 'Da rienda suelta a tu imaginación y crea un mundo único de Sims a tu imagen y semejanza. Descárgalo gratis y personaliza todos los detalles, desde tus Sims a sus hogares y mucho más. Elige el aspecto, la personalidad y la ropa de tus Sims y decide cómo van a vivir día a día. Diseña y construye casas increíbles para cada familia y luego decóralas con tus muebles y elementos decorativos favoritos. <br>Desplázate a distintos barrios donde podrás conocer diferentes Sims y enterarte de sus vidas. Descubre bellos lugares con entornos característicos y embárcate en aventuras espontáneas. Gestiona los altibajos de la vida cotidiana de tus Sims y observa qué pasa cuando recreas situaciones de tu vida real. Cuenta tus historias como quieras desarrollando relaciones, asignando profesiones y aspiraciones y sumergiéndote en este extraordinario juego en el que las posibilidades son infinitas.', 'MÍNIMO:<br><br> Requiere un procesador y un sistema operativo de 64 bits<br> SO: (64 bits) Windows 10<br> Procesador: Intel Core i3-3220 a 3,3 GHz (2 núcleos, 4 hilos), AMD Ryzen 3 1200 a 3,1 GHz (4 núcleos) o superior<br> Memoria: 4 GB de RAM<br> Gráficos: 128 MB de memoria gráfica y compatibilidad con Pixel Shader 3.0 Tarjetas de vídeo compatibles: Tarjetas gráficas compatibles: NVIDIA GeForce 6600 o superior, ATI Radeon X1300 o superior, Intel GMA X4500 o superior<br> DirectX: Versión 11<br> Red: Conexión de banda ancha a Internet<br> Almacenamiento: 26 GB de espacio disponible</p> <br><br> <br><br> RECOMENDADO:<br><br> Requiere un procesador y un sistema operativo de 64 bits<br> SO: Windows 10 de 64 bits<br> Procesador: Intel Core i5 (4 núcleos) o AMD Ryzen 5 o superior<br> Memoria: 8 GB de RAM<br> Gráficos: 1 GB de RAM de vídeo, NVIDIA GTX 650, AMD Radeon HD 7750 o superior<br> DirectX: Versión 11<br> Red: Conexión de banda ancha a Internet<br> Almacenamiento: 51 GB de espacio disponible', 'images/Capturas/The_Sims_4/The_Sims_4'),
(8, 'FALL GUYS', '2020-08-03', 2, 8, 8, 'Fall Guys es un party royale gratis y multiplataforma. Compite a lo torpe en absurdos circuitos de obstáculos con amigos o construye tu propio circuito caótico para compartirlo con la comunidad.', 'Lánzate y esquiva hasta alcanzar la victoria en el panteón de la torpeza. ¿Principiante o profesional? ¿En solitario o en grupo? Fall Guys ofrece diversión e hilaridad en dosis concentradas y en constante evolución. ¿Prefieres ser el responsable de crear todo el caos? Construye tu propio circuito de obstáculos para compartirlo con amigos o con la comun<br><br> Crea tu propio circuito: el modo Creativo de Fall Guys es un editor de niveles que te permite crear rondas personalizadas y compartirlas con la comunidad.<br><br> Competitivo y cooperativo: avanza a trompicones en partidas competitivas, en formato todos contra todos, y desafíos cooperativos o conquista la Cúpula del Tropiezo con hasta 3 amigos.<br><br> Juega con amigos: Fall Guys es compatible con el juego, los grupos y el progreso multiplataforma con una cuenta de Epic Games.<br><br> Contenido en constante evolución: el juego rebosa de originalidad con nuevas colaboraciones y actualizaciones, que incluyen disfraces, obstáculos y formas de jugar diferentes.', 'MÍNIMO: <br><br> SO: Windows 10 de 64 bits<br> Procesador: Intel Core i5 o AMD equivalente<br> Memoria: 8 GB de RAM<br> Gráficos: NVIDIA GTX 660 o AMD Radeon HD 7950<br> Almacenamiento: 2 GB de espacio disponible <br> <br> <br> <br> RECOMENDADO: <br><br> SO: Windows 10 de 64 bits<br> Procesador: Intel Core i5 o AMD equivalente<br> Memoria: 8 GB de RAM<br> Gráficos: NVIDIA GTX 660 o AMD Radeon HD 7950<br> Almacenamiento: 2 GB de espacio disponible', 'images/Capturas/Fall_Guys/Fall_Guys'),
(9, 'FIVE NIGHTS AT FREDDY\'S', '2014-08-18', 3, 9, 9, '¡Bienvenido a tu nuevo trabajo de verano en Freddy Fazbear\'s Pizza, donde tanto niños como padres vienen en busca de entretenimiento y comida! La atracción principal es Freddy Fazbear, por supuesto; y sus dos amigos. ¡Son robots animatrónicos, programados para complacer a las multitudes!.', '¡Bienvenido a tu nuevo trabajo de verano en Freddy Fazbear\'s Pizza, donde tanto niños como padres vienen en busca de entretenimiento y comida hasta donde alcanza la vista! La atracción principal es Freddy Fazbear, por supuesto; y sus dos amigos. ¡Son robots animatrónicos, programados para complacer a las multitudes! Sin embargo, el comportamiento de los robots se ha vuelto algo impredecible por la noche, y era mucho más barato contratarte como guardia de seguridad que encontrar un reparador. <br><br>Desde tu pequeña oficina debes vigilar atentamente las cámaras de seguridad. Tienes una cantidad muy limitada de electricidad que puedes usar por noche (recortes presupuestarios corporativos, ya sabes). Eso significa que cuando te quedas sin energía por la noche, ¡no más puertas de seguridad ni luces! Si algo no está bien, es decir, si el oso Freddy o sus amigos no están en sus lugares adecuados, ¡debes encontrarlos en los monitores y protegerte si es necesario! <br><br>¿Podrás sobrevivir cinco noches en Freddy\'s? <br><br>¡Este juego fue creado usando Clickteam Fusion!', 'MÍNIMO: <br><br> SO: XP,Vista,Windows7<br> Procesador: 2 GHz Intel Pentium 4 or AMD Athlon or equivalent<br> Memoria: 1 GB de RAM<br> Gráficos: 1 GB<br> DirectX: Versión 9.0<br> Almacenamiento: 250 MB de espacio disponible. <br><br> <br><br> RECOMENDADO: <br><br> SO: XP,Vista,Windows7<br> Procesador: 2 GHz Intel Pentium 4 or AMD Athlon or equivalent<br> Memoria: 1 GB de RAM<br> Gráficos: 1 GB<br> DirectX: Versión 9.0<br> Almacenamiento: 250 MB de espacio disponible.', 'images/Capturas/FNAF1/FNAF1'),
(10, 'RESIDENT EVIL 4 (2005)', '2005-03-18', 3, 10, 10, 'Al agente especial Leon S. Kennedy se le asigna la misión de rescatar a la hija del presidente de los EUA, que ha sido secuestrada.', 'En resident evil 4, al agente especial Leon S. Kennedy se le asigna la misión de rescatar a la hija del presidente de los EUA, que ha sido secuestrada. Tras llegar a una aldea rural europea, se enfrenta a nuevas amenazas que suponen retos totalmente diferentes de los clásicos enemigos zombis de pesados movimientos de las primeras entregas de esta serie. Leon lucha contra terroríficas criaturas nuevas infestadas con una nueva amenaza denominada «Las Plagas» y se enfrenta a una agresiva horda de enemigos que incluye aldeanos bajo control mental conectados a Los Iluminados, la misteriosa secta detrás del rapto.', 'MÍNIMO:<br><br> SO: Windows® 8 / Windows® 10<br> Procesador: Intel® CoreTM2 Duo 2,4 GHz o superior, AMD AthlonTM X2 2,8 GHz o superior<br> Memoria: 2 GB de RAM<br> Gráficos: NVIDIA® GeForce® 8800GTS o superior, ATI RadeonTM HD 4850 o superior<br> DirectX: Versión 9.0c<br> Almacenamiento: 15 GB de espacio disponible<br> Tarjeta de sonido: Dispositivo de sonido estándar <br><br> <br><br> RECOMENDADO:<br><br> SO: Windows 8.1 / Windows® 10<br> Procesador: Intel® CoreTM 2 Quad 2,7 GHz o superior, AMD PhenomTM II X4 3 GHz o superior<br> Memoria: 4 GB de RAM<br> Gráficos: NVIDIA® GeForce® GTX 560 o superior<br> DirectX: Versión 9.0c<br> Almacenamiento: 15 GB de espacio disponible', 'images/Capturas/RE4_Old/RE4_Old'),
(11, 'SOMA', '2015-09-22', 3, 11, 11, 'De los creadores de Amnesia: The Dark Descent, llega SOMA, un videojuego de terror y ciencia ficción ambientado bajo las olas del océano Atlántico. Lucha por sobrevivir en un mundo hostil que te hará cuestionar tu propia existencia.', 'SOMA es un videojuego de terror y ciencia ficción de Frictional Games, los creadores de Amnesia: the Dark Descent. Se trata de una historia inquietante sobre la identidad, la conciencia y lo que significa ser humano. <br><br> La radio no funciona, la comida escasea y las máquinas han comenzado a creerse que son personas. La instalación sumergida PATHOS-II ha sufrido un aislamiento terrible y se tendrán que tomar decisiones difíciles. ¿Qué hacer? ¿Qué tiene sentido? ¿Qué queda por lo que luchar? <br><br> Entra en el mundo de SOMA y enfréntate a los horrores sumergidos en las profundidades del océano. Hurga entre terminales cerradas y documentos secretos para descubrir la verdad que se oculta tras el caos. Busca a los últimos habitantes y participa en los sucesos que en último término darán forma al destino de la estación. Pero ten cuidado, el peligro se esconde en cada esquina: humanos corruptos, criaturas retorcidas, robots locos e incluso una I.A. inescrutable y omnipresente.<br> Necesitarás averiguar cómo lidiar con cada uno. Recuerda simplemente que no hay marcha atrás, o vences a tus enemigos o prepárate para correr.', 'MÍNIMO: <br><br> SO: 64-bit Windows Vista<br> Procesador: Core i3 / AMD A6 2.4Ghz<br> Memoria: 4 GB de RAM<br> Gráficos: NVIDIA GeForce GTX 260 / AMD Radeon HD 5750. OpenGL 3.3<br> Almacenamiento: 25 GB de espacio disponible<br> Notas adicionales: Tarjetas Intel Graphic integradas no admitidas. <br> <br> <br> <br> RECOMENDADO:<br><br> SO: 64-bit Windows 7<br> Procesador: Core i5 / AMD FX 2.4Ghz<br> Memoria: 8 GB de RAM<br> Gráficos: NVIDIA GeForce GTX 480 / AMD Radeon HD 5970. OpenGL 3.3<br> Almacenamiento: 25 GB de espacio disponible<br> Notas adicionales: Tarjetas Intel Graphic integradas no admitidas.', 'images/Capturas/SOMA/SOMA'),
(12, 'TEAM FORTRESS 2', '2007-10-10', 4, 1, 1, 'Nueve clases diferentes ofrecen una amplia variedad de habilidades tácticas y personalidades. Constantemente actualizado con nuevos modos de juego, mapas, equipamiento y, lo que es más importante, ¡sombreros!.', '¡El juego gratuito más valorado de todos los tiempos! Uno de los juegos de acción online más popular, Team Fortress 2, publica constantemente actualizaciones gratuitas: nuevos modos de juego, mapas, equipamiento y lo que es más importante, sombreros. Nueve clases diferentes proporcionan un enorme abanico de habilidades tácticas y personalidades y se prestan a una gran variedad de habilidades del jugador. <br><br>¿Nuevo en Team Fortress? ¡No te preocupes! No importa cuál sea tu estilo o tu experiencia, tenemos un personaje para ti. El detallado entrenamiento y los modos de práctica individual te ayudarán a pulir tus habilidades antes dar el salto a uno de los muchos modos de juego de TF2, de entre los que se incluyen Capturar la Bandera, Puntos de Control, Carga Explosiva, Arena, Rey de la Colina y muchos más. <br><br>¡Haz un personaje a tu medida! Hay cientos de armas, sombreros y más para coleccionar, fabricar, comprar e intercambiar. Personaliza tu clase favorita para ajustarla a tu forma de jugar y a tu gusto personal. No necesitas pagar para conseguirlos, prácticamente todos los objetos de la Tienda Mann Co. pueden obtenerse mientras juegas.', 'MÍNIMO:<br><br> SO: Windows® 7 (32/64-bit)/Vista/XP<br> Procesador: 1.7 GHz Processor or better<br> Memoria: 512 MB de RAM<br> DirectX: Versión 8.1<br> Red: Conexión de banda ancha a Internet<br> Almacenamiento: 15 GB de espacio disponible <br><br> <br><br> RECOMENDADO:<br><br> SO: Windows® 7 (32/64-bit)<br> Procesador: Pentium 4 processor (3.0GHz, or better)<br> Memoria: 1 GB de RAM<br> DirectX: Versión 9.0c<br> Red: Conexión de banda ancha a Internet<br> Almacenamiento: 15 GB de espacio disponible', 'images/Capturas/Team_Fortress_2/Team_Fortress_2'),
(13, 'THE BINDING OF ISAAC: REBIRTH', '2014-11-04', 5, 13, 12, 'The Binding of Isaac: Rebirth is a randomly generated action RPG shooter with heavy Rogue-like elements. Following Isaac on his journey players will find bizarre treasures that change Isaac’s form giving him super human abilities and enabling him to fight off droves of mysterious creatures, discover secrets', 'When Isaac’s mother starts hearing the voice of God demanding a sacrifice be made to prove her faith, Isaac escapes into the basement facing droves of deranged enemies, lost brothers and sisters, his fears, and eventually his mother. <br><br> Gameplay<br> The Binding of Isaac is a randomly generated action RPG shooter with heavy Rogue-like elements. Following Isaac on his journey players will find bizarre treasures that change Isaac’s form giving him super human abilities and enabling him to fight off droves of mysterious creatures, discover secrets and fight his way to safety. <br><br> About the Binding Of Isaac: Rebirth<br> The Binding of Isaac: Rebirth is the ultimate of remakes with an all-new highly efficient game engine (expect 60fps on most PCs), all-new hand-drawn pixel style artwork, highly polished visual effects, all-new soundtrack and audio by the the sexy Ridiculon duo Matthias Bossi + Jon Evans. Oh yeah, and hundreds upon hundreds of designs, redesigns and re-tuned enhancements by series creator, Edmund McMillen. Did we mention the poop?<br><br> Key Features:<br> ○ Over 500 hours of gameplay<br> ○ 4 BILLION Seeded runs!<br> ○ 20 Challenge runs<br> ○ 450+ items, including 160 new unlockables<br> ○ Integrated controller support for popular control pads!<br> ○ Analog directional movement and speed<br> ○ Tons of feature film quality animated endings<br> ○ Over 100 specialized seeds<br> ○ 2-Player local co-op<br> ○ Over 100 co-op characters<br> ○ Dynamic lighting, visual effects and art direction<br> ○ All-new game engine @60FPS 24/7<br> ○ All-new soundtrack and sound design<br> ○ Multiple Save slots<br> ○ Poop physics!<br> ○ The ultimate roguelike<br> ○ A bunch of achievements<br> <br><br> Uber secrets including:<br> ○ 10 Playable Characters<br> ○ 100+ enemies, with new designs<br> ○ Over 50 bosses, including tons of new and rare bosses<br> ○ Rooms FULL OF POOP!<br> ○ Mystic Runes<br> ○ Upgradeable shops', 'MÍNIMO: <br><br> SO: XP<br> Procesador: Core 2 Duo<br> Memoria: 2 GB de RAM<br> Gráficos: Discreet video card<br> Almacenamiento: 449 MB de espacio disponible<br> Tarjeta de sonido: Yes <br><br> <br><br> RECOMENDADO: <br><br> SO: Windows 8 / 7 / Vista / XP<br> Procesador: 2.4 GHz Quad Core 2.0 (or higher)<br> Memoria: 8 GB de RAM<br> Gráficos: Intel HD Graphics 4000 and higher, ATI Radeon HD-Series 4650 and higher, Nvidia GeForce 2xx-Series and up<br> Almacenamiento: 449 MB de espacio disponible<br> Tarjeta de sonido: Yes', 'images/Capturas/The_Binding_Of_Isaac/The_Binding_Of_Isaac'),
(14, 'VOIDIGO', '2023-06-08', 5, 14, 13, 'A vividly animated action roguelite focused on boss hunting. Unleash an array of diverse weapons and powerups to combat the corruption of the Void.', 'Unleash chaos in Voidigo, a vividly animated roguelite shooter packed with dynamic boss battles, zany weapons, and playful humor. <br><br> Select from an array of ranged and melee weapons to combat the looming corruption. Master the art of dodging and stun your enemies with stomps to tip the balance in your favor. <br><br> Voidigo\'s numerous bosses, corrupted by the void, offer fierce resistance. They may flee mid-battle, giving you a choice: pursue or regroup. However, hesitate too long, and they\'ll begin hunting you. <br><br> In your battle, collect diverse power-ups for exciting synergies. Trade weapons and resources to customize your playstyle.', 'MÍNIMO: <br><br> SO: Windows 7 (32-bit) or above<br> Procesador: i3-530 or equivalent<br> Memoria: 4 GB de RAM<br> Gráficos: GeForce GT 425M<br> DirectX: Versión 11<br> Almacenamiento: 1 GB de espacio disponible <br><br> <br><br> RECOMENDADO: <br><br> SO: Windows 10<br> Procesador: i7-4770 or equivalent<br> Memoria: 8 GB de RAM<br> Gráficos: GeForce GTX 870M or equivalent<br> DirectX: Versión 11<br> Almacenamiento: 1 GB de espacio disponible', 'images/Capturas/Voidigo/Voidigo'),
(15, 'DEAD CELLS', '2018-08-06', 5, 15, 14, 'Dead Cells es un juego de acción de plataformas de estilo roguelite e inspirado en juegos tipo metroidvania. Explorarás un castillo en constante cambio y expansión, si es que logras abrirte paso contra los guardianes en los combates 2D de estilo Dark Souls. No hay puntos de control: la cosa consiste en matar, morir, aprender y repetir.', 'Roguelite? Metroidvania? Roguevania!<br> ¿Creciste con los juegos de tipo roguelike, fuiste testigo de los juegos roguelite y hasta de los roguelite-lite? Pues te presentamos nuestro juego de estilo roguevania, el hijo ilegítimo de un roguelite moderno (Rogue Legacy, Binding of Isaac, Enter the Gungeon, Spelunky, etc.) y un metroidvania de la vieja escuela (Castlevania: SotN y similares). <br><br> Características:<br> ○ RogueVania: la exploración de un mundo interconectado con la rejugabilidad de un juego roguelite y la adrenalina que produce la amenaza de la muerte permanente<br> ○ Acción en 2D de tipo Dark Souls: combates duros pero justos, más de 50 armas y hechizos con un sistema de juego exclusivo y, por supuesto, la tirada de emergencia para salir de apuros.<br> ○ Progresión no lineal: ¿alcantarillas, osario o murallas? Una vez desbloqueadas, con las habilidades especiales permanentes podrás acceder a nuevas rutas para alcanzar tu objetivo. Opta por el camino que mejor se ajuste a tu estilo de juego o simplemente a tu estado de ánimo.<br> ○ Exploración: salas secretas, pasadizos ocultos, paisajes encantadores... Tómate un momento para pasear por las torres y respirar ese aire fresco empapado de bruma marina. <br><br><br>  Los niveles interconectados y el desbloqueo progresivo del acceso a la isla te proporcionan un auténtico incentivo para explorar tus alrededores. Además, súmale un grado de evolución para tu personaje y las mejoras de armas permanentes para tener claro lo que Dead Cells ha tomado prestado del largo catálogo de metroidvanias que lo preceden. <br><br> Eso sí, ¡lo más importante será tu habilidad como jugador! Los juegos de tipo roguelite consisten en mejorar constantemente hasta que lo que antes era un obstáculo insalvable se convierte en un paseo militar. Los combates implacables, junto con la ausencia de cualquier tipo de red de seguridad, hace que vivas una aventura adrenalínica cada vez que juegas. Además, su rejugabilidad no tiene rival.', 'MÍNIMO: <br><br> SO: Windows 7+<br> Procesador: Intel i5+<br> Memoria: 2 GB de RAM<br> Gráficos: Nvidia 450 GTS / Radeon HD 5750 or better<br> Almacenamiento: 500 MB de espacio disponible<br> Notas adicionales: DirectX 9.1+ or OpenGL 3.2+<br> <br><br> <br><br> RECOMENDADO: <br><br> SO: Windows 7+<br> Procesador: Intel i5+<br> Memoria: 4 GB de RAM<br> Gráficos: Nvidia GTX 460 / Radeon HD 7800 or better<br> Almacenamiento: 500 MB de espacio disponible<br> Notas adicionales: DirectX 9.1+ or OpenGL 3.2+', 'images/Capturas/Dead_Cells/Dead_Cells'),
(16, 'CORE KEEPER', '2022-03-08', 6, 16, 15, 'Explora una caverna infinita llena de criaturas, reliquias y recursos en una aventura minera de tipo «sandbox» para 1-8 jugadores. Extrae recursos, construye, lucha, fabrica y cultiva para desentrañar el misterio del antiguo Núcleo.', 'Atraído hacia una reliquia misteriosa, eres un explorador que despierta en una antigua caverna de criaturas, recursos y abalorios. Atrapado en las profundidades subterráneas, ¿estarán a la altura tus habilidades de supervivencia? <br><br> Extrae reliquias y recursos para construir tu base, fabricar nuevos utensilios, sobrevivir y alimentar el Núcleo. Vence a monstruos gigantes, descubre secretos ocultos, cultiva, cocina nuevas recetas y explora un mundo subterráneo generado de manera procedimental en una aventura de minería tipo «sandbox» para 1-8 jugadores. <br><br> Extrae recursos<br> Explora una inmensa cueva subterránea de recursos infinitos. Extrae minerales, descubre cristales ocultos, fósiles y abalorios y sobrevive en un mundo subterráneo generado de manera procedimental. <br><br> Descubre un mundo antiguo<br> Explora biomas vivos y lucha con criaturas cavernícolas en un gran sistema subterráneo. Peina el oscuro mundo que te rodea y enfréntate a los mastodontes del inframundo. Derrótalos y recoge el botín para ayudarte a desvelar el misterio del Núcleo.  <br><br> Fabrica objetos y equipo<br> Personaliza a tu personaje y fabrica nuevos objetos, armaduras y utensilios para adentrarte más en las cuevas. Fabrica un pico para explotar paredes y recursos, construye puentes para cruzar lagos subterráneos y coloca antorchas para iluminar la profunda y omnipresente oscuridad. <br><br>  Cultiva, pesca y cocina<br> Cultiva distintas plantas sembrando semillas que encontrarás en tus aventuras. Busca el sitio perfecto para pescar y captura una plétora de peces únicos. Combina en la olla el producto de tu duro trabajo cultivando y pescando para descubrir deliciosas recetas con efectos inesperados. <br><br>  «Sandbox» para 1-8 jugadores<br> Sobrevive en solitario o juega en línea con hasta 7 jugadores más. Colabora con ellos para extraer recursos, luchar, cultivar, fabricar y sobrevivir juntos. Especialízate en tu papel para ayudar a otros exploradores a dominar el díscolo paisaje en el que os encontráis.', 'MÍNIMO: <br><br> Requiere un procesador y un sistema operativo de 64 bits<br> SO: Windows 10 64-bit<br> Procesador: Intel Core i5-2300 / AMD Ryzen 3 1200<br> Memoria: 8 GB de RAM<br> Gráficos: GeForce GTX 460 / Radeon HD 5850 <br><br> <br><br> RECOMENDADO: <br><br> Requiere un procesador y un sistema operativo de 64 bits<br> SO: Windows 10 64-bit<br> Procesador: Intel Core i5-8400 / AMD Ryzen 7 2700X<br> Memoria: 8 GB de RAM<br> Gráficos: GeForce GTX 1050 Ti / Radeon R9 280X', 'images/Capturas/Core_Keeper/Core_Keeper'),
(17, 'DON\'T STARVE', '2013-04-23', 6, 17, 16, 'Don’t Starve is an uncompromising wilderness survival game full of science and magic. Enter a strange and unexplored world full of strange creatures, dangers, and surprises. Gather resources to craft items and structures that match your survival style.', 'Don’t Starve es un implacable juego de supervivencia en la naturaleza repleto de ciencia y magia.<br> Juegas como Wilson, un intrépido caballero científico que ha sido atrapado por un demonio y transportado a un misterioso mundo en estado salvaje. Wilson deberá aprender a explotar su entorno y a sus habitantes si quiere albergar alguna esperanza de escapar y encontrar la forma de regresar a casa. Entra en un mundo extraño e inexplorado repleto de misteriosas criaturas, peligros y sorpresas. Recolecta recursos para fabricar objetos y estructuras que se adapten a tu estilo de supervivencia. Juega a tu manera mientras desentrañas los misterios de esta inhóspita tierra. <br><br>  Características Principales:<br><br> ○ Supervivencia implacable y exploración del mundo:<br> Sin instrucciones. Sin ayuda. Sin que te lleven de la mano. Comienza sin nada y fabrica, caza, investiga, cultiva y lucha para sobrevivir <br><br> ○ Actualizaciones constantes:<br> ¡Únete a una activa comunidad que está ayudando a dar forma al juego antes del lanzamiento! Opina y únete a las discusiones con los desarrolladores y la comunidad <br><br> ○ Gráficos oscuros y enigmáticos:<br> Personajes y extrañas criaturas en 2D pueblan un mundo único en 3D <br><br> ○ Nuevos mundos generados al azar:<br> ¿Quieres un mapa nuevo? ¡Sin problemas! En cualquier momento puedes generar un mundo vivo que te odia con pasión y desea tu muerte', 'MÍNIMO: <br><br> SO: Windows XP / Vista / Windows 7 / Windows 8<br> Procesador: 1.7 GHz o superior<br> Memoria: 1 GB de RAM<br> Gráficos: Radeon HD5450 o superior<br> DirectX®: 9.0c<br> Disco Duro: 500 MB de espacio libre<br> Sonido: 100% compatible con DirectX9.0c<br> <br><br> <br><br> RECOMENDADO: <br><br> SO: Windows XP / Vista / Windows 7 / Windows 8<br> Procesador: 1.7 GHz o superior<br> Memoria: 1 GB de RAM<br> Gráficos: Radeon HD5450 o superior<br> DirectX®: 9.0c<br> Disco Duro: 500 MB de espacio libre<br> Sonido: 100% compatible con DirectX9.0c', 'images/Capturas/Dont_Starve/Dont_Starve'),
(18, 'TERRARIA', '2011-05-16', 6, 18, 17, '¡Cava, lucha, explora, construye! Con este juego de aventuras repleto de acción nada es imposible. ¡Pack de Cuatro también disponible!', '¡Cava, lucha, explora, construye! Nada es imposible en este juego de aventuras repleto de acción. El mundo es tu lienzo y la tierra misma es tu pintura. ¡Coge tus herramientas y adelante! Crea armas para deshacerte de una gran variedad de enemigos en numerosos ecosistemas. Excava profundo bajo tierra para encontrar accesorios, dinero y otras cosas muy útiles. Reúne recursos para crear todo lo que necesites y conformar así tu propio mundo. Construye una casa, un fuerte o incluso un castillo. La gente se mudará a vivir ahí e incluso quizás te vendan diferentes mercancías que te ayuden en tu viaje. Pero ten cuidado, aún te aguardan más desafíos... ¿Estás preparado para la tarea? <br><br><strong>Características principales:</strong> <br>Jugabilidad \"sandbox\" (juega libremente en un mundo a tu disposición) <br>Mundos generados de forma aleatoria <br>Actualizaciones gratuitas de contenido', 'MÍNIMO:<br><br> SO: Windows XP / Vista / 7<br>Procesador: 1.6 GHz<br>Memoria: 512 MB de RAM<br> Disco Duro: 200 MB de espaciolibre<br> Gráficos: Shader Model 1.1 con 128 MB de VRAM<br> DirectX®: 9.0c o posterior  <br><br> <br><br> RECOMENDADO:<br><br> SO: Windows 7, 8/8.1, 10<br> Processor: Dual Core 3.0 Ghz<br>Memory: 4GB<br> Hard Disk Space: 200 MB<br> Video Card: 256mb Video Memory, capable of Shader Model 2.0+<br> DirectX®: 9.0c or Greater ', 'images/Capturas/Terraria/Terraria'),
(19, 'STAR WARS: THE FORCE UNLEASHED', '2008-09-16', 6, 19, 18, 'Star Wars: The Force Unleashed recrea de una nueva forma el alcance y la escala de la Fuerza y los jugadores se ponen en el papel del \"Aprendiz Secreto\" de Darth Vader, desvelando nuevas revelaciones sobre la galaxia Star Wars vistas a través de los ojos de un nuevo personaje misterioso armado con poderes         sin precedentes.', 'Star Wars: The Force Unleashed recrea de una nueva forma el alcance y la escala de la Fuerza y los jugadores se ponen en el papel del \"Aprendiz Secreto\" de Darth Vader, desvelando nuevas revelaciones sobre la galaxia Star Wars vistas a través de los ojos de un nuevo personaje misterioso armado con poderes sin precedentes. <br><br>DESCUBRE PODERES DE FUERZA ÉPICOS y combos devastadores. <br><br>DESCUBRE LA HISTORIA NUNCA CONTADA del aprendiz de Darth Vader acontencida entre los Episodios III y IV. <br><br>REACCIONES COMO EN LA VIDA MISMA de los personajes y entornos que son diferentes cada vez que juegues.', 'MÍNIMO:<br><br> SO: Win XP SP3, Windows Vista SP2 o Windows 7<br> Procesador: Intel Core 2 Duo 2.4 GHz o AMD Athlon X2 5200+<br> Memoria: 2 GB de RAM<br> Gráficos: Tarjeta Aceleradora 3D Requerida - Compatible 100% con DirectX 9.0c con 256 MB de memoria de video con soporte para Shader 2.0 (Radeon HD 2900 o Geforce 8600)<br> DirectX®: Compatible con Directx 9.0c<br> Disco Duro: 30GB<br> Sonido: Compatible con Directx 9.0c<br> Controlador Soportado: XBox 360 Controller para Windows<br> Chipsets ATI compatibles: ATI Radeon HD 2600, 2900, 3650, 3690, 3850, 3870, 4550, 4650, 4770, 4850, 4870, 5890<br> Chipsets NVIDIA compatibles: NVIDIA GeForce 8600, 8800, 9400, 9500, 9600, 9800, 250, 260, 275, 280, 285, 295<br> <br><br> <br><br> RECOMENDADO:<br><br> Procesador: Intel Core 2 Duo 2.8 GHz o AMD Athlon X2 Dual-Core 6000+<br> Gráficos: Tarjeta Aceleradora 3D con 512 MB (GeForce 9800 GT)', 'images/Capturas/SW_TFU1/SW_TFU1'),
(20, 'DOTA 2', '2013-07-09', 7, 1, 1, 'Cada día, millones de jugadores de todo el mundo entran en batalla como uno de los más de cien héroes de Dota. Y no importa si es su décima hora de juego o la milésima, siempre hay algo nuevo que descubrir.', '<strong>El juego más jugado en Steam.</strong> <br>Cada día, millones de jugadores de todo el mundo entran en batalla como uno de los más de cien héroes de Dota. Y no importa si es su décima hora de juego o la milésima, siempre hay algo nuevo que descubrir. Con frecuentes actualizaciones que garantizan una evolución constante de jugabilidad, características y héroes, Dota 2 realmente ha cobrado vida propia. <br><br><strong>Un campo de batalla. Infinitas posibilidades.</strong> <br>Cuando se trata de variedad de héroes, habilidades y poderosos objetos, Dota no tiene límite. No hay dos partidas iguales. Cada héroe puede desempeñar varios roles, y hay multitud de objetos para ayudar a satisfacer las necesidades de cada partida. Dota no pone límites a tu forma de jugar, te da el poder de expresar tu propio estilo. <br><br><strong>Todos los héroes son gratuitos.</strong> <br>El equilibrio competitivo es la joya de la corona de Dota, y para garantizar que todo el mundo juegue en un campo de batalla equilibrado, el contenido principal del juego —como el vasto grupo de héroes— está disponible para todos los jugadores. Los fans pueden coleccionar objetos cosméticos para los héroes y divertidos complementos para el mundo en que estos habitan, pero todo lo necesario para jugar ya está ahí antes de que te unas a tu primera partida. <br><br><strong>Trae a tus amigos y forma un equipo.</strong> <br>Dota es complejo y evoluciona constantemente, pero nunca es tarde para unirse. Aprende los conceptos básicos jugando en modo cooperativo contra bots. Mejora tus habilidades en el modo de prueba de héroes. Entra en el sistema de emparejamiento basado en el comportamiento y la habilidad que se encarga de hacer que juegues con los jugadores adecuados en cada partida.', 'MÍNIMO:<br><br> SO: Windows 7 o posterior<br> Procesador: Intel o AMD de doble núcleo a 2,8 GHz<br> Memoria: 4 GB de RAM<br> Gráficos: NVIDIA GeForce 8600/9600GT, ATI/AMD Radeon HD2600/3600<br> DirectX: Versión 11<br> Red: Conexión de banda ancha a Internet<br> Almacenamiento: 60 GB de espacio disponible<br> Tarjeta de sonido: Compatible con DirectX <br><br> <br><br> RECOMENDADO:<br><br> SO: Windows 7 o posterior<br> Procesador: Intel o AMD de doble núcleo a 2,8 GHz<br> Memoria: 4 GB de RAM<br> Gráficos: NVIDIA GeForce 8600/9600GT, ATI/AMD Radeon HD2600/3600<br> DirectX: Versión 11<br> Red: Conexión de banda ancha a Internet<br> Almacenamiento: 60 GB de espacio disponible<br> Tarjeta de sonido: Compatible con DirectX', 'images/Capturas/Dota2/Dota2'),
(21, 'DARKEST DUNGEON', '2016-01-19', 7, 21, 19, 'Darkest Dungeon es un desafiante juego de rol gótico en mazmorras y por turnos que gira en torno al esfuerzo psicológico de la aventura. Recluta, entrena y lidera a un equipo de héroes imperfectos a través de enrevesados bosques, laberintos olvidados, criptas en ruinas y más allá.', 'Darkest Dungeon es un desafiante juego de rol gótico en mazmorras y por turnos que gira en torno al esfuerzo psicológico de la aventura. <br> Recluta, entrena y lidera a un equipo de héroes imperfectos a través de enrevesados bosques, laberintos olvidados, criptas en ruinas y más allá. Te enfrentarás no solo a enemigos inimaginables, sino al esfuerzo, el hambre, la enfermedad y la siempre acechante oscuridad. Descubre extraños misterios y enfrenta a los héroes a una serie de temibles monstruos con un innovador sistema de combate estratégico por turnos. <br><br><br> ○ 3 modos de juego y más de 80 horas de duración<br> ○ Compatibilidad con Steam Workshop para uso de modificaciones<br> ○ Sistema de aflicción: ¡enfréntate no solo a monstruos, sino al esfuerzo! ¡Lidia con la paranoia, el masoquismo, el miedo, la irracionalidad y una serie de peculiaridades que afectarán a la dinámica de juego!<br> ○ Impresionante estilo de ilustraciones góticas dibujadas a mano.<br> ○ El innovador combate por turnos te enfrenta a una horda de monstruos diabólicos.<br> ○ ¡16 clases de héroes seleccionables (¡y más que se añadirán!), entre ellos la doctora de plagas, la diabla e incluso un leproso!<br> ○ Acampa para curar heridas o dar discursos inspiradores.<br> ○ Permite que tus agotados personajes descansen en la ciudad, la taberna o la abadía para que el esfuerzo no les afecte.<br> ○ Características de los clásicos juegos de rol y mazmorras, como la muerte permanente, las mazmorras generadas por procedimientos e increíbles posibilidades de volver a jugar<br> <br><br> ¿Puedes contener la horda de horrores y espíritus que están surgiendo en el feudo ancestral de tu familia?<br> <br> ¡Desciende bajo tu propio riesgo!', 'MÍNIMO: <br><br> SO: Windows XP<br> Memoria: 2 GB de RAM<br> Gráficos: Open GL 3.2+ Compliant<br> Almacenamiento: 2 GB de espacio disponible<br> Notas adicionales: 1080p, 16:9 recommended <br> <br> <br> <br> RECOMENDADO:<br><br> SO: Windows 7+<br> Memoria: 4 GB de RAM<br> Gráficos: Open GL 3.2+ Compliant<br> Almacenamiento: 2 GB de espacio disponible<br> Notas adicionales: 1080p, 16:9 recommended ', 'images/Capturas/Darkest_Dungeon/Darkest_Dungeon'),
(22, 'SOUTH PARK: THE STICK OF TRUTH', '2014-03-04', 7, 22, 20, 'De entre los mortíferos campos de batalla del patio de recreo de cuarto curso, un joven héroe se alzará, destinado a ser el salvador de South Park. De los creadores de South Park, Trey Parker y Matt Stone, llega una épica aventura para llegar a ser... guay. Presentamos: South Park™: The Stick of Truth™.', 'Adéntrate entre los mortíferos campos de batalla del patio de recreo de cuarto curso, un joven héroe se alzará, destinado a ser el salvador de South Park. De los creadores de South Park, Trey Parker y Matt Stone, llega una épica aventura para llegar a ser... guay. Presentamos: South Park™: The Stick of Truth™.<br> Comienzas como el niño nuevo del pueblo enfrentándote a un escalofriante reto: hacer amigos. A la vez que tú comienzas esta aventura, los chicos de South Park están envueltos en un enorme juego de rol por toda la ciudad, conjurando hechizos imaginarios y blandiendo espadas de juguete. Con el tiempo, este simple juego de niños se tornará en una batalla entre el bien y el mal que amenazará con consumir el mundo.<br> Equípate con armas de leyenda para derrotar a hombres cangrejo, gnomos de los calzoncillos, hippies y otras fuerzas del mal. Descubre el Stick of Truth y gánate tu sitio como amigo al lado de Stan, Kyle, Cartman y Kenny. Triunfa y serás el salvador de South Park, consolidando tu estatus social en la escuela de primaria de South Park. Fracasa y serás para siempre conocido como... un perdedor.<br>  <br><br><br> Características principales:<br><br>  ○ La experiencia South Park definitiva<br> Escrito y doblado por Trey Parker y Matt Stone, The Stick of Truth lleva su humor único al videojuego. <br><br> ○ Una épica aventura para llegar a ser... guay<br> Gánate tu sitio junto Stan, Kyle, Cartman y Kenny y únete a ellos en una histérica aventura para salvar South Park. <br><br> ○ Amigos con beneficios<br> Recluta a personajes clásicos de South Park para tu causa. <br><br> ○ Combate intenso<br> Ármate hasta los dientes con todo un arsenal de armas mágicas y místicas armaduras. <br><br> ○ Personalización marca South Park<br> Retrátate a ti mismo en South Park con cosa de un billón de combinaciones entre personajes, ropa y armas.', 'MÍNIMO: <br><br> SO: WindowsXP SP3, Windows Vista SP2, Windows 8 (both 32/64bit versions)<br> Procesador: Intel Pentium Dual-Core E2180 @ 2.0 GHz or AMD Athlon64 X2 3800+ @ 2.0 GHz<br> Memoria: 2 GB GB de RAM<br> Gráficos: nVidia GeForce 8800GT or AMD Radeon HD2600XT (512MB VRAM with Shader Model 4.0 or higher)<br> DirectX: Versión 9.0c<br> Almacenamiento: 6 GB de espacio disponible<br> Tarjeta de sonido: DirectX Compatible Sound Card with latest drivers<br> Notas adicionales: Originally released for Windows 7, the game can be played on Windows 10 and Windows 11 OS <br><br> <br><br> RECOMENDADO: <br><br> SO: Windows 7<br> Procesador: Core i5 750 a 2.67 GHz o equivalente<br> Memoria: 4 GB de RAM<br> Gráficos: ATI Radeon HD 4870 o nVidia GTX 260<br> DirectX: Versión 9.0c<br> Almacenamiento: 6 GB de espacio disponible<br> Tarjeta de sonido: DirectX Compatible Sound Card with latest drivers<br> Notas adicionales: Originally released for Windows 7, the game can be played on Windows 10 and Windows 11 OS', 'images/Capturas/South_Park_TSOT/South_Park_TSOT');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(4) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `apellido` varchar(15) NOT NULL,
  `clave` varchar(255) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `nivel` int(1) NOT NULL,
  `usuario` varchar(10) NOT NULL,
  `id_sesion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `clave`, `mail`, `nivel`, `usuario`, `id_sesion`) VALUES
(12, 'NAHUEL', 'SUAREZ', 'f42c336beeb8762ce4b8fe64440c9037', 'naahuel.suarez.2000@gmail.com', 1, 'nahuwu', NULL),
(13, 'SANTIAGO', 'DI VIRGILIO', 'e10adc3949ba59abbe56e057f20f883e', 'santiagodivirgilio073@gmail.com', 1, 'Graffo', 'dahnehrf624hqeqv2epqjfg39d'),
(14, 'USUARIO', 'COMUN', '0485f41602de717ecb8039122d51eea2', 'noadmin@gmail.com', 0, 'noadmin', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `desarrollador`
--
ALTER TABLE `desarrollador`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `editor`
--
ALTER TABLE `editor`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `desarrollador`
--
ALTER TABLE `desarrollador`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `editor`
--
ALTER TABLE `editor`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `juegos`
--
ALTER TABLE `juegos`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
