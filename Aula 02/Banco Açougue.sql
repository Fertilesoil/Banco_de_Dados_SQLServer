CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;
CREATE TABLE tb_categorias(
	Id BIGINT IDENTITY (1,1),
	Tipo VARCHAR (255),
	Disponibilidade VARCHAR (255),
	PRIMARY KEY (Id) 
);

INSERT INTO tb_categorias (Tipo, Disponibilidade)
VALUES
('Aves','Disponível'),
('Suínos','Disponível'),
('Bovino','Disponível'),
('Linguiças','Disponível'),
('Ovinos','Indisponível');

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
	Id BIGINT IDENTITY (1,1),
	Nome VARCHAR (255),
	Marca VARCHAR (255),
	Preco DECIMAL (6,2),
	Estoque INT,
	PRIMARY KEY (Id), 
	Tipo_Id BIGINT,
	FOREIGN KEY (Tipo_Id) REFERENCES tb_categorias(Id)
);

INSERT INTO tb_produtos 
(Nome, Marca, Preco, Estoque, Tipo_Id)
VALUES
('Linguiça Toscana','Aurora', 21.99, 7, 4),
('Coxão Mole','Friboi', 42.00, 43, 3),
('Bisteca da Copa', 'Origem', 14.99, 87, 2),
('Costela de Cordeiro','Aspaco', 110.00, 0, 5),
('Carne Seca', 'Cidade Das Carnes', 79.00, 13, 3),
('Fraldinha', 'Maturatta', 69.00, 20, 3),
('Paleta de Cordeiro', 'Aspaco', 54.99, 0, 5),
('Asa de Frango', 'Frango Maringá', 30.00, 200, 1);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE Preco > 50.00 OR Preco = 50.00;

SELECT * FROM tb_produtos WHERE Preco BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE Nome LIKE '%c%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.Id = tb_produtos.Tipo_Id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.Id = tb_produtos.Tipo_Id 
WHERE Tipo_Id = 1;

SELECT Nome, Marca, Preco, Estoque, Tipo, Disponibilidade 
FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.Id = tb_produtos.Tipo_Id
ORDER BY Nome ASC;