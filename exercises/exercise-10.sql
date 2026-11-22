/*
 * Problem 10 — Combining queries with UNION

Write a query that displays the names of all students who meet at least one of the following conditions:
- They are enrolled in the subject Mecanica.
- They belong to the Fisica degree.

Each student should appear only once, even if they meet both conditions.
*/

SELECT e.nombre FROM estudiantes e
JOIN matriculas m ON e.id = m.id_estudiante 
WHERE m.asignatura='Mecánica'
UNION 
SELECT e.nombre FROM estudiantes e
WHERE e.carrera='Física'
