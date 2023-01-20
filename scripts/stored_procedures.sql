# creamos un SP para saber, mediante un id que ingresemos, el nombre y telefono de un paciente

DELIMITER $$

CREATE PROCEDURE `sp_paciente` (IN id INT)
BEGIN
	SELECT nombre, telefono FROM paciente WHERE id_paciente = id;
END $$

DELIMITER ;

#CALL sp_paciente(1)


DELIMITER $$

# creamos un SP para insertar un nuevo paciente con todos sus atributos, a la lista de la tabla paciente

CREATE PROCEDURE `sp_insert_paciente` (IN id INT, IN dni INT, IN nom VARCHAR(30), IN edad INT, IN dir VARCHAR(40), IN tel INT)
BEGIN
	INSERT INTO paciente (id_paciente, dni, nombre, edad, direccion, telefono)
    VALUES (id, dni, nom, edad, dir, tel);
END $$

DELIMITER ;

#CALL sp_insert_paciente(12, 155556987, "jose farias", 60, "la madrid 1070", 1112131415)