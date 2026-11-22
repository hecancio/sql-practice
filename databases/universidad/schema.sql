CREATE DATABASE IF NOT EXISTS universidad;
USE universidad;

-- Table: estudiantes

CREATE TABLE `estudiantes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `carrera` varchar(100) DEFAULT NULL,
  `nota` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;


-- Table: matriculas

CREATE TABLE `matriculas` (
  `id_matricula` int NOT NULL AUTO_INCREMENT,
  `id_estudiante` int DEFAULT NULL,
  `asignatura` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_matricula`),
  KEY `id_estudiante` (`id_estudiante`),
  CONSTRAINT `matriculas_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
