create database db_ecommerce;

use db_ecommerce;
create table tb_categoria (
id bigint auto_increment not null,
nome varchar (70) not null,
tipo varchar (70) not null,
primary key (id)
);

use db_ecommerce;
create table tb_produto (
id bigint auto_increment not null,
produto varchar (500) not null,
codigo bigint not null unique,
marca varchar (50) not null,
preco decimal (9,2) not null,
estoque bigint,
primary key (id),
categoria_id bigint not null,
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_categoria (nome, tipo) values ('Smartphones', 'Eletrônico');
insert into tb_categoria (nome, tipo) values ('Fraldas', 'Bebês');
insert into tb_categoria (nome, tipo) values ('Camiseta', 'Vestuário');
insert into tb_categoria (nome, tipo) values ('E-Reader', 'Eletrônico');

alter table tb_categoria modify column nome varchar (200) not null;

insert into tb_produto (produto, codigo, marca, preco, estoque, categoria_id) values ('Smartphone Motorola One Vision XT1970-1 Bronze 128GB, 4GB RAM, Tela de 6.3", Câmera Traseira Dupla, Octa-Core, Leitor Digital, Android 9.0', '598659', 'Motorola', '1599.00', '1191', '1');
insert into tb_produto (produto, codigo, marca, preco, estoque, categoria_id) values ('Fralda Pampers Confort Sec Mega P - Kit com 200 Unidades', '885656', 'Pampers', '155.60', '51224', '2');
insert into tb_produto (produto, codigo, marca, preco, estoque, categoria_id) values ('Kindle Paperwhite Preto com 8GB, Tela de 6”, Wi-Fi, Iluminação Embutida e À Prova de água - 10ª Geração', '68785', 'Amazon', '589.90', '2123', '4');
insert into tb_produto (produto, codigo, marca, preco, estoque, categoria_id) values ('Camiseta manga longa feminina com proteção UV Selene Preta', '23423', 'Selene', '60.59', '563', '3');

select * from tb_produto where preco > 2000;
select * from tb_produto where preco between 1000.00 and 2000.00;

select * from tb_produto where nome like "%C%";




