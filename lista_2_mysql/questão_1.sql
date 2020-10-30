create database db_RH2;

use db_RH2;
create table tb_cargo (
id bigint auto_increment not null,
setor varchar (70) not null,
funcao varchar (70) not null,
ativo boolean,
primary key (id)
);

use db_RH2;
create table tb_funcionario (
id bigint auto_increment not null,
nome varchar (60) not null,
codigo bigint (4) not null,
salario float (9,2) not null,
data_contratacao date not null,
data_demissao date,
primary key (id),
cargo_id bigint not null,
foreign key (cargo_id) references tb_cargo (id)
);

insert into tb_cargo (setor, funcao) values ('Recepção', 'Recepcionista');
insert into tb_cargo (setor, funcao) values ('Administração', 'Analista financeiro');
insert into tb_cargo (setor, funcao) values ('Recepção', 'Assistente de reserva');
insert into tb_cargo (setor, funcao) values ('Governança', 'Assistente de manutenção');
insert into tb_cargo (setor, funcao) values ('Alimentos e Bebidas', 'Chef de cozinha');

insert into tb_funcionario (nome, codigo, salario, data_contratacao, cargo_id) values ('José Piracanta', '85483', '1780.85', '2019-03-23', '1');
insert into tb_funcionario (nome, codigo, salario, data_contratacao, data_demissao, cargo_id) values ('Amanda Giesta', '5423', '4021.67', '2015-05-04', '2018-02-03' , '2');
insert into tb_funcionario (nome, codigo, salario, data_contratacao, cargo_id) values ('Guilherme Veigela', '34234', '1362.48', '2018-07-01', '3');
insert into tb_funcionario (nome, codigo, salario, data_contratacao, cargo_id) values ('Joana Goivo', '38493', '1362.48', '2019-05-11', '3');
insert into tb_funcionario (nome, codigo, salario, data_contratacao, cargo_id) values ('Mariana Camoensia', '9054', '1553.53', '2016-11-20', '4');
insert into tb_funcionario (nome, codigo, salario, data_contratacao, cargo_id) values ('Clementina Zínia', '28542', '3035.78', '2018-04-02', '5');

select * from tb_funcionario where salario > 2000;
select * from tb_funcionario where salario between 1000.00 and 2000.00;

select * from tb_funcionario where nome like "C%";
select * from tb_funcionario where nome like "%C%";