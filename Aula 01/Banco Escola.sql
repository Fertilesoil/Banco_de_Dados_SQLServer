CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
	Id BIGINT IDENTITY (1,1),
	Nome VARCHAR (200),
	Serie VARCHAR (200),
	Idade TINYINT,
	Turno VARCHAR (50),
	Nota REAL,
	PRIMARY KEY (Id)
);

SELECT * FROM tb_estudantes;

INSERT INTO tb_estudantes
(Nome, Serie, Idade, Turno, Nota)
VALUES 
('Camilo Centelha', '2� Ano Fundamental', 9, 'Manh�', 7.8),
('Gadelho Pinto', '1� Ano Ensino M�dio', 17, 'Noite', 10.0),
('C�lia Clomiria', '3� Ano Ensino M�dio', 20, 'Noite', 3.5),
('Enervaldo Batista', '4� Ano Fundamental', 7, 'Manh�', 8.0),
('Lucas Pequ�', '2� Ano Fundamental', 9, 'Tarde', 8.5),
('Santana Santos', '1� Ano Ensino M�dio', 26, 'Tarde', 5.0),
('Bas�lico Estamino', '5� Ano Fundamental', 13, 'Tarde', 9.0),
('Est�r Miranda', '8� Ano Ensino M�dio', 17, 'Noite', 9.5);

SELECT * FROM tb_estudantes WHERE Nota > 7.0;

SELECT * FROM tb_estudantes WHERE Nota < 7.0;

UPDATE tb_estudantes SET Nome = 'K�ssio Carteira' WHERE Id = 6;
UPDATE tb_estudantes SET Serie = '2� Ano do Ensino M�dio' WHERE Id = 6;
UPDATE tb_estudantes SET Idade = 30 WHERE Id = 6;
UPDATE tb_estudantes SET Turno = 'Noite' WHERE Id = 6;
UPDATE tb_estudantes SET Nota = 4.0 WHERE Id = 6;

