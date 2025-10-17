/*Exercícios do método JOIN*/

/*Utilizando a base de dados livro_b, realize a construção das pesquisas para termos como retorno os seguintes dados: */

/*A) Id_livro, titulo, genero, nome_editora, nome_contato; */
select l.id_livro, l.titulo, l.genero, e.nome_editora, e.nome_contato
from livro as l 
join editora as e
on l.id_editora = e.id_editora;

/*B) Titulo, genero, nome_autor;*/
select l.titulo, l.genero, a.nome_autor
from livro as l
join livro_autor as la 
on l.id_livro = la.id_livro
join autor as a 
on la.id_autor = a.id_autor;

/*C) Titulo, genero, sinopse, nome_autor, nome_editora;*/
select l.titulo, l.genero, l.sinopse, a.nome_autor, e.nome_editora
from livro as l
join editora as e 
on l.id_editora = e.id_editora
join livro_autor as la 
on l.id_livro = la.id_livro
join autor as a
on a.id_autor = la.id_autor;

/*D) Id_editora, nome_editora, titulo, genero, nome_autor;*/
select e.id_editora, e.nome_editora, l.titulo, l.genero, a.nome_autor
from editora as e
join livro as l
on e.id_editora = l.id_editora
join livro_autor as la 
on l.id_livro = la.id_livro
join autor as a 
on a.id_autor = la.id_autor;

/*E) Id_editora, nome_editora, nome_contato, tel, email, id_livro, titulo, genero, publicacao, pagina, sinopse, id_autor, id_autor, nome_autor;*/
select e.id_editora, e.nome_editora, e.nome_contato, e.tel, e.email, l.id_livro, l.titulo, l.genero, l.publicacao, l.paginas, l.sinopse, a.id_autor, a.nome_autor
from editora as e
join livro as l
on e.id_editora = l.id_editora
join livro_autor as la 
on l.id_livro = la.id_livro
join autor as a 
on a.id_autor = la.id_autor;
