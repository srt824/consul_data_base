# Vamos a crear una function que nos permita, mediante el nombre, ver los antecedentes clinicos del paciente

DELIMITER $$

use `consultorio` $$

create function `antecedentes_paciente` (name VARCHAR(30)) returns varchar(100) 
reads sql data
begin
    declare antecedente varchar(80);
    set antecedente = (select antecedentes_clinicos from historia_clinica where nombre = name);
    return antecedente ;
end $$

DELIMITER ;

#SELECT antecedentes_paciente('santiago gutierrez') AS antecedente;


DELIMITER $$

create function `control_stock` (nombre varchar(30)) returns int
reads sql data
begin
    declare stock_insumo int;
    set stock_insumo = (select cantidad from insumos where nombre_insumo = nombre);
    return stock_insumo ;
end $$

DELIMITER ;

#SELECT control_stock("elastomeros x1000") AS cantidad;




