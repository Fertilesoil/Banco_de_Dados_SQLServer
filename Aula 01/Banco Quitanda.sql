CREATE DATABASE db_quitanda;

USE db_quitanda;
CREATE TABLE tb_produtos (
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Quantidade INT, 
	DataValidade DATE,
	Preco DECIMAL NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO tb_produtos  
(Nome, Quantidade, DataValidade, Preco)
VALUES 
('Caqui', 3 , '2023-09-18', 8.00 );

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos
(Nome, Quantidade, DataValidade, Preco)
VALUES 
('Maçã', 10 ,'2023-09-18', 15.00);

INSERT INTO tb_produtos
(Nome, Quantidade, DataValidade, Preco)
VALUES 
('Couve', 5 ,'2023-09-18', 13.00),
('Cenoura', 7 ,'2023-09-18', 9.00),
('Pimentão Amarelo', 32 ,'2023-09-18', 22.00),
('Cebola Roxa', 2 ,'2023-09-18', 10.00),
('Batata Lavada', 5 ,'2023-09-18', 9.99);

SELECT * FROM tb_produtos WHERE Id = 1;
SELECT * FROM tb_produtos WHERE Nome = 'pimentão amarelo';
SELECT Nome, Quantidade, Preco FROM tb_produtos WHERE Nome = 'pimentão amarelo';
SELECT * FROM tb_produtos WHERE Id = 1 OR Id = 2 OR Id = 3;
SELECT * FROM tb_produtos WHERE Preco > 7 AND Preco < 13;

ALTER TABLE tb_produtos ALTER COLUMN preco DECIMAL (6,2);

--  Tudo que está aqui será comentado --
INSERT INTO tb_produtos
(Nome, Quantidade, DataValidade, Preco)
VALUES 
('Milho', 27 ,'2023-09-18', 10.25);

ALTER TABLE tb_produtos ADD Descricao VARCHAR (255);

UPDATE tb_produtos SET Descricao = 'Milho Verde Natural' WHERE Id = 9;

DELETE FROM tb_produtos WHERE Id = 2;

SELECT Nome as 'Nome do Produto', Descricao as 'Descrição' FROM tb_produtos;