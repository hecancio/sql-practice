/*
Problem 3 — JOIN and GROUP BY

Objective: retrieve the name (`nombre`) of each student and the number of subjects (`asignatura`) they are enrolled in.

The result should look like this:
nombre          numero_asignaturas
Ana             2
Carlos          2
Laura           1
Pedro           1

Conditions:
- Use SELECT, FROM, JOIN, ON, and GROUP BY.
- You can also use COUNT().
*/

SELECT estudiantes.nombre, COUNT(matriculas.asignatura) AS numero_asignaturas FROM estudiantes
JOIN matriculas ON estudiantes.id = matriculas.id_estudiante
GROUP BY estudiantes.nombre;
