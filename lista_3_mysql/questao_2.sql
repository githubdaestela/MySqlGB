create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;
create table tb_categoria(
	id bigint auto_increment,
    descricao varchar (100) not null,
    disponivel boolean not null,
    primary key (id)
);

use db_construindo_a_nossa_vida;
create table tb_produto(
id bigint auto_increment,
nome varchar(100) not null,
marca varchar(100) not null,
preco decimal(10,2) not null,
quantidade int not null,
categoria_id bigint not null,
primary key (id),
foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_categoria (descricao, disponivel) values ("Elétrica",true);
insert into tb_categoria (descricao, disponivel) values ("Alvenaria",true);
insert into tb_categoria (descricao, disponivel) values ("Hidráulica",true);
insert into tb_categoria (descricao, disponivel) values ("Pisos e revestimentos",true);

insert into tb_produto (nome, marca, preco, quantidade, categoria_id) values ("Eletroduto Corrugado 3/4 25m amarelo", "Lexman", 62.90, 120, 1);
insert into tb_produto (nome, marca, preco, quantidade, categoria_id) values ("Caixa distribuição Embutir 12/16 disjuntores", "Tigre", 72.90, 100, 1);
insert into tb_produto (nome, marca, preco, quantidade, categoria_id) values ("Porta balcão de alumínio 2,40mX2,00m", "Sasazaki", 12999.90, 30, 2);
insert into tb_produto (nome, marca, preco, quantidade, categoria_id) values ("Pendente Meia Lua 40 cm Luminária Alumínio", "Rei da iluminação", 52.90, 90, 2);
insert into tb_produto (nome, marca, preco, quantidade, categoria_id) values ("Sifão para cozinha Rígido 1.1/2''x2'' 30 cm", "Equation", 129.90, 250, 3);
insert into tb_produto (nome, marca, preco, quantidade, categoria_id) values ("Aquecedor a Gás GN 31L/min Inox", "Komeco", 3879.90, 50, 3);
insert into tb_produto (nome, marca, preco, quantidade, categoria_id) values ("Revestimento Externo Cleantec Pacífico 59x118,2cm", "Eliane", 73.90, 2250, 4);
insert into tb_produto (nome, marca, preco, quantidade, categoria_id) values ("Porcelanato Natural Arqtec Go 24x25cm", "Eliane", 596.90, 500, 4);

select * from tb_produto where preco > 50.00;

select * from tb_produto where preco between 3.00 and 60.00;

select * from tb_produto where nome like "%CI%";

select tb_produto.id nome, marca, preco, tb_categoria.descricao as descricao, tb_categoria.id as id_categoria
from tb_produto
Inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select nome, marca, preco, tb_categoria.descricao as descricao
from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.descricao like "%Elétrica%";
