--- GROUP BY 📌

--- EJEMPLO 1
SELECT estatus, COUNT(*) posts_quantity
FROM posts
GROUP BY estatus
-- Selecionamos la columna estatus, le ponemos COUNT para que cuente los valores.
-- Con FROM le decimos de donde va a sacar esos datos.
-- Con GROUP BY agrupamos los posts para que nos regrese el valor total.

--- EJEMPLO 2

SELECT YEAR(fecha_publicacion) AS posts_year, COUNT(*) AS post_quantity 
FROM posts
GROUP BY posts_year
-- Selecionamos el año con YEAR, le cambiamos el nombre con AS. Contamos todo los posts y le cambiamos el nombre.
-- Con FROM le decimos en que base de datos.
-- GROUP BY para agrupar los posts por año.

SELECT MONTHNAME(fecha_publicacion) AS posts_month, COUNT(*) AS post_quantity
FROM posts
GROUP BY posts_month
-- SELECT para selecionar los datos que queremos con AS le cambiamos el nombre, con COUNT contamos los posts.
-- Con FROM le decimos de donde va a sacar los datos.
-- Con GROUP BY lo unimos para que no de datos repetidos si no que los una.

--- EJEMPLO 3
SELECT estatus, MONTHNAME(fecha_publicacion) AS post_month, COUNT(*) AS post_quantity 
FROM posts
GROUP BY estatus, post_month
-- SELECT busca los datos que queremos, con MONTHNAME pedimos el nombre del mes y le damos la casilla entre parentesis (), le cambiamos el nombre con AS, COUNT cuenta la cantidad de posts.
-- Con FROM le decimos de donde va a sacar los datos.
-- GROUP BY va a unir los datos por mes, y por el estatus.