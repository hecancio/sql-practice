/*
Problem 1 — Students and Academic Performance

We have the estudiantes table in our universidad database, with the following columns:

    id
    nombre
    edad
    carrera
    nota

We want to retrieve the nombre and nota of all students who:

    1. Study Physics (Física) or Mathematics (Matemáticas).
    2. Have a grade (nota) greater than 7.
    3. Are ordered from highest to lowest grade (nota).
*/

SELECT nombre, nota FROM estudiantes 
WHERE  (carrera = 'Fisica' OR carrera = 'Matematicas') AND nota > 7 ORDER BY nota DESC;
