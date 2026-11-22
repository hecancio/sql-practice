/*
Problem 17 — NOT EXISTS

Write a query that displays the nombre and carrera of all students who are not enrolled in any subject.
*/
SELECT e.nombre, e.carrera FROM estudiantes e
WHERE NOT EXISTS(SELECT m.id_estudiante FROM matriculas m WHERE m.id_estudiante = e.id)
