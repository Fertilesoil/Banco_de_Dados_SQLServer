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
('Ma�� Verde', 12, '2023-09-19', 27.00, 'A mais saborosa para sobremesas');

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

-- O % � um coringa; nessa busca voc� pede para retornar uma letra 
-- ou palavra de forma parcial, por exemplo, voc� quer palavras que 
-- contenham e no meio ? A consulta � escrita da forma abaixo, o coringa 
-- completa para voc� o restante. Serve para o come�o, meio e fim. 
SELECT * FROM tb_produtos WHERE Nome LIKE '%e%';
SELECT * FROM tb_produtos WHERE Nome LIKE '%e';
SELECT * FROM tb_produtos WHERE Nome LIKE 'e%';
SELECT * FROM tb_produtos WHERE Nome LIKE 'm%';
SELECT * FROM tb_produtos WHERE Nome LIKE 'c%';
SELECT * FROM tb_produtos WHERE Nome LIKE '%c%';

-- Aqui ele conta e retorna a quantidade de linhas na sua tabela 
SELECT COUNT (*) FROM tb_produtos 

-- Essa consulta faz a soma de todas as colunas que voc� indicar 
SELECT SUM(Preco) AS 'Soma dos produtos' FROM tb_produtos;

-- Essa consulta faz a m�dia das colunas que voc� indicar 
SELECT AVG(Preco) AS 'Media dos produtos' FROM tb_produtos;

-- Acha o valor M�ximo e M�nimo registrado na tabela 
SELECT MAX(Preco) AS 'Valor M�ximo' FROM tb_produtos;
SELECT MIN(Preco) AS 'Valor M�ximo' FROM tb_produtos;

-- RELACIONAMENTO ENTRE TABELAS 

CREATE TABLE tb_categorias(
	Id BIGINT IDENTITY (1,1),
	Descricao VARCHAR (255) NOT NULL,
	 PRIMARY KEY (Id)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (Descricao)
('Cenoura', 7 ,'2023-09-18', 9.00, 2),
('Piment�o Amarelo', 32 ,'2023-09-18', 22.00, 3),
('Cebola Roxa', 2 ,'2023-09-18', 10.00, 3),
('Batata Lavada', 5 ,'2023-09-18', 9.99, 6),
('Ovos Duzia', 10, '2023-09-19', 15.50, 5),
('Ma�� Verde', 12, '2023-09-19', 27.00, 1),
('Ma��', 10 ,'2023-09-18', 15.00, 1),
('Caqui', 3 , '2023-09-18', 8.00, 1),
('Abacate', 45, '2023-09-19', 5.25, 1);

UPDATE tb_produtos SET Categoria_id = 3 WHERE Id = 2;

INSERT INTO tb_produtos
(Nome, Quantidade, DataValidade, Preco, Categoria_id)
VALUES
('Banana', 1300, '2022-03-08', 5.00, 1),
('Pimenta', 1100, '2022-03-15', 10.00, 4),