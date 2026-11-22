/*
Problem 2 — Enrollments and Students

We are going to introduce a second conceptual table:

matriculas
id_matricula    id_estudiante   asignatura
1               1               Mecánica
2               1               Electromagnetismo
3               2               Álgebra
4               3               Mecánica
5               4               Programación
6               2               Análisis Matemático

Prompt:

We want to retrieve the name (`nombre`) of the students and the subjects (`asignatura`) they are enrolled in.

Display only students who have a grade (`nota`) greater than 8.

Constraints: use SELECT, FROM, INNER JOIN, ON, and WHERE.
*/

/* CREATE TABLE matriculas (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    id_estudiante INT,
    asignatura VARCHAR(100),
    FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id)
); */

/* INSERT INTO matriculas (id_estudiante, asignatura)
VALUES
(1, 'Mecanica'),
(1, 'Electromagnetismo'),
(2, 'Algebra'),
(3, 'Mecanica'),
(4, 'Programacion'),
(2, 'Analisis Matematico'); */

/* SELECT * FROM matriculas;  */


SELECT estudiantes.nombre, matriculas.asignatura FROM estudiantes
JOIN matriculas ON estudiantes.id = matriculas.id_matricula
WHERE estudiantes.nota > 8;



