/*
Problem 9 — Conditional values with CASE WHEN
Write an SQL query that displays the following columns for every student:
- nombre
- carrera
- nota
- resultado
The resultado column must classify students according to their grades:
- Grade greater than or equal to 9: Excellent
- Grade greater than or equal to 7 and below 9: Good
- Grade greater than or equal to 5 and below 7: Pass
- Grade below 5: Fail
 */
SELECT nombre, carrera, nota,
CASE 
	WHEN nota >= 9 THEN 'Excelente'
	WHEN nota > 7 AND nota <= 9 THEN 'Bien'
	WHEN nota > 5 AND nota <= 7 THEN 'Suficiente'
	WHEN nota < 5 THEN 'Suspendido'
END AS resultado
FROM estudiantes;
