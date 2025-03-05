USE BetterService;

-- Ejecutar cada tabla individualmente en el orden que se presentan 

SET IDENTITY_INSERT usuario ON;

INSERT INTO usuario (id_usuario, nombre, apellido_P, apellido_M, correo, telefono, ubicacion) VALUES
(23589, 'Juan', 'Perez', 'Lopez', 'juan.perez@example.com', '5551234567', 'Ciudad de México'),
(23590, 'Maria', 'Garcia', 'Hernandez', 'maria.garcia@example.com', '5551234568', 'Guadalajara'),
(23591, 'Carlos', 'Martinez', 'Gomez', 'carlos.martinez@example.com', '5551234569', 'Monterrey'),
(23592, 'Ana', 'Lopez', 'Diaz', 'ana.lopez@example.com', '5551234570', 'Puebla'),
(23593, 'Luis', 'Hernandez', 'Sanchez', 'luis.hernandez@example.com', '5551234571', 'Tijuana'),
(23594, 'Laura', 'Gonzalez', 'Ramirez', 'laura.gonzalez@example.com', '5551234572', 'León'),
(23595, 'Jose', 'Rodriguez', 'Torres', 'jose.rodriguez@example.com', '5551234573', 'Ciudad Juárez'),
(23596, 'Elena', 'Fernandez', 'Flores', 'elena.fernandez@example.com', '5551234574', 'Zapopan'),
(23597, 'Miguel', 'Sanchez', 'Morales', 'miguel.sanchez@example.com', '5551234575', 'Monterrey'),
(23598, 'Sofia', 'Ramirez', 'Ortega', 'sofia.ramirez@example.com', '5551234576', 'Mérida'),
(23599, 'Diego', 'Torres', 'Castro', 'diego.torres@example.com', '5551234577', 'Chihuahua'),
(23600, 'Isabel', 'Flores', 'Rojas', 'isabel.flores@example.com', '5551234578', 'Saltillo'),
(23601, 'Fernando', 'Ortega', 'Mendoza', 'fernando.ortega@example.com', '5551234579', 'Aguascalientes'),
(23602, 'Patricia', 'Castro', 'Guerrero', 'patricia.castro@example.com', '5551234580', 'Morelia'),
(23603, 'Ricardo', 'Rojas', 'Vargas', 'ricardo.rojas@example.com', '5551234581', 'Querétaro'),
(23604, 'Gabriela', 'Mendoza', 'Jimenez', 'gabriela.mendoza@example.com', '5551234582', 'Hermosillo'),
(23605, 'Jorge', 'Guerrero', 'Ruiz', 'jorge.guerrero@example.com', '5551234583', 'San Luis Potosí'),
(23606, 'Monica', 'Vargas', 'Chavez', 'monica.vargas@example.com', '5551234584', 'Culiacán'),
(23607, 'Raul', 'Jimenez', 'Molina', 'raul.jimenez@example.com', '5551234585', 'Toluca'),
(23608, 'Valeria', 'Ruiz', 'Silva', 'valeria.ruiz@example.com', '5551234586', 'Cancún'),
(23609, 'Alberto', 'Chavez', 'Núñez', 'alberto.chavez@example.com', '5551234587', 'Tepic'),
(23610, 'Daniela', 'Molina', 'Delgado', 'daniela.molina@example.com', '5551234588', 'Villahermosa'),
(23611, 'Francisco', 'Silva', 'Pacheco', 'francisco.silva@example.com', '5551234589', 'Tuxtla Gutiérrez'),
(23612, 'Claudia', 'Núñez', 'Campos', 'claudia.nunez@example.com', '5551234590', 'Reynosa'),
(23613, 'Hector', 'Delgado', 'Cruz', 'hector.delgado@example.com', '5551234591', 'Mazatlán'),
(23614, 'Andrea', 'Pacheco', 'Aguilar', 'andrea.pacheco@example.com', '5551234592', 'Durango'),
(23615, 'Roberto', 'Campos', 'Soto', 'roberto.campos@example.com', '5551234593', 'Acapulco'),
(23616, 'Lucia', 'Cruz', 'Peña', 'lucia.cruz@example.com', '5551234594', 'Torreón'),
(23617, 'Manuel', 'Aguilar', 'Luna', 'manuel.aguilar@example.com', '5551234595', 'Mexicali'),
(23618, 'Paola', 'Soto', 'Marquez', 'paola.soto@example.com', '5551234596', 'La Paz'),
(23619, 'Diego', 'Romero', 'Benitez', 'diego.romero@syntax.com', '2258964896', 'Puebla'),
(23620, 'Alfredo', 'Ramirez', 'Benitez', 'alfredo.ramirez@syntax.com', '2225889741', 'Puebla'),
(23621, 'Claudio', 'Arguello', 'Cordova', 'claudio.arguello@syntax.com', '2266549874', 'Puebla'),
(23622, 'Samantha', 'Villarreal', 'Hermida', 'Samantha.Villarreal@syntax.com', '2255846546', 'Puebla'),
(23623, 'Rafael', 'Galaviz', 'Valdez', 'rafael.galaviz@syntax.com', '2222566448', 'Puebla');

SET IDENTITY_INSERT usuario OFF;

INSERT INTO impacto (descripcion) VALUES
('Single user'),
('Department'),
('Site');

INSERT INTO urgencia (descripcion) VALUES
('Inconvenience'),
('Work impaired'),
('Unable to work');

INSERT INTO prioridad (descripcion) VALUES
('Critical'),
('High'),
('Medium'),
('Low');

INSERT INTO estatus (descripcion) VALUES
('Open'),
('Hold'),
('Pending'),
('Close'),
('In Progress');

INSERT INTO categorias (descripcion, id_subcategoria) VALUES
('Network', NULL),
('Hardware', NULL),
('Software', NULL),
('Security', NULL);

INSERT INTO categorias (descripcion, id_subcategoria) VALUES
('IP', 1),
('DNS', 1),
('Peripherals', 2),
('Bitlocker', 2),
('SAP', 3),
('M365', 3),
('Malware', 4),
('Phishing', 4);


INSERT INTO grupossoporte (grupo, descripcion, nivel) VALUES
('Service Desk', 'First level support', 1),
('Infra', 'Server lovers', 2),
('Cloud', 'Azure, AWS, Oracle', 3),
('Linux', 'Ubuntu, SUSE, Red Hat', 3),
('On Site', 'Departamento on premise', 2),
('AMS', 'SAP Funcional', 2);

INSERT INTO especialistas (id_especialista, job_title, id_grupo) VALUES
(23619, 'Agent', 1),
(23620, 'Run Team', 2),
(23621, 'Agent', 3),
(23622, 'Agent', 4),
(23623, 'Agent', 5),
(23620, 'Agent', 1),
(23621, 'SAP SD Specialist', 6);


--Revisar si identity insert esta disponible en las tablas.
SELECT IDENT_CURRENT('usuario') AS CurrentIdentityValue;
SELECT IDENT_CURRENT('impacto') AS CurrentIdentityValue;
SELECT IDENT_CURRENT('urgencia') AS CurrentIdentityValue;
SELECT IDENT_CURRENT('prioridad') AS CurrentIdentityValue;
SELECT IDENT_CURRENT('estatus') AS CurrentIdentityValue;
SELECT IDENT_CURRENT('grupossoporte') AS CurrentIdentityValue;
SELECT IDENT_CURRENT('categorias') AS CurrentIdentityValue;
SELECT IDENT_CURRENT('especialistas') AS CurrentIdentityValue;
SELECT IDENT_CURRENT('incidencias') AS CurrentIdentityValue;
SELECT IDENT_CURRENT('notas') AS CurrentIdentityValue;

SET IDENTITY_INSERT incidencias ON;

INSERT INTO incidencias (id_incidencia, fecha, id_usuario, short_description, descripcion, id_urgencia, id_impacto, id_prioridad, id_categoria, id_subcategoria, id_grupos, id_especialista) VALUES
(1, '2025-01-01', 23589, 'Network issue', 'User cannot connect to the network', 1, 1, 1, 1, 5, 1, 23619),
(2, '2025-01-02', 23590, 'Hardware failure', 'User reports a broken keyboard', 2, 2, 2, 2, 7, 2, 23620),
(3, '2025-01-03', 23591, 'Software crash', 'Application crashes on startup', 3, 3, 3, 3, 9, 3, 23621),
(4, '2025-01-04', 23592, 'Security breach', 'Suspicious login detected', 1, 1, 1, 4, 11, 4, 23622),
(5, '2025-01-05', 23593, 'IP conflict', 'Two devices have the same IP address', 2, 2, 2, 1, 6, 1, 23623),
(6, '2025-01-06', 23594, 'DNS issue', 'User cannot resolve domain names', 3, 3, 3, 1, 6, 1, 23620),
(7, '2025-01-07', 23595, 'Peripheral issue', 'Printer is not working', 1, 1, 1, 2, 8, 2, 23621),
(8, '2025-01-08', 23596, 'Bitlocker problem', 'User cannot unlock Bitlocker drive', 2, 2, 2, 2, 8, 2, 23622),
(9, '2025-01-09', 23597, 'SAP error', 'SAP transaction fails', 3, 3, 3, 3, 10, 3, 23623),
(10, '2025-01-10', 23598, 'M365 issue', 'User cannot access M365 services', 1, 1, 1, 3, 10, 3, 23619),
(11, '2025-01-11', 23599, 'Malware detected', 'Antivirus detected malware', 2, 2, 2, 4, 12, 4, 23620),
(12, '2025-01-12', 23600, 'Phishing attempt', 'User received a phishing email', 3, 3, 3, 4, 12, 4, 23621),
(13, '2025-01-13', 23601, 'Network issue', 'User cannot connect to the network', 1, 1, 1, 1, 5, 1, 23622),
(14, '2025-01-14', 23602, 'Hardware failure', 'User reports a broken keyboard', 2, 2, 2, 2, 7, 2, 23623),
(15, '2025-01-15', 23603, 'Software crash', 'Application crashes on startup', 3, 3, 3, 3, 9, 3, 23619),
(16, '2025-01-16', 23604, 'Security breach', 'Suspicious login detected', 1, 1, 1, 4, 11, 4, 23620),
(17, '2025-01-17', 23605, 'IP conflict', 'Two devices have the same IP address', 2, 2, 2, 1, 6, 1, 23621),
(18, '2025-01-18', 23606, 'DNS issue', 'User cannot resolve domain names', 3, 3, 3, 1, 6, 1, 23622),
(19, '2025-01-19', 23607, 'Peripheral issue', 'Printer is not working', 1, 1, 1, 2, 8, 2, 23623),
(20, '2025-01-20', 23608, 'Bitlocker problem', 'User cannot unlock Bitlocker drive', 2, 2, 2, 2, 8, 2, 23619),
(21, '2025-01-21', 23609, 'SAP error', 'SAP transaction fails', 3, 3, 3, 3, 10, 3, 23620),
(22, '2025-01-22', 23610, 'M365 issue', 'User cannot access M365 services', 1, 1, 1, 3, 10, 3, 23621),
(23, '2025-01-23', 23611, 'Malware detected', 'Antivirus detected malware', 2, 2, 2, 4, 12, 4, 23622),
(24, '2025-01-24', 23612, 'Phishing attempt', 'User received a phishing email', 3, 3, 3, 4, 12, 4, 23623),
(25, '2025-01-25', 23613, 'Network issue', 'User cannot connect to the network', 1, 1, 1, 1, 5, 1, 23619),
(26, '2025-01-26', 23614, 'Hardware failure', 'User reports a broken keyboard', 2, 2, 2, 2, 7, 2, 23620),
(27, '2025-01-27', 23615, 'Software crash', 'Application crashes on startup', 3, 3, 3, 3, 9, 3, 23621),
(28, '2025-01-28', 23616, 'Security breach', 'Suspicious login detected', 1, 1, 1, 4, 11, 4, 23622),
(29, '2025-01-29', 23617, 'IP conflict', 'Two devices have the same IP address', 2, 2, 2, 1, 6, 1, 23623),
(30, '2025-01-30', 23618, 'DNS issue', 'User cannot resolve domain names', 3, 3, 3, 1, 6, 1, 23619),
(31, '2025-01-31', 23619, 'Peripheral issue', 'Printer is not working', 1, 1, 1, 2, 8, 2, 23620),
(32, '2025-02-01', 23620, 'Bitlocker problem', 'User cannot unlock Bitlocker drive', 2, 2, 2, 2, 8, 2, 23621),
(33, '2025-02-02', 23621, 'SAP error', 'SAP transaction fails', 3, 3, 3, 3, 10, 3, 23622),
(34, '2025-02-03', 23622, 'M365 issue', 'User cannot access M365 services', 1, 1, 1, 3, 10, 3, 23623),
(35, '2025-02-04', 23623, 'Malware detected', 'Antivirus detected malware', 2, 2, 2, 4, 12, 4, 23619),
(36, '2025-02-05', 23589, 'Phishing attempt', 'User received a phishing email', 3, 3, 3, 4, 12, 4, 23620),
(37, '2025-02-06', 23590, 'Network issue', 'User cannot connect to the network', 1, 1, 1, 1, 5, 1, 23621),
(38, '2025-02-07', 23591, 'Hardware failure', 'User reports a broken keyboard', 2, 2, 2, 2, 7, 2, 23622),
(39, '2025-02-08', 23592, 'Software crash', 'Application crashes on startup', 3, 3, 3, 3, 9, 3, 23623),
(40, '2025-02-09', 23593, 'Security breach', 'Suspicious login detected', 1, 1, 1, 4, 11, 4, 23619),
(41, '2025-02-10', 23594, 'IP conflict', 'Two devices have the same IP address', 2, 2, 2, 1, 6, 1, 23620),
(42, '2025-02-11', 23595, 'DNS issue', 'User cannot resolve domain names', 3, 3, 3, 1, 6, 1, 23621),
(43, '2025-02-12', 23596, 'Peripheral issue', 'Printer is not working', 1, 1, 1, 2, 8, 2, 23622),
(44, '2025-02-13', 23597, 'Bitlocker problem', 'User cannot unlock Bitlocker drive', 2, 2, 2, 2, 8, 2, 23623),
(45, '2025-02-14', 23598, 'SAP error', 'SAP transaction fails', 3, 3, 3, 3, 10, 3, 23619),
(46, '2025-02-15', 23599, 'M365 issue', 'User cannot access M365 services', 1, 1, 1, 3, 10, 3, 23620),
(47, '2025-02-16', 23600, 'Malware detected', 'Antivirus detected malware', 2, 2, 2, 4, 12, 4, 23621),
(48, '2025-02-17', 23601, 'Phishing attempt', 'User received a phishing email', 3, 3, 3, 4, 12, 4, 23622),
(49, '2025-02-18', 23602, 'Network issue', 'User cannot connect to the network', 1, 1, 1, 1, 5, 1, 23623),
(50, '2025-02-19', 23603, 'Hardware failure', 'User reports a broken keyboard', 2, 2, 2, 2, 7, 2, 23619),
(51, '2025-02-20', 23604, 'Software crash', 'Application crashes on startup', 3, 3, 3, 3, 9, 3, 23620),
(52, '2025-02-21', 23605, 'Security breach', 'Suspicious login detected', 1, 1, 1, 4, 11, 4, 23621),
(53, '2025-02-22', 23606, 'IP conflict', 'Two devices have the same IP address', 2, 2, 2, 1, 6, 1, 23622),
(54, '2025-02-23', 23607, 'DNS issue', 'User cannot resolve domain names', 3, 3, 3, 1, 6, 1, 23623),
(55, '2025-02-24', 23608, 'Peripheral issue', 'Printer is not working', 1, 1, 1, 2, 8, 2, 23619),
(56, '2025-02-25', 23609, 'Bitlocker problem', 'User cannot unlock Bitlocker drive', 2, 2, 2, 2, 8, 2, 23620),
(57, '2025-02-26', 23610, 'SAP error', 'SAP transaction fails', 3, 3, 3, 3, 10, 3, 23621),
(58, '2025-02-27', 23611, 'M365 issue', 'User cannot access M365 services', 1, 1, 1, 3, 10, 3, 23622),
(59, '2025-02-28', 23612, 'Malware detected', 'Antivirus detected malware', 2, 2, 2, 4, 12, 4, 23623),
(60, '2025-03-01', 23613, 'Phishing attempt', 'User received a phishing email', 3, 3, 3, 4, 12, 4, 23619),
(61, '2025-03-02', 23614, 'Network issue', 'User cannot connect to the network', 1, 1, 1, 1, 5, 1, 23620),
(62, '2025-03-03', 23615, 'Hardware failure', 'User reports a broken keyboard', 2, 2, 2, 2, 7, 2, 23621),
(63, '2025-03-04', 23616, 'Software crash', 'Application crashes on startup', 3, 3, 3, 3, 9, 3, 23622),
(64, '2025-03-05', 23617, 'Security breach', 'Suspicious login detected', 1, 1, 1, 4, 11, 4, 23623),
(65, '2025-03-06', 23618, 'IP conflict', 'Two devices have the same IP address', 2, 2, 2, 1, 6, 1, 23619),
(66, '2025-03-07', 23619, 'DNS issue', 'User cannot resolve domain names', 3, 3, 3, 1, 6, 1, 23620),
(67, '2025-03-08', 23620, 'Peripheral issue', 'Printer is not working', 1, 1, 1, 2, 8, 2, 23621),
(68, '2025-03-09', 23621, 'Bitlocker problem', 'User cannot unlock Bitlocker drive', 2, 2, 2, 2, 8, 2, 23622),
(69, '2025-03-10', 23622, 'SAP error', 'SAP transaction fails', 3, 3, 3, 3, 10, 3, 23623),
(70, '2025-03-11', 23623, 'M365 issue', 'User cannot access M365 services', 1, 1, 1, 3, 10, 3, 23619),
(71, '2025-03-12', 23589, 'Malware detected', 'Antivirus detected malware', 2, 2, 2, 4, 12, 4, 23620),
(72, '2025-03-13', 23590, 'Phishing attempt', 'User received a phishing email', 3, 3, 3, 4, 12, 4, 23621),
(73, '2025-03-14', 23591, 'Network issue', 'User cannot connect to the network', 1, 1, 1, 1, 5, 1, 23622),
(74, '2025-03-15', 23592, 'Hardware failure', 'User reports a broken keyboard', 2, 2, 2, 2, 7, 2, 23623),
(75, '2025-03-16', 23593, 'Software crash', 'Application crashes on startup', 3, 3, 3, 3, 9, 3, 23619),
(76, '2025-03-17', 23594, 'Security breach', 'Suspicious login detected', 1, 1, 1, 4, 11, 4, 23620),
(77, '2025-03-18', 23595, 'IP conflict', 'Two devices have the same IP address', 2, 2, 2, 1, 6, 1, 23621),
(78, '2025-03-19', 23596, 'DNS issue', 'User cannot resolve domain names', 3, 3, 3, 1, 6, 1, 23622),
(79, '2025-03-20', 23597, 'Peripheral issue', 'Printer is not working', 1, 1, 1, 2, 8, 2, 23623),
(80, '2025-03-21', 23598, 'Bitlocker problem', 'User cannot unlock Bitlocker drive', 2, 2, 2, 2, 8, 2, 23619),
(81, '2025-03-22', 23599, 'SAP error', 'SAP transaction fails', 3, 3, 3, 3, 10, 3, 23620),
(82, '2025-03-23', 23600, 'M365 issue', 'User cannot access M365 services', 1, 1, 1, 3, 10, 3, 23621);


INSERT INTO notas (id_incidencia, id_especialista, fecha_nota, descripcion) VALUES
(1, 23619, '2025-01-01', 'Revisando la conexión de red.'),
(2, 23620, '2025-01-02', 'Teclado reemplazado.'),
(3, 23621, '2025-01-03', 'Aplicación reinstalada.'),
(4, 23622, '2025-01-04', 'Investigando el inicio de sesión sospechoso.'),
(5, 23623, '2025-01-05', 'Resolviendo conflicto de IP.'),
(6, 23620, '2025-01-06', 'Configurando DNS.'),
(7, 23621, '2025-01-07', 'Impresora reparada.'),
(8, 23622, '2025-01-08', 'Desbloqueando Bitlocker.'),
(9, 23623, '2025-01-09', 'Error de SAP solucionado.'),
(10, 23619, '2025-01-10', 'Acceso a M365 restaurado.'),
(11, 23620, '2025-01-11', 'Malware eliminado.'),
(12, 23621, '2025-01-12', 'Correo de phishing reportado.'),
(13, 23622, '2025-01-13', 'Revisando la conexión de red.'),
(14, 23623, '2025-01-14', 'Teclado reemplazado.'),
(15, 23619, '2025-01-15', 'Aplicación reinstalada.'),
(16, 23620, '2025-01-16', 'Investigando el inicio de sesión sospechoso.'),
(17, 23621, '2025-01-17', 'Resolviendo conflicto de IP.'),
(18, 23622, '2025-01-18', 'Configurando DNS.'),
(19, 23623, '2025-01-19', 'Impresora reparada.'),
(20, 23619, '2025-01-20', 'Desbloqueando Bitlocker.'),
(21, 23620, '2025-01-21', 'Error de SAP solucionado.'),
(22, 23621, '2025-01-22', 'Acceso a M365 restaurado.'),
(23, 23622, '2025-01-23', 'Malware eliminado.'),
(24, 23623, '2025-01-24', 'Correo de phishing reportado.'),
(25, 23619, '2025-01-25', 'Revisando la conexión de red.'),
(26, 23620, '2025-01-26', 'Teclado reemplazado.'),
(27, 23621, '2025-01-27', 'Aplicación reinstalada.'),
(28, 23622, '2025-01-28', 'Investigando el inicio de sesión sospechoso.'),
(29, 23623, '2025-01-29', 'Resolviendo conflicto de IP.'),
(30, 23619, '2025-01-30', 'Configurando DNS.');

