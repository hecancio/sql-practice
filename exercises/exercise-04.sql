/*
Problem 4 — Filtering Groups with HAVING

We want to retrieve the name (`nombre`) of students who are enrolled in more than one subject, along with the number of subjects they are taking.

The expected result is:
nombre          numero_asignaturas
Ana             2
Carlos          2

Conditions:
- Use SELECT, FROM, JOIN, ON, GROUP BY, and COUNT().
- We are introducing a new clause: HAVING.
- Do not use WHERE to filter the number of subjects.
 */

SELECT estudiantes.nombre , COUNT(matriculas.asignatura) FROM estudiantes
JOIN matriculas ON estudiantes.id = matriculas.id_estudiante
GROUP BY estudiantes.id, estudiantes.nombre
HAVING COUNT(matriculas.asignatura) > 1;
