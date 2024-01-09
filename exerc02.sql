CREATE DATABASE db_pizzaria_legal;

CREATE TABLE tb_categorias (
id BIGINT auto_increment PRIMARY KEY,
categoria VARCHAR (255) NOT NULL,
descricao VARCHAR (255) NOT NULL
);

INSERT INTO tb_categorias (categoria, descricao)
VALUES ("SALGADA", "Pizzas salgadas"),
("DOCE", "Pizzas doces"),
("ESPECIAIS", "Pizzas especiais da casa"),
("CALZONE", "Calzones recheados"),
("Pizza frita", "Pizzas Fritas");

CREATE TABLE tb_pizzas (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
sabor_pizza VARCHAR(255) NOT NULL,
descricao_pizza VARCHAR(255) NOT NULL,
valor DECIMAL(5, 2) NOT NULL,
categoriaid BIGINT,
FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (sabor_pizza, descricao_pizza, valor, categoriaid)
VALUES ("Mussarela", "Pizza clássica de mussarela", 40.00, 1 ),
("Calabresa", "Pizza de calabresa com cebola", 42.00, 1 ),
("Brigadeiro", "Pizza com cobertura de brigadeiro", 50.00, 2 ),
("Margherita", "Pizza com tomate, mussarela e manjericão", 55.00, 1 ),
("Quatro Queijos", "Pizza com quatro tipos de queijo", 60.00, 3 ),
("Chocolate", "Pizza com cobertura de chocolate", 47.00, 2 ),
("Calzone - Moda da casa ", "Calzone rechado a moda da casa", 48.00, 4 ),
("Pizza Frita - Calabresa", "Pizza frita de Calsabresa", 45.00, 5 );

SELECT * FROM tb_pizzas WHERE valor > 45.00;
SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE sabor_pizza LIKE "%M%";

SELECT sabor_pizza, descricao_pizza, valor, tb_categorias.categoria
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriaid = tb_categorias.id;

SELECT sabor_pizza, descricao_pizza, valor, tb_categorias.categoria
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriaid = tb_categorias.id
WHERE tb_categorias.id = 2;



