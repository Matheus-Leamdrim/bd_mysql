create database db_ecommerce;

use db_ecommerce;

CREATE TABLE tb_ecom(
    id BIGINT AUTO_INCREMENT,
	tipo_produto VARCHAR(255) NOT NULL,
	marca VARCHAR(255) NOT NULL,
    data_de_fabricacao DATE,
    quantidade_em_estoque int,
	preco DECIMAL(6,2) NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO tb_ecom (tipo_produto, marca, data_de_fabricacao, quantidade_em_estoque, preco)
VALUES ("Caixa de Som", "JBL", "2020-03-02", 400, 350);
INSERT INTO tb_ecom (tipo_produto, marca, data_de_fabricacao, quantidade_em_estoque, preco)
VALUES ("Webcam", "RiseMode", "2022-08-12", 250, 300);
INSERT INTO tb_ecom (tipo_produto, marca, data_de_fabricacao, quantidade_em_estoque, preco)
VALUES ("Gabinete", "Mancer", "2023-03-02", 520, 400);
INSERT INTO tb_ecom (tipo_produto, marca, data_de_fabricacao, quantidade_em_estoque, preco)
VALUES ("RTX-3040", "Nvidia", "2020-03-02", 600, 2500);
INSERT INTO tb_ecom (tipo_produto, marca, data_de_fabricacao, quantidade_em_estoque, preco)
VALUES ("MacBook", "Apple", "2023-04-02", 250, 3400);
INSERT INTO tb_ecom (tipo_produto, marca, data_de_fabricacao, quantidade_em_estoque, preco)
VALUES ("MEM-RAM-16GB", "Hyper-X", "2023-12-03", 345, 400);
INSERT INTO tb_ecom (tipo_produto, marca, data_de_fabricacao, quantidade_em_estoque, preco)
VALUES ("Microfone", "Fifine", "2022-04-12", 300, 450);
INSERT INTO tb_ecom (tipo_produto, marca, data_de_fabricacao, quantidade_em_estoque, preco)
VALUES ("Monitor", "Samsung", "2024-03-02", 350, 510);

select * from tb_ecom;

select * from tb_ecom where preco > 500;

select * from tb_ecom where preco < 500;

update tb_ecom set preco = 2000 where id = 8;

select * from tb_ecom;
