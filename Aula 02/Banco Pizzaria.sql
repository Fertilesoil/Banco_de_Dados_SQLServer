CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;
CREATE TABLE tb_categorias(
	Id BIGINT IDENTITY (1,1),
	Tamanho VARCHAR (255),
	QntFatias INT,
	PRIMARY KEY (Id)
);

INSERT INTO tb_categorias
(Tamanho, QntFatias)
VALUES 
('Grande', 12),
('Média', 8),
('Broto', 4),
('Disco Médio', 1),
('Disco Grande', 1);

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas(
	Id BIGINT IDENTITY (1,1),
	Sabor VARCHAR (255),
	Borda VARCHAR (255),
	Tipo VARCHAR (255),
	Preco DECIMAL (6,2),
	PRIMARY KEY (Id),
	Tipo_Id BIGINT, 
	FOREIGN KEY (Tipo_Id) REFERENCES tb_categorias(Id)
);

INSERT INTO tb_pizzas
(Sabor, Borda, Tipo, Preco, Tipo_Id)
VALUES 
('Pizza Presunto e Queijo','Doce de Leite','Agridoce', 45.90, 1),
('Pizza Atum','Cheddar','Salgada',39.90,2),
('Pizza Baiana','Sem Borda','Salgada',32.00,1),
('Pizza Churros','Doce de Leite','Doce',25.00,3),
('Pizza Romeu e Julieta','Goiabada','Agridoce',20.00,3),
('Esfiha Carne','Sem Recheio','Salgada',5.00,5),
('Esfiha Queijo','Catupiry','Salgada',10.00,4),
('Esfiha Chocolate Branco','Chocolate Branco','Doce',5.00,5);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE Preco > 20.00 OR Preco = 20.00;

SELECT * FROM tb_pizzas WHERE Preco BETWEEN 30.00 AND 50.00;

SELECT * FROM tb_pizzas WHERE Sabor LIKE '%m%';

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.Id = tb_pizzas.Tipo_Id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.Id = tb_pizzas.Tipo_Id 
WHERE Tipo_Id = 1;

SELECT Sabor, Borda, Tipo, Preco, Tamanho, QntFatias 
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.Id = tb_pizzas.Tipo_Id;

SELECT Sabor, Borda, Tipo, Preco, Tamanho, QntFatias 
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.Id = tb_pizzas.Tipo_Id
ORDER BY Preco ASC;