CREATE DATABASE IF NOT EXISTS db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE IF NOT EXISTS tb_categorias (
id INT AUTO_INCREMENT PRIMARY KEY,
nome_categoria VARCHAR(100) NOT NULL,
descricao VARCHAR(255),
tipo_material VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS tb_produtos (
id INT AUTO_INCREMENT PRIMARY KEY,
nome_produto VARCHAR(100) NOT NULL,
preco DECIMAL(6, 2) NOT NULL,
quantidade INT NOT NULL,
data_validade DATE,
id_categoria INT NOT NULL,
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, descricao, tipo_material)
VALUES
('Cimento', 'Material essencial para construção e obras.', 'Construção'),
('Tintas e Revestimentos', 'Produtos para coloração e revestimento de superfícies.', 'Construção'),
('Ferragens', 'Itens como parafusos, porcas e pregos.', 'Metalurgia'),
('Madeiras', 'Diversos tipos de madeiras para construção e acabamento.', 'Madeira'),
('Iluminação', 'Produtos relacionados a iluminação residencial e comercial.', 'Elétrico');

INSERT INTO tb_produtos (nome_produto, preco, quantidade, data_validade, id_categoria)
VALUES
('Cimento Portland', 115.99, 100, '2025-01-01', 1),
('Tinta Acrílica Branca', 75.50, 50, '2024-12-01', 2),
('Parafuso Phillips 3x20mm', 100.00, 500, '2024-12-31', 3),
('Prancha de Pinus 2x10', 185.75, 30, '2025-02-15', 4),
('Lâmpada LED 9W', 8.99, 200, '2024-11-01', 5),
('Argamassa para Rejunte', 100.00, 80, NULL, 1),
('Prego com Cabeça 2.5x40mm', 50.00, 700, '2025-03-10', 3),
('Tábua de Cedro 1x8', 118.50, 25, '2025-01-20', 4),
('Areia Lavada', 45.00, 150, NULL, 1),
('Caixa de Tomadas', 22.50, 120, '2024-10-15', 3),
('Tijolo Cerâmico', 0.90, 1000, NULL, 1),
('Fita Isolante', 3.99, 300, '2024-12-31', 3);

SELECT * FROM tb_produtos WHERE preco > 100.00 ORDER BY preco ASC;

SELECT * FROM tb_produtos WHERE preco >= 70 AND preco <= 150 ORDER BY preco ASC;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%' ORDER BY nome_produto ASC;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.id_categoria ORDER BY tb_produtos.id ASC;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.id_categoria WHERE tb_produtos.id_categoria = 3;
