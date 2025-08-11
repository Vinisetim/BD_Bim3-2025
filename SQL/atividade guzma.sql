create database exemplosTipoDados;
use exemplosTiposDados;

create table exemplosNumericos(
idade int,
/*serve para armazenar números pequenos*/
velocidadeDaLuz bigint,
/*serve para armazenar valores grandes*/
divida smallint,
/*serve para armazenar valores pequenos/negativos*/
temperaturaMetal tinyint,
/* armazena valores entre -128 e 127,*/
saldo decimal,
/*Serve para declarar valores exatos, como o de saldo por exemplo*/
 float,
/* Armazena valores com uma precisão maior do que o decimal sendo de até seis digitos*/

pi double
/*armazena dados com a maior precisao, sendo de 15-16 digitos*/
)

create table exemplosCaracteres(
nome char(10),
/*serve para armazenar diversos dados com tamanhos de texto específicos, por exemplo 10 caracteres. A partir disso, todos os valores char serão de 10 digitos*/
email varchar(200),
/*É semelhante ao char, porém a quantidade de caracteres sempre será variável*/
Sobre text
/*Serve para armazenar textos longos e mais complexos*/
imagem blob,
/*serve para armazenar arquivos como videos imagens e documentos*/

);