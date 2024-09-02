-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-09-2024 a las 22:39:50
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cotizaciones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `cedula` varchar(250) NOT NULL,
  `nombre_cliente` varchar(255) NOT NULL,
  `contacto` varchar(255) NOT NULL,
  `cargo` varchar(255) NOT NULL,
  `ciudad` varchar(255) NOT NULL,
  `telefono_cliente` char(30) NOT NULL,
  `email_cliente` varchar(64) NOT NULL,
  `direccion_cliente` varchar(255) NOT NULL,
  `status_cliente` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `id_moneda` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `cedula`, `nombre_cliente`, `contacto`, `cargo`, `ciudad`, `telefono_cliente`, `email_cliente`, `direccion_cliente`, `status_cliente`, `date_added`, `id_moneda`) VALUES
(30, '900343567', 'KRIAMOS S.A.S.', 'Dayana Sierra ', 'Asistente Administrativo de Compras', 'Cartagena', '323 5861012', 'proveedores@kriamos.com', 'KM 8 VIA AL MAR-CENTRO CORPORATIVO SERENA DEL MAR ED UNIVERSIDAD DE LOS ANDES OF 207', 1, '2024-04-08 10:55:16', 1),
(31, '900277518', 'EMSIC SAS ', 'Rafael Steer Calvo', 'Ingeniero de Proyectos', 'Cartagena', '3126981243', 'rsteer@emsicsas.com.co', 'Variante Pozon-Policarpa km 2-20', 1, '2024-04-08 12:23:15', 1),
(32, '800205914', 'SOLUCIONES INTEGRALES UNION', 'FLAMINIO SANCHEZ', 'GERENTE', 'BOGOTA', '6017398660', 'contabilidadsiu@gmail.com', 'CRA27 # 18-44', 1, '2024-04-09 09:15:06', 0),
(33, '830015914', 'PANELCO SA', 'CLAUDIA VELA', 'COMPRAS', 'BOGOTA', '3107758805', 'compras@panelco.com.co', 'CRA 27 # 15-24', 1, '2024-04-09 09:30:50', 0),
(34, '901561307', 'UMO SOLUCIONES VERDES', 'TULIO DAVID MORENO', 'GERENTE', 'ARAUCA', '3182987304', 'solucionesverdesumo@gmail.com', 'CL 17 # 20-89 BRR CIELO', 1, '2024-04-09 09:38:35', 0),
(35, '860510142', 'INVERSIONES GUERFOR S.A.S.', 'YEIDY MADINA', 'COMPRAS', 'BOGOTA', '3002167005', 'cguerfor@gmail.com', 'CLL 60 SUR # 73-72 BRR PERDOMO', 1, '2024-04-09 09:44:51', 0),
(36, ' 9007152942', 'ASIMFER S.A,S', 'JENNI', 'COMPRAS', 'BOGOTA', '3057669997', 'COMERCIAL@ASIMFER.COM.CO', 'Cra. 26 #12 B 14', 1, '2024-04-09 09:54:57', 0),
(37, '900861952', 'STEEL PREFABRICADOS', 'ALVARO RAMIREZ', 'COMPRAS', 'MADRID CUNDINAMARCA', '3118890567', 'alvaro.ramirez@steel.com.co', 'Km 0+650 Via Madrid - Los Árboles Parque Industrial Santa Cruz. Bodega 25.', 1, '2024-04-09 10:03:59', 0),
(38, '800223938 ', 'SOLUCIONES TUBULARES S.A.', 'DEPARTAMETO COMERCIAL', 'COMERCIAL', 'BOGOTA', '6013700666 Ext. 107', 'ventasmostrador5@solucionestubulares.com', 'Calle 15 No. 22-67 Paloquemao', 1, '2024-04-09 10:14:40', 0),
(39, '901.305.846', 'INGENIERIA BAYONA SAS', 'WILLIAM BAYONA', 'GERENTE', 'FLORIDABLANCA SANTANDER', '3164931376', 'ingenieriabayonasas@outlook.com', 'CALLE 197 15 425 CASA 80 CONJ VERSALLES 1', 1, '2024-04-09 10:25:06', 0),
(40, '901033062', 'GEOSINC SAS', 'IVAN GRANADOS', 'COMPRAS', 'COTA CUNDINAMARCA', '3118921525', 'ivan.granados@geosinc.com.co', 'AUT. MEDELLIN KM 2.5 PQ IND PORTOS SABANA 80 BG106', 1, '2024-04-09 10:33:04', 0),
(41, '900084591', 'ANDILAMINAS S.A.S', 'HERNANDO VELEZ', 'GERENTE', 'BOGOTA', '3132937810', 'andilaminas1@hotmail.com', 'CR 22 15 20', 1, '2024-04-09 10:51:17', 0),
(42, '830061337', 'ACERMETALICAS S.A.S.', 'DIEGO HERNANDEZ', 'COMPRAS', 'BOGOTA', '3112935110', 'comprasacermetalicas@gmail.com', 'CR 28 6 57 BRR RICAURTE', 1, '2024-04-09 11:01:56', 0),
(43, '900076133', 'NEMA INGENIERIA SOCIEDAD POR ACCIONES SIMPLIFICADA', 'TANIA MEDINA', 'AUX. ADMON COMPRAS', 'BOGOTA', '3106995720', 'contacto@nemaingenieria.com', 'CL 135 C 9 A 27', 1, '2024-04-09 11:21:12', 0),
(44, '900930897', 'SEMEST SAS', 'JUAN HERNANDEZ', 'GERENCIA', 'VILLAVICENCIO', '3004309431', 'gerencia.semest@gmail.com', '', 1, '2024-04-09 11:35:57', 0),
(45, '900105915', 'BELT COLOMBIA', 'JULIAN CUBIDES', 'COMPRAS', 'PEREIRA', '3219274046', 'Julian.cubides@beltcolombia.com', 'CL 11 VIA AL VALLE LA TEBAIDA QUINDIO', 1, '2024-04-09 12:05:59', 0),
(46, '900.974.517', 'METALMECANICA PROMOAMBIENTAL SAS', 'Leonardo Palacios', 'Jefe de Producción ', 'Cartagena', '315 420 3992', 'leonardo.palacios@metalprom.co', 'Trv 54#27-126 Barrio el Bosque Sector san Isidro', 1, '2024-04-10 19:55:25', 0),
(47, '901060273', 'GEIAC SAS', 'Arturo Gonzalez', 'Director de Proyecto', 'Barranquilla', '3193278821', 'geincolombiasas@gmail.com', 'Calle 70 # 52-29 ', 1, '2024-04-11 09:32:08', 0),
(48, '900268766', 'SERVI PETROL B-P S.A.S.', 'Brian Alexis Niño Ibarra', 'Supervisor Logístico de Compras y Subcontrataciones', 'Barranquilla', '3225522431', 'supervisorlogisticosbp@gmail.com', 'CR 9 34 37 BRR LA CEIBA', 1, '2024-04-11 09:45:59', 0),
(49, '900.974.517', 'METALMECANICA PROMOAMBIENTAL S.A.', 'Leonardo Palacios', 'Jefe de Producción', 'Cartagena', '315 420 3992', 'leonardo.palacios@metalprom.co', 'Trv 54#27-126\r\nBarrio el Bosque\r\nSector san Isidro', 1, '2024-04-11 13:35:35', 0),
(50, '900268694', 'INCOALMA SAS', 'ELIZABETH OSORIO', 'COMPRAS', 'BOGOTA', '3108136360', 'elizabeth.osorioincoalma@gmail.com', 'Cl. 39b Sur #51F - 61', 1, '2024-04-11 16:25:25', 0),
(51, '900237472', 'REJINSER LTDA', 'MARTHA TIJA', 'COMPRAS', 'ACACIAS', '3203340256', 'ventas@rejinser.com', '', 1, '2024-04-11 16:48:03', 0),
(52, '900455687', 'ARGUZIA INGENIERIA SAS', 'PATROCINIO PARRA', 'PRODUCCION', 'BOGOTA', '3107990100', 'patrocinioparra@arguziaingenieria.co', 'CL 89B # 75A-12 ', 1, '2024-04-11 16:55:17', 0),
(53, '901520449-2', 'AURORA INGENIERIA', 'Gina Sierra', 'Coordinadora de Compras', 'Bogota', '3005472233', 'gina.sierra@auroraingenieria.com.co', 'KM 1 5 VTE COTA CHIA PALO DE AGUA GALERAS 59', 1, '2024-04-12 09:33:26', 0),
(54, '901349214', 'SERVICIOS DE INGENIERIA Y MANTENIMIENTO ESPECIALIZADO S.A.S.', 'CRISTIAN DE LA HOZ', 'INGENIERO QC', 'SOLEDAD', '324 7484872', 'ingenieria3@simantes.com', 'CL 18 39 660 BG 2', 1, '2024-04-15 10:35:01', 0),
(55, '9004113153', 'MOTA-ENGIL COLOMBIA', 'Jesualdo Daza Socarras', 'Director de Producción', 'BOGOTA', '310 3375058', 'jesualdo.daza@mota-engil.co', 'CALLE 81 11 08 EDIFICIO EMPRESARIAL 8111 PISO 9', 1, '2024-04-15 12:36:42', 0),
(56, '805017133', 'POTENCIA Y TECNOLOGIAS INCORPORADAS S.A. BIC', 'Karla Vanessa Quintero Duran', 'Analista de compras ', 'CALI', '3148901618', 'karla.quintero@pti-sa.com.co', 'CR 56 2 50', 1, '2024-04-15 12:41:12', 0),
(57, '900439807', 'DIPELCO', 'COMERCIAL', '', 'BOGOTA', '3133325300', 'comercial3@dipelco.com.co', '', 1, '2024-04-15 14:13:01', 0),
(58, '860513734', 'AGRI LAC SAS', 'COMPRAS', '', 'CUNDINAMARCA', '3158625286', 'ventaschia@agrilac.com.co', 'CL 16 # 12-20 CHIA', 1, '2024-04-15 14:19:06', 0),
(59, '900197178', 'PRODESIG LTDA', 'ROBINSON SILVA', 'GERENTE', 'BOGOTA', '3178165733', 'prodesingltdafe@gmail.com', 'cl 17 c # 114a-50 bg 1', 1, '2024-04-15 14:23:24', 0),
(60, '900033933', 'CCR INGENIEROS ASOCIADOS', 'Carmen Emilce Caro Puentes', 'Asistente de Compras', 'Bogota', '310 5658062', 'c.caro@ccringenieros.com', 'Cra. 7 No. 156-68 Of. 1203', 1, '2024-04-16 08:27:12', 1),
(61, '860026753', 'ACESCO COLOMBIA SAS', 'TATIANA ASCENCIO', 'PROFESIONAL DE COSTOS Y PPTO', 'BOGOTA', '321 2225035', 'tascenciof@acesco.com', 'AV CLL 116 7 15 IN 2 P12', 1, '2024-04-16 17:13:10', 0),
(62, '901.266.599', 'HEBRON SAS', 'David Montalvo ', 'Director ', 'Barranquilla', '304 2449421', 'd.montalvo@hebroen.com', 'Cra. 82 #111 890, Riomar', 1, '2024-04-17 13:47:42', 0),
(63, '900499032-2', 'STECKERL ACEROS SAS ', 'NADIA NORIEGA', 'ASESORA COMERCIAL', 'BARRANQUILLA', '3107023333', 'nadia.noriega@steckerlaceros.com', 'Cl. 30 # 30 -111', 1, '2024-04-19 08:08:55', 0),
(64, ' 901489149', 'COLPLAT ZONA FRANCA', 'Hader Manuel Pardo', 'Gerente de Operaciones', 'CARTAGENA', '3182851902', 'colplatzfgerenciaoperaciones@gmail.com', 'Zona franca la candelaria Cartagena vía Mamonal km 9. Acceso 1', 1, '2024-04-22 09:42:59', 0),
(65, '901053109', 'DSB Ingenieria S.A.S', 'Jeisson Andres Calderon Garcia', 'Ingeniero Residente', 'Bogotá', '3002658029', 'administracion@dsb-ing.com', 'Obra los trinitarios Betulia (Santander)', 1, '2024-04-22 10:31:34', 0),
(66, '901449153', 'METAL WORKING CP SAS', 'CARLOS PEREZ', 'GERENTE', 'BOGOTA', '3105686170', 'gerencia@metalworkingcp.com', '', 1, '2024-04-23 10:15:11', 0),
(67, '800078011', 'ICMO SOCIEDAD POR ACCIONES', 'MILLER RIVERA', 'COMPRAS', 'BOGOTA', '3107285180', 'info@icmo.com.co', 'CR 129 17 F 64', 1, '2024-04-23 10:29:16', 0),
(68, '900360797', 'INGENIERIA E INVERSIONES INDUSTRIALES SAS', 'DIEGO BERMUDEZ', 'COMPRAS', 'CASANARE', '3214544102', 'compras@invein.co', 'KM 1 PUNTO 5 VDA EL GARZON BASE ALCARAVAN', 1, '2024-04-23 10:39:16', 0),
(69, '901044399', 'SD INTERNATIONAL SAS', 'CARLOS CALDERON', 'GERENTE', 'BOGOTA', '3167080300', 'gerencia@stegdesign.com.co', 'CL 16A # 13-66', 1, '2024-04-23 11:10:42', 0),
(70, '800078300', 'CIVALCO S.A.S.', 'YEISON VARGAS', 'GERENTE', 'BOGOTA', '3014103502', 'yeison.vargas@tubysold.com', '', 1, '2024-04-23 11:47:05', 0),
(71, '3118131563', 'PABLO FERNANDO MORENO', 'PROPIETARIO', '', 'BOGOTA', '3118131563', '', '', 1, '2024-04-23 11:49:30', 0),
(72, '860027990', 'IRRIGACIONES LTDA', 'JENY MARCELA LOPEZ', 'ADMINISTRATIVA', 'BOGOTA', '3003457174', 'irrigacionesgerencia@yahoo.com', 'Cra. 23 No. 164-66', 1, '2024-04-23 11:54:50', 0),
(73, '860029840', 'GRANADA SAS', 'GABRIEL OSORIO', 'COMPRAS Y VENTAS INDUSTRIALES', 'BOGOTA', '3133866351', 'ayd@granadaycia.com', 'CARRERA 40 No. 10-15 ', 1, '2024-04-23 12:06:05', 0),
(74, '900701503', 'METALLAN SAS', 'RAUL', 'COMERCIAL', 'BUCARAMANGA', '3165236183', 'comercial@metallan.com.co', '', 1, '2024-04-23 12:12:45', 0),
(75, '900138206', 'SETAS DORADAS SAS', 'SEBASTIAN MURILLO', 'COMPRAS', 'TENJO-CUNDINAMARCA', '3132850092', 'contacto@setasdoradas.com', 'TEJO-CUNDINAMARCA', 1, '2024-04-24 12:20:44', 0),
(76, '900775451', 'TALLERES INDUSTRIALES LOS BLANCOS', 'Monica Pérez Martinez', 'Coordinadora de Compras', 'Barranquilla', '314 4215099', 'mmperez@losblancoscm.com', 'Km.8 Vía Barranquilla – Tubará', 1, '2024-04-25 09:10:50', 0),
(77, '900647576', 'INGEMETAL WF SAS', 'ING. FERNANDO CUECA', 'GERENTE', 'CUNDINAMARCA', '3184277897', 'fernando.c@ingemetalwf.com', 'Vereda El Corzo km 22 + 250 vía Facatativá Los Alpes Parque Industrial San Valentín Bodega 1', 1, '2024-04-25 12:40:01', 0),
(78, '901474230', 'SINMEK INGENIERIA Y CONSTRUCCIONES SAS', 'ING. MAURICIO ESCOBAR', 'GERENTE GENERAL', 'BOGOTA', ' 3125018953', 'mauricio.escobar@sinmek.com', 'Calle 26 No 70-46 Of. 708', 1, '2024-04-25 12:53:16', 0),
(79, '890106278', 'CASA DE LA VALVULA S.A.', 'DEPARTAMENTO COMERCIAL', 'COMERCIAL', 'CUNDINAMARCA', '3145911986', 'ventasbogota3@casaval.net', 'Parque Industrial CLIS, Bloque B, Bod 40\r\nCota, Cundinamarca', 1, '2024-04-25 13:52:58', 0),
(80, '900171033', 'JARCO SAS', 'NIDIA CARO', 'COMPRAS', 'CUNDINAMARCA', '3115996294', 'compras@jarcosa.com', 'KM 1,5 VIA CHIA-CAJICA COSTADO OCCIDENTAL OF 420', 1, '2024-04-25 15:23:05', 0),
(81, 'prueba', 'POLYUPROTEC S.A ', 'carlos', 'Auxiliar', 'Colombia', '(601) 4220980', 'yeiderneitor@hotmail.com', 'GGGGG', 1, '2024-04-25 15:29:35', 0),
(82, '900923095', 'COMUNICACIONES REDES Y ENLACES S.A.S', 'EDNA NARVAEZ', 'Líder de Compras y Contratación', 'Cartagena', '321 3566145', 'compras@redenlaces.net', 'CR 80 E MZ C L 5 BRR ALAMEDA LA VICTORIA', 1, '2024-04-25 17:50:02', 0),
(83, '900388789', 'NEBO CONSTRUCCIONES SAS', 'COMERCIAL', '', 'META', '3228205797', 'neboconstrucciones@hotmail.com', 'CRA 6 # 9-30 SAN ISIDRO DE CHICHIMENE', 1, '2024-04-26 11:23:25', 0),
(84, '800185056', 'TAESMET SAS', 'JAIRO PIÑEROS', 'DIRECTOR COMERCIAL', 'BOGOTA', '3134708604', 'jairo.pineros@taesmet.com', 'Calle 14A No. 123-36', 1, '2024-04-26 12:50:20', 0),
(85, '901006742', 'COLCRANES SAS', 'Rafael José Vásquez Bermúdez', 'Asistente de Proyectos', 'Barranquilla', '314 4555072', 'presupuestos@colcranes.com', 'Carrera 67 # vía 40 - 62 piso 3', 1, '2024-04-29 15:58:20', 0),
(86, '901218846', 'CONSTELLATION INDUSTRIES SAS ', 'Ana Sanjuan ', 'Líder de Compras', 'Cartagena', '302 4381907', 'asanjuan@constellation-ind.com', 'Bayunca KM 16 Carretera la cordialidad parque industrial Bayunca', 1, '2024-04-30 07:47:28', 0),
(87, '19098078', 'ABS INDUSTRIA - ABRAHAM BELLO', 'CESAR BELLO', 'COMERCIAL', 'BOGOTA', '3112706366', 'absindustria@yahoo.com', 'CRA 113 # 19A-36', 1, '2024-05-02 10:34:32', 0),
(88, '901150903', 'TUBOS Y CUBIERTAS SAS', 'PAULINA CHIVATA', 'COMERCIAL', 'BOGOTA', '3213774375', 'comercial.tubosycubiertas2@gmail.com', 'cra 29 # 6-57', 1, '2024-05-03 12:20:00', 0),
(89, '901783937', 'CONSORCIO ALOJAMIENTO PUERTO SALGAR 2023', 'ARQ. EDWIN VARGAS', 'PRODUCCION', 'BOGOTA', '3132595457', 'licitaciones@salgado.com.co', 'CRA 52A # 123B-10', 1, '2024-05-03 12:35:24', 0),
(90, '8600010931', 'ESCOBAR Y MARTINEZ S.A.', 'DAYANA RODRIGUEZ', 'JEFE DE COMPRAS', 'BOGOTA', '3112085689', 'dayana.rodriguez@grupoy.com.co', 'Cra. 68d #17-30/50', 1, '2024-05-03 12:48:22', 0),
(91, '806008873', 'CORPORACION DE CIENCIA Y TECNOLOGIA PARA EL DESARROLLO DE LA INDUSTRIA NAVAL, MARITIMA Y FLUVIAL. COTECMAR', 'KAREN DIAZ', 'Superintendente de materiales GECON', 'CARTAGENA', '316 6950891', 'kdiaz@cotecmar.com', 'BRR MAMONAL KM 9', 1, '2024-05-06 10:23:07', 0),
(92, '806009933', 'CELVIMETALES SAS', 'Douglas Rodríguez Morillo ', 'Coordinador de Proyectos ', 'Turbaco', '3206392038', 'proyectos@celvimetales.com', 'Carretera Troncal de Occidente Km 4 Sector Bajo Miranda ', 1, '2024-05-09 08:40:18', 0),
(93, '901336095', 'METAL MANUFACTURING SAS', 'JUAN DAVID PAJOY', 'GERENTE COMERCIAL', 'CUNDINAMARCA', '3143453329', 'facturacion.metal1@gmail.com', 'CR 1 # 7-69 MADRID CUNDINAMARCA', 1, '2024-05-09 14:10:33', 0),
(94, '900237590', 'Estructuras y Montajes de Colombia S.A.S ', 'Armando Hernandez Mercado', 'Ingeniero de Proyectos', 'Cartagena', '3154574884', 'ingenieria@emdecol.com', 'Avenida el bosque', 1, '2024-05-10 08:09:53', 0),
(95, '901160786', 'DISTRIBUIDORA DE COMBUSTIBLES DISCOM S.A.S.', 'Omer Salcedo', 'Residente de Obra', 'MEDELLIN', '317 6686630', 'residente2@decon.com.co', 'CL 51 64B 57', 1, '2024-05-14 09:46:23', 0),
(96, '8605133609', 'PERALTA PERFILERIA', 'WILLIAM PERALTA PEDRAZA', 'GERENTE COMERCIAL', 'BOGOTA', '3202749091', 'comercial@peraltaperfileria.com', 'CL 13 # 68B-40', 1, '2024-05-14 10:56:02', 0),
(97, '900516992', 'PLADISERVING', 'LINDORFO ALVAREZ', 'COMERCIAL', 'BOGOTA', '3114969008', 'comercial@pladiserving.com', ' Cl. 135 #95B - 61, Suba', 1, '2024-05-14 11:22:27', 0),
(98, '900692304', 'RODELEC SAS', 'JUAN RODRIGUEZ', 'GERENTE', 'BOGOTA', '3118557013', 'recursosfisicosrodelec@outlook.com', 'Transversal 68 D # 44 - 65 sur ', 1, '2024-05-14 12:05:55', 0),
(99, '901371227', 'FORTICH COMPANY S.A.S', 'BORIS FORTICH', 'GERENTE', 'CARTAGENA', '3028409225', 'fortichcompany@gmail.com', 'URB EL NOGAL CRA 80A #15-284', 1, '2024-05-14 16:33:06', 0),
(100, '901547405', 'INGENIERIA ESTRUCTURAL ZONA FRANCA S.A.S.', 'Dayane Vargas', 'Coordinadora de Compras', 'Galapa', '310 6105179', 'compras@proymetal.com.co', 'CL 1 MZ 7 LT 27 B ZF ZOFIA', 1, '2024-05-16 09:41:18', 0),
(101, '802017424', 'SEGURIDAD Y SERVICIOS SEÑALIZACIÓN', 'Camilo Guerrero', 'Asistente de Compras', 'Barranquilla', '3106303388', 'compras.segyserse@gmail.com', 'Carrera 33 #53C-48', 1, '2024-05-16 11:26:01', 0),
(102, '900649511', 'SUPPLIER INDUSTRIAL', 'COMERCIAL', 'COMERCIAL', 'BOGOTA', '3118105444', 'administracion@suppliercolombia.com', 'CL 12 # 66-16', 1, '2024-05-17 12:03:46', 0),
(103, '800203346', 'CENTRAL DE ANDAMIOS Y CONSTRUCCIONES SA', 'ING. JULIO CESAR PALACIOS', 'GERENTE', 'BOGOTA', '3107764643', 'gerencia@centraldeandamios.com', 'Calle 16 N° 16-43', 1, '2024-05-17 12:09:45', 0),
(104, '900429834', 'KUBO GROUP SAS', 'SANDRA ORTIZ', 'COMPRAS', 'BOGOTA', '3186019043', 'analista.compras@kubogroupsas.com', 'Centro Empresarial Portos Sabana 80 Bodega 114/Autopista Medellín Km. 2,5 – Vía Bogotá-Cota', 1, '2024-05-17 12:30:37', 0),
(105, '901567820', 'ACEROK SAS', 'ANDRES MARTINEZ', 'DIRECTOR DE PROYECTOS', 'BOGOTA', '3152423836', 'construcciones@acerok.co', '', 1, '2024-05-17 12:46:51', 0),
(106, '900791092', 'ESTRUCTURAS ALZA SAS', 'COMERCIAL', '', 'BOGOTA', '3165363542', 'alzaservicios29@hotmail.com', '', 1, '2024-05-17 12:51:39', 0),
(107, '901146714', 'INDUSTRIAS JEL SAS', 'EFREN JIMENEZ', 'GERENTE', 'BOGOTA', '3118104323', 'industrialesje@hotmail.com', 'CL 187 # 12A-03', 1, '2024-05-17 12:58:29', 0),
(108, '901465587', 'SYS MAQUINADOS INDUSTRIALES SAS', 'LEIDIS SANDOVAL SIMANCA', 'Jefe administrativa ', 'Soledad', '3041000241', 'sysmaquinadosindustriales@gmail.com', 'CL 63 15A 28 LC 1', 1, '2024-05-17 17:15:39', 0),
(109, ' 806001188', 'SPIM Y CIA LTDA', 'Yaidet Ruiz Padilla', 'Coordinadora Administrativa', 'Barranquilla', '301 5656307', 'spimltda@hotmail.com', ' Cll 84B # 42D 103', 1, '2024-05-22 11:37:23', 0),
(110, '830063254', 'TRANSPORT LINKS SAS', 'Miguel Garcia', 'Representante Legal', 'BOGOTA', '316 7436368', 'administracion@tlink-s.com', 'CR 11 71 41 OF 201', 1, '2024-05-22 12:29:04', 0),
(111, '901084445', 'SERVI GARAJES SAS', 'Vanessa Ortiz ', 'Coordinadora logística ', 'Barranquilla', '324 3413244', 'servigarajes@gmail.com', 'Calle 79 No. 43b 04', 1, '2024-05-22 12:39:36', 0),
(112, '900541431', 'GGROUP SAS', 'Luisa Merlano', 'Analista de Compras', 'Barranquilla', '3168344510', 'compras@ggroup.com.co', 'CRA 43#72-122', 1, '2024-05-22 12:46:45', 0),
(113, '9010426663', 'SILOS CEM SAS', 'CARLOS CASTAÑEDA            ', 'GERENTE', 'ARMENIA', '3148302853', '', 'VIA AEROPUERTO KM 2, ARMENIA, QUINDIO', 1, '2024-05-23 10:53:04', 0),
(114, '900468383', 'HAB&TEC SAS', 'JAVIER CARDENAS', 'COMPRAS', 'VILLAVICENCIO', '3102539565', '', 'CL 46A # 45-63 BRR SANTA JOSEFA CIVIL', 1, '2024-05-23 11:01:11', 0),
(115, '901179444', 'INDUSTRIAL DE TANQUES Y MONTAJES ACEROSCOL', 'JULIAN VALENCIA', 'COMPRAS', 'BOGOTA', '3208515265', 'julian.valencia@coacerojvc.com', 'CL 12 # 15-83', 1, '2024-05-23 11:10:45', 0),
(116, '901232412', 'KAPPA INGENIERIA ESPECIALIZADA S.A.S', 'Lorena Silva', 'Asistente Administrativa', 'Barranquilla', '3002060075', 'administracion@kappaingenieriasas.onmicrosoft.com', 'CR 59 70 120', 1, '2024-05-27 14:41:30', 0),
(117, '900634159', 'SUMMA SUMINISTROS INDUSTRIALES', 'JULIAN GUTIERREZ', 'GERENTE', 'BOGOTA', '3006078135', 'comercial@summasas.com.co', 'CRA 68D # 37-20 SUR', 1, '2024-05-27 15:32:13', 0),
(118, '900168332', 'PEOPLE LIGHT', 'LILIANA RODRIGUEZ', 'ADMINISTRATIVA', 'BOGOTA', '3197887045', 'peoplelight@gmail.com', 'Cra. 124 #65 A 40', 1, '2024-05-27 15:46:00', 0),
(119, '830071297', 'INVERSIONES ROBILA SAS', 'JORGE ROBAYO', 'GERENTE', 'BOGOTA', '3105807309', 'jeduro@gmail.com', '', 1, '2024-05-27 16:09:09', 0),
(120, '900193743', 'EL PROVEEDOR GLOBAL SAS', 'Wilson Torres ', '', 'BOGOTA', ' 320 8284779', 'WILSON.ELPROVEEDORGLOBAL@GMAIL.COM', 'CRA. 69M # 70-70', 1, '2024-05-28 07:25:55', 0),
(121, '900722022', 'GYCON INGENIERIA SAS', 'Jairo Imitola', 'Ingeniero Residente', 'Cartagena', '318 4420952', 'toimit@yahoo.com', 'MZ 10 LT 18 BRR LAS PALMERAS', 1, '2024-05-28 08:26:23', 0),
(122, '900223366', 'TABLEROS Y POSTES SAS', 'GERENCIA', 'GERENTE', 'BUCARAMANGA', '3208564861', 'tablerosypostes@hotmail.com', 'Carrera 17 # 4​5 - 77 ', 1, '2024-05-29 12:39:16', 0),
(123, '8300965881', 'ACOPLES Y PARTES', 'JAVIER SEGURA', 'COMERCIAL', 'BOGOTA', '3103070780', '', 'Cra. 59 #14 81, Puente Aranda', 1, '2024-05-29 14:22:53', 0),
(124, '900771059', 'IMI INGENIERIA SAS', 'ANGEL MEDRANO', '', 'CARTAGENA', '6017696647', 'analista2.abastecimiento@imisas.com.co', '', 1, '2024-05-29 14:33:17', 0),
(125, '8909005351', 'KELLOG´S COLOMBIA SAS', 'JHONATAN SUAREZ', 'COMPRAS', 'BOGOTA', '3502129936', 'jhonatan.suarezpena@kellanova.com', 'Cra. 68b #13-95', 1, '2024-05-29 16:37:04', 0),
(126, '900874004', 'TORNIMEC S.A.S', 'ALIRIO SILVA', 'GERENTE', 'DUITAMA', '3133908861', 'silvatorresalirio@hotmail.com', 'VRDA SAN LORENZO 5C EL SECRETO', 1, '2024-05-30 15:22:35', 0),
(127, '901606765', 'ANDINA INGENIERIA SAS', 'ALEXIS GONZALEZ', 'COMPRAS', 'BUCARAMANGA', '3014893126', '', '', 1, '2024-05-30 15:26:39', 0),
(128, '900222435', 'SUPETROCOL SAS', 'COMERCIAL', 'COMERCIAL', 'BOGOTA', '3183303633', 'administracion@supetrocol.com.co', '', 1, '2024-05-30 15:33:00', 0),
(129, '800130426', 'GYJ FERRETERIAS SAS', 'JUAN CARLOS TORRES', 'GERENTE ZONA SUR', 'BOGOTA', '3113439374', 'gerenciabogotasur@gyj.com.co', '', 1, '2024-05-30 15:37:23', 0),
(130, '901499829', 'FERRETERIA AFC SAS', 'COMERCIAL', 'COMERCIAL', 'BOGOTA', '3134986104', 'asesorcomercial1@ferreteriaafc.com.co', '', 1, '2024-05-30 16:22:06', 0),
(131, '830075260', 'METALES ESTRUCTURALES SAS', 'ING LUIS MARTINEZ', 'GERENTE', 'BOGOTA', '3103231517', 'soporte@metales.co', 'CL 8 # 29-44', 1, '2024-05-31 09:05:11', 0),
(132, '900510963', 'DISEÑOS Y CONTRUCCIONES J&E', 'Diego Medina Leon', 'Auxiliar de Compras', 'Barranquilla', '300 8852485', 'compras@estructurasjye.com', 'Calle 15 # 26A - 50 madeflex', 1, '2024-05-31 12:14:18', 0),
(133, '802.017.878', 'MALLAS JULIO TORRES', 'Eillyn García ', 'Coordinadora de proyectos ', 'Barranquilla', '304 3938509', 'proyectos@mallasjuliotorres.com', 'Calle 57 #43-03', 1, '2024-05-31 15:25:27', 0),
(134, '802008760', 'QUARK UP SAS', 'IRMA PATERNINA', 'Coordinadora Logística Civil', 'Barranquilla', '3233276280', 'irma.paternina@quarkup.com.co', 'Cra. 64 #86 - 189', 1, '2024-06-05 08:08:16', 0),
(135, ' 900945078', 'HA SOLUCIONES METALMECANICAS SAS', 'Liz Villar', 'Supervisor Comercial', 'Barranquilla', '3160185253', 'comercial.hasoluciones@gmail.com', 'Calle 36 #35 -125', 1, '2024-06-05 09:52:23', 0),
(136, '900133288', 'INGEDUCTOS INGENIERIA ESPECIALIZADA SAS', 'Richar Guataquirá', 'Gerente Zona Caribe', 'Malambo', '321 2150379', 'gerenciacaribe@ingetecho.com', 'Calle 4 #1H-247 Bodega 28 - Centro Empresarial Oikos Malambo', 1, '2024-06-05 10:31:31', 0),
(137, '900856430', 'PRO-METAL SOLUCIONES INTEGRALES', 'ANDREA ROJAS', 'ADMINISTRATIVA', 'BOGOTA', '3246803707', 'pro.metalsolucionesintegrales@gmail.com', 'CRA 107 # 17D-39', 1, '2024-06-07 12:13:21', 0),
(138, '900613766', 'ARMOTODO PRODUCCIONES SAS', 'MIGUEL BAEZ', 'GERENTE', 'BOGOTA', '3156126060', 'miguel.baezarmotodo@outlook.com', 'CR 13 A 22 54', 1, '2024-06-07 12:20:03', 0),
(139, '901622135', 'FERRETINEZ SAS', 'OMAIRA RAMIREZ', 'COMPRAS', 'BOGOTA', '3225932150', '', 'KR 68 A # 60 A - 70', 1, '2024-06-07 12:27:03', 0),
(140, '900516992', 'PLANOS DISEÑOS Y SERVICIOS DE INGENIERIA SAS', 'MANUEL DAVID CAMARGO', 'GERENTE', 'BOGOTA', '3112340464', 'pladiserving@hotmail.com', 'CL 135 # 95B-61', 1, '2024-06-07 12:35:49', 0),
(141, '900872535', 'HYDRO VYG SAS', 'COMERCIAL', '', '', '3156906804', '', 'Cl. 77 #58-45', 1, '2024-06-07 12:39:55', 0),
(142, '901301324', 'TERAN INGENIERIA SAS', 'DAYRO TERAN', 'GERENTE', 'BOGOTA', '3006880832', 'gerencia@teraning.com', 'DG 23 TV 53A-45 OFC 2', 1, '2024-06-07 12:44:45', 0),
(143, '900197282', 'CONSTRUCCIONES METALICAS AG', 'ANDRES GARCIA', 'GERENTE', 'TOCANCIPA', '3134224218', 'juangarciarod@hotmail.com', 'VDA CANAVITA SECT FRANCISCO DIAZ LA GIRONDA', 1, '2024-06-07 15:40:58', 0),
(144, '800012155', 'TROQUELADOS METALICOS UNIVERSAL S.A.S', 'Oreana Navarro ', 'Asistente Administrativo', 'Barranquilla', '3106603104', 'troqueladosmetalicos@yahoo.com', 'CR 74 77 55', 1, '2024-06-07 16:16:02', 0),
(145, '901249343', 'SERVIMONTAJES C&H', 'GUILLERMO MARTINEZ', 'GERENTE', 'BOGOTA', '3133776456', 'cmartelo.cyh8@gmail.com', '', 1, '2024-06-11 12:37:17', 0),
(146, '901658761', 'ACUARAM S.A.S', 'JOSE RAMIREZ', 'GERENTE', 'RISARALDA', '3013886996', 'facturacion.acuaram@gmail.com', '', 1, '2024-06-11 12:44:29', 0),
(147, '900410082', 'PETRORING SAS', 'JAIVER PEREZ', 'COMERCIAL', 'BOGOTA', '3138995936', '', '', 1, '2024-06-11 12:56:12', 1),
(148, '900159244', 'SOLDMANT LTDA', 'JHANCARLOS MAESTRE', 'INGENIERO', 'SANTA MARIA BOYACA', '3114177024', '', 'CRA 4 # 7-57', 1, '2024-06-11 14:21:14', 0),
(149, '9008212297', 'GLOBALEM SAS', 'CRISTIAN ALEJANDRO RINCON', 'PROFESIONAL DE APROVISIONAMIENTO', 'BOGOTA', '3142745626', 'compras@globalem.co', 'CL 93 # 18-81 PISO 6', 1, '2024-06-12 07:29:16', 0),
(150, '860069182', 'COMPAÑIA GENERAL DE ACEROS', 'JUAN JOSE ABRIL', 'COMPRAS', 'BOGOTA', '3124570926', 'juan.abril@cga.com.co', ' Av. 68. No. 37 B – 51 SUR', 1, '2024-06-12 07:56:57', 0),
(151, '901.412.428', 'AR SOLUCIONES EN INGENIERIA Y PROYECTOS S.A.S', 'ARMANDO AKLE', 'Director de Proyectos', 'Barranquilla', '301 7545942', 'soluingeniosas@gmail.com', 'Cra 75b # 86b -131', 1, '2024-06-13 12:40:49', 0),
(152, '9010128876', 'GH PUENTES GRUA COLOMBIA SAS', 'INGENIERIA ', '', 'BOGOTA', '3175512625', '', '00 Cl. 98 #22-64', 1, '2024-06-13 12:45:59', 0),
(153, '830065391', 'VARILLAS Y ELECTRICOS DE COLOMBIA SAS', 'FERNEY ARMESTO', 'COMERCIAL', 'BOGOTA', '3126095011', 'calidad@varillasyelectricos.com', '', 1, '2024-06-13 14:19:16', 0),
(154, '900079249', 'FERREINGENIERIA J M LTDA', 'MERCEDES GOMEZ', 'COMERCIAL', 'BOGOTA', '3143652108', 'comercial1@ferreingenieria.com.co', 'CR 109 23 G 49', 1, '2024-06-13 14:25:11', 0),
(155, '890088499', 'FORMAS METALICAS SAS', 'ANDRES RUBIO', 'COMERCIAL', 'BOGOTA', '3508812355', 'comercial@formasmetalicas.com.co', '', 1, '2024-06-13 14:36:08', 0),
(156, '830053137', 'PERFIMETALES Y LAMINAS LTDA', 'COMERCIAL', '', 'BOGOTA', '3153729225', 'COMERCIAL03@PERFIMETALES.COM', 'CL 8 # 28-31 BRR RICAURTE', 1, '2024-06-13 15:51:42', 0),
(157, '901569537', 'INDUSTRIAS METALICAS ESPAÑA SAS', 'JULIAN VALENCIA', 'COMPRAS', 'BOGOTA', '3208515265', 'ndustriasmetalicase2022@gmail.com', '', 1, '2024-06-13 16:18:34', 0),
(158, '901240800', 'ES-METALS ', 'COMPRAS', '', 'BARRANQUILLA', '3166270204', '', 'Carrera 72 A #107 - 33, Riomar, Barranquilla, Atlántico', 1, '2024-06-13 16:28:42', 0),
(159, '901020151', 'INGAL DEL OCCIDENTE', 'Edinson Perez', 'Coordinador de logistica', 'Palmira', '313 6635551', 'logistica@ingaldeoccidente.com', 'Calle 3 Transversal # 4 - 222 La Dolores', 1, '2024-06-14 11:22:19', 0),
(160, '901301324', 'TERAN INGENIERIA S.A.S', 'Maria Puerta ', 'Analista de Compras', 'Cartagena', '300 6880832', 'Compras@teraning.com', 'AVENIDA EL BOSQUE DG 23 # TV 53A - 45 OFICINA 2 Y 3 HOTEL OK CARTAGENA', 1, '2024-06-14 11:42:54', 0),
(161, '808001617', 'CHINCHILLA SANDOVAL', 'José Luis García Salamanca ', 'Ingeniero ', 'Bucaramanga', '322 2814158', 'disenador@chinchillasandoval.com.co', 'CL 60 31 68 AP 1', 1, '2024-06-14 11:50:58', 0),
(162, '800218613', 'INCOMA SOLUTIONS S.A.S', 'Gissel Ramirez', 'Líder de Compras', 'Barranquilla', '304 6654597', 'ventas@incomasolutions.com', 'CR 56 96 66 AP 402', 1, '2024-06-18 14:35:57', 0),
(163, '9002263634', 'CONSTRUCCIONES DISEÑOS E INTERVENTORIA', 'WALTER MARÍN LONDOÑO', 'GERENTE GENERAL', 'CARTAGENA', '605 651 7077 ext. 1034', 'gerenciageneral@cdisa.co', 'Carrera 56B No. 7A-45', 1, '2024-06-18 15:00:12', 0),
(164, '900115708', 'SMART STEEL SAS', 'Hugo Rojas', 'Coordinador de Compras', 'Galapa', '304 5803320', 'compras@smartsteel.com.co', 'KM 4 VIA GALAPA PARQUE INDUSTRIAL LT 57', 1, '2024-06-18 17:20:49', 0),
(165, '800008926', 'INDUSTRIAS METALCIVIL Y GEOAMBIENTE', 'JUAN CRUZ', 'PRODUCCION', 'GUADUAS CUNDINAMARCA', '3132436007', 'produccion.imgeo@gmail.com', 'CL 4 # 7-23', 1, '2024-06-19 11:49:20', 1),
(166, '900701503', 'GALVANIZARTE SAS', 'RAUL MATALLAN', 'COMERCIAL', 'BUCARAMANGA', '3165236183', 'ventasgalvanizarte@gmail.com', '', 1, '2024-06-19 14:56:16', 0),
(167, '830082545', 'IMMAGEN SA', 'ING. FREDY PAEZ', 'GERENTE', 'CUNDINAMARCA', '3165217057', 'gerencia@immagensa.com', '', 1, '2024-06-21 09:15:37', 0),
(168, '802011046', 'PROYMETAL ', 'Dayane Vargas', 'Coordinadora de Compras', 'Barranquilla', '310 6105179', 'compras@proymetal.com.co', 'Carrera 38 #123- 3017 KM 4 Vía Juan Mina', 1, '2024-06-21 09:40:23', 0),
(169, '900642020', 'IMEGA GA SAS ', 'SONIA LEON CHIQUILLO', 'Coordinadora Comercial ', 'Medellin', '310 8571208', 'gerenciatecnicaimega@gmail.com', 'km 20 vía Girardota - Medellín PARQUE EMPERESARIAL INTERCITY - BODEGA 61 ', 1, '2024-06-21 10:00:15', 0),
(170, '860001899', 'CORPACERO S.A.S.', 'COMERCIAL', '', 'BOGOTA', '', '', 'Kr 13 #94A – 26 Oficina 602', 1, '2024-06-21 13:50:24', 0),
(171, '8600522640', 'CMA INGENIERIA & CONSTRUCCION SAS', 'COMERCIAL', '', 'BOGOTA', '', '', 'CRA 128 # 14B-32', 1, '2024-06-21 14:07:01', 0),
(172, '800192952', 'MANZANILLO MARINA CLUB S.A.S', 'Angelica Puello', 'Asistente administrativa', 'Cartagena', '3114299436', 'recepcionmmc1@gmail.com', 'Bosque Calle Malaga #53-76 Sector Zapatero ', 1, '2024-06-25 09:12:30', 0),
(173, '901564469', 'UNIÓN TEMPORAL MERCADO DE LA SAZÓN PTO COL', 'CARMEN SANTOYA/ ANTONELLA TOM', 'Jefe de Compras', 'Puerto Colombia', '3002101640', 'comprasylogistica@consorciosyut.com', 'PUERTO COLOMBIA CALLE 2 #7-93', 1, '2024-06-27 16:56:37', 0),
(174, '901412486', 'INGEMYC SAS', 'Joell Quezada', 'Director de Proyectos', 'Barranquilla', '300 4431509', 'proyectos@ingemyc.com', 'CL 47 33 16', 1, '2024-07-02 15:04:29', 0),
(175, '900537547', 'CONSTRUARTEC S.A.S.', 'Carlos Gonzáles', 'Departamento Comercial', 'Medellin', '312 6663837', 'ventas@incomasolutions.com', 'CL 29 D 55 50', 1, '2024-07-05 10:20:13', 0),
(176, '890401053', 'BUZCA SOLUCIONES DE INGENIERIA S.A', 'Judy Herrera', 'Gestora de compras', 'Cartagena', '3156685881', 'jherrera@buzca.com', 'Bocagrande Av San Martin Cra 2 # 9-145 Edificio Nautilus, Piso 12', 1, '2024-07-05 12:00:35', 0),
(177, '900821229', 'GLOBALEM S.A.S', 'Cristian Alejandro Rincon', 'Profesional de aprovisionamiento', 'Bogota', '3142745626', 'compras@globalem.co', 'Calle 93 # 18-81 ', 1, '2024-07-05 13:04:24', 0),
(178, '830001114', 'FEPCO ZONA FRANCA SAS', 'Manuel Carrascal', 'Analista de Materiales', 'BOGOTA', '3183930781', 'mcarrascal@fepco.com.co', ' Av. Centenario Cra. 106 No. 15-25 Lote 54Lote No. 54 Zona Franca', 1, '2024-07-05 13:14:39', 0),
(179, '900089212', 'ILK INGENIERIA ', 'Fabian Salas', 'Gerente', 'Cartagena', '317 4354448', 'gerencia@fallprosystem.com.co', ' BARRIO BELLAVISTA CALLE 6 56 A 57', 1, '2024-07-05 15:29:26', 0),
(180, '901813968', 'CONSORCIO SAN FELIPE', 'Jesualdo Daza Socarras', 'Director de Producción', 'Barranquilla', '310 3375058', 'Jesualdo.Daza@mota-engil.co', 'CL 81 #11-08 P9 Edificio empresarial 8111', 1, '2024-07-08 16:01:32', 0),
(181, '901240800', 'C.I ES METALS SAS', 'Sergio Ignacio Mesa Romero', 'Project Manager', 'Barranquilla', '318 7425251', 'sergio.mesa@es-metals.com', 'Cra 72A No 107 33', 1, '2024-07-08 16:34:08', 0),
(182, ' 901013101', 'INDUMETALICAS VM SAS', 'Víctor Manuel villamizar Pabon', 'Gerente', 'Yopal', '313 4961711', 'indumetalicasvmsas@gmail.com', 'Calle 39a 19 62', 1, '2024-07-08 16:50:50', 0),
(183, '901365242', 'CONSTRUCTORA ZINCO SAS', 'GERARDO UBAQUE', 'COMERCIAL', 'FUSAGASUGA', '3106180461', 'construzincosas@gmail.com', 'CR 9 10 A 04\r\n', 1, '2024-07-11 08:51:18', 0),
(184, '72139443', 'JC INGENIERIA ', 'Jose Carranza Rico', 'Ingeniero de Proyectos ', 'Barranquilla', '3003118670', 'jdcring@gmail.com', 'Carrera 38B No 68-22', 1, '2024-07-15 10:18:33', 0),
(185, '86000617', 'FERROFABRIL COLOMBIANA S.A.', 'DANIEL VILLATE', 'GERENTE', 'TOCANCIPA', '3102956205', 'ferrofabril@googlemail.com', '', 1, '2024-07-15 12:17:16', 0),
(186, '830140690', 'MONTITEC SAS', 'MARCO ANTONIO LOBATON', 'GERENTE', 'MOSQUERA', '3102318570', 'montialon4@hotmail.com', 'CL 17 # 4-54 PORVENIR RIO VILLA LADY', 1, '2024-07-15 12:22:00', 0),
(187, '900575843', 'AGP SERVICES SAS', 'VICTOR RAMIREZ', 'PRODUCCION', 'MOSQUERA', '3182407461', 'vramirez@agp.com.co', 'AV. TRONCAL DE OCCIDENTE # 20.85', 1, '2024-07-15 14:23:31', 0),
(188, 'O&G GRUPO EMPRESARIAL', 'O&G GRUPO EMPRESARIAL', 'ING. LEONARDO GALINDO', 'GERENTE', 'MOSQUERA', '3115925388', 'compras@omgingenieria.com', 'PARQUE INDUSTRIAL MONTANA', 1, '2024-07-15 14:29:21', 0),
(189, '901126978', 'INJESA SAS', 'ALBERTO PAEZ', 'DIRECTOR COMERCIAL', 'FUNZA', '3176490923', 'albertopaez@injesasas.com', '', 1, '2024-07-15 14:36:18', 0),
(190, '901417235', 'BARRANQUILLA CONSTRUCTORES S.A.S.', 'Gustavo Meza', 'Director de Obra', 'Barranquilla', '310 3529121', 'gmezaq@gmail.com', 'CR 46 68 56', 1, '2024-07-16 16:10:11', 0),
(191, '901519360', 'INGENIERÍA LAEL SAS', 'Dany Ariza Rivera', 'Gerente', 'Barranquilla', '321 7953224', 'ingenierialael_sas@outlook.com', 'CARRERA 15#23-02', 1, '2024-07-17 09:58:17', 0),
(192, '901301115', 'MACROEQUIPOS LAND SAS', 'JORGE GIRALDO', 'Gerente', 'Barranquilla', '316 3512842', 'ybarranco@macroequiposland.co', 'AV CIRCU COMPLEJO IND METROPARQUE BG M 1 19', 1, '2024-07-18 14:17:41', 0),
(193, '9004448188', 'CELIK CONSTRUCCIONES METALICAS SAS', 'JAVIER RODRIGUEZ', 'DIRECTOR COMERCIAL', 'MOSQUERA', '', 'j.rodriguez@celikconstrucciones.com.co', '', 1, '2024-07-18 15:43:12', 0),
(194, '900144073', 'TRAILERS HERCULES', 'LUIS CASTAÑEDA', 'GERENCIA', '', '3162336191', 'compras@trailersherculesltda.com', 'Autopista Medellín, Sector La Bascula Km 10+600. TENJO', 1, '2024-07-19 12:25:23', 0),
(195, '901652193', 'INGECASLUG SAS', 'COMPRAS', '', 'BOGOTA', '3142272370', '', '', 1, '2024-07-19 12:38:51', 0),
(196, '8600803924', 'ELEMENTOS METALICOS SA', 'COMERCIAL', '', 'BOGOTA', '3102373556', '', 'CALLE 17 126 12', 1, '2024-07-22 13:51:11', 0),
(197, '900980561', 'AIRE LIMPIO GLOBAL SAS', 'GERENCIA', '', '', '3232280518', 'gerencia.co@airelimpioglobal.com', '', 1, '2024-07-22 14:11:08', 0),
(198, '900468459', 'HOUSING INGENIEROS SAS', 'JOELL MALDONADO', 'COMPRAS', 'BOGOTA', '3183383842', '', '', 1, '2024-07-22 14:19:20', 0),
(199, '900128400', 'IZ SAS', 'SEBASTIAN GUTIERREZ', 'COMPRAS', '', '3167282711', '', '', 1, '2024-07-23 12:46:30', 0),
(200, '901145938', 'FA INGENIERIA INTEGRAL SAS', 'Jhony Perez Aparicio', 'Proyectos', 'Barranquilla', '315 8598505', 'jperez@faingenieria.com', 'CRA 57#99A-65, of 507', 1, '2024-07-23 16:41:27', 0),
(201, '900631201', 'EMYPRO COLOMBIA', 'Lorena Agudelo', 'Director SIG', 'Cartagena', '321 6114462', 'lagudelo@emypro.es', 'BRR MAMONAL KM 1 CR 56 7 C 39 BG 54', 1, '2024-07-23 16:56:29', 0),
(202, '900805621', 'ENERGY CG COLOMBIA S.A.S', 'EDUARDO ARIZA PEREZ', 'Director de Obra', 'BOGOTA', '3156702062', 'direccioncivil.energycg@gmail.com', 'CR 13 96 67 OF 206 ED AKORI PH', 1, '2024-07-23 16:58:53', 0),
(203, '901398279', 'Diseños & Construcciones Metálicas SAS', 'Vicente Luque', 'Gerente', 'Barranquilla', '3126703740', 'vluque@dcomet.co', 'Cordialidad km 1-3 vía galapa Parque Logístico California ', 1, '2024-07-24 16:05:45', 0),
(204, ' 900975258', 'Envolventes y paquetizados MILEM SAS BIC', 'Fabián Pertúz', 'COO', 'Malambo', '3173338620', 'fpertuz@redsolvers.com', 'Km 2.5 Vía Sabanagrande-Malambo', 1, '2024-07-24 16:07:54', 0),
(205, '830016167', 'DESARROLLO DE PROYECTOS DE INGENIERIA SAS - DESPROING', 'JORGE NIÑO', 'GERENCIA COMERCIAL', 'BOGOTA', '3014538062', 'jorge.nino@desproing.com', '', 1, '2024-07-25 13:01:15', 0),
(206, '901066585', 'FERRICAMPOS SAS', 'ALBEIRO', 'COMERCIAL', 'BOGOTA', '3118268760', '', 'Cra. 53f #2 - 94', 1, '2024-07-26 09:18:16', 0),
(207, '900774001', 'COMERCIALIZADORA INVERMALLAS SAS', 'ELIANA DOMINGUEZ', 'COMERCIAL', 'BOGOTA', '3212189989', 'eliana.dominguez@invermallas.com', 'CRA 33 # 13-81', 1, '2024-07-26 09:23:26', 0),
(208, '900090357', 'UFRABE CONSTRUCCIONES SAS', 'MANUEL URIBE', 'JEFE PRODUCCION', 'BOGOTA', '3112149644', 'gerenciacomercial@ufrabe.com', 'Cl. 73A #68G-40,', 1, '2024-07-31 11:55:03', 0),
(209, '900044092', 'SOLUCIONES LOGISTICAS INTERNACIONALES S.A.S', 'Arelinda Iguaran', 'Asistente De Gerencia', 'Cartagena', '350 6117053', 'Arelindaiguaran@gmail.com', 'Bosque DIAG 22 #55-07', 1, '2024-08-01 11:53:42', 0),
(210, '830023458', 'Metalurgica Construcel Colombia S A Metacol', 'WILLIAM SANCHEZ', 'JEFE COMPRAS', 'TOCANCIPA', '3123777505', 'compras@metacol.com', 'AUTOPISTA NORTE KM 30    VEREDA CANAVITA', 1, '2024-08-01 13:54:04', 0),
(211, '9002809600', 'JEC MULTIHERRAJES SAS', 'JAIRO COCA', 'GERENTE', 'BOGOTA', '3167400478', 'jairo.coca@multiherrajes.com.co', 'Cra. 32 #39 Sur-35, Bogotá', 1, '2024-08-01 14:41:10', 0),
(212, '901413483', 'SMART INTERNAL MOBILITY SAS', 'HECTOR CAVIEDES', 'COMERCIAL', 'MEDELLIN', '3008222978', 'hector.caviedes@c2r.com.co', 'CL 15A SUR # 32B-69', 1, '2024-08-01 14:47:59', 0),
(213, '806014553', 'TUVACOL ', 'Juan Rendon', 'Asesor Comercial', 'Medellin', '3116053592', 'ventas4med@tuvacol.com', 'Calle 11 Sur No. 50 -274', 1, '2024-08-01 17:09:20', 0),
(214, '900332801', 'EQUISANDER SAS', 'Sergio Andres Bernal Barajas', 'Gerente', 'Puerto Colombia', '301 3595954', 'equisandersas@hotmail.com', 'CR 26 3 A 272 TO TORRES DE VILLA CAMPESTRE 3 AP 1101', 1, '2024-08-05 10:29:26', 0),
(215, ' 901377891', ' SERMAC SERVICES SAS', 'Alveiro Yepez Garcia', 'Director de Proyectos', 'Barranquilla', ' 3152256209', 'gerencia@gruposermac.com', 'Calle 58#15-137 ', 1, '2024-08-08 07:27:24', 0),
(216, '860526606', 'SADELEC LTDA', 'COMPRAS', 'COMPRAS', 'BOGOTA', '', '', 'AV KR 129 17F 97', 1, '2024-08-08 12:16:18', 0),
(217, '901544412', 'CE&M SAS', 'Rafael Eduardo Piñeres Álvarez', 'Gerente', 'Cartagena', '3155084570', 'CEM_SAS@outlook.com', 'San Pedro Mz12 Lt4', 1, '2024-08-13 07:34:57', 0),
(218, '892301141', 'INVERSIONES ELCER SAS', 'Reynaldo Sará Fonseca', 'Coordinador de Compras', 'Barranquilla', '3185614742', 'compras@bisnext.co', 'Cra 42G No 82-218', 1, '2024-08-13 08:22:50', 0),
(219, '901537428', 'INNOVACIONES DINAMICAS SAS', 'Diana Patricia Montoya', 'Directora de Compras', 'BOGOTA', '3176751250', 'compras@innodinamicas.com.co', '', 1, '2024-08-13 16:46:21', 0),
(220, '800246555 ', 'ACIMET SAS', 'ING. JAVIER CABARIQUE', 'GERENTE', 'BOGOTA', '3106800155', 'acimet@etb.net.co', '', 1, '2024-08-15 14:53:17', 0),
(221, '8908004130', 'HERRAGRO', 'CAMILO CALLE', 'COMERCIAL', 'BOGOTA', '3116246538', '', '', 1, '2024-08-15 15:05:22', 1),
(222, '900536529', 'Ingenieria Y Concreto Mega SAS', 'Ing. Hasbleidy Pardo Pulido', 'Subgerente', 'TENJO-CUNDINAMARCA', '3155968948', 'hpardo@iconMega.com', 'TENJO-CUNDINAMARCA', 1, '2024-08-20 11:15:04', 0),
(223, '901714024', 'NORTON EDIFICIOS INDUSTRIALES', 'FEDERICO MOGOLLON', 'Departamento de Estudios y Presupuestos', 'Bogota', '321 3408346', 'FMOGOLLON@NORTONEI.COM', 'Cra 9 # 115 – 06/30, Edificio Tierra Firme, Oficina 1752', 1, '2024-08-20 13:08:37', 0),
(224, '800187291', 'H.M INGENIERIA ', 'Hugo Rojas', 'Coordinador de Compras', 'Barranquilla', '3045803320', 'compras@smartsteel.com.co', 'CR 60 72 45', 1, '2024-08-20 13:23:17', 0),
(225, '900054514', 'Cortamos y Doblamos SA', 'Gabriel Jaime Arango', 'Gerente', 'Sabaneta', '3166913427', 'Ingenieria@cortamosydoblamos.com', 'Carrera 48 N° 78C Sur 68', 1, '2024-08-20 17:07:59', 0),
(226, '860001899 ', 'CORPACERO S.A.S', 'INGRID CARDENAS', 'PROGRAMADOR DE PRODUCCION', 'BARRANQUILLA', '304-2090422', 'icardenas@corpacerozonafranca.com', 'VIA 40  73-50 BQUILLA', 1, '2024-08-21 10:08:04', 0),
(227, '901759610', 'CONSORCIO HUNZA II', 'ING. CESAR ORDOÑEZ', '', 'CHIQUINQUIRA - BOYACA', '', 'consorciohunzaii@gmail.com', 'CL 17 # 10-30 OFC 201', 1, '2024-08-23 10:56:37', 0),
(228, '9006380240', 'Contratistas Y Constructores C F E S A S', 'LADER MAYORGA', '', 'FUNZA  CUNDNAMARCA', '3057081454', '', '', 1, '2024-08-23 11:09:24', 0),
(229, '890401842', 'Ferrocem - alquimar SAS', 'Adriana Cancio', 'Responsable de compras', 'Cartagena', '3205653302', 'compras@ferroalquimar.com', 'Barrio albornoz via mamonal km 3', 1, '2024-08-26 09:02:05', 0),
(230, '901783705', 'CONSORCIO ALMIRANTE PADILLA', 'Hugo Rojas', 'Compras', 'Barranquilla', '304 5803320', 'compras@smartsteel.com.co', 'CR 60 72 45', 1, '2024-08-26 11:24:36', 0),
(231, '900819470', 'MANKCO S.A.S.', 'SERGIO FIALLO', 'COMPRAS', 'BUCARAMANGA', '3102221767', 'sfiallo2808@hotmail.com', 'TV P 5-70 DG A PARQUE INDUSTRIAL PROVINCIA DE SOTO', 1, '2024-08-27 11:59:08', 0),
(232, '8300109078', 'TRANSMISION MECANICA SOCIEDAD POR ACCIONES', 'DIEGO ROMERO', 'PROYECTOS', 'SIBERIA', '3162260029', 'proyectos@tramecltda.com', 'AUTOPISTA MEDELLIN KM 2 EN PARCELAS PQ EMPRESARIAL LUTRANSA', 1, '2024-08-27 16:45:15', 0),
(233, '901756077', 'ECOHOLDING SAS', 'SR. SERGIO', '', 'BOGOTA', '3183504955', 'administracion@ecoholding.com.co', 'CERRETERA CENTRAL DEL NORTE KM9 EL SAUZAL', 1, '2024-08-28 12:30:48', 0),
(234, '860007336', 'Caja Colombiana de Subsidio Familiar Colsubsidio', 'Ing. Cesar Steven Garces Moreno', 'Departamento de Infraestructura', 'BOGOTA', '3143619346', 'cesagarmor@colsubsidio.com', 'Calle 26 No.25-50. Piso 3', 1, '2024-08-28 12:44:08', 0),
(235, '900788217', 'AG DISEÑOS Y CONSTRUCCIONES SAS', 'ING ERNESTO ERAZO', '', 'BOGOTA', '3174241316', 'eerazo@agconstrucciones.com.co', 'CRA 63 # 14-75', 1, '2024-08-28 12:59:06', 0),
(236, '9007238526', 'Etsa Jj S A S', 'ANGIE', 'COMPRAS', 'GUADUAS', '3203278944', '', '', 1, '2024-08-29 14:33:50', 0),
(237, '800165694', 'AUTONORTE SAS', 'Clara Morales Morales', 'Asistente de gerencia/recepción', 'Barranquilla', '318 7074175', 'recepcionc@autonorte.com.co', 'Avenida circunvalar calle 110 43c#91', 1, '2024-08-30 11:36:53', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `precision` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thousand_separator` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `decimal_separator` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `precision`, `thousand_separator`, `decimal_separator`, `code`) VALUES
(1, 'Peso Colombiano', '$', '2', ',', '.', 'COP');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_factura`
--

CREATE TABLE `detalle_factura` (
  `id_detalle` int(11) NOT NULL,
  `numero_factura` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_factura`
--

INSERT INTO `detalle_factura` (`id_detalle`, `numero_factura`, `id_producto`, `cantidad`, `precio_venta`) VALUES
(343, 3, 1, 3540, 2500),
(342, 2, 1, 1320, 2270),
(341, 1, 1, 1, 2720),
(345, 4, 1, 1, 1610),
(346, 4, 1, 1, 1520),
(347, 4, 1, 1, 1680),
(348, 5, 1, 1100, 1900),
(349, 6, 1, 520, 1755),
(350, 7, 1, 1, 2750),
(351, 8, 3, 1, 2600),
(352, 8, 1, 1, 2100),
(353, 9, 1, 1, 1900),
(354, 10, 2, 2000, 2870),
(355, 11, 1, 1720, 1560),
(356, 12, 1, 1, 1720),
(357, 13, 1, 370, 1830),
(358, 13, 6, 330, 550),
(359, 14, 1, 4070, 1580),
(360, 15, 1, 1650, 1460),
(361, 16, 1, 1, 1550),
(362, 17, 1, 763, 2200),
(363, 18, 1, 11280, 1950),
(364, 19, 1, 700, 2700),
(385, 32, 1, 6320, 2097),
(386, 33, 1, 42300, 2220),
(383, 20, 1, 1, 1690),
(368, 21, 1, 1, 1750),
(370, 22, 1, 20000, 1700),
(371, 23, 1, 29000, 1450),
(372, 24, 4, 52980, 500),
(373, 24, 1, 57222, 1830),
(374, 25, 1, 210, 2150),
(523, 115, 1, 1300, 1680),
(608, 26, 1, 432000, 1690),
(377, 27, 1, 1, 3500),
(378, 28, 1, 1, 1850),
(379, 29, 1, 1, 1450),
(381, 30, 1, 200, 2350),
(382, 31, 1, 1, 1620),
(384, 20, 2, 1, 2115),
(387, 33, 4, 39200, 500),
(388, 34, 1, 1010, 2370),
(392, 35, 1, 1500, 2600),
(393, 35, 1, 1500, 2600),
(394, 35, 1, 1500, 2600),
(397, 37, 2, 2500, 4350),
(396, 36, 9, 1, 1200000),
(398, 37, 1, 6000, 1815),
(399, 37, 1, 5000, 1700),
(400, 38, 1, 2000, 1480),
(401, 39, 1, 74, 1500),
(402, 40, 1, 2000, 2890),
(403, 41, 1, 23000, 1480),
(404, 42, 1, 40, 2800),
(405, 42, 6, 40, 550),
(406, 43, 1, 416, 3590),
(407, 44, 1, 1538, 2230),
(408, 45, 1, 1, 1690),
(409, 45, 1, 1, 3025),
(410, 46, 1, 100, 1950),
(411, 47, 1, 500, 1900),
(412, 48, 1, 1675, 1580),
(413, 49, 1, 15870, 2000),
(414, 50, 1, 12000, 1780),
(415, 51, 1, 2460, 1740),
(416, 52, 3, 1, 2600),
(417, 52, 1, 1, 2095),
(436, 58, 1, 44110, 1900),
(427, 54, 1, 7375, 1650),
(428, 55, 1, 1, 1650),
(429, 56, 1, 14000, 1650),
(435, 57, 1, 30, 6000),
(433, 53, 1, 1210, 2250),
(458, 68, 1, 10800, 1900),
(437, 59, 1, 430, 24500),
(438, 59, 4, 410, 500),
(439, 59, 19, 40, 3000),
(440, 60, 1, 4550, 2010),
(441, 61, 1, 6000, 2880),
(442, 62, 1, 1, 1500),
(443, 63, 1, 1, 2100),
(444, 64, 1, 145, 1500),
(445, 65, 1, 400, 2970),
(446, 66, 1, 80, 2970),
(448, 67, 1, 2500, 1920),
(461, 70, 1, 320, 3700),
(460, 69, 1, 1, 1850),
(459, 69, 1, 1, 1950),
(462, 71, 1, 1200, 1680),
(463, 72, 1, 1, 3250),
(464, 73, 4, 1, 500),
(465, 73, 1, 1, 2620),
(466, 74, 1, 1, 1548),
(467, 74, 1, 1, 1705),
(468, 74, 1, 1, 1649),
(469, 75, 1, 16000, 1510),
(470, 76, 1, 240, 3150),
(471, 77, 1, 1, 5080),
(472, 78, 1, 1325, 1920),
(473, 79, 3, 2866, 2600),
(474, 80, 1, 1, 1493),
(475, 80, 2, 1, 1717),
(476, 81, 9, 1, 1200000),
(532, 82, 1, 6280, 2195),
(478, 83, 1, 80, 2970),
(479, 84, 1, 250, 2280),
(480, 85, 3, 493, 2600),
(481, 85, 1, 5194, 1960),
(482, 86, 1, 1, 1990),
(483, 86, 1, 1, 2510),
(484, 87, 1, 2010, 2890),
(485, 88, 1, 220, 1780),
(486, 89, 1, 1, 1900),
(487, 90, 1, 1, 1650),
(488, 91, 1, 1, 1840),
(489, 91, 1, 1, 2700),
(490, 91, 1, 1, 2240),
(491, 92, 1, 1, 3797),
(492, 92, 1, 25000, 3220),
(494, 93, 1, 260, 2250),
(495, 94, 1, 6780, 2450),
(496, 95, 1, 100, 2920),
(497, 96, 1, 580, 2350),
(498, 97, 1, 700, 3200),
(499, 98, 1, 2520, 1620),
(500, 99, 1, 2810, 1550),
(507, 103, 1, 1670, 2150),
(502, 101, 20, 31000, 400),
(503, 101, 6, 31000, 400),
(504, 101, 1, 32000, 1890),
(505, 102, 1, 49330, 1990),
(506, 100, 1, 6500, 2050),
(508, 104, 1, 25000, 1750),
(509, 105, 1, 1280, 2890),
(510, 106, 1, 1, 2250),
(511, 107, 1, 100, 1920),
(512, 108, 1, 2920, 1950),
(514, 108, 21, 710, 400),
(515, 109, 1, 3400, 1950),
(516, 109, 1, 760, 2480),
(517, 110, 1, 1, 1850),
(518, 111, 1, 1, 1590),
(519, 112, 1, 1, 1650),
(520, 113, 2, 885, 2000),
(521, 114, 1, 1, 2000),
(524, 116, 1, 500, 1900),
(525, 117, 1, 200, 2350),
(526, 118, 1, 5000, 1400),
(527, 118, 1, 1, 1830),
(528, 118, 1, 1, 1990),
(530, 119, 1, 1, 1450),
(531, 119, 1, 1, 1990),
(533, 120, 1, 1, 1415),
(534, 121, 2, 1, 1875),
(535, 121, 1, 1, 1500),
(536, 122, 9, 1, 1200000),
(537, 122, 8, 1, 80000),
(538, 123, 1, 12000, 1780),
(539, 124, 1, 18500, 2050),
(540, 125, 9, 1, 1200000),
(541, 126, 1, 190, 2850),
(542, 127, 1, 1, 1890),
(543, 128, 1, 480, 1620),
(544, 129, 1, 4000, 2000),
(545, 130, 1, 1000, 1590),
(546, 131, 1, 1, 2000),
(547, 132, 1, 1, 1450),
(548, 133, 1, 100, 3500),
(549, 134, 1, 400, 3500),
(550, 135, 1, 280, 1820),
(551, 136, 1, 7865, 1875),
(552, 137, 1, 80, 3200),
(553, 138, 1, 300, 2200),
(554, 138, 1, 300, 2200),
(555, 139, 1, 1, 2540),
(556, 140, 1, 1, 1920),
(557, 141, 1, 1, 1550),
(558, 142, 1, 83880, 1550),
(559, 143, 1, 6385, 1690),
(560, 144, 1, 1750, 2200),
(571, 145, 2, 476, 1887),
(565, 148, 1, 456, 3000),
(563, 146, 1, 320, 1600),
(564, 147, 1, 5595, 1780),
(566, 149, 2, 1, 2150),
(567, 150, 1, 1, 1600),
(568, 151, 1, 3130, 1750),
(570, 145, 1, 738, 1510),
(572, 152, 1, 6385, 1690),
(573, 153, 1, 430, 1890),
(574, 154, 1, 1, 5430),
(575, 155, 1, 1, 1410),
(576, 156, 2, 23810, 2280),
(577, 157, 1, 320, 2700),
(578, 158, 1, 56700, 2000),
(579, 159, 9, 1, 1200000),
(580, 160, 1, 1, 2000),
(736, 270, 1, 6527, 1808),
(582, 162, 1, 1500, 1410),
(583, 163, 1, 1, 1750),
(584, 164, 1, 1, 2260),
(586, 165, 1, 741000, 2020),
(587, 166, 2, 350000, 2475),
(588, 166, 1, 350000, 1980),
(589, 167, 18, 1, 220000),
(598, 168, 6, 490, 500),
(597, 168, 1, 530, 2800),
(592, 169, 2, 1, 2700),
(593, 169, 1, 1, 2250),
(594, 170, 9, 1, 1200000),
(595, 170, 8, 1, 86000),
(596, 171, 1, 51700, 1405),
(602, 173, 1, 1, 6000),
(601, 172, 1, 88570, 1550),
(704, 174, 1, 4650, 3297),
(604, 175, 1, 1, 1410),
(605, 176, 1, 240, 2280),
(606, 177, 1, 1, 1680),
(607, 178, 1, 1, 2160),
(609, 179, 11, 1, 300000),
(610, 180, 1, 920, 2200),
(611, 181, 1, 170, 2700),
(612, 182, 1, 530, 2800),
(613, 182, 6, 490, 500),
(614, 183, 2, 1, 3840),
(615, 183, 1, 1, 3200),
(616, 184, 1, 3220, 2740),
(617, 185, 1, 1900, 1800),
(618, 186, 9, 1, 1200000),
(619, 187, 1, 8000, 1490),
(620, 188, 1, 1, 1690),
(621, 189, 1, 1, 3200),
(622, 190, 1, 740, 2970),
(623, 191, 1, 1, 1790),
(624, 192, 1, 1340, 1850),
(626, 193, 1, 1, 2150),
(627, 194, 1, 9000, 2240),
(628, 195, 1, 1, 2240),
(629, 195, 6, 1, 550),
(630, 195, 1, 1, 1930),
(639, 204, 1, 1, 1630),
(638, 203, 1, 1, 2600),
(637, 202, 1, 100000, 1610),
(636, 201, 1, 3800, 1430),
(635, 200, 1, 1000, 1520),
(640, 205, 1, 2600, 1950),
(641, 206, 1, 930, 1850),
(642, 207, 18, 2, 220000),
(643, 208, 1, 3312, 3100),
(644, 209, 1, 310, 1800),
(645, 210, 3, 1, 2600),
(646, 210, 1, 3355, 1430),
(647, 211, 1, 1, 1910),
(648, 212, 1, 1, 1780),
(649, 213, 6, 1, 550),
(650, 213, 1, 1, 5050),
(651, 214, 1, 6000, 1630),
(652, 215, 9, 1, 1200000),
(653, 216, 1, 500000, 1580),
(654, 217, 1, 1800000, 1650),
(655, 218, 1, 200, 2170),
(656, 219, 1, 1, 3530),
(657, 220, 1, 1, 2000),
(658, 221, 1, 5155, 1690),
(672, 222, 1, 100000, 1850),
(660, 223, 1, 1, 2850),
(661, 224, 1, 120, 1990),
(662, 225, 1, 2190, 2150),
(663, 225, 4, 2030, 500),
(664, 226, 1, 460, 1920),
(665, 227, 1, 29150, 1950),
(667, 227, 2, 1, 2340),
(668, 228, 1, 14400, 1680),
(669, 229, 1, 1, 1600),
(670, 230, 1, 500, 1800),
(671, 231, 1, 300, 1700),
(673, 232, 1, 5750, 1850),
(674, 233, 1, 16120, 1390),
(676, 234, 1, 1, 1380),
(677, 234, 2, 1, 1730),
(678, 234, 1, 1, 2350),
(679, 235, 4, 51000, 500),
(680, 235, 1, 54300, 2030),
(690, 236, 2, 6560, 1920),
(682, 237, 1, 3000, 2080),
(683, 238, 1, 25000, 1350),
(684, 239, 2, 325, 6700),
(685, 240, 1, 1, 1650),
(686, 241, 1, 1, 1400),
(687, 242, 3, 123, 2600),
(688, 242, 2, 1300, 2480),
(689, 242, 1, 6240, 2050),
(691, 243, 4, 8000, 500),
(692, 243, 1, 8250, 2270),
(693, 244, 4, 172, 500),
(694, 244, 1, 190, 2500),
(695, 245, 1, 1, 2400),
(696, 246, 6, 1, 600),
(697, 246, 1, 1, 4500),
(698, 246, 1, 1, 2950),
(699, 247, 1, 18000, 1500),
(700, 248, 1, 3100, 1750),
(701, 249, 1, 130000, 2000),
(702, 250, 1, 720, 1910),
(703, 251, 1, 4200, 1950),
(705, 252, 4, 1700, 500),
(706, 252, 1, 1850, 2450),
(707, 253, 1, 1, 1550),
(708, 253, 3, 1, 2600),
(709, 254, 1, 1350, 1970),
(710, 254, 1, 1160, 1970),
(711, 254, 1, 2450, 1970),
(712, 255, 1, 2810, 1970),
(713, 256, 1, 230, 1970),
(714, 257, 1, 200, 2970),
(715, 258, 1, 44, 1650),
(716, 259, 1, 60000, 1550),
(717, 260, 1, 7000, 1950),
(718, 261, 1, 50, 1750),
(719, 262, 1, 3875, 2600),
(720, 263, 1, 500, 2120),
(721, 264, 1, 500, 3500),
(722, 265, 1, 995, 1650),
(723, 266, 1, 37115, 1435),
(724, 267, 1, 1230, 3200),
(725, 268, 1, 930, 1960),
(739, 269, 1, 1, 2000),
(747, 161, 1, 117000, 1850),
(735, 270, 1, 24478, 2317),
(737, 271, 1, 3130, 1970),
(733, 270, 1, 2091, 2064),
(740, 269, 2, 1, 2400),
(741, 272, 1, 63760, 1450),
(742, 273, 1, 60000, 2500),
(743, 274, 1, 1, 1530),
(744, 275, 1, 7315, 1650),
(749, 279, 1, 1600, 1970),
(746, 277, 1, 1, 6000),
(748, 278, 1, 1720, 1970),
(750, 280, 1, 1550, 1995),
(751, 281, 1, 1460, 2210),
(752, 282, 1, 355, 1700),
(753, 283, 1, 12460, 1500),
(754, 284, 1, 1340, 1970),
(755, 285, 1, 9655, 1500),
(758, 287, 1, 3490, 1970),
(757, 286, 2, 10044, 2580),
(759, 288, 1, 1, 1950),
(760, 289, 6, 1, 550),
(761, 289, 1, 1, 1995),
(762, 290, 1, 1140, 1530),
(763, 291, 1, 1, 3580),
(764, 292, 9, 1, 1200000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `id_factura` int(11) NOT NULL,
  `numero_factura` int(11) NOT NULL,
  `fecha_factura` datetime NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `condiciones` varchar(30) NOT NULL,
  `total_venta` varchar(20) NOT NULL,
  `estado_factura` tinyint(1) NOT NULL,
  `nota` varchar(500) DEFAULT NULL,
  `tiempo_entrega` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`id_factura`, `numero_factura`, `fecha_factura`, `id_cliente`, `id_vendedor`, `condiciones`, `total_venta`, `estado_factura`, `nota`, `tiempo_entrega`) VALUES
(113, 1, '2024-04-08 11:05:32', 30, 3, '1', '3236.8', 1, 'Servicio galvanizado en caliente para tubería de 2mm de espesor, con una longitud máxima de 6 metros', ''),
(114, 2, '2024-04-08 12:25:01', 31, 3, '1', '3565716', 1, '', ''),
(115, 3, '2024-04-09 09:24:48', 32, 2, '1', '10531500', 1, 'MALLA ELECTROSOLDADA DE 6MM 1M*1.10M', ''),
(116, 4, '2024-04-09 09:32:57', 33, 2, '1', '5723.9', 1, 'ITEM 1 ANGULOS 1/4 / ITEM 2 ANGULOS 3/16 / ITEM 3 PLATINAS EN 3/16', ''),
(117, 5, '2024-04-09 09:39:39', 34, 2, '1', '2487100', 1, 'de acuerdo a listado de materiales', ''),
(118, 6, '2024-04-09 09:45:54', 35, 2, '1', '1085994', 1, 'ANGULOS 1/8', ''),
(119, 7, '2024-04-09 09:59:08', 36, 2, '1', '3272.5', 1, 'ANGULOS 1/8 Y PLATINAS 1/8', ''),
(120, 8, '2024-04-09 10:04:53', 37, 2, '1', '5593', 1, 'SOPORTES EN 2.5', ''),
(121, 9, '2024-04-09 10:15:23', 38, 2, '1', '2261', 1, 'TUBERIA ESTRUCTURAL DE 2.5MM', ''),
(122, 10, '2024-04-09 10:26:25', 39, 2, '1', '6830600', 1, 'CERCHAS EN ANGULOS DE 1/4 Y 3/8 IMPRODUCTIVIDAD POR PESO.', ''),
(123, 11, '2024-04-09 10:37:52', 40, 2, '1', '3193008', 1, 'LAMINAS 4.5MM', ''),
(124, 12, '2024-04-09 10:51:53', 41, 2, '1', '2046.8', 1, 'ANGULOS 1/8', ''),
(125, 13, '2024-04-09 11:03:46', 42, 2, '1', '1021734', 1, 'BASES', ''),
(126, 14, '2024-04-09 11:24:10', 43, 2, '1', '7652414', 1, 'CERCHAS EN ANGULO 60*70*6MTS', ''),
(127, 15, '2024-04-09 11:45:19', 44, 2, '1', '2866710', 1, 'LAMINAS 30*30CM 9MM ESPESOR', ''),
(128, 16, '2024-04-09 12:09:32', 45, 2, '1', '1844.5', 1, 'BARANDAS HIERROS', ''),
(129, 17, '2024-04-11 09:34:02', 47, 3, '1', '1997534', 1, 'Servicio de galvanizado en caliente para 99 ángulos de 1\" x 1/8\" de 6 metros', ''),
(130, 18, '2024-04-11 09:48:08', 48, 3, '1', '26175240', 1, 'Servicio de galvanizado en caliente para 1006 ángulos  de 1\" x 3/16\" X 6 metros', ''),
(131, 19, '2024-04-11 13:36:23', 46, 3, '1', '2249100', 1, '', ''),
(132, 20, '2024-04-11 15:50:10', 37, 2, '3', '4527.95', 1, 'ITEM 1: DOBLE INMERSION. ESTRUCTURAS CON PESO PROMEDIO DE 455 KILOS. CONSUMO 5.2% ESTIMADO E HISTORICO / ITEM 2: INMERSION SENCILLA ESTRUCTURA CON PESO PROMEDIO DE 300 KG. COMSUMO ESTIMADO DE 5% / ITEM 3: INMERSION SENCILLA. ELEMENTOS SUELTOS (TUBOS CUADR', ''),
(133, 21, '2024-04-11 16:27:32', 50, 2, '1', '2082.5', 1, 'REJILLAS EN 3/16 Y OTROS ESPESORES', ''),
(134, 22, '2024-04-11 16:49:21', 51, 2, '1', '40460000', 1, 'precio por kilogramo procesado Rejillas 3/16', ''),
(135, 23, '2024-04-11 16:56:16', 52, 2, '1', '50039500', 1, 'PRECIO POR KG PROCESDO. VIGAS IPE Y HEA', ''),
(136, 24, '2024-04-12 09:37:16', 53, 3, '1', '156135449.4', 1, 'Servicio de galvanizado por inmersión en caliente para tubería con diámetro mayor a 1\".  Tubería de 1/2\" y 3/4\" no están contempladas en esta oferta, debido a que pueden quedar tapadas con zinc. Al material se le deberá soldar orejas para colgar y deberá ', ''),
(137, 25, '2024-04-15 10:37:12', 54, 3, '1', '537285', 1, 'Servicio de galvanizado en caliente para dos cajas Metálicas con espesores de 3mm y 6mm', ''),
(138, 26, '2024-04-15 12:39:56', 180, 3, '1', '868795200', 1, '1. Estimado cliente tener en cuenta que el peso puede variar, ya que se calcula con un consumo teórico.   \r\n2. No está contemplado galvanizado de tornillería en la oferta', 'Por lotes cada 4 días dependiendo de las entregas realizadas por el cliente.'),
(139, 27, '2024-04-15 14:02:06', 56, 3, '1', '4165', 1, 'Servicio de galvanizado en caliente para planos adjuntos. Tener en cuenta las medidas de nuestra Cuba. Si el material excede las medidas hay que revisar si ingresa por doble inmersión o si se debe enviar el material seccionado para poder glvanizarlo. Tube', ''),
(140, 28, '2024-04-15 14:09:45', 38, 2, '3', '2201.5', 1, 'TUBERIA DE 4MM Y 3MM (6UNIDADES)', ''),
(141, 29, '2024-04-15 14:14:26', 57, 2, '1', '1725.5', 1, 'VARILLAS CORRUGADAS 5/8. DOBLADO EN UNA PUNTA 6M', ''),
(142, 30, '2024-04-15 14:19:54', 58, 2, '1', '559300', 1, 'JAULAS', ''),
(143, 31, '2024-04-15 14:24:28', 59, 2, '1', '1927.8', 1, 'MODULOS JAULAS EN PLATINAS DE 1/4 Y 3/16', ''),
(144, 32, '2024-04-16 17:15:22', 61, 3, '1', '15771117.6', 1, 'Servicio de galvanizado en caliente con 85um que corresponden a 600gr/m2 para 122 tubos de 6 metros de 4-3-2 mm de espesor', ''),
(145, 33, '2024-04-17 14:02:26', 62, 3, '1', '135072140', 1, 'Servicio de galvanizado en caliente para 1200 tubos SCH 40 de 2\" a 6 metros de 3,5mm de espesor', ''),
(146, 34, '2024-04-19 08:18:20', 63, 3, '1', '2848503', 1, 'Servicio de galvanizado para 100 unds de varillas corrugadas 5/8 × 6mts', ''),
(148, 35, '2024-04-22 10:11:04', 64, 3, '1', '13923000', 1, 'Servicio de galvanizado por inmersión en caliente para rejillas de 4.5mm en alambre y 2mm en platina.', ''),
(149, 36, '2024-04-22 10:47:40', 65, 3, '1', '1428000', 1, '', ''),
(150, 37, '2024-04-23 10:18:48', 66, 2, '3', '36015350', 1, 'ITEM 2 PERFILES EN 3MM / ITEM 3 VIGAS Y TUB EN 4MM / ITEM 1 MALLAS EN DOBLE INMERSION', ''),
(151, 38, '2024-04-23 10:31:50', 67, 2, '1', '3522400', 1, 'CANALES 1/4', ''),
(152, 39, '2024-04-23 10:52:37', 68, 2, '1', '132090', 1, 'PLATINAS 5/16', ''),
(153, 40, '2024-04-23 11:15:04', 69, 2, '1', '6878200', 1, 'TUBERIA CAL. 16', ''),
(154, 41, '2024-04-23 11:47:37', 70, 2, '1', '40507600', 1, 'undefined', ''),
(155, 42, '2024-04-23 11:50:39', 71, 2, '1', '159460', 1, 'undefined', ''),
(156, 43, '2024-04-23 11:55:44', 72, 2, '1', '1777193.6', 1, 'undefined', ''),
(157, 44, '2024-04-23 12:08:19', 73, 2, '3', '4081390.6', 1, 'undefined', ''),
(158, 45, '2024-04-23 12:13:51', 74, 2, '1', '5610.85', 1, 'undefined', ''),
(159, 46, '2024-04-24 12:21:28', 75, 2, '1', '232050', 1, 'undefined', ''),
(160, 47, '2024-04-24 12:25:33', 68, 2, '1', '1130500', 1, 'undefined', ''),
(161, 48, '2024-04-24 12:29:51', 45, 2, '1', '3149335', 1, 'undefined', ''),
(162, 49, '2024-04-25 09:14:25', 76, 3, '1', '37770600', 1, 'undefined', ''),
(163, 50, '2024-04-25 12:40:52', 77, 2, '3', '25418400', 1, 'undefined', ''),
(164, 51, '2024-04-25 12:56:02', 78, 2, '1', '5093676', 1, 'undefined', ''),
(165, 52, '2024-04-25 14:01:33', 79, 2, '1', '5587.05', 1, 'Item 1: Accesorios para tuberia\r\nitem 2: Tuberia sch80', ''),
(170, 53, '2024-04-25 17:56:46', 82, 3, '1', '3239775', 1, 'Servicio de galvanizado en caliente para 59 und de ángulo de 1 1/2\" que mide 2.44 mts 59 und de ángulo de 2\" que mide 21.5 cm24 und de ángulo de 1\" que miden 59.5 cm  28 und ángulo entre 1\" y  1 1/2\" que miden 48.5 cm Estas piezas en su totalidad armarían', ''),
(171, 54, '2024-04-26 10:21:58', 80, 2, '1', '14480812.5', 1, 'ANGULOS 3/16X6M', ''),
(172, 55, '2024-04-26 11:49:22', 83, 2, '1', '1963.5', 1, 'ELEMENTOS CHIMENEA SEGUN PLANO. PRECIO POR KILOGRAMO PROCESADO', ''),
(173, 56, '2024-04-26 12:51:14', 84, 2, '3', '27489000', 1, 'NEG 14 TON REJILLAS 1*39CM EN 1/4', ''),
(175, 57, '2024-04-29 15:59:51', 85, 3, '1', '214200', 1, 'Servicio de galvanizado en caliente para una cadena. La misma deberá llegar sin calamina, pintura o cualquier recubrimiento. Y Deberá llegar blasteada.', ''),
(176, 58, '2024-04-30 07:49:59', 86, 3, '1', '99732710', 1, 'Servicio de galvanizado en caliente para soportes en perfiles HEA-HEB-IPE-W y platinas', ''),
(177, 59, '2024-05-02 09:33:24', 79, 3, '1', '12923400', 1, 'Servicio de galvanizado en caliente para 20 tubos x 6 metros.', ''),
(178, 60, '2024-05-02 10:35:08', 87, 2, '1', '10883145', 1, 'POSTES EN 2.5MM CON BRAZO', ''),
(179, 61, '2024-05-03 12:21:11', 88, 2, '1', '20563200', 1, 'TUBERIA ESTRUCTURAL CAL. 16', ''),
(180, 62, '2024-05-03 12:26:29', 53, 2, '1', '1785', 1, 'PLATINAS 230*50 EN 9MM Y CANALES DE 3\" X 5PRECIO POR KILOGRAMO PROCESADO', ''),
(181, 63, '2024-05-03 12:37:14', 89, 2, '1', '2499', 1, 'PRECIO POR KILOGRAMO PROCESADO. TUBO DE 6MM Y 3MM, PERFILES EN C 1.9MM', ''),
(182, 64, '2024-05-03 12:50:21', 90, 2, '1', '258825', 1, 'Lamina HR de  87.5 cm X 80 cm x 25mm (1Pul)', ''),
(183, 65, '2024-05-06 10:24:00', 91, 3, '1', '1413720', 1, 'Servicio de galvanizado para 10 spools de Proyecto ARC Providencia', ''),
(184, 66, '2024-05-06 10:24:50', 91, 3, '1', '282744', 1, 'Servicio de galvanizado en caliente para 6 Spools Proyecto ARC Victoria', ''),
(185, 67, '2024-05-07 09:31:22', 38, 2, '3', '5712000', 1, 'tuberia 100*100; 90*90 3mm y 76*38 en 2.5mm', ''),
(188, 68, '2024-05-09 09:35:30', 92, 3, '1', '24418800', 1, 'Servicio de galvanizado para perfiles IPE y HEA ', ''),
(189, 69, '2024-05-09 12:27:21', 37, 2, '1', '4522', 1, 'ITEM 1. TUBERIA CERRAMIENTO EN 3MM Y PLATINAS 1/8ITEM 2: CERCHAR EN TUBERIA ESTRUCTURAL DE 100*100 Y 50*50 EN 3MM X 6 M', ''),
(190, 70, '2024-05-09 12:29:24', 59, 2, '1', '1408960', 1, 'JAULAS ARMADAS. CONSUMO 5.8% PESO POR GANCHERA 320KG', ''),
(191, 71, '2024-05-09 14:11:07', 93, 2, '1', '2399040', 1, 'SOPORTES TORRES', ''),
(192, 72, '2024-05-10 08:11:04', 94, 3, '1', '3867.5', 1, 'Servicio de galvanizado en caliente para cerramiento refrigerado - Proyecto control remoto', ''),
(193, 73, '2024-05-14 09:49:10', 95, 3, '1', '3712.8', 1, 'Servicio de galvanizado en caliente para elementos de listado suministrado por el cliente. El material correspondiente a SCH deberá ser blasteado para retirar el recubrimiento que trae de fabrica. Tubos menores a 1\" no se pueden galvanizar. Material rosca', ''),
(194, 74, '2024-05-14 11:04:50', 96, 2, '1', '5833.38', 1, 'ITEM 1: POSTES 6MMITEM 2: POSTES 4MMITEM 3: POSTES 4.5MM', ''),
(195, 75, '2024-05-14 11:13:30', 78, 2, '3', '28750400', 1, 'REJILLAS 3/8', ''),
(196, 76, '2024-05-14 11:23:33', 97, 2, '1', '899640', 1, 'CANALES CAL. 16 350MM*M300MM*2400MM', ''),
(197, 77, '2024-05-14 12:06:41', 98, 2, '1', '6045.2', 1, 'BANDEJAS PORTACABLE CAL. 18', ''),
(198, 78, '2024-05-14 12:09:40', 74, 2, '1', '3027360', 1, 'PERFILES 60*40*3MM (50 UNIDADES)', ''),
(199, 79, '2024-05-14 16:34:24', 99, 2, '1', '8867404', 1, 'GRILLETESENTREGA: 5 DIAS HABILES\r\n\r\nPESO ESTIMADO DESPUES DE GALVANIZADO', ''),
(200, 80, '2024-05-16 09:44:40', 100, 3, '1', '3819.9', 1, 'Servicio de galvanizado en caliente para proyecto ADAMA. Precio valido si se cancela con anticipo. De lo contrario el precio será para inm. sencilla: $1.514/kg+IVA y para inm. doble: $1.741/kg+IVA. El tiempo de entrega aumenta 4 días más para inm doble.', ''),
(201, 81, '2024-05-16 11:27:51', 101, 3, '1', '1428000', 1, '', ''),
(202, 82, '2024-05-16 12:42:50', 61, 3, '1', '16403674', 1, 'Cotización para galvanizado en caliente de perfiles C de 2.5mm - Con 85 m', '4 días hábiles sin contar el día que llega el material. '),
(241, 121, '2024-05-31 09:10:40', 131, 2, '1', '4016.25', 1, 'VIPAS IPE. CONSUMO ESTIMADO DE 3.5%PRECIO POR KILOGRAMO PROCESADO', '2-3 DIAS HABILES'),
(203, 83, '2024-05-17 08:23:32', 91, 3, '1', '282744', 1, 'Galvanizado en caliente para proyecto ARC VICTORIA', ''),
(204, 84, '2024-05-17 11:57:02', 38, 2, '3', '678300', 1, 'TUB 100*100 2MM (8 UND)', ''),
(205, 85, '2024-05-17 12:05:17', 102, 2, '1', '13639827.6', 1, 'TUB 3\" SCH 80', ''),
(206, 86, '2024-05-17 12:11:36', 103, 2, '1', '5355', 1, 'Item 1: Tuberia andamioItem 2: Plataformas y escalerasPRECIO, KILOGRAMO PROCESADO', ''),
(207, 87, '2024-05-17 12:32:10', 104, 2, '1', '6912591', 1, 'PLATAFORMAS EN TUBERIA 80*40 CAL. 16 EN 6 METROS. PESO ESTINTIMADO DESPUES DE GALVANIZADO', ''),
(208, 88, '2024-05-17 12:42:44', 43, 2, '1', '466004', 1, 'COLLARINES ANTIVADALICOS 4.5MM DE ESPESOR', ''),
(209, 89, '2024-05-17 12:48:12', 105, 2, '1', '2261', 1, 'TUB 60*40*3MM (50 UNIDADES)', ''),
(210, 90, '2024-05-17 12:52:24', 106, 2, '1', '1963.5', 1, 'VIGAS IPE 160. CONSUMO 4.2% ESTIMADO', ''),
(211, 91, '2024-05-17 15:55:03', 107, 2, '1', '8068.2', 1, 'ITEM 1 ANGULO 1/8 (CONSUMO 5.35%)  /ITEM 2: TUBERIA EN 1.5MM (11%)ITEM 3: TUBEIA EN 2MM (7.5%)', ''),
(212, 92, '2024-05-17 15:58:59', 96, 2, '1', '95799518.43', 1, 'ITEM 1 TAPAS CAL. 16ITEM 2: BANDEJAS CAL 12 (8.9%)', ''),
(213, 93, '2024-05-22 12:14:01', 109, 3, '1', '696150', 1, 'Servicio de galvanizado por inmersión en caliente para cerchas en ángulo de 1/8\"', ''),
(214, 94, '2024-05-22 12:30:11', 110, 3, '1', '19767090', 1, '', ''),
(215, 95, '2024-05-22 12:35:09', 91, 3, '1', '347480', 1, '', ''),
(216, 96, '2024-05-22 12:40:45', 111, 3, '1', '1621970', 1, '', ''),
(217, 97, '2024-05-22 12:48:12', 112, 3, '1', '2665600', 1, 'Servicio de galvanizado en caliente para soporte redondo', ''),
(218, 98, '2024-05-23 10:55:23', 113, 2, '1', '4858056', 1, 'VIGAS HEA 160, ANGULOS 3/16 Y PERFIL EN C EN 3/16', ''),
(219, 99, '2024-05-23 11:03:44', 114, 2, '1', '5183045', 1, 'CANAL 3\" 6M. 73 UNIDADESPESO ESTIMADO DESPUES DE GALVANIZADO. CONSUMO DE ZINC 3.7%', ''),
(220, 100, '2024-05-23 11:12:41', 115, 2, '1', '15856750', 1, 'SEGUN LISTADO PTE 3MM Y 2MM. CONSUMO ESTIMADO 6.5%', ''),
(221, 101, '2024-05-24 15:50:31', 53, 3, '1', '101483200', 1, '', 'A convenir con el cliente, por el re-proceso que lleva el material (quemado)'),
(222, 102, '2024-05-24 16:37:15', 61, 3, '1', '116818373', 1, '', '4 días hábiles sin contar el día que llega el material.'),
(223, 103, '2024-05-27 14:46:29', 116, 3, '1', '4272695', 1, 'Servicio de galvanizado en caliente para 120 ángulos de 6metros de 1/8\"', 'El material se entregará 5 días hábiles después del 11 de Junio debido a cierre de galvanizado por cambio de cuba.'),
(224, 104, '2024-05-27 15:39:24', 117, 2, '1', '52062500', 1, 'TUBERIA REDONDA DE 2\" EN 4MM ', 'A CONVENIR'),
(225, 105, '2024-05-27 15:47:12', 118, 2, '1', '4402048', 1, 'PLATAFORMAS ANDAMIO CAL. 16 CONSUMO 10%', '2 DIAS HABILES'),
(226, 106, '2024-05-27 16:10:13', 119, 2, '1', '2677.5', 1, 'SOPORTES EN TUBERIA DE 2MM. CONSUMO ESTI MADO 7.6%', '2 DIAS HABILES'),
(227, 107, '2024-05-27 16:12:58', 74, 2, '1', '228480', 1, '4 TUBOS EN 3MM CONSUMO ESTIMADO 5.8%', '2 DIAS HABILES'),
(228, 108, '2024-05-28 07:34:23', 120, 3, '1', '7113820', 1, 'El material deberá tener puntos de izaje en cada varilla esto con el fin de poder ingresarlas a la cuba de galvanizado.', '6 días hábiles después del 11 de Junio debido a cambio de cuba que se esta realizando en estos momentos.'),
(229, 109, '2024-05-28 10:32:20', 121, 3, '1', '10132612', 1, 'El material deberá tener puntos de izaje en cada varilla esto con el fin de poder ingresarlas a la cuba de galvanizado.', '6 días hábiles después del 11 de Junio debido a cambio de cuba que se esta realizando en estos momentos.'),
(230, 110, '2024-05-29 12:40:10', 122, 2, '1', '2201.5', 1, 'POSTES TUB 6\" EN 3MM. VONSUMO ESTIMADO 5.3%', 'DOS DIAS HABILES'),
(231, 111, '2024-05-29 12:44:04', 33, 2, '1', '1892.1', 1, 'ANGULOS 1/4 CONSUMO ESTIMADO 4%', 'DOS DIAS HABILES'),
(232, 112, '2024-05-29 14:26:09', 123, 2, '1', '1963.5', 1, 'CANALES EN 6\" *6.5M. CONSUMO ESTIMADO 4.2%', '2 DIAS HABILES'),
(233, 113, '2024-05-29 14:36:37', 124, 2, '1', '2106300', 1, 'VIPA IPE 600 DE 7MPESO ESTIMADO DESPUES DE GALVANIZADO, CON CONSUMO ESTIMADO DE ZINC DE 3.5%', 'DOS A TRES DIAS HABILES'),
(234, 114, '2024-05-29 16:38:21', 125, 2, '1', '2380', 1, 'SOPORTES MOLINO.SE COBRA PESO PROCESADO DESPUES DE GALVANIZADO', '2 DIAS HABILES'),
(235, 115, '2024-05-30 15:23:19', 126, 2, '1', '2598960', 1, 'REJILLAS 1/4. CONSUMO 4.48%', '2 - 3 DIAS HABILES'),
(236, 116, '2024-05-30 15:28:16', 127, 2, '1', '1130500', 1, 'PERFILES 60*40 EN 3MM. CONSUMO ESTIMADO 5.7%', '2-3 DIAS HABILES'),
(237, 117, '2024-05-30 15:34:20', 128, 2, '1', '559300', 1, '6 TUB 1 1/2 SCH 160 / 1 TUB 2\" SCH160. CONSUMO ESTIMADO 8%', '2-3 DIAS HABILES'),
(238, 118, '2024-05-30 16:03:12', 129, 2, '1', '8334545.8', 1, 'ITEM 1: VARILLAS DE 1/2 Y 3/8 LISAITEM 2: TUB REDONDA DE 3MMITEM 3: TUB 2.5MM', 'A CONVENIR'),
(240, 120, '2024-05-31 09:09:20', 131, 2, '1', '1683.85', 1, 'ITEM 1: PLACAS. CONSUMO 3%', '2-3 DIAS HABILES'),
(239, 119, '2024-05-30 16:23:26', 130, 2, '1', '4093.6', 1, 'ITEM 1: VARILLA LISA 9MMITEM 2: TUBERIA EN 2.5MM', '2-3 DIAS HABILES'),
(242, 122, '2024-05-31 12:15:16', 132, 3, '1', '1523200', 1, '', 'Entrega inmediata'),
(243, 123, '2024-05-31 14:36:16', 78, 2, '1', '25418400', 1, 'TUB CERRAMIENTO DE 4MM. CONSUMO ESTIMADO 4.8%', '2-3 DIAS HABILES'),
(244, 124, '2024-05-31 15:32:28', 133, 3, '1', '45130750', 1, 'El material requiere perforaciones para colgar. El material deberá estar libre de pintura, calamina o cualquier recubrimiento', '5 días hábiles después del 11 de Junio, debido a cierre de galvanizado. Dependiendo del día que llegue.'),
(245, 125, '2024-06-05 08:11:43', 134, 3, '1', '1428000', 1, '', 'Entrega Inmediata. Agendar cita con logística para recoger.'),
(246, 126, '2024-06-05 09:55:36', 135, 3, '1', '644385', 1, 'El material requiere perforaciones para drenaje de zinc y salida de vapores', '6 días hábiles después del 12 de Junio. Si el material no tiene perforaciones requeridas el tiempo se dilatará.'),
(247, 127, '2024-06-05 10:34:20', 136, 3, '1', '2249.1', 1, 'El material deberá tener perforaciones para colgar, si no las tiene el tiempo de entrega se dilatará.', '6 días hábiles después del 12 de Junio debido a cierre de operaciones por mantenimiento'),
(248, 128, '2024-06-07 12:15:13', 137, 2, '1', '925344', 1, 'COLLARINES 4% CONSUMO ESTIMADO', '2 DIAS HABILES'),
(249, 129, '2024-06-07 12:20:46', 138, 2, '1', '9520000', 1, 'HORIZONTALES ANDAMIO. CONSUMO ESTIMADO. 6.2%', '2 DIAS'),
(250, 130, '2024-06-07 12:22:45', 33, 2, '1', '1892100', 1, 'ANGULO 1 1/2*1/4. CONSUMO ESTIMADO 4%', '2 DIAS'),
(251, 131, '2024-06-07 12:24:39', 38, 2, '1', '2380', 1, 'TUB 90*50 CAL. 2.5MM (20 UND). CONSUMO ESTIMADO 6.16%', '2 DIAS'),
(252, 132, '2024-06-07 12:28:17', 139, 2, '1', '1725.5', 1, 'LAMINAS EN 5/8 Y 3/8. CONSUMO ESTIMADO 3% ', '2 DIAS'),
(253, 133, '2024-06-07 12:37:05', 140, 2, '1', '416500', 1, 'DUCTO CAL. 16. 400 KG CAL. 16', '2 DIAS'),
(254, 134, '2024-06-07 12:40:42', 141, 2, '1', '1666000', 1, 'REJILLA EN 3/4 2-08 1.74. 400 KG', ''),
(255, 135, '2024-06-07 12:45:48', 142, 2, '1', '606424', 1, 'TUB SCH 40 EN 8 Y 12\" CONSUMO ESTIMADO 5%', '2 DIAS'),
(256, 136, '2024-06-07 15:42:51', 143, 2, '1', '17548781.25', 1, 'SEGUN LISTADO DE MATERIALES. CONSUMO ES ESTIMADO DE 5.5%PESO ESTIMADO DESPUES DE GALVANIZADO', '2-3 DIAS HABILES'),
(257, 137, '2024-06-07 16:23:56', 144, 3, '1', '304640', 1, 'El material requiere perforaciones para colgar ', '6 días hábiles después del 12 de junio  sin contar el día que llega el material'),
(258, 138, '2024-06-11 12:39:29', 145, 2, '1', '1570800', 1, 'SOPORTE CARRO CABALLO. CONSUMO ESTIMADO 7%', '2 DIAS'),
(259, 139, '2024-06-11 12:45:31', 146, 2, '1', '3022.6', 1, 'MALLA ELECTROSOLDADA. 1.17*6M EN 6MM DE ESPESOR. CONSUMO ESTIMADO DE ZINC 9%', '2 DIAS HABILES'),
(260, 140, '2024-06-11 14:17:04', 147, 2, '1', '2284.8', 1, 'LAMINAS ALFAJOR 1/8 0.50M*2.8M. CONSUMO ESTIMADO 5.35%', '2 DIAS HABILES'),
(261, 141, '2024-06-11 14:22:27', 148, 2, '1', '1844.5', 1, 'VARILLAS LISAS 1/14*6 Y ANGULOS 1/4. CONSUMO 3.5%\r\nPRECIO POR KILOGRAMO PROCESADO', '2-3 DIAS HABILES'),
(262, 142, '2024-06-11 15:12:14', 143, 2, '1', '154716660', 1, 'ESTRUCTURA SEGUN CUADRO GENERAL. CONSUMO ESTIMADO DE ZINC 3.8%PESO ESTIMADO DESPUES DE GALVANIZADO', 'A CONVENIR. PARCIALES A PARTIR DEL 2 DIA DE RECIBIDO EL MATERIAL EN PLANTA'),
(263, 143, '2024-06-12 07:31:45', 149, 2, '1', '12840873.5', 1, 'ANGULO H.R. A572 G/50 3/16 x 1.1/2\" x 6M = 380 unidades, Peso aprox = 16.08 kg c/uPESO ESTIMADO DESPUES DE GALVANIZADO. CONSUMO ESTIMADO 4.5%', '2-3 DIAS HABILES'),
(264, 144, '2024-06-13 12:47:38', 151, 3, '1', '4581500', 1, 'El material deberá tener perforaciones para drenaje y salida de vapores. ', '6 días hábiles sin contar el día que llega el material.'),
(265, 145, '2024-06-13 12:48:45', 152, 2, '1', '2394984.48', 1, 'DE ACUERDO A LISTADO.CONSUMO ESTIMADO 3.5%PESO ESTIMADO DESPUES DE GALVANIZADO', '2 DIAS HABILES'),
(266, 146, '2024-06-13 12:55:25', 107, 2, '1', '609280', 1, 'PLACAS EN 1/4.', '2 DIAS HABILES'),
(267, 147, '2024-06-13 14:11:49', 107, 2, '1', '11851329', 1, 'cerramiento, segun listado. Consumo estimado 4.93%', '2-3 dias habiles'),
(268, 148, '2024-06-13 14:19:50', 153, 2, '1', '1627920', 1, 'IPE 240 DE 7.5M', '2-3 DIAS'),
(269, 149, '2024-06-13 14:27:15', 154, 2, '1', '2558.5', 1, 'PORTICOS 2.112*1550MM TUB 4 Y 3MM. CONSUMO ESTIMADO 5.2%', '2-3 DIAS'),
(270, 150, '2024-06-13 14:33:09', 33, 2, '1', '1904', 1, 'ANGULO 3/16PLATINAS 3/16VARILLAS 1/2COMSUMO ESTIMADO 4%', '2-3 DIAS HABILES'),
(271, 151, '2024-06-13 14:37:34', 155, 2, '1', '6518225', 1, 'segun listado. material para barandas. Consumo estimado 4.8%', '2 dias habiles'),
(272, 152, '2024-06-13 15:54:22', 156, 2, '1', '12840873.5', 1, 'ANGULOS 1.1/2*3/16PESO ESTIMADO DESPUES DE GALVANIZADO.CONSUMO ESTIMADO 4.5%', '2-3 DIAS HABILES'),
(273, 153, '2024-06-13 16:20:00', 157, 2, '1', '967113', 1, 'PLATINAS 1/8. CONSUMO ESTIMADO 5.4%', '2-3 DIAS'),
(274, 154, '2024-06-13 16:21:17', 42, 2, '1', '6461.7', 1, 'MARCOS EN TUBERIA CAL. 16. CONSUMO ESTIMADO 12% 3M*2M', '2-3 DIAS'),
(275, 155, '2024-06-13 16:31:28', 158, 2, '1', '1677.9', 1, 'PLATINAS 8\"X16\" EN 0.5\"PLATINAS 5.125\"X13\" EN 0.25\"CONSUMO 3%', '2-3 DIAS'),
(276, 156, '2024-06-14 11:28:25', 159, 3, '1', '64601292', 1, 'El material deberá tener perforaciones para colgar y para drenaje de zinc y salida de vapores.  ', '9 días hábiles sin contar el día que llega el material, por ser de doble inmersión.'),
(277, 157, '2024-06-14 11:45:03', 160, 3, '1', '1028160', 1, 'Si el material requiere deben realizarce perforaciones para drenaje de zinc, salida de vapores o para colgar', '6 días hábiles sin contar el día que llega el material.'),
(278, 158, '2024-06-17 11:15:20', 85, 3, '1', '134946000', 1, 'El material deberá tener perforaciones para drenaje de zinc y salida de vapores', '10 días hábiles sin contar el día que llega el material'),
(279, 159, '2024-06-18 14:36:42', 162, 3, '1', '1428000', 1, '', 'Entrega inmediata después del pago'),
(280, 160, '2024-06-18 15:01:23', 163, 3, '1', '2380', 1, 'Precio ofertado por kilo   IVA. El precio de podrá ajustar cuando se tenga información completa del material a galvanizar.', 'Se acordará el tiempo de entrega cuando se inicie el proceso y se tenga mayor información del proyecto'),
(281, 161, '2024-06-18 17:23:51', 230, 3, '1', '257575500', 1, 'El material deberá tener perforaciones para colgar, drenaje de zinc o salida de vapores. Si no cuenta con estas, Polyuprotec podrá realizarlas las cuales tienen un costo adicional. Tener en cuenta que la falta de perforaciones dilata el tiempo de entrega.', 'El tiempo de entrega será de 4 días por cada 30 ton o se ajustará según las entregas realizadas por el cliente'),
(282, 162, '2024-06-19 12:29:53', 165, 2, '1', '2516850', 1, 'PLATINAS EN 1/2\". CONSUMO ESTIMADO DE 3%', '2 DIAS HABILES'),
(283, 163, '2024-06-19 14:57:12', 166, 2, '1', '2082.5', 1, 'MARCOAS Y LAMINAS, ANGULOS Y TUB 4MM. CONSUMO ESTIMADO 4.8%', '2 DIAS HABILES'),
(284, 164, '2024-06-19 15:22:01', 52, 2, '1', '2689.4', 1, 'BARANDAS. CONSUMO 7.53%', '3 DIAS'),
(285, 165, '2024-06-20 14:18:19', 61, 3, '1', '1781215800', 1, 'Tenemos capacidad para galvanizar 250 ton mes o hasta 600 ton mes solo de Acesco, según solicitud de ustedes. \r\n\r\nPrecio valido hasta el mes de Agosto. Para los siguientes meses el precio se deberá revisar nuevamente', 'A convenir de acuerdo a las entregas realizadas por el cliente.'),
(286, 166, '2024-06-21 09:17:18', 167, 2, '1', '1855507500', 1, 'CUBIERTAS PLANTA COCA COLA CARTAGENA. CERCHAS PRIMERA ETAPA EJECUTADA EN 2019. CONSUMO ESTIMADO 5%', 'A CONVENIR'),
(287, 167, '2024-06-21 09:41:18', 168, 3, '1', '261800', 1, 'Servicio de Transporte cotizado por trayecto. ', ''),
(288, 168, '2024-06-21 09:56:10', 162, 3, '1', '2057510', 1, 'El material deberá llegar libre de pintura. ', '15 días hábiles sin contar el día que llega el material.'),
(289, 169, '2024-06-21 10:15:08', 169, 3, '1', '5890.5', 1, 'El material deberá tener perforaciones para drenaje de zinc y salida de vapores. ', 'El tiempo de entrega dependerá de las entregas realizadas por el cliente'),
(290, 170, '2024-06-21 13:51:09', 170, 2, '1', '1530340', 1, '', ''),
(291, 171, '2024-06-21 15:55:22', 171, 2, '3', '86439815', 1, 'ESTRUCTURA CEMEX, SEGUN LISTADO, CONSUMO ESTIMADO 3.4%PRECIO JULIO-AGOSTO', 'CON CADA REMISIÓN DOS DIAS HABILES'),
(292, 172, '2024-06-24 11:53:12', 171, 2, '3', '163367365', 1, 'TORRES ELECTRICAS. CONSUMO DEL 4.2% ESTIMADO. INCLUYE TRANSPORTE.PESO ESTIMADO DESPUES DE GALVANIZADO.PRECIO JULIO-AGOSTO', 'A CONVENIR. ENTREGAS PARCIALES CADA DOS DIAS HABILES'),
(293, 173, '2024-06-25 09:14:05', 172, 3, '1', '7140', 1, 'El material deberá llegar libre de calamina, galvanizado anterior, pintura o cualquier tipo de recubrimiento', '8 días hábiles, sin contar el día que llega el material'),
(294, 174, '2024-06-25 10:35:43', 91, 3, '1', '18243949.5', 1, 'El acta de aceptación deberá ser enviado en un plazo máximo de 48 horas después de realizado el despacho. Proyecto CAPS-CF S ', '8 días hábiles teniendo en cuenta que el material siempre presenta reprocesos'),
(295, 175, '2024-06-25 12:45:36', 130, 2, '1', '1677.9', 1, 'VARILLAS DE 5/8. CONSUMO ESTIMADO DE 3%', '2 DIAS HABILES'),
(296, 176, '2024-06-25 12:59:14', 41, 2, '1', '651168', 1, 'TUBERIA 2MM. CONSUMO ESTIMADO 7.53%', '2 DIAS HABILES'),
(297, 177, '2024-06-25 13:01:47', 37, 2, '1', '1999.2', 1, 'SOPORTES EN ANGULO 3/16 Y 1/4. CONSUMO ESTIMADO 4.5%', '2 dias hábiles'),
(298, 178, '2024-06-25 13:55:46', 153, 2, '1', '2570.4', 1, 'rejillas en marco de 1/4 y varilla 1/8. 7% consumo', '2-3 dias habiles'),
(299, 179, '2024-06-27 16:59:04', 173, 3, '1', '357000', 1, '', 'Entrega inmediata'),
(300, 180, '2024-07-02 15:06:18', 174, 3, '1', '2408560', 1, 'Si el material requiere perforaciones para colgar o para drenaje de zinc y salida de vapores el tiempo de entrega se dilatará 2 o 3 días más, dependiendo de la cantidad de perforaciones que se requiere. El material deberá llegar libre de calamina o cualqu', '4 días hábiles sin contar el día que llega el material'),
(301, 181, '2024-07-03 16:47:11', 142, 3, '1', '546210', 1, '', '4 días hábiles sin contar el día que llega el material.'),
(302, 182, '2024-07-05 10:22:35', 175, 3, '1', '2057510', 1, 'El material deberá llegar libre de pintura.', '15 días hábiles sin contar el día que llega el material.'),
(303, 183, '2024-07-05 12:05:45', 176, 3, '1', '8377.6', 1, 'El material deberá tener perforaciones para drenaje de zinc, salida de vapores y para colgar. ', '4 días para inmersión sencilla y 8 días para inmersión doble.'),
(304, 184, '2024-07-05 13:06:37', 177, 3, '1', '10499132', 1, 'El material deberá tener perforaciones para colgar, para drenaje de zinc y salida de vapores', '4 días hábiles sin contar el día que llega el material'),
(305, 185, '2024-07-05 13:15:59', 178, 3, '1', '4069800', 1, 'El material deberá tener puntos de izaje.', '3 DÍAS HÁBILES SIN CONTAR EL DÍA QUE LLEGA EL MATERIAL'),
(306, 186, '2024-07-05 15:29:55', 179, 3, '1', '1428000', 1, '', 'Entrega inmediata'),
(307, 187, '2024-07-08 10:23:24', 77, 2, '3', '14184800', 1, 'Mástiles en 9mm y 1/4. consumo estimado 3.8%', ''),
(308, 188, '2024-07-08 16:36:13', 181, 3, '1', '2011.1', 1, 'Precio ofertado para material de 9mm, si el material contiene elementos de otros espesores, el precio se deberá revisar. ', '4 días hábiles, siempre y cuando el material tenga perforaciones para drenaje y para colgar si lo requiere.'),
(309, 189, '2024-07-08 16:52:56', 182, 3, '1', '3808', 1, 'Galvanizado en caliente para paso de fauna. El material deberá tener perforaciones para drenaje de zinc y salida de vapores.', '5 días hábiles sin contar el día que llega el material.'),
(310, 190, '2024-07-10 13:29:02', 91, 3, '1', '2615382', 1, '', '8 días hábiles'),
(311, 191, '2024-07-11 08:56:32', 183, 2, '1', '2130.1', 1, 'POSTES EN 3MM DE ESPESOR. CONSUMO ESTIMADO DE ZINC 5.5%', 'DOS A TRES DIAS HABILES, CONTADOS A PARTIR DE RECIBIDO EL MATERIAL EN PLANTA'),
(312, 192, '2024-07-11 09:21:15', 164, 3, '1', '2950010', 1, '', ''),
(313, 193, '2024-07-15 10:39:07', 184, 3, '1', '2558.5', 1, '', '3 días hábiles, si el material cuenta con las perforaciones requeridas para colgar, para drenaje y salida de vapores'),
(314, 194, '2024-07-15 12:18:13', 185, 2, '1', '23990400', 1, 'ESTANTERIA', '2-3 DIAS'),
(315, 195, '2024-07-15 12:23:30', 186, 2, '1', '5616.8', 1, 'ANDAMIO MULTIDIRECCIONAL', '2-3 DIAS HABILES'),
(324, 204, '2024-07-15 14:37:28', 189, 2, '1', '1939.7', 1, 'MONOPOLOS Y ACCESORIOS. CONSUMO ESTIMADO 4.5%', '2-3 DIAS HABILES'),
(323, 203, '2024-07-15 14:32:13', 130, 2, '1', '3094', 1, 'TUB REC 1.5 MM ESPESOR. CONSUMO ESTIMADO10%', '2-3 DIAS HABILES'),
(322, 202, '2024-07-15 14:30:12', 188, 2, '1', '191590000', 1, 'TORRES. CONSUMO 4.5%', 'A CONVENIR'),
(321, 201, '2024-07-15 14:25:00', 187, 2, '1', '6466460', 1, 'CONJUNTO DE 5.5M  VIGA HEA. CONSUMO ESTIMADO 3.2%', '2-3 DIAS'),
(320, 200, '2024-07-15 12:28:43', 57, 2, '1', '1808800', 1, 'VIGAS HEA 100; ANGULOS 3/8; CANAL 4\". CONSUMO ESTIMADO 4%', '2-3 DIAS HABILES'),
(325, 205, '2024-07-17 10:19:43', 191, 3, '1', '6033300', 1, 'El material deberá llegar libre de pintura, calamina o cualquier recubrimiento y contar con perforaciones para drenaje de zinc, salida de vapores o para colgar. \r\nEl material corresponde a 16 vigas de 8mts', '4 días hábiles sin contar el día que llegue el material a planta en caso de no tener el tiempo de entrega se dilatará dependiendo del servicio adicional. '),
(326, 206, '2024-07-17 10:41:46', 191, 3, '1', '2047395', 1, 'El material deberá llegar libre de pintura, calamina o cualquier recubrimiento y contar con perforaciones para drenaje de zinc, salida de vapores o para colgar. Consumo 3%', '4 días hábiles sin contar el día que llega el material, en caso de no tener el tiempo de entrega se dilatará dependiendo del servicio adicional'),
(327, 207, '2024-07-17 11:01:12', 191, 3, '1', '523600', 1, 'Cotización por servicio de recogida de material en negro y entrega de material galvanizado', 'Se debe agendar cita con Miguel Martinez al 3132853479'),
(328, 208, '2024-07-17 12:56:35', 149, 3, '1', '12217968', 1, 'El material deberá llegar libre de pintura y deberá tener perforaciones para colgar, para drenaje de zinc y salida de vapores, si no cuenta con ellas el tiempo de entrega se dilatará.  Material con 85micras', '4 días hábiles sin contar el día que llega el material. 85 micras'),
(329, 209, '2024-07-18 14:18:35', 192, 3, '1', '664020', 1, '', '4 días'),
(330, 210, '2024-07-19 11:16:42', 193, 2, '3', '5712297.5', 1, 'SEGUN LISTADO. CONSUMO 3.5%', '2-3 DIAS HABILES'),
(331, 211, '2024-07-19 12:26:13', 194, 2, '1', '2272.9', 1, 'LAMINAS EN 2.5MM', '2-3 DIAS HABILES'),
(332, 212, '2024-07-19 12:28:58', 38, 2, '3', '2118.2', 1, 'TUB RED 3\" - 3 Y 4MM. CONSUMO ESTIMADO 5.2%', '2-3 DIAS'),
(333, 213, '2024-07-19 12:47:00', 195, 2, '1', '6664', 1, 'BANDEJAS PORTACABLES CAL. 18', '5 DIAS'),
(334, 214, '2024-07-19 12:50:49', 93, 2, '1', '11638200', 1, 'REJILLAS 3/16', '2-3 DIAS'),
(335, 215, '2024-07-19 14:54:41', 53, 3, '1', '1428000', 1, '', 'Entrega inmediata'),
(336, 216, '2024-07-22 12:42:51', 164, 3, '1', '940100000', 1, 'Proyecto Rebolo - El peso final podrá variar ya que el material después de galvanizado tiene un incremento en el peso', '1 mula de 19 ton cada 2 días.'),
(337, 217, '2024-07-22 13:53:26', 196, 2, '1', '3534300000', 1, 'TORRES DE TRANSMISION. 4.5% - EXTRAGALVANIZADO PRESUPUESTO', 'PARA PRESUPUESTO'),
(338, 218, '2024-07-22 14:02:57', 38, 2, '3', '516460', 1, 'TUBERIA 100*50 CAL. 2MM. CONSUMO ESTIMADO 7.53%', '2-3 DIAS'),
(339, 219, '2024-07-22 14:12:15', 197, 2, '1', '4200.7', 1, 'DUCTOS. CAL 18. CONSUMO ESTIMADO 15%', '3 DIAS HABILES'),
(340, 220, '2024-07-22 14:20:21', 198, 2, '1', '2380', 1, '3 TUBOS DE 2M TUBERIA AGUA NEGRA 3\"', ''),
(341, 221, '2024-07-23 12:47:42', 199, 2, '1', '10367220.5', 1, 'SEGUN LISTADO. CONSUMO 4.92%', ''),
(342, 222, '2024-07-23 15:33:21', 164, 3, '1', '220150000', 1, 'Proyecto Arroz Diana - El peso final podrá variar ya que el material después de galvanizado tiene un incremento en el peso. Se solicita el envío de cantidades en números pares', '8 ton cada dos días, sin contar el día que llega el material. '),
(343, 223, '2024-07-23 16:33:06', 133, 3, '1', '3391.5', 1, 'El material debe llegar libre de pintura o rocío de pintura y con perforaciones para drenaje y salida de vapores según lo requiera el material.', '4 Días hábiles. Si el material requiere perforaciones para drenaje el tiempo se dilatará 3 días más'),
(344, 224, '2024-07-23 16:42:58', 200, 3, '1', '284172', 1, 'El material debe llegar libre de pintura o rocío de pintura y con perforaciones para drenaje y salida de vapores según lo requiera el material.', '3 días hábiles sin contar el día que llegue el material. Si el material requiere perforaciones para drenaje el tiempo se dilatará 3 días más'),
(345, 225, '2024-07-23 16:53:04', 79, 3, '1', '6810965', 1, 'El material debe llegar libre de pintura o rocío de pintura y con perforaciones para drenaje y salida de vapores según lo requiera el material.', '6 Días hábiles sin contar el día que llega el material.'),
(346, 226, '2024-07-23 17:01:18', 202, 3, '1', '1051008', 1, 'El material debe llegar libre de pintura o rocío de pintura y con perforaciones para drenaje y salida de vapores según lo requiera el material.', '4 Días hábiles sin contar el día que llega el material. Si requiere perforaciones para colgar el tiempo se dilatará 3 días más'),
(347, 227, '2024-07-24 16:56:13', 203, 3, '1', '67645359.6', 1, 'El material deberá contar con perforaciones para drenaje y salida de vapores según lo requiera el material. Y deberá llegar libre de pintura o cualquier recubrimiento. Si el material requiere perforaciones para el proceso, el tiempo se dilatará 3 días más', '4 días hábiles para inmersión sensible y 8 días para doble inmersión , sin contar el día que llega. '),
(348, 228, '2024-07-25 12:55:43', 186, 2, '1', '28788480', 1, 'REJILLAS COMPUESTAS EN 3/8 DOBLE INMERSION ', '3 DIAS HABILES'),
(349, 229, '2024-07-25 13:02:25', 205, 2, '1', '1904', 1, 'POSTES MONOPOLO MAYOR A 3/8 DE ESPESOR. BARRANQUILLA', 'A CONVENIR.'),
(350, 230, '2024-07-26 09:19:14', 206, 2, '1', '1071000', 1, 'LAMINAS EN 3/16 Y 1/8', '2-3 DIAS HABILES'),
(351, 231, '2024-07-26 09:33:55', 207, 2, '1', '606900', 1, 'rejillas en angulo 3/16', '2-3 dias'),
(352, 232, '2024-07-26 15:08:55', 201, 3, '1', '12658625', 1, 'Tener en cuenta que el material deberá contar con perforaciones para drenaje y salida de vapores. Si el material no las tiene el tiempo se dilatará. Esta oferta no contempla galvanizado para pernos, o material para centrigufado', '4 días hábiles sin contar el día que llega el material.'),
(353, 233, '2024-07-29 15:21:33', 129, 2, '3', '26664092', 1, 'BARRAS 1/2X6 M. CONSUMO ESTIMADO DEL 3.3%', '3-4 DIAS HABILES'),
(355, 234, '2024-07-31 11:57:10', 208, 2, '1', '6497.4', 1, 'ITEM 1: POSTES CUADRADOS, VIGAS (ESTRUCTURA PESADO CON CONSUMO PROMEDIODE CINC DE 3.2%)ITEM 2: DOBLE INMERSION ESTRUCTURA PESADAITEM 3: ESCALERAS, PLATAFORMAS, BARANDAS (ESTRUCTURA LIVIANA CON CONSUMOPROMEDIO DE CINC 9%)', 'A CONVENIR'),
(356, 235, '2024-08-01 12:24:52', 209, 3, '1', '161517510', 1, 'El material deberá tener perforaciones para drenaje, salida de vapores y libre de cualquier recubrimiento, sea pintura, rocío etc.', '4 días hábiles cada 30 ton, si el material no tiene novedades'),
(357, 236, '2024-08-01 14:07:43', 210, 2, '1', '14988288', 1, 'REJILLAS Ancho:1,93m; Alto:2,43m; profundidad:0,3m Según imágen. \r\nConsumo estimado 4%\r\nCanal 6\" Viga IPE, Platinas 1/2 y 3/8\r\nPeso estimado. despues de galvanizado', '3-4 DIAS HABILES'),
(358, 237, '2024-08-01 14:34:09', 52, 2, '1', '7425600', 1, 'BARANDAS EN TUBERIA REDONDA 2MM. CONSUMO ESTIMADO 7%', '3 DIAS HABILES'),
(359, 238, '2024-08-01 14:43:00', 211, 2, '3', '40162500', 1, 'ANGULOS 3/4.. CONSUMO ESTIMADO 3%', 'PARCIALES 3 DIAS HABILES CON CADA REMISIÓN'),
(360, 239, '2024-08-01 14:51:18', 212, 2, '1', '2591225', 1, 'chasis en tuberia de 2.5mm. 1.654mm*3229mm. Consumo estimado 7%, Improductividad por peso.Peso estimado despues de galvanizado', '3-4 dias habiles'),
(361, 240, '2024-08-01 14:57:03', 188, 2, '3', '1963.5', 1, 'POSTES 3/4. 48\" DE DIAMETRO. PLANTA BARRANQUILLA 2 UNIDADES', 'A CONVENIR'),
(362, 241, '2024-08-01 15:01:17', 130, 2, '3', '1666', 1, 'VARILLAS DE 9MM Y 12MM. CONSUMO ESTIMADO 3%', '3 DIAS HABILES'),
(363, 242, '2024-08-01 16:20:26', 37, 2, '3', '19439602', 1, 'ITEM 1: VIGAS Y COLUMNAS PERFIL TUB 2MM SOPORTES LUMINARIAS EN ANGULO DE 9MM.ITEM 2: CERCHAS TUBERIA PERFIL TUB 2MM Y 4MM DOBLE INMERSIONPESO ESTIMADO DESPUES DE GALVANIZADO', '3-4 DIAS HABILES'),
(364, 243, '2024-08-01 17:12:54', 213, 3, '1', '27045725', 1, 'En esta oferta no se contempla el galvanizado para tuberia de 1\" o menos, al igual que accesorios de menos de 1\" y todos de máximo 8,8 metros de largo.', '8 días hábiles sin contar el día que llegue el material'),
(365, 244, '2024-08-02 15:27:51', 79, 3, '1', '667590', 1, 'Al material se le deberá soldar orejas para colgar, 2 unds por tubo.', '7 días hábiles sin contar el día que llegue el material'),
(366, 245, '2024-08-05 10:32:44', 214, 3, '1', '2856', 1, 'El material deberá llegar libre de calamina, pintura o cualquier recubrimiento. Deberá tener perforaciones para colgar, para drenaje o para salida de vapores si los necesita pero esto dilatará el tiempo de entrega. ', '4 días hábiles sin contar el día que llegue el material.'),
(367, 246, '2024-08-08 07:34:58', 215, 3, '1', '9579.5', 1, 'El precio de 2.950 corresponde a tubería y el de 4500 es para las plataformas.\r\nEl material deberá llegar libre de pintura o cualquier recubrimiento, de lo contrario no se podrá procesar. El material deberá llegar sin pines', '15 días hábiles sin contar el día que llega el material. Este tiempo es debido al decapado. '),
(368, 247, '2024-08-08 09:05:26', 148, 2, '1', '32130000', 1, 'vigas UPN 200', 'A CONVENIR'),
(369, 248, '2024-08-08 09:12:29', 155, 2, '1', '6455750', 1, 'TUBERIA 6MM.', '3 DIAS HABILES'),
(370, 249, '2024-08-08 12:18:04', 216, 2, '1', '309400000', 1, 'VIGAS W8*15 DE 12.5MCONSUMO ESTIMADO 3.5% BARRANQUILLA', 'A CONVENIR'),
(371, 250, '2024-08-13 07:45:02', 217, 3, '1', '1636488', 1, 'El material deberá llegar libre de pintura o cualquier recubrimiento, de lo contrario no se podrá procesar. El material debe tener perforaciones para colgar. Ver PDF adjuntos.', '4 días hábiles sin contar el día que llega el material.'),
(372, 251, '2024-08-13 09:07:31', 218, 3, '1', '9746100', 1, 'El material deberá llegar libre de pintura o cualquier recubrimiento, de lo contrario no se podrá procesar. El material debe tenerperforaciones para colgar. Ver PDF adjuntos.', '4 días hábiles sin contar el día que llega el material.'),
(373, 252, '2024-08-13 09:31:22', 79, 3, '1', '6405175', 1, 'Ver PDF adjuntos.', '15 días hábiles debido al blasting que se debe realizar'),
(374, 253, '2024-08-13 16:48:36', 219, 2, '1', '4938.5', 1, 'PRECIO POR KILOGRAMO PROCESADO\r\nITEM 1  INMERSION SENCILLA: ANCLAJES\r\nITEM 2 CENTRIFUGADO: UNIONES', '3 DIAS HABILES'),
(375, 254, '2024-08-14 12:01:53', 181, 3, '1', '11627728', 1, '', '3 días hábiles'),
(376, 255, '2024-08-14 14:21:12', 181, 3, '1', '6587483', 1, '', '3 DÍAS HÁBILES'),
(377, 256, '2024-08-15 11:04:01', 181, 3, '1', '539189', 1, '', '3 días hábiles'),
(378, 257, '2024-08-15 12:05:15', 91, 3, '1', '706860', 1, '', '7 días hábiles'),
(379, 258, '2024-08-15 14:48:54', 43, 2, '1', '86394', 1, 'ABRAZADERAS EN PLATINA D 1/4', '3 DIAS'),
(380, 259, '2024-08-15 14:54:18', 220, 2, '1', '110670000', 1, 'PERFILES EN 4, 6, 8MM. ESTIMADO 4% DE CONSUMO', 'A CONVENIR'),
(381, 260, '2024-08-15 14:55:40', 138, 2, '1', '16243500', 1, 'TUBERIA ANDAMIO MULTIDIRECCIONAL 6.2%', '3 DIAS'),
(382, 261, '2024-08-15 14:57:56', 38, 2, '1', '104125', 1, '3 ANGULOS DE 3/16', '3 DIAS'),
(383, 262, '2024-08-15 15:07:02', 221, 2, '1', '11989250', 1, 'GRILLETE', 'A CONVENIR. PARCIALES CADA 3 DIAS'),
(384, 263, '2024-08-15 15:17:08', 139, 2, '1', '1261400', 1, 'TUBERIA SCH 80 Y 160.', '3 DIAS'),
(385, 264, '2024-08-15 15:22:40', 141, 2, '1', '2082500', 1, 'REJILLA 500KG', '3 DIAS HABILES'),
(386, 265, '2024-08-20 11:17:56', 222, 2, '1', '1953682.5', 1, 'CHASIS SEGUN FOTO CALIBRE 3/16. CONSUMO ESTIMADO 4.5%PESO ESTIMADO DESPUES DE GALVANIZADO', '3 DIAS HABILES'),
(387, 266, '2024-08-20 12:13:11', 148, 2, '1', '63379429.75', 1, 'ESTRUCTURA DE ACUERDO A LISTADO. 35 TON CONSUMO ESTIMADO 3.5%PESO ESTIMADO DESPUES DE GALVANIZADO', 'A CONVENIR. ENTREGAS PARCIALES CADA 3 DÍAS'),
(388, 267, '2024-08-20 13:10:01', 223, 3, '1', '4683840', 1, 'El material deberá tener perforaciones para drenaje y salida de vapores', '4 días hábiles siempre y cuando el material este en condiciones para galvanizar.'),
(389, 268, '2024-08-20 13:17:22', 224, 3, '1', '2169132', 1, 'El material deberá llegar libre de pintura o cualquier recubrimiento y deberá tener perforaciones para colgar', '4 días hábiles.'),
(390, 269, '2024-08-20 17:15:02', 225, 3, '1', '5236', 1, '- La oferta cotizada no contempla elementos roscados - El precio se deberá revisar dependiendo del consumo del material. - Teniendo en cuenta que es tubería esta debe tener perforaciones para drenaje ya que el consumo puede aumentar por la falta de estos.', '4 Días hábiles por cada 30 ton inmersión sencilla y 8 días hábiles para doble inmersión. sin contar el día que llega el material'),
(391, 270, '2024-08-21 17:21:57', 226, 3, '1', '86670277.54', 1, 'Tener en cuenta que los precios y pesos aquí cotizados, pueden variar dependiendo del mes en que se galvanice, dependiendo de su arrastre y dependiendo del precio del zinc. precios para item 1: 2,5 mm - item 2: cal 12 - item 3: 2mm ', '3 días hábiles.'),
(392, 271, '2024-08-22 11:52:27', 181, 3, '1', '7337659', 1, '', '3 días hábiles'),
(393, 272, '2024-08-23 10:47:10', 77, 2, '3', '110017880', 1, 'POSTES EN 8, 6 Y 4.5MM. CONSUMO ESTIMADO 3.5%', 'A CONVENIR'),
(394, 273, '2024-08-23 10:58:03', 227, 2, '1', '178500000', 1, 'ESTRUCTURA CONSUMO ESTIMADO DE ZINC 8%PESO EN NEGRO', 'A CONVENIR. CON CADA REMISION 3 DIAS HABILES'),
(395, 274, '2024-08-23 11:14:51', 228, 2, '1', '1820.7', 1, 'TUBERIA SCH. CONSUMO ESTIMADO 4%. EL MATERIAL DEBE LLEGAR LIBRE DE CALAMINA', 'A CONVENIR'),
(396, 275, '2024-08-23 12:49:13', 166, 2, '1', '14363002.5', 1, 'CERCHAS EN ANGULO, Y VARILLA LISA. CONSUMO ESTIMADO 4.5%', '3 DIAS'),
(400, 279, '2024-08-27 09:44:03', 181, 3, '1', '3750880', 1, '', '3 DÍAS HÁBILES'),
(398, 277, '2024-08-26 09:20:08', 229, 3, '1', '7140', 1, 'El material deberá llegar libre de calamina, pintura o galvanizado anterior', '4 DÍAS HÁBILES'),
(399, 278, '2024-08-26 14:17:43', 181, 3, '1', '4032196', 1, 'Remisión 29430', '3 días'),
(401, 280, '2024-08-27 12:04:06', 231, 2, '1', '3679777.5', 1, 'DE ACUERDO A LISTADO. CONSUMO ESTIMADO DE 6.5% DE ZINCPESO ESTIMADO DESPUES DE GALVANIZADO', '3 DIAS HABILES'),
(402, 281, '2024-08-27 16:47:04', 232, 2, '1', '3839654', 1, 'ESTRUCURA EN ANGULO DE 1/4 Y 3/16. PESO POR UNIDAD 140 KG. 3M*0.5*1.04', '3 DIAS HABILES'),
(403, 282, '2024-08-28 12:32:20', 233, 2, '1', '718165', 1, 'SOPORTES EN IPE 140. CONSUMO ESTIMADO 4.5%PESO ESTIMADO DESPUES DE GALVANIZADO', '3 DIAS HABILES'),
(404, 283, '2024-08-28 12:54:05', 234, 2, '1', '22241100', 1, 'ESTRUCTURA SOPORTE TOBOGAN. SEGUN PLANOS. CONSUMO ESTIMADO DE ZINC 3.8%PESO ESTIMADO DESPUES DE GALVANIZADO', '3 DIAS HABILES'),
(405, 284, '2024-08-28 12:55:10', 181, 3, '1', '3141362', 1, '', '3 días hábiles'),
(406, 285, '2024-08-28 13:00:12', 235, 2, '1', '17234175', 1, 'ESTRUCTURA SOPORTE TOBOGAN, SEGUN LISTADO DE MATERIALES.CONSUMO ESTIMADO 3.8%PESO ESTIMADO DESPUES DE GALVANIZADO', '3 DIAS HABILES'),
(407, 286, '2024-08-29 07:25:32', 213, 3, '1', '30837088.8', 1, 'Para cumplir con los tiempos el material deberá llegar sin rastro de calamina externa o interna (en las bocas de la tubería). Se debe realizar una prueba para revisar que el zinc no tape el tubo debido a la longitud que estos traerán. Adicional a esto por', '8 días hábiles sin contar el día que llega el material.'),
(408, 287, '2024-08-29 11:07:58', 181, 3, '1', '8181607', 1, '', '3 días hábiles'),
(409, 288, '2024-08-29 14:30:30', 38, 2, '1', '2320.5', 1, 'PERFIL C 355*110 CAL. 2.5MM CONSUMO ESTIMADO 6.16%', '3 DIAS HABILES'),
(410, 289, '2024-08-29 14:36:47', 236, 2, '1', '3028.55', 1, 'Recuperación tuberia andamio. Consumo estimado 6.2%', '5-8 DIAS HABILES'),
(411, 290, '2024-08-29 14:39:05', 211, 2, '3', '2075598', 1, 'upn y canal 6\"', '3 DIAS HABILES'),
(412, 291, '2024-08-29 14:41:18', 166, 2, '1', '4260.2', 1, 'JAULAS EN TUB CAL. 18', '3 DIAS HABILES'),
(413, 292, '2024-08-30 11:38:32', 237, 3, '1', '1428000', 1, 'sdsdsds', 'Inmediato - Agendar cita con Logística');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `id_perfil` int(11) NOT NULL,
  `nit_empresa` varchar(250) NOT NULL,
  `nombre_empresa` varchar(150) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `codigo_postal` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `email` varchar(64) NOT NULL,
  `impuesto` int(2) DEFAULT NULL,
  `moneda` varchar(6) NOT NULL,
  `logo_url` varchar(255) NOT NULL,
  `mensaje_factura` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id_perfil`, `nit_empresa`, `nombre_empresa`, `direccion`, `ciudad`, `codigo_postal`, `estado`, `telefono`, `email`, `impuesto`, `moneda`, `logo_url`, `mensaje_factura`) VALUES
(1, '830.015.914-3', 'COTIZACIÓN SERVICIO DE GALVANIZADO', 'Bogotá D.C', 'Carrera 123 #14a - 11,', '110110', 'Malambo, Atlántico AV Oriental 5-56 ', '(601) 4220980', 'servicioalcliente@polyuprotec.com', 19, '$', 'img/1715873946_LOGO-SIN FONDO (POLYUPROTEC).png', 'Prueba																																							');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id_producto` int(11) NOT NULL,
  `codigo_producto` char(20) NOT NULL,
  `nombre_producto` char(255) NOT NULL,
  `kilogramos` char(20) NOT NULL,
  `status_producto` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `precio_producto` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id_producto`, `codigo_producto`, `nombre_producto`, `kilogramos`, `status_producto`, `date_added`, `precio_producto`) VALUES
(1, '1', 'GALVANIZADO POR INMERSIÓN SENCILLA', 'KG', 1, '2024-03-15 16:46:17', 0),
(2, '2', 'GALVANIZADO POR DOBLE INMERSIÓN', 'KG', 1, '2024-03-22 17:40:26', 0),
(3, '3', 'CENTRIFUGADO', 'UND', 1, '2024-03-22 17:40:42', 0),
(4, '4', 'GRANALLADO', 'UND', 1, '2024-03-22 17:40:54', 0),
(5, '5', 'PERFORACIONES', 'UND', 1, '2024-03-22 17:41:09', 0),
(6, '6', 'DECAPADO', 'UND', 1, '2024-03-22 17:41:22', 0),
(7, '7', 'PINTURA', 'UND', 1, '2024-03-22 17:41:35', 0),
(8, '8', 'PRIME ZINC LATA AEROSOL 400ML', 'KG', 1, '2024-03-22 17:41:48', 0),
(9, '9', 'PRIME ZINC GALÓN', 'UND', 1, '2024-03-22 17:42:02', 0),
(10, '10', 'PRIME ZINC MEDIO GALÓN', 'KG', 1, '2024-03-22 17:42:22', 0),
(11, '11', 'PRIME ZINC 1/4 DE GALÓN', 'Kg', 1, '2024-03-22 17:42:39', 0),
(18, '12', 'TRANSPORTE', 'N/A', 1, '2024-04-04 22:55:27', 0),
(19, '13', 'OREJAS PARA COLGAR', 'UND', 1, '2024-05-02 09:34:16', 3000),
(20, '14', 'QUEMADO (LIMPIEZA DE CALAMINA EN TUBERIA)', 'KG', 1, '2024-05-24 15:49:40', 400),
(21, '15', 'SHOTBLASTING', 'KG', 1, '2024-05-28 10:03:58', 400);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmp`
--

CREATE TABLE `tmp` (
  `id_tmp` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad_tmp` int(11) NOT NULL,
  `precio_tmp` double(10,2) DEFAULT NULL,
  `session_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tmp`
--

INSERT INTO `tmp` (`id_tmp`, `id_producto`, `cantidad_tmp`, `precio_tmp`, `session_id`) VALUES
(413, 1, 10800, 1900.00, 'ab67c3e33939aab1cd4ad16940813371'),
(569, 1, 1, 2800.00, 'ce1467d2260ab2ee1cb9b5380334083b'),
(411, 1, 10800, 1900.00, 'e9b60edde8246e6c35bbd090c275dd9f'),
(615, 1, 14, 7800.00, 'b7c4d8efdcecadd9e341bb4f372770be'),
(465, 1, 90, 3000.00, '08b54e928b72e423552385c7ceb14d4f'),
(466, 1, 90, 3000.00, 'cf7e20fb432f94db6552ccba1d257ced');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL COMMENT 'auto incrementing user_id of each user, unique index',
  `firstname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s name, unique',
  `user_password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s password in salted and hashed format',
  `user_email` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s email, unique',
  `celular` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='user data';

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `user_name`, `user_password_hash`, `user_email`, `celular`, `date_added`) VALUES
(1, 'Jeider', 'Buelvas', 'Programador', '$2y$10$ibQoPbEx2O2jusvUPmZil.Zqi8yeCA/gVU4cJr5oekHAjiaZk3LVW', 'jbuelvas@polyuprotec.com', '3134512321', '2024-07-24 15:06:00'),
(2, 'Alejandra', 'Moreno', 'ComercialBT', '$2y$10$/TXZVxQM2614j9U4x8FSseBUuiuAX7/RXgOjx.spQuvp/PosIOnyK', 'amoreno@polyuprotec.com', '3138918027', '2024-03-22 17:20:16'),
(3, 'Ingry ', 'Peréz Rúa', 'ComercialBQ', '$2y$10$N6IFYqlIkuZNylbN4ocEDugZWpexvTn/o9EToiW3XiCY2TAkDIpqS', 'iperezr@polyuprotec.com', '3228801363', '2024-03-22 21:06:53');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `codigo_producto` (`nombre_cliente`);

--
-- Indices de la tabla `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `numero_cotizacion` (`numero_factura`,`id_producto`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`id_factura`),
  ADD UNIQUE KEY `numero_cotizacion` (`numero_factura`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id_perfil`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_producto`),
  ADD UNIQUE KEY `codigo_producto` (`codigo_producto`);

--
-- Indices de la tabla `tmp`
--
ALTER TABLE `tmp`
  ADD PRIMARY KEY (`id_tmp`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT de la tabla `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=765;

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `id_factura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=414;

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id_perfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `tmp`
--
ALTER TABLE `tmp`
  MODIFY `id_tmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=734;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto incrementing user_id of each user, unique index', AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
