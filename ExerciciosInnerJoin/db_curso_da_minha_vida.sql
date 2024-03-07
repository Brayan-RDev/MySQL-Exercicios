CREATE DATABASE IF NOT EXISTS db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE IF NOT EXISTS tb_categorias (
id INT AUTO_INCREMENT PRIMARY KEY,
nome_categoria VARCHAR(100) NOT NULL,
descricao TEXT,
area_conhecimento VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS tb_cursos (
id INT AUTO_INCREMENT PRIMARY KEY,
nome_curso VARCHAR(100) NOT NULL,
duracao_horas INT,
nivel_dificuldade VARCHAR(50),
preco DECIMAL(10, 2),
data_inicio DATE,
id_categoria INT NOT NULL,
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, descricao, area_conhecimento) VALUES
('Programação', 'Cursos relacionados a desenvolvimento de software.', 'Tecnologia'),
('Design Gráfico', 'Cursos voltados para criação visual e design.', 'Artes e Design'),
('Marketing Digital', 'Cursos sobre estratégias e técnicas de marketing online.', 'Marketing'),
('Gestão de Projetos', 'Cursos sobre práticas e metodologias de gestão de projetos.', 'Negócios'),
('Línguas Estrangeiras', 'Cursos para aprendizado de línguas estrangeiras.', 'Educação');

INSERT INTO tb_cursos (nome_curso, duracao_horas, nivel_dificuldade, preco, data_inicio, id_categoria) VALUES
('Desenvolvimento Web', 60, 'Iniciante', 500.00, '2024-04-01', 1),
('Photoshop Avançado', 80, 'Intermediário', 600.00, '2024-03-15', 2),
('Marketing de Conteúdo', 100, 'Avançado', 400.00, '2024-03-20', 3),
('Gerenciamento Ágil de Projetos', 120, 'Avançado', 1000.00, '2024-04-10', 4),
('Inglês para Negócios', 70, 'Intermediário', 300.00, '2024-03-25', 5),
('Java Fundamentals', 50, 'Iniciante', 500.00, '2024-04-05', 1),
('Ilustração Digital', 90, 'Avançado', 600.00, '2024-03-18', 2),
('Estratégias de SEO', 80, 'Avançado', 400.00, '2024-04-15', 3);

SELECT * FROM tb_cursos WHERE preco > 500.00 ORDER BY preco ASC;

SELECT * FROM tb_cursos WHERE preco >= 600 AND preco <= 1000 ORDER BY preco ASC;

SELECT * FROM tb_cursos WHERE nome_curso LIKE '%J%' ORDER BY nome_curso ASC;

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_categorias.id = tb_cursos.id_categoria ORDER BY tb_cursos.id ASC;

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_categorias.id = tb_cursos.id_categoria WHERE tb_cursos.id_categoria = 1;
