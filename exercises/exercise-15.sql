/*
Problem 15 — Student performance analysis

Write a query that displays, for every student:
1. Their name, degree and grade.
2. The average grade of their degree.
3. Their ranking within their degree, from highest to lowest grade.
4. The difference between their grade and the grade of the student immediately above them in their degree ranking, expressed as a positive value.
*/
SELECT nombre, carrera, nota, 
AVG(NOTA) OVER(PARTITION BY carrera) AS nota_media, 
RANK() OVER(PARTITION BY carrera ORDER BY nota DESC) AS rango,
ABS(nota-LAG(nota, 1) OVER(PARTITION BY carrera ORDER BY nota DESC)) AS diferencia
FROM estudiantes
