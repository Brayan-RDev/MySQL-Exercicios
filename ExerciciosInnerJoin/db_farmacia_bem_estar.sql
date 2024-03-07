CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

DROP TABLE tb_categorias;
DROP TABLE tb_produtos ;

CREATE TABLE tb_categorias (
id INT AUTO_INCREMENT PRIMARY KEY,
nome_categoria VARCHAR(50) NOT NULL,
descricao VARCHAR(255)
);

CREATE TABLE tb_produtos (
id INT AUTO_INCREMENT PRIMARY KEY,
nome_produto VARCHAR(100) NOT NULL,
preco DECIMAL(5, 2) NOT NULL,
estoque INT NOT NULL,
fabricante VARCHAR(100) NOT NULL,
data_validade DATE,
id_categoria INT,
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Medicamentos', 'Medicamentos para alívio de dores e tratamentos diversos.'),
('Cuidados Pessoais', 'Produtos para higiene pessoal e cuidados com o corpo.'),
('Vitaminas e Suplementos', 'Suplementos alimentares e vitaminas para manter a saúde.'),
('Higiene Bucal', 'Produtos para cuidados com a saúde bucal e higiene dos dentes.'),
('Bebês e Mamães', 'Produtos para cuidados com bebês e para as mamães durante a gestação.');

INSERT INTO tb_produtos (nome_produto, preco, estoque, fabricante, data_validade, id_categoria) VALUES 
('Paracetamol 500mg', 8.99, 120, 'Generico', '2022-02-20', 1),
('Shampoo Anticaspa', 15.99, 50, 'Head & Shoulders', '2024-02-01', 2),
('Vitamina C Efervescente', 25.00, 30, 'Now Foods', '2023-12-01', 3),
('Creme Dental Colgate Total', 5.99, 80, 'Colgate-Palmolive', '2023-09-01', 4),
('Fralda Pampers Confort', 40.00, 30, 'Procter & Gamble', '2023-01-15', 5),
('Ibuprofeno', 12.75, 60, 'Generico', '2023-02-15', 1),
('Creme Hidratante Nivea', 8.49, 75, 'Beiersdorf', '2023-03-15', 2),
('Suplemento de Ômega-3', 18.50, 25, 'Nature Made', '2023-01-20', 3),
('Suplemento Energético', 75.50, 25, 'Optimum Nutrition', '2023-02-18', 3),
('Creme Antirrugas', 60.99, 15, 'L''Oréal', '2023-03-10', 2),
('Probiótico 30 Billion CFU', 55.25, 30, 'Nature''s Bounty', '2023-01-20', 3),
('Protetor Solar FPS 70', 68.75, 40, 'Neutrogena', '2023-01-15', 2);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco >= 5 AND preco <= 60;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.id_categoria;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.id_categoria WHERE tb_produtos.id_categoria = 2;




