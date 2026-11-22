/*
Problem 6 — Students and Grades

We want to retrieve the name (`nombre`) of the students, their major/degree (`carrera`), and their grade (`nota`).

However, this time we want to display only the students whose grade is greater than the average grade of all students.

The expected result, with our current data, is:
nombre  carrera     nota
Carlos  Matematicas 9.2
Marta   Fisica      8.7
Ana     Fisica      9.0
*/

SELECT nombre, carrera, nota FROM estudiantes
WHERE nota > AVG(nota);
