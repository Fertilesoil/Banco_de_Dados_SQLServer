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
('Camilo Centelha', '2º Ano Fundamental', 9, 'Manhã', 7.8),
('Gadelho Pinto', '1º Ano Ensino Médio', 17, 'Noite', 10.0),
('Célia Clomiria', '3º Ano Ensino Médio', 20, 'Noite', 3.5),
('Enervaldo Batista', '4º Ano Fundamental', 7, 'Manhã', 8.0),
('Lucas Pequí', '2º Ano Fundamental', 9, 'Tarde', 8.5),
('Santana Santos', '1º Ano Ensino Médio', 26, 'Tarde', 5.0),
('Basílico Estamino', '5º Ano Fundamental', 13, 'Tarde', 9.0),
('Estér Miranda', '8º Ano Ensino Médio', 17, 'Noite', 9.5);

SELECT * FROM tb_estudantes WHERE Nota > 7.0;

SELECT * FROM tb_estudantes WHERE Nota < 7.0;

UPDATE tb_estudantes SET Nome = 'Kássio Carteira' WHERE Id = 6;
UPDATE tb_estudantes SET Serie = '2º Ano do Ensino Médio' WHERE Id = 6;
UPDATE tb_estudantes SET Idade = 30 WHERE Id = 6;
UPDATE tb_estudantes SET Turno = 'Noite' WHERE Id = 6;
UPDATE tb_estudantes SET Nota = 4.0 WHERE Id = 6;

