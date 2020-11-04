create database db_cidade_das_carnes;

use db_cidade_das_carnes;
create table tb_categoria (
id bigint auto_increment not null,
nome varchar (200) not null,
disponivel boolean not null,
primary key (id)
);

use db_cidade_das_carnes;
create table tb_produto (
id bigint auto_increment not null,
nome varchar (100) not null,
preco decimal (9,2) not null,
estoque int,
primary key (id),
id_categoria bigint not null,
foreign key (id_categoria) references tb_categoria (id)
);

insert into tb_categoria (nome, disponivel) values ("Bovinos", true);
insert into tb_categoria (nome, disponivel) values ("Suínos", true);
insert into tb_categoria (nome, disponivel) values ("Aves", true);
insert into tb_categoria (nome, disponivel) values ("Vegetariano", true);

insert into tb_produto (nome, preco, estoque, id_categoria) values ('Acém Moído', '18.95', '235', '1');
insert into tb_produto (nome, preco, estoque, id_categoria) values ('Alcantra Bife', '26.45', '567', '1');
insert into tb_produto (nome, preco, estoque, id_categoria) values ('Bisteca Suína', '13.45', '361', '2');
insert into tb_produto (nome, preco, estoque, id_categoria) values ('Costelinha Suína', '59.88', '135', '2');
insert into tb_produto (nome, preco, estoque, id_categoria) values ('Filé de Frango', '9.95', '587', '3');
insert into tb_produto (nome, preco, estoque, id_categoria) values ('Almôndega de Shitake', '25.90', '492', '4');

select * from tb_produto where preco > 50.00;

select * from tb_produto where preco between 3.00 and 5.00;

select * from tb_produto where nome like "%CO%";

use db_cidade_das_carnes;
select tb_produtos.id, tb_produtos.nome, tb_produtos.preco, tb_produtos.estoque, tb_produtos.id_categoria, tb_categoria.disponivel as disponivel, tb_categoria.id as id_categoria
from tb_produtos
inner join tb_categoria on tb_categoria.id = tb_produtos.id_categoria;

use db_cidade_das_carnes;
select nome, preco, estoque, id_categoria, tb_categoria.disponivel as disponivel
from tb_produtos
inner join  tb_categoria on tb_categoria.id = tb_produtos.id_categoria
where tb_categoria.disponivel like "%Aves%";