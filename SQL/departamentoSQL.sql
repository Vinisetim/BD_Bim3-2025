create database construtora;
use construtora;

create table projeto(
id_projeto int,
nome varchar(30)
);

create table departamento(
id_departamento int,
nome varchar(30) 
);

create table empregado (
id_empregado int,
nome varchar(30),
cadastro int,
contatos int,
nascimento date
);

create table chefe(
id_chefe int,
nome varchar(30),
cadastro int,
contatos varchar(39),
data_nascimento date
);