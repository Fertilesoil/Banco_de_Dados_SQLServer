USE db_quitanda

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos ORDER BY Nome ASC;

SELECT * FROM tb_produtos ORDER BY Nome DESC;

SELECT * FROM tb_produtos ORDER BY Preco ASC;

SELECT * FROM tb_produtos ORDER BY Preco DESC;

SELECT * FROM tb_produtos WHERE id = 1;

SELECT * FROM tb_produtos WHERE NOT id = 1;
-- O mesmo comando de cima escrito de forma diferente 
SELECT * FROM tb_produtos WHERE id != 1;

INSERT INTO tb_produtos
(Nome, Quantidade, DataValidade, Preco, Descricao)
VALUES
('Maçã Verde', 12, '2023-09-19', 27.00, 'A mais saborosa para sobremesas');

INSERT INTO tb_produtos
(Nome, Quantidade, DataValidade, Preco, Descricao)
VALUES
('Ovos Duzia', 10, '2023-09-19', 15.50, 'Quem vive sem ?');

-- Aqui ele busca com o IN um intervalo de valores 
SELECT * FROM tb_produtos 
WHERE Preco In(10, 8, 9) ORDER BY Nome ASC;
-- O mesmo de cima apenas outra forma de escrever 
SELECT * FROM tb_produtos
WHERE Preco BETWEEN 5 AND 15;

-- O % é um coringa; nessa busca você pede para retornar uma letra 
-- ou palavra de forma parcial, por exemplo, você quer palavras que 
-- contenham e no meio ? A consulta é escrita da forma abaixo, o coringa 
-- completa para você o restante. Serve para o começo, meio e fim. 
SELECT * FROM tb_produtos WHERE Nome LIKE '%e%';
SELECT * FROM tb_produtos WHERE Nome LIKE '%e';
SELECT * FROM tb_produtos WHERE Nome LIKE 'e%';
SELECT * FROM tb_produtos WHERE Nome LIKE 'm%';
SELECT * FROM tb_produtos WHERE Nome LIKE 'c%';
SELECT * FROM tb_produtos WHERE Nome LIKE '%c%';

-- Aqui ele conta e retorna a quantidade de linhas na sua tabela 
SELECT COUNT (*) FROM tb_produtos 

-- Essa consulta faz a soma de todas as colunas que você indicar 
SELECT SUM(Preco) AS 'Soma dos produtos' FROM tb_produtos;

-- Essa consulta faz a média das colunas que você indicar 
SELECT AVG(Preco) AS 'Media dos produtos' FROM tb_produtos;

-- Acha o valor Máximo e Mínimo registrado na tabela 
SELECT MAX(Preco) AS 'Valor Máximo' FROM tb_produtos;
SELECT MIN(Preco) AS 'Valor Máximo' FROM tb_produtos;

-- RELACIONAMENTO ENTRE TABELAS 

CREATE TABLE tb_categorias(
	Id BIGINT IDENTITY (1,1),
	Descricao VARCHAR (255) NOT NULL,
	 PRIMARY KEY (Id)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (Descricao)VALUES ('Frutas');INSERT INTO tb_categorias (Descricao)VALUES ('Verduras');INSERT INTO tb_categorias (Descricao)VALUES ('Legumes');INSERT INTO tb_categorias (Descricao)VALUES ('Temperos');INSERT INTO tb_categorias (Descricao)VALUES ('Ovos');INSERT INTO tb_categorias (Descricao)VALUES ('outros');DROP TABLE tb_produtos;CREATE TABLE tb_produtos(	Id BIGINT IDENTITY (1,1),	Nome VARCHAR (255) NOT NULL,	Quantidade INT,	DataValidade DATE,	Preco DECIMAL (6,2),	PRIMARY KEY (Id),	Categoria_id BIGINT,	FOREIGN KEY (Categoria_id) REFERENCES tb_categorias(id));SELECT * FROM tb_produtos;SELECT * FROM tb_categorias;INSERT INTO tb_produtos (Nome, Quantidade, DataValidade, Preco, Categoria_id)VALUES ('Couve', 5 ,'2023-09-18', 13.00, 2),
('Cenoura', 7 ,'2023-09-18', 9.00, 2),
('Pimentão Amarelo', 32 ,'2023-09-18', 22.00, 3),
('Cebola Roxa', 2 ,'2023-09-18', 10.00, 3),
('Batata Lavada', 5 ,'2023-09-18', 9.99, 6),
('Ovos Duzia', 10, '2023-09-19', 15.50, 5),
('Maçã Verde', 12, '2023-09-19', 27.00, 1),
('Maçã', 10 ,'2023-09-18', 15.00, 1),
('Caqui', 3 , '2023-09-18', 8.00, 1),
('Abacate', 45, '2023-09-19', 5.25, 1);

UPDATE tb_produtos SET Categoria_id = 3 WHERE Id = 2;

INSERT INTO tb_produtos
(Nome, Quantidade, DataValidade, Preco, Categoria_id)
VALUES
('Banana', 1300, '2022-03-08', 5.00, 1),('Batata doce', 2000, '2022-03-09', 10.00, 3),('Alface', 300, '2022-03-10', 7.00, 2),('Agrião', 1500, '2022-03-06', 3.00, 2),
('Pimenta', 1100, '2022-03-15', 10.00, 4),('Alecrim', 130, '2022-03-10', 5.00, 4),('Manga', 200, '2022-03-07', 5.49, 1),('Laranja', 3000, '2022-03-13', 10.00, 1);-- Junta as tabelas pelas chavesSELECT * FROM tb_produtos INNER JOIN tb_categoriasON tb_categorias.Id = tb_produtos.Categoria_id;-- A mesma coisa de cima mas escrito desta forma ele oculta colunas-- que você não deseja mostrarSELECT Nome, Quantidade, DataValidade, Preco, Descricao FROM tb_produtos INNER JOIN tb_categoriasON tb_categorias.Id = tb_produtos.Categoria_id;-- Essa busca prioriza a tabela que está ao lado esquerdo e tráz junto-- inclusive valores nulos que não foram preenchidosSELECT * FROM tb_categorias LEFT JOIN tb_produtosON tb_categorias.Id = tb_produtos.Categoria_id;-- Note que aqui a pesquisa também funciona, apenas escreva ela-- após o relacionamento para não dar ruimSELECT * FROM tb_categorias LEFT JOIN tb_produtosON tb_categorias.Id = tb_produtos.Categoria_idWHERE Nome LIKE '%b%' ORDER BY tb_produtos.Preco ASC;------------------------------------------------------SELECT * FROM tb_categorias LEFT JOIN tb_produtosON tb_categorias.Id = tb_produtos.Categoria_idWHERE Nome LIKE '%b%' ORDER BY tb_produtos.Preco DESC;