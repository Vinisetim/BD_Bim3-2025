create database cd_gb;

use cd_gb;

create table CD(
id_cd int auto_increment primary key,
titulo varchar(50),
id_musica int
);

drop table CD;

create table musicas(
id_musica int auto_increment primary key,
nome varchar(50),
id_compositor int,
id_cantor int,
duracao varchar(5)
);
drop table musicas;
create table cantor(
id_cantor int auto_increment primary key,
nome varchar(50)
);

create table compositor(
id_compositor int auto_increment primary key,
nome varchar(50)
);


alter table CD add constraint musicas foreign key (id_musica) references musicas(id_musica);

alter table musicas add constraint compositor foreign key (id_compositor) references compositor(id_compositor);


