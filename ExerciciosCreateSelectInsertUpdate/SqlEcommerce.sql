CREATE DATABASE e_commerce;

USE e_commerce;

CREATE TABLE produtos(
id BIGINT AUTO_INCREMENT,
nome_do_produto VARCHAR(255) NOT NULL,
categoria VARCHAR(255) NOT NULL,
estoque BIGINT NOT NULL,
preco DECIMAL(6,2) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO produtos(nome_do_produto, categoria, preco, estoque) 
VALUES ("Smartphone XYZ", "Eletrônicos", 1200.00, 50),
("Notebook ABC", "Informática", 2500.00, 30),
("Camiseta Esportiva", "Moda Esportiva", 50.00, 100),
("Cafeteira Deluxe", "Eletrônicos", 150.00, 20),
("Smart TV 4K", "Eletrodomésticos", 200.00, 80),
("Máquina de Lavar Roupa", "Eletrodomésticos", 3000.00, 15),
("Cafeteira Deluxe", "Eletrodomésticos", 1000.00, 25),
("Perfume Floral", "Beleza e Perfumes", 80.00, 50);

SELECT * FROM produtos;

SELECT * FROM produtos WHERE preco > 500.00;

SELECT * FROM produtos WHERE preco < 500.00;

UPDATE produtos SET nome_do_produto = "Perfume Quasar", estoque = 29, preco = 179.99 WHERE id = 8;