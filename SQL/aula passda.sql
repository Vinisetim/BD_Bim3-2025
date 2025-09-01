drop database livro;

create database livro;

use livro;

 create table editora(
id_editora int auto_increment primary key,
    nome_editora varchar(50) not null,
    nome_contato varchar(50) not null,
    tel varchar(14) not null,
    email varchar(50) not null
);

create table livro(
	id_livro int auto_increment primary key,
    titulo varchar(50) not null,
    genero varchar(50) not null,
    publicacao int not null,
    paginas int,
    sinopse varchar(200),
    id_editora int,
    foreign key (id_editora) references editora(id_editora)
    
);

create table autor(
	id_autor int auto_increment primary key,
    nome_autor varchar(50) not null
);

create table livro_autor(
	id_livro_autor int auto_increment primary key,
    id_livro int not null,
    foreign key (id_livro) references livro(id_livro),
    id_autor int not null,
    foreign key (id_autor) references autor(id_autor)
    );
    
    select * from editora;
    select * from livro;
    select * from autor;
    select * from livro_autor;
    drop table livro_autor;
    
    insert into editora(nome_editora, nome_contato, tel, email)
    values ( 'Wagner S/A', 'Silva', '(11)12345-6789', 'silva@Wagner.com');
    
    insert into editora(nome_editora, nome_contato, tel, email)
    values ( 'Gusmão S/A', 'Santos', '(11)98765-4321', 'Santos@Wagner.com');
    
    insert into editora(nome_editora, nome_contato, tel, email)
    values ( 'WG S/A', 'Gusmão', '(11)96325-8741', 'gusmao@wg.com');
    
    insert into editora(nome_editora, nome_contato, tel, email)
    values ( 'Camargo Correia S/A', 'Wagner', '(11)31231-0192', 'silva@Wagner.com');
    
    insert into livro (titulo, genero, publicacao, paginas, sinopse, id_editora)
    values ( 'Banco De Dados', 'Técnico', 2025, 456, 'Banco de Dados de A a Z', 1);
    
	insert into livro (titulo, genero, publicacao, paginas, sinopse, id_editora)
    values ( 'O pequeno Principe', 'Infantil', 2000, 321, 'A história do principe', 2);
    
	insert into livro (titulo, genero, publicacao, paginas, sinopse, id_editora)
    values ('Biblia do JavaScript', 'Técnico', 2023, 666, 'JavaScript', 3);

	insert into livro (titulo, genero, publicacao, paginas, sinopse, id_editora)
    values ( 'O monge e o executivo', 'Motivacional', 2015, 234, 'Crescer e Viver', 4);
    
	insert into livro (titulo, genero, publicacao, paginas, sinopse, id_editora)
    values ( 'A Arte da Guerra', 'Juvenil', 2010, 258, 'Estratégia de Vida', 1);
    
	insert into livro (titulo, genero, publicacao, paginas, sinopse, id_editora)
    values ( 'Cavalo de Tróia', 'Ficcão', 2000, 357, 'Viagem no Tempo', 2);
    
	insert into livro (titulo, genero, publicacao, paginas, sinopse, id_editora)
    values ( 'Cavalo de Tróia', 'Ficcão', 2001, 423, 'Viagem no Tempo', 3);
    
	insert into livro (titulo, genero, publicacao, paginas, sinopse, id_editora)
    values ( 'Chapeuzinho Vermelho', 'Infantil', 2001, 254, 'Conto Infantil', 4);
    
	insert into livro (titulo, genero, publicacao, paginas, sinopse)
    values ( 'Deu a Louca na Chapeuzinho Vermelho', 'Infantil', 2001, 214, 'Conto Infantil');
    insert into livro (titulo, genero, publicacao, paginas, sinopse)
    values ( 'MySQL na Prática', 'Técnico', 2015, 321, 'MySQL');
    
    
insert into autor(nome_autor) values('Wagner Gusmão');
insert into autor(nome_autor) values('Alberto Lima');
insert into autor(nome_autor) values('Barbara Fonseca');
insert into autor(nome_autor) values('Cristiane Souza');
insert into autor(nome_autor) values('Camila Alves');
insert into autor(nome_autor) values('Isabela Soares');
insert into autor(nome_autor) values('Carlos Cavalcante');
insert into autor(nome_autor) values('Marina Foster');
insert into autor(nome_autor) values('Danilo Gonçalves');
insert into autor(nome_autor) values('Milton Neves');
insert into autor(nome_autor) values('Camlia Frota');
insert into autor(nome_autor) values('Laura Jardim');
insert into autor(nome_autor) values('Carlos da Mata');
insert into autor(nome_autor) values('Juan Carlos');
insert into autor(nome_autor) values('Denise Braga');

insert into livro_autor(id_autor, id_livro) values(1,1);
insert into livro_autor(id_autor, id_livro) values(1,2);
insert into livro_autor(id_autor, id_livro) values(3,4);
insert into livro_autor(id_autor, id_livro) values(5,3);
insert into livro_autor(id_autor, id_livro) values(5,9);
insert into livro_autor(id_autor, id_livro) values(2,7);
insert into livro_autor(id_autor, id_livro) values(12,6);
insert into livro_autor(id_autor, id_livro) values(13,10);
insert into livro_autor(id_autor, id_livro) values(13,8);
insert into livro_autor(id_autor, id_livro) values(7,11);
insert into livro_autor(id_autor, id_livro) values(9,5);
insert into livro_autor(id_autor, id_livro) values(7,14);
insert into livro_autor(id_autor, id_livro) values(5,9);
insert into livro_autor(id_autor, id_livro) values(4,12);
insert into livro_autor(id_autor, id_livro) values(3,6);