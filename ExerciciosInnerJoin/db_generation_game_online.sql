CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

DROP TABLE tb_classes;
DROP TABLE tb_personagens;

CREATE TABLE tb_classes(
id INT PRIMARY KEY,
nome_classe VARCHAR(50) NOT NULL,
tipo_dano VARCHAR(20) NOT NULL,
habilidade_especial VARCHAR(255) NOT NULL
);

CREATE TABLE tb_personagens(
personagem_id INT AUTO_INCREMENT PRIMARY KEY,
nome_personagem VARCHAR(50) NOT NULL,
nivel INT NOT NULL,
vida INT NOT NULL,
dano_por_segundo SMALLINT NOT NULL,
defesa SMALLINT NOT NULL,
classe_id INT NOT NULL,
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (id, nome_classe, tipo_dano, habilidade_especial)
VALUES
(1, 'Guerreiro', 'Físico', 'Investida Poderosa'),
(2, 'Mago', 'Mágico', 'Bola de Fogo'),
(3, 'Arqueiro', 'Físico', 'Tiro Preciso'),
(4, 'Ladrão', 'Físico', 'Furtividade'),
(5, 'Assassino', 'Físico', 'Caçada da Raposa');

INSERT INTO tb_personagens (nome_personagem, nivel, classe_id, vida, dano_por_segundo, defesa)
VALUES
('Aragorn', 30, 1, 10000, 425, 2500),
('Gandalf', 25, 2, 7000, 650, 1200),
('Legolas', 28, 3, 1600, 2100, 800),
('HealerBob', 20, 4, 6200, 550, 1350),
('ShadowThief', 22, 5, 950, 3000, 400),
('WarriorJane', 25, 1, 8500, 375, 2150),
('WizardMike', 23, 2, 6800,600, 1075),
('CraigBuster', 37, 5, 1300, 4000, 1200),
('RobinHood', 30, 3, 2000, 2475, 1000);

SELECT * FROM tb_personagens WHERE dano_por_segundo > 2000;

SELECT * FROM tb_personagens WHERE defesa >= 1000 AND defesa <= 2000;

SELECT * FROM tb_personagens WHERE nome_personagem LIKE '%C%';

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id WHERE tb_personagens.classe_id = 3;




