INSERT INTO gimnasio.abonados
    (nombre, edad, fecha_alta, cuota_mensual, activo)
VALUES
    ('Laura', 24, '2024-03-12', 45.00, 1),
    ('Carlos', 31, '2023-09-05', 55.00, 1),
    ('Marta', 28, '2025-01-20', 45.00, 1),
    ('Pedro', 42, '2022-06-15', 60.00, 1),
    ('Ana', 35, '2024-11-03', 50.00, 0),
    ('Javier', 22, '2025-04-10', 40.00, 1),
    ('Elena', 39, '2023-12-01', 55.00, 1),
    ('David', 27, '2025-07-18', 45.00, 1),
    ('Sofia', 30, '2024-08-22', 50.00, 1),
    ('Miguel', 46, '2022-10-30', 60.00, 1);

INSERT INTO gimnasio.deportes
    (nombre, categoria, dificultad)
VALUES
    ('Natacion', 'Acuatico', 'Media'),
    ('Crossfit', 'Fitness', 'Alta'),
    ('Yoga', 'Bienestar', 'Baja'),
    ('Boxeo', 'Combate', 'Alta'),
    ('Pilates', 'Bienestar', 'Media'),
    ('Spinning', 'Fitness', 'Media');

INSERT INTO gimnasio.inscripciones
    (abonado_id, deporte_id, fecha_inscripcion)
VALUES
    (1, 1, '2024-03-15'),
    (1, 3, '2024-04-01'),
    (2, 2, '2023-09-10'),
    (2, 4, '2023-10-05'),
    (3, 3, '2025-01-25'),
    (3, 5, '2025-02-01'),
    (4, 1, '2022-06-20'),
    (4, 2, '2022-07-01'),
    (4, 4, '2023-01-15'),
    (5, 5, '2024-11-10'),
    (6, 2, '2025-04-12'),
    (6, 6, '2025-04-15'),
    (7, 1, '2023-12-05'),
    (7, 3, '2024-01-10'),
    (8, 4, '2025-07-20'),
    (9, 5, '2024-08-25');
