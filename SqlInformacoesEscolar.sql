CREATE DATABASE registro_escolar;

USE registro_escolar;

DROP TABLE informacoes_alunos;

CREATE TABLE informacoes_alunos(
id_aluno BIGINT AUTO_INCREMENT,
nome_aluno VARCHAR(255) NOT NULL,
serie VARCHAR(255) NOT NULL,
media_escolar DECIMAL(4, 2) NOT NULL,
frequencia_escolar DECIMAL(5, 2) NOT NULL,
PRIMARY KEY (id_aluno)
);

INSERT INTO informacoes_alunos(nome_aluno, serie, media_escolar, frequencia_escolar) 
VALUES ("Maria Oliveira", "9º ano", 6.50, 65.00),
("João SantosC", "7º ano", 5.00, 60.00),
("Ana Silva", "5º ano", 9.00, 95.00),
("Lucas Souza", "8º ano", 8.50, 92.50),
("Isabela Pereira", "6º ano", 5.50, 70.00),
("Pedro Rocha", "1º ano do ensino médio", 9.50, 97.50),
("Camila Oliveira", "2º ano do ensino médio", 8.75, 100.00),
("André Santos", "3º ano do ensino médio", 3.75, 55.75);

SELECT id_aluno, nome_aluno, serie, media_escolar, CONCAT(frequencia_escolar, '%') AS frequencia_escolar FROM informacoes_alunos;

SELECT id_aluno, nome_aluno, serie, media_escolar, CONCAT(frequencia_escolar, '%') AS frequencia_escolar FROM informacoes_alunos WHERE media_escolar > 7.00;

SELECT id_aluno, nome_aluno, serie, media_escolar, CONCAT(frequencia_escolar, '%') AS frequencia_escolar FROM informacoes_alunos WHERE media_escolar < 7.00;

UPDATE informacoes_alunos SET serie = "9º ano", media_escolar = 9.50, frequencia_escolar = 97.50 WHERE id_aluno = 4;