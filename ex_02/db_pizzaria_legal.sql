create database db_pizzaria_legal;
use db_pizzaria_legal;

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT,
	sabor VARCHAR(255) NOT NULL,
	origem VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE tb_pizzas(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	ingrediente_principal VARCHAR(255) NOT NULL,
	disponibilidade VARCHAR(255) NOT NULL,
    preco int,
    PRIMARY KEY (id)
);

ALTER TABLE tb_pizzas ADD categoriasid BIGINT;

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categoriasid
FOREIGN KEY (categoriasid) REFERENCES tb_categorias (id);


INSERT INTO tb_categorias (sabor, origem)
VALUES ("Doce", "Brasil");
INSERT INTO tb_categorias (sabor, origem)
VALUES ("Tradicional", "Italia");
INSERT INTO tb_categorias (sabor, origem)
VALUES ("Tradicional", "Portugal");
INSERT INTO tb_categorias (sabor, origem)
VALUES ("Tradicional", "Brasil");
INSERT INTO tb_categorias (sabor, origem)
VALUES ("Doce", "Italia");

INSERT INTO tb_pizzas (nome, ingrediente_principal, disponibilidade, preco, categoriasid)
VALUES ('Margherita', 'Tomate', "Sim",25.00, 2),
('Pepperoni', 'Pepperoni',"Sim", 50.00, 2),
('Frango com Catupiry', 'Frango',"Não", 45.00, 4),
('Calabresa', 'Calabresa',"Sim",38.00, 4),
('Quatro Queijos', 'Queijo',"Sim",52.00, 2),
('Portuguesa', 'Presunto', "Não", 65.00, 3),
('Romeu e Julieta', 'Queijo e Goiabada',"Sim", 30.00, 1),
('Pizza de Brigadeiro', 'Brigadeiro',"Sim", 28.00, 1);

SELECT * FROM tb_pizzas where preco > 45.00;
select * from tb_pizzas where preco > 50.00 and preco < 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

select * from tb_pizzas inner join tb_categorias on tb_categorias.id = tb_pizzas.categoriasid;

select * from tb_pizzas inner join tb_categorias on tb_categorias.id = tb_pizzas.categoriasid where tb_categorias.sabor = "Doce";

