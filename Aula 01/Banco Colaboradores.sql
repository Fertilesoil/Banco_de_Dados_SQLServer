USE db_colaboradores;

CREATE TABLE db_colaboradores(
	Id BIGINT IDENTITY (1,1),
	Salario DECIMAL (6,2),
	Nome VARCHAR (255) NOT NULL,
	Cargo VARCHAR (100) NOT NULL,
	Setor VARCHAR (100) NOT NULL,
	PRIMARY KEY (Id)
);

SELECT * FROM db_colaboradores;

ALTER TABLE db_colaboradores ADD Turno VARCHAR (50);

INSERT INTO db_colaboradores
(Salario, Nome, Cargo, Setor, Turno)
VALUES
(2.000, 'Felícia Cossário', 'Gestor RH', 'Recursos Humanos' , 'Tarde'),
(6.000, 'Jéssica Almassar', 'Desenvolvedora de Software', 'Tecnologia da informação' , 'Tarde'),
(2.300, 'Cláudio Brólio', 'Atendente', 'Fatiação' , 'Manhã'),
(3.000, 'Carolina Altive', 'Gerente RH', 'Recursos Humanos' , 'Noite'),
(2.800, 'Boruto Chaves', 'Estoquista', 'Mercearia' , 'Madrugada');

ALTER TABLE db_colaboradores ALTER COLUMN Salario DECIMAL (6,3);

SELECT * FROM db_colaboradores WHERE Salario > 2.000;

SELECT * FROM db_colaboradores WHERE Salario < 2.000;

UPDATE db_colaboradores SET Salario = 4.000 WHERE Id = 1;
UPDATE db_colaboradores SET Nome = 'Stephanie de Monaco' WHERE Id = 1;
UPDATE db_colaboradores SET Cargo = 'Frente de Caixa' WHERE Id = 1;
UPDATE db_colaboradores SET Setor = 'Operação' WHERE Id = 1;
UPDATE db_colaboradores SET Turno = 'Manhã' WHERE Id = 1;
