/*
Problem 18 — Recursive CTE

Write a query that generates all possible paths of enrollment for each student, following this rule:
- Start with each student and their first enrolled subject.
- Recursively extend the path by adding the next enrolled subject.
- Display the student's name and the complete path of subjects.
 */

/* WITH RECURSIVE Paths AS (
SELECT e.id AS id_estudiante, e.nombre, m.asignatura, MIN(m.id_matricula)FROM estudiantes e
JOIN matriculas m ON e.id = m.id_estudiante
GROUP BY e.id, e.nombre
UNION ALL
SELECT e.id, e.nombre, CONCAT(p.asignaturas, ' → ', m.asignatura) AS asignaturas, m.id_matricula FROM Paths p
JOIN estudiantes e ON e.id = p.id_estudiante
JOIN matriculas m ON m.id_matricula = (SELECT MIN(m.id_matricula) FROM matriculas m WHERE m.id_estudiante = p.id_estudiante ND m.id_matricula > p.id_matricula)
WHERE m.id_estudiante = p.id_estudiante AND m.id_matricula > p.id_matricula

)  SELECT * FROM Paths*/

WITH RECURSIVE

-- First, number each student's enrollments
RankedMatriculas AS (
    SELECT
        m.id_estudiante,
        m.asignatura,
        m.id_matricula,
        ROW_NUMBER() OVER (
            PARTITION BY m.id_estudiante
            ORDER BY m.id_matricula
        ) AS rn
    FROM matriculas m
),

-- Recursive CTE
Paths AS (
    -- Base case: first subject
    SELECT
        e.id AS id_estudiante,
        e.nombre,
        CAST(m.asignatura AS CHAR(1000)) AS asignaturas,
        m.id_matricula,
        m.rn
    FROM estudiantes e
    JOIN RankedMatriculas m
        ON e.id = m.id_estudiante
    WHERE m.rn = 1

    UNION ALL

    -- Recursive case: add next subject
    SELECT
        p.id_estudiante,
        p.nombre,
        CONCAT(p.asignaturas, ' → ', m.asignatura),
        m.id_matricula,
        m.rn
    FROM Paths p
    JOIN RankedMatriculas m
        ON m.id_estudiante = p.id_estudiante
        AND m.rn = p.rn + 1
)

SELECT
    nombre,
    asignaturas
FROM Paths
ORDER BY id_estudiante, rn;
