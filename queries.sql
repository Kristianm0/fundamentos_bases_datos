--- EJEMPLOS DE QUERIES EN UNA BASE DE DATOS 📌


--- EJEMPLO #1
SELECT city, COUNT(*) AS total
-- Pedimos los datos de ciudad y los contamos, y le ponemos otro nombre que seria total.
FROM people 
-- Le decimos en que tabla buscar
Where active = true
-- Le explicamos que datos traer, le decimos los datos que tengan true en la casilla active.
GROUP BY city
-- Agrupamos a las personas por ciudad
ORDER BY total DESC
-- Lo ordenamos por total pero de manera desendente.
HAVING total >= 2;

-- Le decimos que cuando hayan mas de dos personas lo filtre 
--- El codigo queda asi

SELECT city GROUP (*) AS total
FROM people
WHERE active = true
GROUP BY city
ORDER BY total DESC
HAVING total >= 2;

--- EJEMPLO #2
SELECT *
-- Selecionamos todo cuando usamos *
FROM posts
-- Le decimos donde busque esos datos.
WHERE fecha_publicacion > '2024'
-- Le damos una condicion o carateristica para los datos, donde la primera frase "fecha_publicacion" es la casilla donde le decimos que traiga esos datos pero que sea menor y usamos "<" a 2024.

-- El codigo queda asi:
SELECT *
FROM posts
WHERE fecha_publicacion > '2024'

--- EJEMPLO #3
SELECT titulo, fecha_publicacion, estatus 
FROM posts
-- Aqui le decimos que solo traiga o seleccione las casillas de; Titulo y fecha_publicacion. Y le decimos de donde la va a sacar con el FROM.

--- EJEMPLO #3.1
SELECT titulo AS encabezado del blog
FROM posts
--- Tambien puedes cambiar el titulo de la casilla poniendo AS y despues el nombre.

-- Puedes cambiar el titulo de varias casillas
SELECT titulo AS encabezado, fecha_publicacion AS fecha, estatus AS esatado_del_post
FROM posts
-- La misma logica, depues de AS el titulo nuevo y una coma para traer el las otras casillas y su titulo

-- Con el AS y el nombre que le hayas puesto a la casilla puedes llamarla de nuevo con su nuevo nombre.

--- EJEMPLO #3.2
SELECT COUNT(*)
FROM posts

--- Con el count podemos contar las columnas, el conteo total de las columnas. Pero puedes mejorar este count.

SELECT COUNT(*) AS numero_posts
FROM posts
-- Con esto hacemos lo mismo que el codigo de arriba pero solo le cambiamos el encabezado que tenia en el row.