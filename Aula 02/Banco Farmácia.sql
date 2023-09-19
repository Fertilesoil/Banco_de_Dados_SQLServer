CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;
CREATE TABLE tb_categorias(
	Id BIGINT IDENTITY (1,1),
	Categoria VARCHAR (255),
	Tipo_Produto VARCHAR (255),
	PRIMARY KEY (Id)
);

INSERT INTO tb_categorias (Categoria, Tipo_Produto)
VALUES
('Protetor Solar','Protetor Facial'),
('Aparelho Respiratório','Parar de Fumar'),
('Dor & Febre','Analgésico'),
('Beleza & Saúde','Cuidados Íntimos'),
('Beleza & Saúde','Corpo e Banho'),
('Infantil','Alimentos');

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
	Id BIGINT IDENTITY (1,1),
	Nome VARCHAR (255),
	QntEstoque INT,
	Preco DECIMAL (6,2),
	Fabricante VARCHAR (255),
	Tipo_Id BIGINT,
	FOREIGN KEY (Tipo_Id) REFERENCES tb_categorias(Id)
);

INSERT INTO tb_produtos
(Nome, QntEstoque, Preco, Fabricante, Tipo_Id)
VALUES 
('Eucerin Sun Oil Control FPS 30', 27, 72.99, 'Beiersdorf', 1),
('Nicorette 2Mg', 10, 64.80, 'Janssen-Cilag', 2),
('Coletor Menstrual Tipo 1', 3, 49.90, 'Fleurity', 4),
('Sabonete Líquido Botanicals Orquídea Negra 250Ml', 36, 7.29, 'Unilever', 5),
('Flanax 550Mg', 95, 19.99, 'Bayer', 3),
('Preservativo Blowtex Sabor Morango 12Un', 30, 6.59, 'Ansell', 4),
('PediaSure', 73, 105.56, 'Abbott do Brasil', 6),
('Fórmula Infantil Neo Advance 400Gr', 54, 250.81, 'Danone', 6);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE Preco > 50.00 OR Preco = 50.00;

SELECT * FROM tb_produtos WHERE Preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE Nome LIKE '%c%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.Id = tb_produtos.Tipo_Id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.Id = tb_produtos.Tipo_Id 
WHERE Tipo_Id = 5;

SELECT Nome, QntEstoque AS 'Quantidade Estoque', Preco, Fabricante, Categoria, Tipo_Produto AS 'Produto' 
FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.Id = tb_produtos.Tipo_Id;

SELECT Nome, QntEstoque AS 'Quantidade Estoque', Preco, Fabricante, Categoria, Tipo_Produto AS 'Produto' 
FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.Id = tb_produtos.Tipo_Id
ORDER BY Preco DESC;