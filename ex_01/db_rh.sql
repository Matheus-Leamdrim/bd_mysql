
DROP DATABASE db_rh;

create database db_rh;
use db_rh;


create table tb_rh(
id bigint auto_increment,
nome varchar(255) not null,
funcao varchar(225) not null,
id_colaborador int,
data_de_inicio date,
salario decimal  not null,
 primary key(id)
);

describe tb_rh;

insert into tb_rh (nome,funcao, id_colaborador, data_de_inicio, salario) values 
("Marcos","Estoqusita",25, "2021-12-15",1500.00);
insert into tb_rh (nome,funcao, id_colaborador, data_de_inicio, salario) values 
("Maria","Atendente",15, "2020-10-5",1500.00);
insert into tb_rh (nome,funcao, id_colaborador, data_de_inicio, salario) values 
("Daniel","Fiscal",23, "2019-05-10",2100.00);
insert into tb_rh (nome,funcao, id_colaborador, data_de_inicio, salario) values 
("Vitória","Especialista em Clientes",42, "2018-04-08",2500.00);
insert into tb_rh (nome,funcao, id_colaborador, data_de_inicio, salario) values 
("Alexandre","Padeiro",25, "2022-06-09",2700.00);

select * from tb_rh;

select * from tb_rh where salario > 2000.00;

select * from tb_rh where salario < 2000.00;


update tb_rh set nome = "Augusto" where  id = 5;

select * from tb_rh;

