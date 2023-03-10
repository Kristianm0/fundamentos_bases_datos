--- JOIN - teoria de conjunto 📌


--- ejemplo 1
SELECT *
FROM usuarios 
	LEFT JOIN posts ON usuarios.id = posts.usuario_id

-- Selecionamos todo con *, con FROM le decimos donde va a buscarlo.
-- LEFT JOIN: Para unir la tabla de la izquierda o la primera que insertamos.
-- ON: Para decirle cual campo de la segunda tabla va a unir.
-- =: El igual para que una el campo que le dimos despues del ON con el campo de la otra tabla.

--- Quedando asi segun el ejemplo:
-- LEFT JOIN posts: Le estamos indicando cual tabla va a unir.
-- ON usuarios.id: Le estamos deciendo cual columna va aunir y de que tabla, se le da el nombre de la tabla con punto y se le indica la columna. Quedando, ON usuarios.id
-- = posts.usuarios_id: Le ponemos un igual para decirle esta columna es igual a esta en la otra tabla, le ponemos el nombre de la tabla con un ounto para indicar la columna quedando asi; = posts.usuario_id.



--- LEFT JOIN 📌
SELECT *
FROM usuarios 
	LEFT JOIN posts ON usuarios.id = posts.usuario_id
-- Lo mismo de siempre pero esta vez usamos un LEFT JOIN para unir la tabla posts con su columna usuario.id se une con posts usuario_id.


SELECT *
FROM usuarios 
	LEFT JOIN posts ON usuarios.id = posts.usuario_id
WHERE posts.usuario_id is NULL
-- Unimos dos tablas pero le damos una condicion a los datos, que la columna de post de usuario_id sea NULL

--- RIGHT JOIN 📌
SELECT *
FROM usuarios 
	RIGHT JOIN posts ON usuarios.id = posts.usuario_id
--- Lo mismo de arriba pero en vez de traer los usuarios asociados a un post ahora trae los post asociados a los usuarios.

SELECT *
FROM usuarios 
	RIGHT JOIN posts ON usuarios.id = posts.usuario_id
WHERE posts.usuario_id IS NULL
-- Lo mismo de arriba pero con una condicion en la columna usuario_id

--- INNER JOIN 📌
SELECT *
FROM usuarios 
	INNER JOIN posts ON usuarios.id = posts.usuario_id
-- Lo mismo pero esta trae los valores que solo estan en las dos tablas. 

--- JOINS COMPUESTOS 📌 
SELECT *
FROM usuarios 
	LEFT JOIN posts ON usuarios.id = posts.usuario_id
UNION 
SELECT *
FROM usuarios 
	RIGHT JOIN posts ON usuarios.id = posts.usuario_id
-- Esto es un JOIN compuesto a traves de una union. Vamos a traer todo los datos que pedimos, que seria una suma total de los usuarios en este caso.

SELECT *
FROM usuarios 
	LEFT JOIN posts ON usuarios.id = posts.usuario_id
WHERE posts.usuario_id IS NULL
UNION 
SELECT *
FROM usuarios 
	RIGHT JOIN posts ON usuarios.id = posts.usuario_id
WHERE posts.usuario_id IS NULL

-- Esto va a traer todo los datos de las dos tablas que le especificamos pero dejando de lado los que tienen usuario NULL.

--- PRUEBAS DE JOINS 📌 

--- 1. Categorias usuarios 
SELECT *
FROM categorias
	RIGHT JOIN usuarios ON categorias.id = usuarios.id 
-- Se seleciona todo.
-- Se especifica la base de datos.
-- Se le da la sentencia para unir los datos de categoria con los de usuario.
-- El resultado es las categorias que han escrito los usuarios, y como se esta uniendo las categorias a la tabla usuario sin ningun filtro se muestran todos los datos de las dos tablas.
-- Aqui con el LEFT y el RIGHT dan el mismo resultado.

--- 2. ¿Que categorias hay?

SELECT categorias.nombre AS categorias, usuarios.nickname AS nombre_usuario
FROM categorias
	INNER JOIN usuarios ON categorias.id = usuarios.id
    GROUP BY nombre
-- Selecianamos los campos especificos.
-- Con el FROM le decimos donde los va a buscar.
-- Con INNER JOIN le unimos los valores de las dos tablas.
-- Con GROUP BY unimos las categorias que son iguales en una para que no aparezcan repetidas.

--- 3. ¿Cuantas posts tiene cada usuario?

SELECT titulo, usuarios.nickname AS usuario, COUNT(posts.usuario_id) AS cantidad_post
FROM posts
INNER JOIN usuarios ON posts.usuario_id = usuarios.id
GROUP BY posts.usuario_id
-- Selecionamos los datos que queremos. Y ademas con COUNT contamos los id de los usuarios para saber la cantidad de veces que aparece y determinar la cantidad de post que tiene el usuario.
-- Con el FROM le decimos donde.
-- Con INNER JOIN buscamos datos de las dos tablas.
-- Con GROUP BY agrupamos los posts.