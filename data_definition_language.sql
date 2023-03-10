---- Data Definition Language 🚀------

----Comandos basicos:
-- Create: Crear
-- Alter: ALterar
-- Drop: Borrar

--DDL son los comonados basicos para crear una base de datos.

-- Database: Conjunto de datos.
-- Table: Las entidades de esos datos.
-- View: La proyeccion de los datos.

CREATE DATABASE test_db;
-- Crea una data base en el software que  uses.

USE DATABASE test_db;
-- Usar la base de datos.

--EJEMPLOS REALES CON DATOS PREVIOS 💪-----

--- CREATE 🆕
CREATE TABLE people (
	person_id int NOT NULL AUTO_INCREMENT ,
	last_name varchar(255) NULL,
	first_name varchar(255) NULL,
	address varchar (255) NULL,
	city varchar(255) NULL
);
-- Con este comando creamos la tabla y sus atributos, personas, apellido, nombre, direccion etc.

--- VIEW 😛
-- Sirven para ver los datos de la tabla de manera especifica y recurrente.
CREATE VIEW v_brasil_customers AS 
	SELECT customer_name,
contact_name
	FROM customers
	WHERE country = "Brasil";

-- Se usa la el comando CREATE VIEW para especificar que sera una vista, y depues se le pone el nombre con la cual la vista sera llamada. Despues se pone un SELECT que traera los datos. Y para usar las view vamos a la parte de view y de selecionar rows.

--- ALTER 🧐
-- Sirve para modificar la tabla

ALTER TABLE people 
ADD date_of_birth date;

ALTER TABLE people
ALTER COLUMN date_of_birth year;

La instrucción SQL ALTER se utiliza para modificar la estructura de una tabla existente en una base de datos. Algunos ejemplos de operaciones que se pueden realizar con ALTER son:

-- ALTER puede hacer muchas cosas:

Añadir una columna a una tabla:
ALTER TABLE tablename ADD columnname datatype;

Eliminar una columna de una tabla:
ALTER TABLE tablename DROP COLUMN columnname;

Cambiar el tipo de datos de una columna:
ALTER TABLE tablename ALTER COLUMN columnname newdatatype;

Añadir una restricción de clave primaria a una tabla:
ALTER TABLE tablename ADD PRIMARY KEY (columnname);

Eliminar una restricción de clave primaria de una tabla:
ALTER TABLE tablename DROP PRIMARY KEY;

Añadir un índice a una tabla:
ALTER TABLE tablename ADD INDEX indexname (columnname);

Eliminar un índice de una tabla:
ALTER TABLE tablename DROP INDEX indexname;

--- DROP 🚮
-- Sirve para borrar datos.
ALTER TABLE people
DROP COLUMN date_of_birth