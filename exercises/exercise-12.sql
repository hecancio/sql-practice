/*
Problem 12 — Window Functions

Write a query that displays all students, their degrees, their grades, and the average grade of their degree.

Unlike GROUP BY, your query must preserve one row per student.
*/
SELECT nombre, carrera, nota, AVG(nota) OVER(PARTITION BY carrera) AS media_carrera FROM estudiantes
