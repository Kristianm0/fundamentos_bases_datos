--- Ddata Manipulation Language 

--- Trata del contenido de las bases de datos, insert, update, delete, select. Etc. Esto lo dice en su nombre, Data manipulation Language o DML.

--- EJEMPLOS DE CODIGO 📌

--- INSERT 🏌️‍♀️
-- Sirve para meter valore 2en la tabla.
INSERT INTO people (last_name, first_name, address, city)
VALUES('Hernadez', 'Laura', 'calle 12', 'monterrey');

--- UPDATE 🛠️
-- Sirve para actualizar valores.
UPDATE people
SET last_name = 'Chavez', city = 'Merida'
WHERE person_id = 1;

UPDATE people
SET first_name = 'Juan'
WHERE city = 'Merida';

UPDATE people
SET first_name = 'Juan';


--- DELETE 🚮
-- Sirve para borrar el contenido de una tabla.

DELETE FROM people
WHERE person_id = 1;


--- SELECT 🤘
-- sirve para traer informacion de la base de datos.

SELECT first_name, last_name
FROM people;