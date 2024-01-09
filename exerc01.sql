CREATE DATABASE db_generation_game_online;

CREATE TABLE tb_classes (
id BIGINT auto_increment PRIMARY KEY,
classe VARCHAR (255) NOT NULL,
descricao VARCHAR (255) NOT NULL
);

INSERT INTO tb_classes (classe, descricao)
VALUES ("Guerreiro", "Classe especializada em combate corpo a corpo"),
("Mago", "Classe especializada em magias e feitiços"),
("Arqueiro", "Classe especializada em ataques à distância"),
("Cavaleiro", "Classe especializada em montaria e defesa"),
("Ninja", "Classe especializada em ataques rápidos e furtividade")
;

CREATE TABLE tb_personagens (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
poder_ataque BIGINT NOT NULL,
poder_defesa BIGINT NOT NULL,
classeid BIGINT,
FOREIGN KEY (classeid) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, classeid)
VALUES ("PersonagemA", 2500, 1500, 1 ),
("PersonagemB", 1800, 1200, 2 ),
("PersonagemC", 2200, 1100, 3 ),
("PersonagemD", 1900, 2100, 4 ),
("PersonagemE", 2100, 1900, 5 ),
("PersonagemF", 1500, 900, 1 ),
("PersonagemG", 2300, 1300, 2 ),
("PersonagemH", 2000, 1800, 3 )
;

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT nome, poder_ataque, poder_defesa, tb_classes.classe 
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classeid = tb_classes.id;

SELECT nome, poder_ataque, poder_defesa, tb_classes.classe 
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classeid = tb_classes.id
WHERE tb_classes.id = 3;

