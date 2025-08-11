create database acme;

use acme;

create table diretoria(
id_diretoria int,
nome_diretoria varchar(30)
);

create table departamento(
id_departamento int,
nome_departamento varchar(30)
);

create table funcionario(
id_funcionario int,
nome_funcionario varchar(30),
cadastro varchar(30),
contatos varchar(30),
data_nascimento date
);

create table dependente(
id_dependente int,
nome_dependente varchar(30),
cadastro_dependente varchar (30),
contatos_dependente varchar(30),
data_nascimento date
);
