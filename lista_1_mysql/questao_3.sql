create database db_atividade_3;

use db_atividade_3;
create table tb_alunes (
id bigint auto_increment,
nome varchar (100) not null,
ra bigint unique not null,
notas decimal (4,2),
turma varchar (30) not null,
turno varchar (30) not null,
primary key (id)
);

describe tb_alunes;

insert into tb_alunes (nome, ra, notas, turma, turno) values ('Nicolas Jacarandá', '568', '8', '9ºano A', 'integral');
insert into tb_alunes (nome, ra, notas, turma, turno) values ('Manoela Sibipiruna ', '341', '9', '9ºano B', 'matutino');
insert into tb_alunes (nome, ra, notas, turma, turno) values ('Flávia Sibipiruna', '342', '6', '8ºano C', 'integral');
insert into tb_alunes (nome, ra, notas, turma, turno) values ('Jéssica ', '653', '8', '9ºano B', 'matutino');

select * from tb_alunes where notas>7;
select * from tb_alunes where notas<7;

