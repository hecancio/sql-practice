/*
Problem 5 — Calculating Averages by Group

We want to retrieve the average grade (`nota`) for each major/degree (`carrera`), using the `estudiantes` table.

The expected result is:
carrera         nota_media
Matematicas     9.2
Fisica          8.4
Informatica     6.5
*/
SELECT carrera, ROUND(AVG(nota), 2) AS nota_media FROM estudiantes
GROUP BY carrera
ORDER BY nota_media DESC;
