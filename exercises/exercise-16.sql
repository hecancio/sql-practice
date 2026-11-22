/*
Problem 16 — EXISTS

Write a query that displays the nombre and carrera of all students who are enrolled in at least one subject.
*/
SELECT DISTINCT e.nombre, e.carrera FROM estudiantes e
JOIN matriculas m ON e.id = m.id_estudiante

SELECT e.nombre, e.carrera FROM estudiantes e
WHERE EXISTS(SELECT id_estudiante FROM matriculas m WHERE id_estudiante = e.id)
