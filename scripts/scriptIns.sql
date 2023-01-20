

insert into paciente (id_paciente, dni, nombre, edad, direccion, telefono) values (1, 35793503, 'santiago gutierrez', 31, 'av 7 1033', 1121730987);
insert into paciente (id_paciente, dni, nombre, edad, direccion, telefono) values (2, 34617058, 'juan manuel gomez', 33, 'Rio piedras 331', 1156858998);
insert into paciente (id_paciente, dni, nombre, edad, direccion, telefono) values (3, 17295790, 'fabian jover', 58, 'ranchos 2352', 1122544576);
insert into paciente (id_paciente, dni, nombre, edad, direccion, telefono) values (4, 17466765, 'elena allegro', 57, 'goyena 611', 1165599322);
insert into paciente (id_paciente, dni, nombre, edad, direccion, telefono) values (5, 35352913, 'antonela pacente', 32, 'paso 405', 1133242804);
insert into paciente (id_paciente, dni, nombre, edad, direccion, telefono) values (6, 35352914, 'agustina pacente', 32, 'paso 405', 1121725236);
insert into paciente (id_paciente, dni, nombre, edad, direccion, telefono) values (7, 50923103, 'fabrizio torres', 12, 'mitre 437', 1185258564);
insert into paciente (id_paciente, dni, nombre, edad, direccion, telefono) values (8, 50015262, 'lucia requena', 14, 'Condarco 45', 1156378811);
insert into paciente (id_paciente, dni, nombre, edad, direccion, telefono) values (9, 32303658, 'nicolas russo', 20,'yatay 50', 1133042804);
insert into paciente (id_paciente, dni, nombre, edad, direccion, telefono) values (10, 41259254, 'micaela orfila', 15, 'Lobos 3358', 1177886442);
insert into paciente (id_paciente, dni, nombre, edad, direccion, telefono) values (11, 69788852, 'paola graiver', 50, 'diagonal 79 439', 1177886442);


insert into `historia_clinica` (id_paciente, nombre, id_especialidad, id_profesional, dni, antecedentes_clinicos, radiografia, tratamiento) values (1, 'santiago gutierrez', 1, 714, 35793503, 'ya utilizo brackets anteriormente', 'revisar', 'ortodoncia convencional');
insert into `historia_clinica` (id_paciente, nombre, id_especialidad, id_profesional, dni, antecedentes_clinicos, radiografia, tratamiento) values (2, 'juan manuel gomez', 1, 715, 34617058, 'perdida osea por uso de brackets en el pasado', 'esta ok', 'ortodoncia autoligable');
insert into `historia_clinica` (id_paciente, nombre, id_especialidad, id_profesional, dni, antecedentes_clinicos, radiografia, tratamiento) values (3, 'fabian jover', 2, 716, 17295790, 'no registra antecedentes', 'revisar', 'perno corona');
insert into `historia_clinica` (id_paciente, nombre, id_especialidad, id_profesional, dni, antecedentes_clinicos, radiografia, tratamiento) values (4, 'elena allegro', 2, 717, 17466765, 'no registra antecedentes', 'revisar', 'perno corona');
insert into `historia_clinica` (id_paciente, nombre, id_especialidad, id_profesional, dni, antecedentes_clinicos, radiografia, tratamiento) values (5, 'antonela pacente', 3, 718,35352913, 'no registra antecedentes', 'esta ok', 'tratamiento de conducto');
insert into `historia_clinica` (id_paciente, nombre, id_especialidad, id_profesional, dni, antecedentes_clinicos, radiografia, tratamiento) values (6, 'agustina pacente', 3, 719,35352914, 'no registra antecedentes', 'revisar', 'tratamiento de conducto');
insert into `historia_clinica` (id_paciente, nombre, id_especialidad, id_profesional, dni, antecedentes_clinicos, radiografia, tratamiento) values (7, 'fabrizio torres', 5, 720, 50923103, 'no registra antecedentes', 'esta ok', 'odontologia general');
insert into `historia_clinica` (id_paciente, nombre, id_especialidad, id_profesional, dni, antecedentes_clinicos, radiografia, tratamiento) values (8, 'lucia requena', 1, 721, 50015262, 'no registra antecedentes', 'hacer una nueva', 'ortodoncia convencional');
insert into `historia_clinica` (id_paciente, nombre, id_especialidad, id_profesional, dni, antecedentes_clinicos, radiografia, tratamiento) values (9, 'nicolas russo', 5, 722, 32303658, 'no registra antecedentes', 'esta ok', 'odontología general');
insert into `historia_clinica` (id_paciente, nombre, id_especialidad, id_profesional, dni, antecedentes_clinicos, radiografia, tratamiento) values (10, 'micaela orfila', 1, 723, 41259254, 'no registra antecedentes', 'hacer una nueva', 'ortodoncia autoligable');
insert into `historia_clinica` (id_paciente, nombre, id_especialidad, id_profesional, dni, antecedentes_clinicos, radiografia, tratamiento) values (11, 'paola graiver', 1 ,724, 69788852, 'golpe en la pieza 28', 'rx pendiente de entrega', 'ortodoncia convencional');


insert into especialidades (id_especialidad, nombre_especialidad, id_profesional, profesional) values (1, 'ortodoncia', 714, 'antonela');
insert into especialidades (id_especialidad, nombre_especialidad, id_profesional, profesional) values (2, 'implantologia', 715, 'soledad');
insert into especialidades (id_especialidad, nombre_especialidad, id_profesional, profesional) values (3, 'endodoncia', 716, 'walter');
insert into especialidades (id_especialidad, nombre_especialidad, id_profesional, profesional) values (4, 'periodoncia', 717, 'ayelen');
insert into especialidades (id_especialidad, nombre_especialidad, id_profesional, profesional) values (5, 'general', 718, 'ezequiel');


insert into turno (id_turno, id_paciente, id_especialidad, nombre, fecha, horario) values (1, 1, 1, 'santiago gutierrez', '2022-08-24', '10:00:00');
insert into turno (id_turno, id_paciente, id_especialidad, nombre, fecha, horario) values (2, 2, 1, 'juan manuel gomez', '2022-08-24', '10:20:00');
insert into turno (id_turno, id_paciente, id_especialidad, nombre, fecha, horario) values (3, 7, 5, 'Fabrizio torres', '2022-08-24', '10:40:00');
insert into turno (id_turno, id_paciente, id_especialidad, nombre, fecha, horario) values (4, 8, 1, 'lucia requena', '2022-08-24', '11:20:00');
insert into turno (id_turno, id_paciente, id_especialidad, nombre, fecha, horario) values (5, 3, 2, 'fabian jover', '2022-08-24', '11:40:00');
insert into turno (id_turno, id_paciente, id_especialidad, nombre, fecha, horario) values (6, 4, 2, 'elena allegro', '2022-08-24', '12:40:00');
insert into turno (id_turno, id_paciente, id_especialidad, nombre, fecha, horario) values (7, 10, 1, 'micaela orfila', '2022-08-24', '13:40:00');


insert into prestacion (id_servicio, servicio, id_especialidad) values (1, 'ortodoncia metalica', 1);
insert into prestacion (id_servicio, servicio, id_especialidad) values (2, 'ortodoncia porcelana', 1);
insert into prestacion (id_servicio, servicio, id_especialidad) values (3, 'ortodoncia zafiro', 1);
insert into prestacion (id_servicio, servicio, id_especialidad) values (4, 'implantes', 2);
insert into prestacion (id_servicio, servicio, id_especialidad) values (5, 'tratamiento de conducto', 3);
insert into prestacion (id_servicio, servicio, id_especialidad) values (6, 'limpieza de sarro', 5);
insert into prestacion (id_servicio, servicio, id_especialidad) values (7, 'blanqueamiento', 5);
insert into prestacion (id_servicio, servicio, id_especialidad) values (8, 'arreglos de caries', 5);
insert into prestacion (id_servicio, servicio, id_especialidad) values (9, 'extracciones', 5);


insert into facturacion (id_facturacion, id_servicio, monto, fecha) values (1, 1, 20000, '2022-08-24');
insert into facturacion (id_facturacion, id_servicio, monto, fecha) values (2, 1, 60000, '2022-08-24');
insert into facturacion (id_facturacion, id_servicio, monto, fecha) values (3, 1, 7000, '2022-08-24');
insert into facturacion (id_facturacion, id_servicio, monto, fecha) values (4, 1, 15000, '2022-08-24');
insert into facturacion (id_facturacion, id_servicio, monto, fecha) values (5, 1, 45500, '2022-08-24');
insert into facturacion (id_facturacion, id_servicio, monto, fecha) values (6, 1, 4000, '2022-08-24');
insert into facturacion (id_facturacion, id_servicio, monto, fecha) values (7, 1, 5000, '2022-08-24');


insert into insumos (nombre_insumo, id_especialidad, id_servicio, costo, cantidad) values ('brackets metalicos', 1, 1, 1250, 30);
insert into insumos (nombre_insumo, id_especialidad, id_servicio, costo, cantidad) values ('brackets porcelana', 1, 1, 2200, 23);
insert into insumos (nombre_insumo, id_especialidad, id_servicio, costo, cantidad) values ('brackets zafiro', 1, 1, 17000, 6);
insert into insumos (nombre_insumo, id_especialidad, id_servicio, costo, cantidad) values ('arco metalico x10', 1, 1, 1000, 20);
insert into insumos (nombre_insumo, id_especialidad, id_servicio, costo, cantidad) values ('arco estetico x10', 1, 1, 3000, 11);
insert into insumos (nombre_insumo, id_especialidad, id_servicio, costo, cantidad) values ('elastomeros x1000', 1, 1, 960, 5000);
insert into insumos (nombre_insumo, id_especialidad, id_servicio, costo, cantidad) values ('ligadura x 50 mts', 1, 1, 2500, 5);
insert into insumos (nombre_insumo, id_especialidad, id_servicio, costo, cantidad) values ('cadena elastomerica', 1, 1, 2000, 22);
insert into insumos (nombre_insumo, id_especialidad, id_servicio, costo, cantidad) values ('tiranervios', 3, 1, 400, 100);
insert into insumos (nombre_insumo, id_especialidad, id_servicio, costo, cantidad) values ('limas hedstrom', 3, 1, 750, 58);
insert into insumos (nombre_insumo, id_especialidad, id_servicio, costo, cantidad) values ('limas k', 3, 1, 320, 42);
insert into insumos (nombre_insumo, id_especialidad, id_servicio, costo, cantidad) values ('cono gutapercha', 3, 1, 500, 13);
insert into insumos (nombre_insumo, id_especialidad, id_servicio, costo, cantidad) values ('hipoclorito de sodio', 3, 1, 220, 50);
insert into insumos (nombre_insumo, id_especialidad, id_servicio, costo, cantidad) values ('perno', 2, 1, 5000, 15);
insert into insumos (nombre_insumo, id_especialidad, id_servicio, costo, cantidad) values ('corona', 2, 1, 15000, 15);

insert into proveedores (id_proveedor, nombre_proveedor, referencia, nombre_insumo) values (1, "ax dental", "insumos para ortodoncia", null);
insert into proveedores (id_proveedor, nombre_proveedor, referencia, nombre_insumo) values (2, "dental mataderos", "insumos para implantologia", null);
insert into proveedores (id_proveedor, nombre_proveedor, referencia, nombre_insumo) values (3, "total dental", "insumos endo y perio", null);
insert into proveedores (id_proveedor, nombre_proveedor, referencia, nombre_insumo) values (4, "odonto mix", "insumos generales varios", null);


insert into `datos_proveedores` (id_proveedor, telefono, direccion, email) values (1, 1146704613, "condarco 3184", "axdental@gmail.com");
insert into `datos_proveedores`(id_proveedor, telefono, direccion, email) values (2, 1162571003, "guamini 1234", "dental_mataderos@gmail.com");
insert into `datos_proveedores` (id_proveedor, telefono, direccion, email) values (3, 1103960552, "florida 114", "total.dental2022@gmail.com");
insert into `datos_proveedores` (id_proveedor, telefono, direccion, email) values (4, 1131005067, "yatay 35", "odontomix_insumos@gmail.com");


insert into `valores_tratamientos` (id_servicio, servicio, precio) values (1, "ortodoncia metalica", 22000);
insert into `valores_tratamientos` (id_servicio, servicio, precio) values (2, "ortodoncia porcelana", 31000);
insert into `valores_tratamientos` (id_servicio, servicio, precio) values (3, "ortodoncia zafiro", 66000);
insert into `valores_tratamientos` (id_servicio, servicio, precio) values (4, "implantes", 70000);
insert into `valores_tratamientos` (id_servicio, servicio, precio) values (5, "tratamiento de conducto", 10000);
insert into `valores_tratamientos` (id_servicio, servicio, precio) values (6, "limpieza de sarro", 3000);
insert into `valores_tratamientos` (id_servicio, servicio, precio) values (7, "blanqueamiento", 20000);
insert into `valores_tratamientos` (id_servicio, servicio, precio) values (8, "arreglos de caries", 4000);
insert into `valores_tratamientos` (id_servicio, servicio, precio) values (9, "extracciones", 5000);

