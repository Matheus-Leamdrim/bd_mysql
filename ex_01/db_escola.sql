create database db_escola;

use db_escola;

CREATE TABLE tb_escola(
    id BIGINT AUTO_INCREMENT,
	nome_aluno VARCHAR(255) NOT NULL,
	classe VARCHAR(255) NOT NULL,
    data_nascimento DATE,
    data_inicio int,
	nota DECIMAL(6,2) NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO tb_escola (nome_aluno, classe, data_nascimento, data_inicio, nota)
VALUES ("Renato", "2-B", "2008-03-02", 2018, 5.5);
INSERT INTO tb_escola (nome_aluno, classe, data_nascimento, data_inicio, nota)
VALUES ("Luisa", "2-J", "2008-04-07", 2022, 8.0);
INSERT INTO tb_escola (nome_aluno, classe, data_nascimento, data_inicio, nota)
VALUES ("Marcos", "2-H", "2008-12-02", 2024, 9.0);
INSERT INTO tb_escola (nome_aluno, classe, data_nascimento, data_inicio, nota)
VALUES ("Augusto", "2-I", "2008-11-05", 2023, 10.0);
INSERT INTO tb_escola (nome_aluno, classe, data_nascimento, data_inicio, nota)
VALUES ("Daniel", "2-F", "2008-05-02", 2022, 6.5);
INSERT INTO tb_escola (nome_aluno, classe, data_nascimento, data_inicio, nota)
VALUES ("André", "2-E", "2008-05-12", 2020, 9.5);
INSERT INTO tb_escola (nome_aluno, classe, data_nascimento, data_inicio, nota)
VALUES ("Luis", "2-C", "2008-03-12", 2019, 8.5);
INSERT INTO tb_escola (nome_aluno, classe, data_nascimento, data_inicio, nota)
VALUES ("Mario", "2-A", "2008-12-09", 2020, 6.5);

select * from tb_escola;
select * from tb_escola where nota > 7.0;
select * from tb_escola where nota < 7.0;

update tb_escola set nota = 8.0 where id = 1;
select * from tb_escola;