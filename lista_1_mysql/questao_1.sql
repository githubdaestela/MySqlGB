create database db_atividade_1;

use db_atividade_1;
create table tb_funcionarios (
id bigint auto_increment,
nome varchar (60) not null,
codigo bigint (4) not null,
cargo varchar (40) not null,
salario float (9,2) not null,
data_contratacao date,
primary key (id)
);

describe tb_funcionarios;

alter table tb_funcionarios modify column codigo bigint (4) not null unique;

alter table tb_funcionarios add column data_demissao date;

describe tb_funcionarios;

insert into tb_funcionarios (nome, codigo, cargo, salario, data_contratacao) values ('Maria Antônia', '9499', 'Vendas-Faturamento', '5350.99', '2017-05-07');
insert into tb_funcionarios (nome, codigo, cargo, salario, data_contratacao, data_demissao) values ('Manoel Araucária', '8654', 'Marketing-Treinamento', '2100.80', '2016-10-03', '2017-10-03');
insert into tb_funcionarios (nome, codigo, cargo, salario, data_contratacao) values ('Eloá Campos', '6784', 'Jurídico', '8500.00', '2010-12-01');
insert into tb_funcionarios (nome, codigo, cargo, salario, data_contratacao) values ('Alessandra Cascata', '9875', 'Finanças-Contábil', '5580.50', '2018-02-13');

select * from tb_funcionarios;

select * from tb_funcionarios where salario > 2000.00;
select * from tb_funcionarios where salario < 2000.00;