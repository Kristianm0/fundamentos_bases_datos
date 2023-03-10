--- EJEMPLOS DE WHERE 📌

--- EJEMPLO #1
SELECT *
FROM posts
WHERE id < 50
-- Selecionamos los datos con SELECT, que selecione todo con *
-- Con FROM le decimos donde los tiene que buscar, en la tabla posts.
-- Y le pasamos un filtro con WHERE, que el id sea mayor a 50.

--- EJEMPLO #2
SELECT * 
FROM posts
WHERE id <= 50
-- Selecionamos todo con *
-- Le decimos en que base de datos con FROM, que seria en posts.
-- Con WHERE le pasamos un filtro para que sea mayor o igual a 50.

--- EJEMPLO #3
SELECT * 
FROM posts
WHERE id <= 50
-- Selecionamos todo con *
-- Le decimos en que base de datos con FROM, que seria en posts.
-- Con WHERE le pasamos un filtro para que sea mayor o igual a 50.

--- EJEMPLO #4
SELECT *
FROM posts
WHERE estatus = 'activo'
-- Selecionamos todo los datos con *.
-- Le decimos en que base de datos con FROM.
-- Con WHERE le damos un filtro, esta vez el filtro es de carater de se pone entre comillas 'activo'.

-- EJEMPLO #5
SELECT *
FROM posts
WHERE titulo LIKE '% Escandalo%'
-- Selecionamos todo con *
-- FROM para la base de datos.
-- WHERE para dicirle que en la traiga de la columna titulo culquiera donde tenga la palabra Escandalo, para eso se usan los porcentaje (%) y con el LIKE se le dice que aparezca o sea parecido tal cadena. 
-- Ademas si pones el porcentaje (%) al final apareceran los titulos que comienzan con esa cadena asi 'escandalo%', pero si pones el porcentaje al comienzo asi '%escandalo' traera los titulos que termine con esa cadena de texto.

--- EJEMPLO #6
SELECT *
FROM posts
WHERE fecha_publicacion > '2025-01-01'
-- Selecionamos todo los datos con *
-- Le decimos la base de datos con FROM posts
-- Con WHERE le damos una condicion de que traiga las fechas mayores a año '2025-01-01' Porque el WHERE tambien funciona con fechas.


SELECT *
FROM posts
WHERE fecha_publicacion BETWEEN '2023-01-01' AND '2025-09-31'
-- Tambien puedes hacerlo que este entre una fecha y otra. Con BETWEEN y le damos la primera fecha y luego con el conector AND le damos la segunda fecha.

SELECT *
FROM posts
WHERE id BETWEEN 10 AND 40
-- El BETWEEN tambien funciona con numeros enteros.

--- EJEMPLO #7
SELECT*
FROM posts
WHERE YEAR(fecha_publicacion) BETWEEN '2023' AND '2024'
-- Selecionamos todo con *
-- Que lo haga de la base de datos posts con FROM 
-- Con el WHERE le damos una condicion a  los datos de fecha donde solo cuente el año con YEAR, pero tambien WHERE lee MONTH Y TIME. Ademas lo podemos convinar con un BETWEEN.

SELECT*
FROM posts
WHERE MONTH(fecha_publicacion) = '04'
-- Con el WHERE le decimos que nos traiga un mes en especifico en este caso es abril ya que es el 4.

--- WHERE NULO Y NO NULO 📌

--- EJEMPLO #1
SELECT *
FROM posts
WHERE usuario_id IS NULL
-- Selecionamos todo los datos con *
-- Le decimos en que base de datos lo va a hacer con FROM posts.
-- Le decimos la condicion con WHERE para que traiga los valores NULL, le ponemos donde usuarios es NULL y queda WHERE usuario IS NULL.

SELECT *
FROM posts
WHERE usuario_id IS NOT NULL 
-- Aqui va a traer todo los usuarios que no tengan el ID nulo.

SELECT *
FROM posts
WHERE usuario_id IS NOT NULL 
	AND status = 'activo'
	AND id <50
-- Aqui se usa AND para crear más filtros de la data y asi mejorar la busqueda de la data que tenemos. Por ejemplo, aqui le damos dos condiciones extra, que el status sea activo, y que el id sea mayor a 50, y asi infinitamente, puedes poner los AND que quiereas.

--- EJEMPLO #2
-- Publicaciones de 2020 hasta 2021
SELECT*
FROM posts
WHERE YEAR(fecha_publicacion) BETWEEN '2021' AND '2022'
-- Selecionamos todo.
-- Le decimos en que base de datos buscar con FROM.
-- Con WHERE filtramos los datos la fecha, le decimos que solo por año con YEAR y entre comillas metemos la casilla, con BETWEEN le damos la fecha con la que comenzara y luego con la que terminara y en el medio usamos AND para unirlas.

--- EJEMPLO #3
-- Publicaciones del 2022 por el usuario 1
SELECT *
FROM posts 
WHERE YEAR(fecha_publicacion) = '2022'
AND usuario_id = 1
-- Selecionamos todo.
-- Le decimos la base de datos con FROM posts.
-- Con el WHERE filtramos los datos, por año que sea 2022.
-- Con el AND adicionamos que se aoslo del usuario_id = 1