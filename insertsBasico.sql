INSERT INTO Docente (legajo, DNI, nombre, estado_civil, email, sexo, fecha_nacimiento) VALUES
(1, 12345678, 'Pedro Pérez', 'Soltero', 'pedro.perez@gmail.com', 'M', '1991-10-15'),
(2, 98765432, 'María García', 'Casada', 'maria.garcia@hotmail.com', 'F', '1986-07-22'),
(3, 45678901, 'Carlos López', 'Soltero', 'carloslopez@yahoo.com', 'M', '1992-12-03'),
(4, 89012345, 'Ana Rodríguez', 'Casada', 'ana.rodriguez@gmail.com', 'F', '1989-01-09'),
(5, 23456789, 'Luisa Martínez', 'Soltera', 'luisa.martinez@hotmail.com', 'F', '1994-06-28'),
(6, 67890123, 'Juan Fernández', 'Casado', 'juan.fernandez@yahoo.com', 'M', '1988-09-17'),
(7, 34567890, 'Laura Gómez', 'Soltera', 'lauragomez@gmail.com', 'F', '1993-05-07'),
(8, 78901234, 'Andrés Torres', 'Soltero', 'andrestorres@hotmail.com', 'M', '1987-11-25'),
(9, 56789012, 'Sofía Vargas', 'Soltera', 'sofia.vargas@yahoo.com', 'F', '1992-08-12'),
(10, 90123456, 'Diego Silva', 'Soltero', 'diegosilva@gmail.com', 'M', '1986-03-30'),
(11, 34561234, 'Carolina Ramírez', 'Casada', 'carolina.ramirez@hotmail.com', 'F', '1991-12-18'),
(12, 78904321, 'Javier Torres', 'Soltero', 'javiertorres@yahoo.com', 'M', '1985-09-04'),
(13, 56127890, 'Marcela Paredes', 'Casada', 'marcela.paredes@gmail.com', 'F', '1990-01-23'),
(14, 90126789, 'Gonzalo Méndez', 'Soltero', 'gonzalo.mendez@hotmail.com', 'M', '1985-11-11'),
(15, 34569012, 'Valentina Cordero', 'Soltera', 'valentina.cordero@yahoo.com', 'F', '1990-06-09'),
(16, 78905678, 'Hernán Rojas', 'Soltero', 'hernan.rojas@gmail.com', 'M', '1984-04-27'),
(17, 56128901, 'Mariana Castro', 'Soltera', 'mariana.castro@hotmail.com', 'F', '1989-12-15'),
(18, 90123456, 'Gustavo Torres', 'Soltero', 'gustavo.torres@yahoo.com', 'M', '1984-10-02'),
(19, 34567890, 'Lucía Morales', 'Soltera', 'lucia.morales@gmail.com', 'F', '1989-05-21'),
(20, 78901234, 'Martín Fernández', 'Soltero', 'martinfernandez@hotmail.com', 'M', '1983-02-07'),
(21, 56123456, 'Silvia Salazar', 'Soltera', 'silvia.salazar@yahoo.com', 'F', '1988-10-26'),
(22, 90127890, 'Jorge Méndez', 'Soltero', 'jorgemendez@gmail.com', 'M', '1983-07-14'),
(23, 34569012, 'Natalia Cordero', 'Soltera', 'natalia.cordero@hotmail.com', 'F', '1988-03-02'),
(24, 78905678, 'Fernando Rojas', 'Soltero', 'fernando.rojas@yahoo.com', 'M', '1982-12-21'),
(25, 56128901, 'Guadalupe Castro', 'Soltera', 'guadalupe.castro@gmail.com', 'F', '1987-08-09'),
(26, 90123456, 'Julián Torres', 'Soltero', 'julian.torres@hotmail.com', 'M', '1982-04-27'),
(27, 34567890, 'Carla Morales', 'Soltera', 'carla.morales@yahoo.com', 'F', '1987-01-14'),
(28, 78901234, 'Roberto Fernández', 'Soltero', 'robertofernandez@gmail.com', 'M', '1981-09-30'),
(29, 56123456, 'Marina Salazar', 'Soltera', 'marina.salazar@hotmail.com', 'F', '1986-06-18'),
(30, 90127890, 'Santiago Méndez', 'Soltero', 'santiago.mendez@yahoo.com', 'M', '1981-03-06'),
(12234, 12345678, 'Juan Perez', 'Soltero', 'juan@hotmail.com', 'M', '1990-01-01');

INSERT INTO titulos (idtitulo, nivel, nombre) VALUES
(1, 'Grado', 'Ingeniería en sistemas'),
(2, 'Tecnicatura', 'Técnico universitario en programación'),
(3, 'Posgrado', 'Doctorado en ciencias de datos'),
(4, 'Grado', 'Contador público'),
(5, 'Grado', 'Ingeniero Civil'),
(6, 'Posgrado', 'Maestría en Administración de Empresas'),
(7, 'Tecnicatura', 'Técnico en Electrónica Industrial');

INSERT INTO docenteobtienetitulo (legajo, idtitulo, desde, hasta) VALUES
(1, 1, '2008-01-01', '2009-12-31'),
(2, 4, '2009-01-01', '2010-12-31'),
(3, 5, '2010-01-01', '2011-12-31'),
(4, 1, '2011-01-01', '2012-12-31'),
(5, 1, '2012-01-01', '2013-12-31'),
(6, 4, '2013-01-01', '2014-12-31'),
(7, 5, '2014-01-01', '2015-12-31'),
(8, 1, '2015-01-01', '2016-12-31'),
(9, 4, '2016-01-01', '2017-12-31'),
(10, 5, '2017-01-01', '2018-12-31'),
(11, 1, '2018-01-01', '2019-12-31'),
(12, 4, '2019-01-01', '2020-12-31'),
(13, 5, '2020-01-01', '2021-12-31'),
(14, 1, '2021-01-01', '2022-12-31'),
(15, 1, '2022-01-01', '2023-12-31'),
(16, 4, '2023-01-01', '2024-12-31'),
(17, 5, '2024-01-01', '2025-12-31'),
(18, 1, '2025-01-01', '2026-12-31'),
(19, 4, '2026-01-01', '2027-12-31'),
(20, 5, '2027-01-01', '2028-12-31'),
(21, 1, '2028-01-01', '2029-12-31'),
(22, 4, '2029-01-01', '2030-12-31'),
(23, 5, '2030-01-01', '2031-12-31'),
(24, 1, '2031-01-01', '2032-12-31'),
(25, 1, '2032-01-01', '2033-12-31'),
(26, 4, '2033-01-01', '2034-12-31'),
(27, 5, '2034-01-01', '2035-12-31'),
(28, 1, '2035-01-01', '2036-12-31'),
(29, 4, '2036-01-01', '2037-12-31'),
(30, 5, '2037-01-01', '2038-12-31'),
(1, 3, '2010-01-01', '2012-12-31'),
(3, 3, '2012-01-01', '2015-12-31'),
(5, 3, '2014-01-01', '2017-12-31'),
(7, 3, '2016-01-01', '2019-12-31'),
(9, 3, '2018-01-01', '2021-12-31'),
(11, 3, '2020-01-01', '2023-12-31'),
(13, 3, '2022-01-01', '2025-12-31'),
(15, 3, '2024-01-01', '2027-12-31'),
(17, 3, '2026-01-01', '2029-12-31'),
(19, 3, '2028-01-01', '2031-12-31'),
(21, 3, '2030-01-01', '2033-12-31'),
(23, 3, '2032-01-01', '2035-12-31'),
(25, 3, '2034-01-01', '2037-12-31'),
(27, 3, '2036-01-01', '2039-12-31'),
(29, 3, '2038-01-01', '2041-12-31'),
(2, 2, '2009-01-01', '2011-12-31'),
(4, 2, '2011-01-01', '2013-12-31'),
(6, 2, '2013-01-01', '2015-12-31'),
(8, 2, '2015-01-01', '2017-12-31'),
(10, 2, '2017-01-01', '2019-12-31'),
(12, 2, '2019-01-01', '2021-12-31'),
(14, 2, '2021-01-01', '2023-12-31'),
(16, 2, '2023-01-01', '2025-12-31'),
(18, 2, '2025-01-01', '2027-12-31'),
(20, 2, '2027-01-01', '2029-12-31'),
(22, 2, '2029-01-01', '2031-12-31'),
(24, 2, '2031-01-01', '2033-12-31'),
(26, 2, '2033-01-01', '2035-12-31'),
(28, 2, '2035-01-01', '2037-12-31'),
(30, 2, '2037-01-01', '2039-12-31');

-- Tabla Ubicacion
INSERT INTO Ubicacion (cp, provincia, ciudad) VALUES
(3500, 'Chaco', 'Resistencia'),
(3400, 'Corrientes', 'Corrientes');

-- Tabla Domicilio
INSERT INTO Domicilio (id_domicilio, cp, calle, numero) VALUES
(1, 3500, 'Avenida 9 de Julio', '123'),
(2, 3500, 'Calle San Martín', '456'),
(3, 3500, 'Avenida Sarmiento', '789'),
(4, 3400, 'Calle Junín', '234'),
(5, 3400, 'Avenida 3 de Abril', '567'),
(6, 3400, 'Calle Belgrano', '890'),
(7, 3500, 'Calle Entre Ríos', '123'),
(8, 3500, 'Avenida Alberdi', '456'),
(9, 3500, 'Calle Catamarca', '789'),
(10, 3500, 'Avenida Moreno', '234'),
(11, 3500, 'Calle Santiago del Estero', '567'),
(12, 3500, 'Avenida 25 de Mayo', '890'),
(13, 3500, 'Calle La Rioja', '123'),
(14, 3500, 'Avenida San Juan', '456'),
(15, 3500, 'Calle Mendoza', '789'),
(16, 3500, 'Avenida Jujuy', '234'),
(17, 3500, 'Calle Tucumán', '567'),
(18, 3500, 'Avenida Santa Fe', '890'),
(19, 3500, 'Calle Córdoba', '123'),
(20, 3500, 'Avenida Buenos Aires', '456'),
(21, 3500, 'Calle San Luis', '789'),
(22, 3500, 'Avenida La Pampa', '234'),
(23, 3500, 'Calle Chubut', '567'),
(24, 3500, 'Avenida Río Negro', '890'),
(25, 3500, 'Calle Neuquén', '123'),
(26, 3500, 'Avenida Chaco', '456'),
(27, 3500, 'Calle Formosa', '789'),
(28, 3500, 'Avenida Santa Cruz', '234'),
(29, 3500, 'Calle Tierra del Fuego', '567'),
(30, 3500, 'Avenida Salta', '890'),
(31, 3400, 'Calle Entre Ríos', '123'),
(32, 3400, 'Avenida Alberdi', '456'),
(33, 3400, 'Calle Catamarca', '789'),
(34, 3400, 'Avenida Moreno', '234'),
(35, 3400, 'Calle Santiago del Estero', '567'),
(36, 3400, 'Avenida 25 de Mayo', '890'),
(37, 3400, 'Calle La Rioja', '123'),
(38, 3400, 'Avenida San Juan', '456'),
(39, 3400, 'Calle Mendoza', '789'),
(40, 3400, 'Avenida Jujuy', '234'),
(41, 3400, 'Calle Tucumán', '567'),
(42, 3400, 'Avenida Santa Fe', '890'),
(43, 3400, 'Calle Córdoba', '123'),
(44, 3400, 'Avenida Buenos Aires', '456'),
(45, 3400, 'Calle San Luis', '789'),
(46, 3400, 'Avenida La Pampa', '234'),
(47, 3400, 'Calle Chubut', '567'),
(48, 3400, 'Avenida Río Negro', '890'),
(49, 3400, 'Calle Neuquén', '123'),
(50, 3400, 'Avenida Chaco', '456');

INSERT INTO contactos (numero, tipo, medio) VALUES
(1, 'telefono', '555-7777'),
(2, 'celular', '555-123-4567'),
(3, 'correo', 'julio-perez@yahoo.com'),
(4, 'telefono', '555-1111'),
(5, 'celular', '555-222-3333'),
(6, 'correo', 'ana.gomez@gmail.com'),
(7, 'telefono', '555-4444'),
(8, 'celular', '555-555-6666'),
(9, 'correo', 'luisa.martinez@hotmail.com'),
(10, 'telefono', '555-7777'),
(11, 'celular', '555-888-9999'),
(12, 'correo', 'carlos.rodriguez@gmail.com'),
(13, 'telefono', '555-2222'),
(14, 'celular', '555-444-5555'),
(15, 'correo', 'maria.lopez@yahoo.com'),
(16, 'telefono', '555-6666'),
(17, 'celular', '555-777-8888'),
(18, 'correo', 'pedro.sanchez@hotmail.com'),
(19, 'telefono', '555-3333'),
(20, 'celular', '555-999-0000'),
(21, 'correo', 'laura.fernandez@gmail.com'),
(22, 'telefono', '555-5555'),
(23, 'celular', '555-222-3333'),
(24, 'correo', 'roberto.gonzalez@yahoo.com'),
(25, 'telefono', '555-8888'),
(26, 'celular', '555-444-5555'),
(27, 'correo', 'paola.rivera@hotmail.com'),
(28, 'telefono', '555-4444'),
(29, 'celular', '555-777-8888'),
(30, 'correo', 'carolina.martinez@gmail.com'),
(31, 'telefono', '555-1111'),
(32, 'celular', '555-888-9999'),
(33, 'correo', 'jose.rodriguez@yahoo.com'),
(34, 'telefono', '555-6666'),
(35, 'celular', '555-999-0000'),
(36, 'correo', 'andres.lopez@gmail.com'),
(37, 'telefono', '555-2222'),
(38, 'celular', '555-444-5555'),
(39, 'correo', 'ana.sanchez@yahoo.com'),
(40, 'telefono', '555-7777'),
(41, 'celular', '555-888-9999'),
(42, 'correo', 'luis.gonzalez@gmail.com');

INSERT INTO Institucion (CUIT, razon_social, id_domicilio) VALUES
(30123456780, 'Universidad Tecnológica Nacional Frre', 1),
(30234567891, 'utn aaa', 2),
(30345678902, 'utn bbb', 3),
(30456789013, 'utn buenos aires', 4),
(30567890124, 'UTN ccc', 5),
(30678901235, 'Universidad Nacional de Argentina', 6),
(30789012346, 'Universidad Nacional de Argentina', 7),
(30901234567, 'Empresa A', 8),
(31012345678, 'Empresa B', 9),
(31123456789, 'Empresa C', 10),
(31234567890, 'Empresa D', 11),
(31345678901, 'Empresa E', 12),
(31456789012, 'Empresa F', 13),
(31567890123, 'Empresa G', 14),
(30678901234, 'Universidad Nacional del Nordeste', 15),
(30789012345, 'Universidad Nacional del Chaco Austral', 16),
(30890123456, 'Universidad Nacional de la Patagonia Austral', 17);

INSERT INTO Empresa (cuit, ActividadPrincipal, tipo) VALUES
(30901234567, 'Actividad A', 'A'),
(31012345678, 'Actividad B', 'B'),
(31123456789, 'Actividad C', 'C'),
(31234567890, 'Actividad D', 'D'),
(31345678901, 'Actividad E', 'E'),
(31456789012, 'Actividad F', 'F'),
(31567890123, 'Actividad G', 'G');

INSERT INTO Universidad (cuit, dependencia, unidad_academica) VALUES
(30123456780, 'Dependencia A', 'Unidad Académica A'),
(30234567891, 'Dependencia B', 'Unidad Académica B'),
(30345678902, 'Dependencia C', 'Unidad Académica C'),
(30456789013, 'Dependencia D', 'Unidad Académica D'),
(30567890124, 'Dependencia E', 'Unidad Académica E'),
(30678901235, 'Dependencia F', 'Unidad Académica F'),
(30789012346, 'Dependencia G', 'Unidad Académica G');

INSERT INTO ActividadesInvestigacion(investigacion, area_principal, categoria, institucion) VALUES
(1, 'Ciencia de Datos', 'Categoría A', 30123456780),
(2, 'Área B', 'Categoría B', 30567890124),
(3, 'Área C', 'Categoría C', 30456789013),
(4, 'Área D', 'Categoría D', 30345678902),
(5, 'Área E', 'Categoría E', 30234567891),
(6, 'Ciencia de Datos', 'Categoría F', 30123456780),
(7, 'Ciencia de Datos', 'Categoría G', 30234567891);


INSERT INTO Antecedentes (id_antecedentes, id_docentes, nombre_cargo, funcion, reparticion, fecha_inicio, fecha_fin) VALUES
(1, 1, 'Profesor', 'Función A', 123456789, '2014-02-15', '2015-01-31'),
(2, 2, 'Profesor', 'Función B', 987654321, '2014-06-23', '2016-12-31'),
(3, 3, 'Profesor', 'Función C', 456789012, '2014-09-10', '2017-05-15'),
(4, 4, 'Profesor', 'Función D', 567890123, '2014-03-18', '2019-11-30'),
(5, 5, 'Profesor', 'Función E', 890123456, '2014-11-05', '2018-09-30'),
(6, 6, 'Profesor', 'Función F', 234567890, '2014-07-29', '2019-03-15'),
(7, 7, 'Profesor', 'Función G', 678901234, '2014-05-12', '2020-06-30');

INSERT INTO Antecedentes_Docentes (id_antecedentes, materia, id_corresponde) VALUES
(1, 'Materia A', 30123456780),
(2, 'Materia B', 30123456780),
(3, 'Materia C', 30123456780),
(4, 'Materia D', 30123456780),
(5, 'Materia E', 30456789013),
(6, 'Materia F', 30456789013),
(7, 'Materia G', 30456789013);


INSERT INTO Horas (id_hora, hora_entrada, hora_salida, dia, id_antecedentes) VALUES
(1, '08:00:00', '12:00:00', 1, 1),
(2, '14:00:00', '18:00:00', 2, 2),
(3, '09:00:00', '11:00:00', 3, 3),
(4, '13:00:00', '15:00:00', 4, 4),
(5, '10:00:00', '12:00:00', 1, 5),
(6, '14:00:00', '16:00:00', 2, 6),
(7, '08:30:00', '10:30:00', 3, 7),
(8, '08:30:00', '10:30:00', 4, 7);

INSERT INTO Familiar (nro_documento, NombreCompleto, tipo_documento, id_Domicilio, fecha_nacimiento) VALUES
(12345678, 'Juan Pérez', 'DNI', 1, '1990-05-15'),
(23456789, 'María López', 'DNI', 2, '1985-10-22'),
(34567890, 'Pedro Gómez', 'DNI', 3, '1993-08-05'),
(45678901, 'Ana Rodríguez', 'DNI', 4, '1988-03-12'),
(56789012, 'Luisa Martínez', 'DNI', 5, '1992-11-28');
INSERT INTO DocenteAfiliaFamiliar (nro_documento, parentesco, Legajo) VALUES
(12345678, 'Padre', 1),
(23456789, 'Madre', 2),
(34567890, 'Hermano', 3),
(45678901, 'Hermana', 4),
(56789012, 'Esposo', 5),
(12345678, 'Hijo', 6),
(23456789, 'Hija', 7);

INSERT INTO Seguro (nro_seguro, nombre_aseguradora, cod_compania, tipo, Legajo, CUIT) VALUES
(1, 'OSDE',                         123, 'obligatorio', 1, 30123456780),
(2, 'Seguros Falsos',               456, 'obligatorio', 2, 30123456780),
(3, 'Seguros de mentira',           789, 'obligatorio', 3, 30123456780),
(4, 'Seguros aa',                   246, 'obligatorio', 4, 30123456780),
(5, 'Seguros bb',                   135, 'obligatorio', 5, 30123456780),
(6, 'OSDE',                         123, 'obligatorio', 1, 30123456780),
(7, 'Seguros Falsos',               456, 'obligatorio', 2, 30123456780),
(8, 'Seguros de mentira',           789, 'obligatorio', 3, 30123456780),
(9, 'Seguros aa',                   246, 'obligatorio', 4, 30123456780),
(10, 'Seguros bb',                  135, 'obligatorio', 5, 30123456780),
(11, 'OSDE',                        123, 'obligatorio', 1, 30123456780),
(12, 'Seguros Falsos',              456, 'obligatorio', 2, 30123456780),
(13, 'Seguros de mentira',          789, 'obligatorio', 3, 30123456780),
(14, 'Seguros aa',                  246, 'obligatorio', 4, 30123456780),
(15, 'Seguros bb',                  135, 'obligatorio', 5, 30123456780);