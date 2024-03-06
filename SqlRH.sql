CREATE DATABASE sistema_rh;

USE sistema_rh;

DROP TABLE colaboradores;

CREATE TABLE colaboradores(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
cargo VARCHAR(255) NOT NULL,
data_de_admissao DATE NOT NULL,
salario DECIMAL(6,2) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO colaboradores(nome, cargo, data_de_admissao, salario) 
VALUES ("João Silva", "Analista de RH", "2022-01-15", 3000.00),
("Maria Santos", "Gerente de Vendas", "2021-08-20", 2500.00),
("Pedro Oliveira", "Desenvolvedor", "2022-03-02", 1850.00),
("Ana Pereira", "Assistente Administrativo", "2022-05-10", 1800.00),
("Carlos Rocha", "Analista Financeiro", "2021-12-08", 1900.00);

SELECT * FROM colaboradores;

SELECT * FROM colaboradores WHERE salario > 2000.00;

SELECT * FROM colaboradores WHERE salario < 2000.00;

UPDATE colaboradores SET salario = 5000.00 WHERE Id = 3;

