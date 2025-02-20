CREATE TABLE IF NOT EXISTS `brand` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `model` (
  `id` int NOT NULL AUTO_INCREMENT,
  `model` varchar(255) NOT NULL,
  `marca_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKe4ny30m1rnjvhjtv28tbf3k1` (`marca_id`),
  CONSTRAINT `FKe4ny30m1rnjvhjtv28tbf3k1` FOREIGN KEY (`marca_id`) REFERENCES `brand` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `device_add` (
  `id` int NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `memory` varchar(255) NOT NULL,
  `new_device` bit(1) DEFAULT NULL,
  `processor` varchar(255) NOT NULL,
  `screen` varchar(255) NOT NULL,
  `storage` varchar(255) NOT NULL,
  `id_brand` int NOT NULL,
  `id_model` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKccb8i2w8c5f29532xk68cj4l2` (`id_brand`),
  KEY `FKa3rgyh9lqmky63g5e8v5klbc6` (`id_model`),
  CONSTRAINT `FKa3rgyh9lqmky63g5e8v5klbc6` FOREIGN KEY (`id_model`) REFERENCES `model` (`id`),
  CONSTRAINT `FKccb8i2w8c5f29532xk68cj4l2` FOREIGN KEY (`id_brand`) REFERENCES `brand` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO banco_new.brand (id, brand) VALUES
	 (1, 'Samsung'),
	 (2, 'Apple'),
	 (3, 'Lenovo'),
	 (4, 'Dell');

INSERT INTO banco_new.model (model,marca_id) VALUES
	 ('GalaxyBook4',1),
	 ('GalaxyBook5',1),
	 ('Ideapad 3',3),
	 ('Ideapad S145',3),
	 ('MacBook Air',2),
	 ('MacBook Pro',2),
	 ('Ispirion 15',4),
	 ('Ispirion 17',4);