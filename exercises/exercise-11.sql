/*
Problem 11 — Common Table Expressions (CTEs)

Write a query using a Common Table Expression (CTE) to calculate the average grade of each degree.

Then, using that result, display the names, degrees and grades of all students whose grade is higher than the average grade of their own degree.
*/
WITH Media AS (SELECT carrera, AVG(nota) AS average FROM estudiantes GROUP BY carrera)
SELECT e.nombre, e.carrera, e.nota FROM estudiantes e
JOIN Media M ON e.carrera = M.carrera 
WHERE e.nota > M.average
