CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;
CREATE TABLE tb_classes(
	Id BIGINT IDENTITY (1,1),
	Classes VARCHAR (255),
	Arma VARCHAR (255),
	PRIMARY KEY (Id)
);

INSERT INTO tb_classes (Classes, Arma)
VALUES 
('Guerreiro' , 'Espada'),
('Mago' , 'Cajado'),
('Druida' , 'Poções'),
('Arqueiro' , 'Arco e Flecha');

INSERT INTO tb_classes (Classes, Arma)
VALUES 
('Assassino' , 'Adaga');

SELECT * FROM tb_classes;

CREATE TABLE tb_personagens(
	Id BIGINT IDENTITY (1,1),
	Nome VARCHAR (255) NOT NULL,
	Ataque INT NOT NULL,
	Defesa INT NOT NULL,
	Estamina INT NOT NULL,
	Mana INT NOT NULL,
	PRIMARY KEY (Id),
	classe_id BIGINT,
	FOREIGN KEY (classe_id) REFERENCES tb_classes(Id)
);

INSERT INTO tb_personagens (Nome, Ataque, Defesa, Estamina, Mana, classe_id)
VALUES 
('Gatuja Ganilta', 3000, 3200 , 1000 , 1540 ,4),
('Suênio Borba', 4000 , 2178 , 1000 , 400 ,1),
('Balto Guitânio', 3700 , 7800 , 1000 , 5000 ,2),
('Barúseno Xitare', 3200 , 800 , 1000 , 90000 ,3),
('Frota Flint', 2000 , 5100 , 1000 , 3000 ,2),
('Catita Blumrose', 4700 , 4700 , 1000 , 900 ,5),
('Bimbo', 3000 , 4000 , 1000 , 4200 ,2),
('Cristopher Lona', 2000 , 3200 , 1000 , 1300 ,4);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE Ataque > 2000 OR Ataque = 2000;

SELECT * FROM tb_personagens WHERE Defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE Nome LIKE '%c%';

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.Id = tb_personagens.classe_id;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.Id = tb_personagens.classe_id 
WHERE classe_id = 4;

SELECT Nome, Ataque, Defesa, Estamina, Mana, Classes, Arma 
FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.Id = tb_personagens.classe_id;