# con esta view podemos visualizar de manera rapida el dni del paciente asociado a su nombre y telefono

CREATE OR REPLACE VIEW `view_paciente` AS
(SELECT dni, nombre, telefono FROM paciente);

#SELECT * FROM view_paciente;


# Esta view nos permite visualizar el nombre del insumo, su costo y cantidad rapidamente

CREATE OR REPLACE VIEW insumos_view AS
(SELECT nombre_insumo, costo, cantidad FROM insumos);

#SELECT * FROM insumos_view;


# Creamos una view para que nos muestre el nombre del paciente con la fecha y horario del turno

CREATE OR REPLACE VIEW turno_view AS
(SELECT nombre, fecha, horario FROM turno);

#SELECT * FROM turno_view;


# View para ver de manera rápida la facturacion y la fecha de la misma

CREATE OR REPLACE VIEW fact_view AS
(SELECT monto, fecha FROM facturacion);

#SELECT * FROM fact_view;


# Usamos esta view para visualizar el nombre, radiografia y tratamiento del paciente

CREATE OR REPLACE VIEW HC_view AS
(SELECT nombre, radiografia, tratamiento FROM historia_clinica);

#SELECT * FROM HC_view



