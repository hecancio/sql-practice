/*
Problem 7 — Students Above Their Major's Average

We want to retrieve the name (`nombre`), major/degree (`carrera`), and grade (`nota`) of those students whose grade is higher than the average grade of their own major.

For example, a Physics student should be compared against the Physics average, not the overall average of all students.

The expected result, with our current data, is:
nombre  carrera nota
Ana     Fisica  9.0
Marta   Fisica  8.7
*/

/* SELECT nombre, carrera, nota FROM estudiantes
WHERE (carrera = 'Física' AND nota > (SELECT AVG(nota) FROM estudiantes WHERE carrera = 'Física'))
OR (carrera = 'Matemáticas' AND nota > (SELECT AVG(nota) FROM estudiantes WHERE carrera = 'Matemáticas'))
OR (carrera = 'Informática' AND nota > (SELECT AVG(nota) FROM estudiantes WHERE carrera = 'Informática')); */

SELECT nombre, carrera, nota FROM estudiantes e
WHERE nota > (SELECT AVG(nota) FROM estudiantes WHERE carrera = e.carrera);
