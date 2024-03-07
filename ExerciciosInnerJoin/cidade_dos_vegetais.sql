CREATE DATABASE cidade_dos_vegetais;

USE cidade_dos_vegetais;

CREATE TABLE tb_categorias (
id INT AUTO_INCREMENT PRIMARY KEY,
nome_categoria VARCHAR(100) NOT NULL,
tipo_alimento VARCHAR(50) NOT NULL
);

CREATE TABLE tb_vegetais (
id INT AUTO_INCREMENT PRIMARY KEY,
nome_vegetal VARCHAR(100) NOT NULL,
preco DECIMAL(10, 2) NOT NULL,
quantidade INT,
data_colheita DATE NOT NULL,
id_categoria INT NOT NULL,
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, tipo_alimento)
VALUES 
('Folhas Verdes', 'Inorgânico'),
('Raízes', 'Orgânico'),
('Frutas', 'Inorgânico'),
('Legumes', 'Orgânico'),
('Brássicas', 'Inorgânico');

INSERT INTO tb_vegetais (nome_vegetal, preco, quantidade, data_colheita, id_categoria)
VALUES
('Alface', 40.0, 120, '2024-03-07', 1),
('Espinafre', 35.5, 85, '2024-03-08', 1),
('Cenoura', 30.8, 110, '2024-03-09', 2),
('Maçã', 42.3, 140, '2024-03-10', 3),
('Tomate', 55.2, 75, '2024-03-11', 3),
('Rúcula', 33.2, 65, '2024-03-12', 1),
('Beterraba', 48.7, 95, '2024-03-13', 2),
('Pepino', 70.0, 105, '2024-03-14', 4),
('Abacaxi', 36.5, 90, '2024-03-15', 3),
('Laranja', 37.8, 120, '2024-03-16', 3),
('Brócolis', 34.1, 80, '2024-03-17', 5),
('Uva', 40.9, 100, '2024-03-18', 3);

SELECT * FROM tb_vegetais WHERE preco > 50.00 ORDER BY tb_vegetais.nome_vegetal ASC;

SELECT * FROM tb_vegetais WHERE preco >= 50 AND preco <= 150 ORDER BY tb_vegetais.nome_vegetal ASC;

SELECT * FROM tb_vegetais WHERE nome_vegetal LIKE '%C%' ORDER BY tb_vegetais.nome_vegetal ASC;

SELECT * FROM tb_vegetais INNER JOIN tb_categorias ON tb_categorias.id = tb_vegetais.id_categoria ORDER BY tb_vegetais.id ASC;

SELECT * FROM tb_vegetais INNER JOIN tb_categorias ON tb_categorias.id = tb_vegetais.id_categoria WHERE tb_vegetais.id_categoria = 3;
