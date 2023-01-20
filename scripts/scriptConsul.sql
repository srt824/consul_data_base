DROP DATABASE IF EXISTS consultorio;
CREATE DATABASE consultorio;
USE consultorio; 

CREATE TABLE paciente (
	dni INT NOT NULL,
	id_paciente INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(30) NOT NULL,
	edad INT NOT NULL,
	direccion VARCHAR(40) NOT NULL,
    telefono INT NOT NULL,
    PRIMARY KEY(id_paciente, dni)
);


CREATE TABLE `historia_clinica` (
	dni INT NOT NULL,
	id_paciente INT NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    id_especialidad INT NOT NULL,
    id_profesional INT NOT NULL AUTO_INCREMENT,
    antecedentes_clinicos VARCHAR(200),
    radiografia VARCHAR(200) NOT NULL,
    tratamiento VARCHAR(200) NOT NULL,
    PRIMARY KEY(id_profesional, id_especialidad, dni),
    FOREIGN KEY(id_paciente) REFERENCES paciente(id_paciente)
);


CREATE TABLE especialidades (
id_especialidad INT NOT NULL AUTO_INCREMENT,
id_profesional INT NOT NULL,
profesional VARCHAR(30) NOT NULL,
nombre_especialidad VARCHAR(30) NOT NULL,
PRIMARY KEY(id_especialidad),
FOREIGN KEY(id_profesional) REFERENCES historia_clinica (id_profesional)
);


CREATE TABLE turno (
	id_turno INT NOT NULL AUTO_INCREMENT,
    id_paciente INT NOT NULL,
	id_especialidad INT NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    fecha DATE NOT NULL,
    horario TIME NOT NULL,
    PRIMARY KEY(id_turno),
    FOREIGN KEY(id_paciente) REFERENCES paciente(id_paciente),
    FOREIGN KEY(id_especialidad) REFERENCES especialidades(id_especialidad)
);


CREATE TABLE prestacion (
	id_servicio INT NOT NULL AUTO_INCREMENT,
    servicio VARCHAR(50) NOT NULL,
    id_especialidad INT NOT NULL,
    PRIMARY KEY(id_servicio, servicio),
    FOREIGN KEY(id_especialidad) REFERENCES especialidades (id_especialidad)
);


CREATE TABLE facturacion (
	id_facturacion INT NOT NULL AUTO_INCREMENT,
    id_servicio INT NOT NULL,
    monto INT NOT NULL,
    fecha DATE NOT NULL,
    PRIMARY KEY(id_facturacion,id_servicio),
    FOREIGN KEY(id_servicio) REFERENCES prestacion (id_servicio)
);


CREATE TABLE insumos (
	nombre_insumo VARCHAR(30) NOT NULL,
    id_especialidad INT NOT NULL,
    id_servicio INT NOT NULL,
    costo INT NOT NULL,
    cantidad INT NOT NULL,
    PRIMARY KEY(nombre_insumo),
    FOREIGN KEY(id_servicio) REFERENCES facturacion (id_servicio)
);


CREATE TABLE proveedores (
id_proveedor INT NOT NULL AUTO_INCREMENT,
nombre_proveedor VARCHAR(50) NOT NULL,
referencia VARCHAR(30) NOT NULL,
nombre_insumo VARCHAR(30),
PRIMARY KEY(id_proveedor, referencia),
FOREIGN KEY(nombre_insumo) REFERENCES insumos (nombre_insumo)
);


CREATE TABLE `datos_proveedores` (
telefono VARCHAR(50) NOT NULL,
id_proveedor INT NOT NULL,
direccion VARCHAR(50) NOT NULL,
email VARCHAR(50) NOT NULL,
PRIMARY KEY(telefono),
FOREIGN KEY(id_proveedor) REFERENCES proveedores (id_proveedor)
);


CREATE TABLE `valores_tratamientos` (
id_servicio INT NOT NULL,
servicio VARCHAR(50) NOT NULL,
precio INT NOT NULL,
PRIMARY KEY(precio),
FOREIGN KEY(id_servicio) REFERENCES prestacion (id_servicio)
);




