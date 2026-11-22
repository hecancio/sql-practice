CREATE DATABASE IF NOT EXISTS gimnasio;
USE gimnasio;

-- Table: abonados

CREATE TABLE `abonados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `edad` int DEFAULT NULL,
  `fecha_alta` date DEFAULT NULL,
  `cuota_mensual` decimal(6, 2) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;


-- Table: deportes

CREATE TABLE `deportes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  `dificultad` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;


-- Table: inscripciones

CREATE TABLE `inscripciones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `abonado_id` int NOT NULL,
  `deporte_id` int NOT NULL,
  `fecha_inscripcion` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `abonado_id` (`abonado_id`),
  KEY `deporte_id` (`deporte_id`),
  CONSTRAINT `inscripciones_ibfk_1` FOREIGN KEY (`abonado_id`) REFERENCES `abonados` (`id`),
  CONSTRAINT `inscripciones_ibfk_2` FOREIGN KEY (`deporte_id`) REFERENCES `deportes` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
