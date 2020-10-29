create database db_atividade_2;

use db_atividade_2;
create table tb_produtos (
id bigint auto_increment,
produto varchar (500) not null,
codigo bigint not null unique,
departamento varchar (100) not null,
marca varchar (50) not null,
preco decimal (9,2) not null,
estoque int,
primary key (id)
);

describe tb_produtos;

insert into tb_produtos (produto, codigo, departamento, marca, preco, estoque) values ('Smartphone Motorola One Vision XT1970-1 Bronze 128GB, 4GB RAM, Tela de 6.3", Câmera Traseira Dupla, Octa-Core, Leitor Digital, Android 9.0', '598659', 'Telefonia', 'Motorola', '1599.00', '91');
insert into tb_produtos (produto, codigo, departamento, marca, preco, estoque) values ('Fralda Pampers Confort Sec Mega P - Kit com 200 Unidades', '885656', 'Bebês', 'Pampers', '155.60', '224');
insert into tb_produtos (produto, codigo, departamento, marca, preco, estoque) values ('Umidificador de Ar Wap Air Flow com Luminária e Difusor de Aromas - Bivolt', '35475', 'Beleza e Saúde', 'Wap Air Flow', '149.90', '17');
insert into tb_produtos (produto, codigo, departamento, marca, preco, estoque) values ('Kindle Paperwhite Preto com 8GB, Tela de 6”, Wi-Fi, Iluminação Embutida e À Prova de água - 10ª Geração', '68785', 'Acessórios e Inovações', 'Amazon', '589.90', '23');

select * from tb_produtos where preco>500;
select * from tb_produtos where preco<500;

update tb_produtos set estoque = 22 where id=3;


