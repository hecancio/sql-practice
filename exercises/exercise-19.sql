/*
Problem 19

Write a query that displays the name, age and monthly fee of each active gym member who practices at least two different sports.

Additionally, display the number of sports they practice and their position among active members, ordered by the number of sports practiced from highest to lowest.

Order the final results by position.
*/
/* SELECT * FROM inscripciones */

WITH resultado AS (
	SELECT DISTINCT
		a.nombre, 
		a.id,
		a.edad, 
		a.cuota_mensual,
		a.activo,
		COUNT(i.abonado_id) OVER(PARTITION BY a.id) AS numero_deportes
	FROM abonados a
	JOIN inscripciones i
		ON a.id = i.abonado_id
	WHERE a.activo = TRUE)
SELECT  r.nombre, 
		r.id,
		r.edad, 
		r.cuota_mensual,
		r.numero_deportes,
		RANK() OVER(ORDER BY numero_deportes DESC) AS rango,
CASE 
	WHEN r.numero_deportes >=2 THEN 'Sí'
	ELSE 'No'
END AS 'practica +2 deportes?'
FROM resultado r
WHERE r.numero_deportes >=2;
