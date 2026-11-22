/*
Problem 13 — Ranking with Window Functions

Write a query that displays all students, their degrees, their grades, and their ranking within their degree, ordered from highest to lowest grade.

Students with the same grade should receive the same ranking.

For example, if two students share the highest grade, both should receive rank 1, and the next student should receive rank 3.
*/
SELECT nombre, carrera, nota, RANK() OVER(PARTITION BY carrera ORDER BY nota DESC) AS Rango FROM estudiantes
