/*
Problem 14 — Difference between consecutive rows

Write a query that displays all students, their degrees, their grades, and the difference between their grade and the grade of the student immediately above them 
in their degree ranking.

The first student in each degree should have NULL as the difference.

Hint: You can combine LAG() with a simple arithmetic operation. You don't need a new window function.
*/
SELECT nombre, carrera, nota, ABS(nota-LAG(nota, 1) OVER(PARTITION BY carrera ORDER BY nota DESC)) AS diferencia FROM estudiantes;
