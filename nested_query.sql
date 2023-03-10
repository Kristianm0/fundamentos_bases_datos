--- Nested query

--- EJEMPLO 1 📌
SELECT new_table_projection.date, COUNT(*) AS posts_count
FROM (
	SELECT DATE(MIN(fecha_publicacion)) AS DATE, YEAR((fecha_publicacion) AS post_year
FROM posts
GROUP BY post_year
) AS new_table_projection
GROUP BY new_table_projection.date
ORDER BY new_table_projection.date 

-- Selecionamos la tabla, le pedimos los datos especificos.
-- Le decimos de donde con FROM pero no de una tabla, si no creamos un SELECT.
--. En ese SELECT pedimos los datos de manera especifica de nuevo.
--. Y le ponemos ese select de donde lo va a traer con otro FROM.
--. Lo agrupamos por post year con GROUP.
-- Le ponemos otro nombre con AS para faciliarlo.
-- Y ya en el query general le ponemos dos filtros mas, GROUP BY y le pasamos la la tabla con su row, y ORDER BY y le ponememos la tabla con su row.