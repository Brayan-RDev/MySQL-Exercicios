CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
id INT AUTO_INCREMENT PRIMARY KEY,
nome_categoria VARCHAR(50) NOT NULL,
descricao VARCHAR(255)
);

CREATE TABLE tb_pizzas (
id_pizza INT AUTO_INCREMENT PRIMARY KEY,
sabor VARCHAR(50) NOT NULL,
tamanho VARCHAR(10) NOT NULL,
preco DECIMAL(8, 2) NOT NULL,
disponivel BOOLEAN NOT NULL,
id_categoria INT,
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria) VALUES
('Tradicional'),
('Especialidades'),
('Vegetariana'),
('Doces'),
('Promocional');

INSERT INTO tb_pizzas (sabor, tamanho, preco, disponivel, id_categoria) VALUES
('Filé Mignon', 'Média', 63.00, TRUE, 1),
('Cinco Queijos', 'Média', 55.00, TRUE, 1),
('Mussarela', 'Média', 30.00, TRUE, 1),
('Calabresa', 'Grande', 35.00, TRUE, 1),
('Frango com Catupiry', 'Grande', 46.00, TRUE, 2),
('Quatro Queijos', 'Grande', 47.00, TRUE, 2),
('Portuguesa', 'Grande', 45.50, TRUE, 1),
('Margherita', 'Pequena', 28.00, TRUE, 1),
('Chocolate com Morango', 'Pequena', 22.50, TRUE, 4),
('Promoção Especial', 'Grande', 38.00, TRUE, 5);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco >= 50 AND preco <= 100;

SELECT * FROM tb_pizzas WHERE sabor LIKE '%M%';

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.id_categoria;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.id_categoria WHERE tb_pizzas.id_categoria = 4;
