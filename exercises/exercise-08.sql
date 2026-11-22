/*
Problem 8 — Comparing Students

We want to find the students who have a grade higher than all other students in their same major/degree.

The query must display:
- nombre
- carrera
- nota
That is, we want to identify the student or students with the highest grade in each major.
*/


SELECT e.nombre, e.carrera, MAX(e.nota) FROM estudiantes e
JOIN estudiantes EST ON e.carrera = EST.carrera
GROUP BY e.nombre, e.carrera;
