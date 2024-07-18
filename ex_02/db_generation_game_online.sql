create database db_generation_game_online;
use db_generation_game_online;

CREATE TABLE tb_classes(
    id BIGINT AUTO_INCREMENT,
	classe VARCHAR(255) NOT NULL,
	arma VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE tb_personagens(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	Nacionalidade VARCHAR(255) NOT NULL,
    poder_de_ataque int,
    poder_de_defesa int,
    PRIMARY KEY (id)
);

ALTER TABLE tb_personagens ADD classesid BIGINT;

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
FOREIGN KEY (classesid) REFERENCES tb_classes (id);

INSERT INTO tb_classes (classe, arma)
VALUES ("Guerreiro", "Espada");
INSERT INTO tb_classes (classe, arma)
VALUES ("Mago", "Varinha Mágica");
INSERT INTO tb_classes (classe, arma)
VALUES ("Espadachim", "Katana");
INSERT INTO tb_classes (classe, arma)
VALUES ("Barbaro", "Bastão");
INSERT INTO tb_classes (classe, arma)
VALUES ("Lanceiro", "Lança");

INSERT INTO tb_personagens (nome, nacionalidade,poder_de_ataque,poder_de_defesa, classesid)
VALUES ("Von Graham", "Holanda", 1900, 2300, 1);
INSERT INTO tb_personagens (nome, nacionalidade,poder_de_ataque,poder_de_defesa, classesid)
VALUES ("Andrade", "Brasil", 2300, 1750, 2);
INSERT INTO tb_personagens (nome, nacionalidade,poder_de_ataque,poder_de_defesa, classesid)
VALUES ("Lady Maria", "Inglaterra", 2500, 2000, 3);
INSERT INTO tb_personagens (nome, nacionalidade,poder_de_ataque,poder_de_defesa, classesid)
VALUES ("Yohannen", "Alemanha", 2500, 1950, 5);
INSERT INTO tb_personagens (nome, nacionalidade,poder_de_ataque,poder_de_defesa,classesid)
VALUES ("Alucard", "Romenia", 3400,2500, 2);
INSERT INTO tb_personagens (nome, nacionalidade,poder_de_ataque,poder_de_defesa, classesid)
VALUES ("Sekiro", "Japão", 2200, 3000, 3);
INSERT INTO tb_personagens (nome, nacionalidade,poder_de_ataque,poder_de_defesa, classesid)
VALUES ("Gaulter O'Dinn", "?", 3400,3200, 2);
INSERT INTO tb_personagens (nome, nacionalidade,poder_de_ataque,poder_de_defesa, classesid)
VALUES ("De Rivia", "Polonia", 3200, 2600, 1);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens where poder_de_ataque > 2000;
SELECT * FROM tb_personagens where poder_de_defesa > 1000 and poder_de_defesa < 2000;


SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.classesid;

select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.classesid where tb_classes.arma = "Katana";


