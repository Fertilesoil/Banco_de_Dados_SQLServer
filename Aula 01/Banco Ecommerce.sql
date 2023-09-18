CREATE DATABASE db_ecommerce

USE db_ecommerce;

CREATE TABLE tb_produtos (
	Id BIGINT IDENTITY (1,1),
	Nome VARCHAR (200) NOT NULL,
	Tipo VARCHAR (200) NOT NULL,
	Valor DECIMAL (6,3) NOT NULL,
	Setor VARCHAR (200) NOT NULL,
	Peso VARCHAR (30) NOT NULL,
	PRIMARY KEY (Id)
);

SELECT * FROM tb_produtos;


INSERT INTO tb_produtos
(Nome, Tipo, Valor, Setor, Peso)
Values
('Tinner', 'Tintas', 50.00, 'Mercearia','1Kg'),
('Adesivo Vasco da Gama', 'Papelaria', 12.70, 'Mercearia','10Gr'),
('Samambaia', 'Jardinagem', 35.80, 'Mercearia','5,8Kg'),
('Humor', 'Perfumaria', 119.90, 'Mercearia','800Gr'),
('Luva Emborrachada', 'EPIs', 76.00, 'Mercearia','500Gr'),
('Tekitos', 'Congelados', 36.90, 'Perecíveis','900Gr'),
('Maçã do Peito', 'Açougue', 27.90, 'Perecíveis','1Kg'),
('Caneta Bic Tricolor', 'Papelaria', 14.70, 'Mercearia','45Gr');

INSERT INTO tb_produtos
(Nome, Tipo, Valor, Setor, Peso)
Values
('Tv Samsung 60 Polegadas', 'Eletrônicos', 6990.00, 'Eletro Eletrônicos', '13Kg'),
('Fondue Especial Ofner','Congelados', 500.00,'Mercearia','2Kg');

UPDATE tb_produtos SET Valor = 800 WHERE Id = 9;
UPDATE tb_produtos SET Nome = 'Arranhador' WHERE Id = 9;
UPDATE tb_produtos SET Tipo = 'PetShop' WHERE Id = 9;
UPDATE tb_produtos SET Setor = 'PetShop' WHERE Id = 9;
UPDATE tb_produtos SET Peso = '3Kg' WHERE Id = 9;

ALTER TABLE tb_produtos ALTER COLUMN Valor DECIMAL (6,2);

SELECT * FROM tb_produtos WHERE Valor > 500.00 OR Valor = 500.00;

SELECT * FROM tb_produtos WHERE Valor < 500.00;

UPDATE tb_produtos SET Valor = 3.49 WHERE Id = 2;
UPDATE tb_produtos SET Nome = 'Creme de Leite Italac' WHERE Id = 2;
UPDATE tb_produtos SET Tipo = 'Não Perecível' WHERE Id = 2;
UPDATE tb_produtos SET Setor = 'Mercearia' WHERE Id = 2;
UPDATE tb_produtos SET Peso = '250Gr' WHERE Id = 2;