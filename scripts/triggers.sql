# Creamos una nueva tabla que va a estar asociada al trigger

CREATE TABLE new_paciente (
dni INT NOT NULL,
id_paciente INT NOT NULL,
nombre VARCHAR(30) NOT NULL,
edad INT NOT NULL,
direccion VARCHAR(40) NOT NULL,
telefono INT NOT NULL,
insercion DATE,
PRIMARY KEY(id_paciente)
);
#DROP TRIGGER tr_new_price;
#DROP TRIGGER tr_add_new_paciente;
#DROP TABLE new_paciente;
#DROP TABLE new_price;
# creamos este trigger para ingresar un nuevo paciente. Agregamos la función NOW para que nos informe en qué momento se hizo la inserción.

CREATE TRIGGER `tr_add_new_paciente`
AFTER INSERT ON `paciente`
FOR EACH ROW
INSERT INTO `new_paciente` (dni, id_paciente, nombre, edad, direccion, telefono, insercion) VALUES (NEW.id_paciente, NEW.dni, NEW.nombre, NEW.edad, NEW.direccion, NEW.telefono, NOW());

INSERT INTO paciente
VALUES (22130580, 13, 'ruben dario palacio', 51, 'hipolito irigoyen 99', 1138332270);


# Creamos una nueva tabla que va a estar asociada al trigger

CREATE TABLE new_price (
id_servicio INT NOT NULL,
servicio VARCHAR(50) NOT NULL,
precio INT NOT NULL,
insercion DATE,
PRIMARY KEY(id_servicio)
);


# creamos un trigger para actualizar los valores de los tratamientos

CREATE TRIGGER `tr_new_price`
BEFORE UPDATE ON `valores_tratamientos`
FOR EACH ROW 
INSERT INTO new_price (id_servicio, servicio, precio, insercion) VALUES (OLD.id_servicio, OLD.servicio, NEW.precio, now());

UPDATE `valores_tratamientos`
SET precio = 23000 where id_servicio = 1

