- FILME
- ATOR
- CLIENTE
    Quais filmes cada cliente já alugou OK
    Quais filmes cada ator já participou OK
    Quais atores tem em um determinado filme
    Quais os filmes de uma determinada categoria




CREATE TABLE queijo(
	id serial PRIMARY KEY,
	queijo character varying(60)
);
ALTER TABLE public.queijo owner to postgres


insert into pedido(id, nome, tipo_pao, tipo_queijo, tipo_vegetal, tipo_molho, tipo_proteina)
values (001, 'Adriana',6, 3, 7, 7, 4),
(002, 'Pedro',2, 2, 4, 3, 1),
CREATE DATABASE locadora
	WITH
	OWNER = postgres
	ENCODING = 'UTF8'
	CONNECTION LIMIT = -1;
	
	
CREATE TABLE public.filme(
	id serial PRIMARY KEY,
	filme character varying(255)
); 
ALTER TABLE public.filme OWNER TO postgres

SELECT * FROM filme;

INSERT INTO filme(filme)
VALUES  ('Melancolia'),
		('Fragmentado'),
		('Vidro'),
		('Homem-Aranha'),
		('Vingadores Guerra Infinita'),
		('Lucy'),
		('Dirty Dancing'),
		('Diário de uma paixão'),
		('Vingadores: Ultimato'),
		('Invocação do mal'),
		('Halloween')
		
		
create table categoria (
	id serial PRIMARY KEY,
	categoria character varying(60)
); alter table public.categoria owner to postgres


insert into categoria (categoria)
values  ('Drama'),
		('Ficção Ciêntifica'),
		('Suspense'),
		('Terror Psicologico'),
		('Romance,
		('Terror')
		
SELECT * FROM categoria;

		
update filme set id_categoria = 1 where id = 1;
update filme set id_categoria = 4 where id = 2;
update filme set id_categoria = 2 where id = 3;
update filme set id_categoria = 2 where id = 4;
update filme set id_categoria = 2 where id = 5;
update filme set id_categoria = 2 where id = 6;
update filme set id_categoria = 1 where id = 7;
update filme set id_categoria = 5 where id = 8;
update filme set id_categoria = 2 where id = 9;
update filme set id_categoria = 6 where id = 10;
update filme set id_categoria = 6 where id = 11;






		
CREATE TABLE cliente(
	id serial PRIMARY KEY,
	nome character varying(60),
	data_nascimento date,
	telefone character varying (11)
); alter table public.cliente owner to postgres

insert into cliente(nome, data_nascimento, telefone)
values  ('Giovanna Palmeira', '2002-12-05', '21988776633'),
		('Gabriel Carvalho', '2001-12-18', '21977662244'),
		('Laura Sefeltas', '2003-05-29', '21922445566'),
		('José Pedro Nolasco', '2002-05-30', '219552244455'),
		('Erick Lopes', '2002-11-27', '21944336688'),
		('Taiana Monteiro Faria', '1994-12-30', '21922335588'),
		('Giulia Nascimento', '1998-10-17', '21966558877'),
		('Larissa De Oliveira Couto', '1998-01-14', '21988558456'),
		('Giovanne Menezes Lopes', '1993-08-23', '21978456232')


CREATE TABLE ator(
	id serial PRIMARY KEY,
	nome character varying(60),
); alter table public.ator owner to postgres

INSERT INTO ator(nome)
values  ('Kirsten Dunst'),
		('Charlotte Gainsbourg'),
		('James McAvoy'),
		('Anya Taylor-Joy'),
		('Tom Holland'),
		('Tobey Maguire'),
		('Willem Dafoe'),
		('Chris Evans'),
		('Scarlett Johansson'),
		(' Patrick Swayze'),
		('Jennifer Grey'),
		('Ryan Gosling'),
		('Vera Farmiga'),
		('Donald Pleasence')

SELECT * FROM ator;


CREATE TABLE aluguel(
	id serial PRIMARY KEY,
	id_cliente integer,
	id_filme integer
);
ALTER TABLE public.aluguel owner to postgres

INSERT INTO aluguel(id_cliente, id_filme)
values 
	(1,1),
	(1,6),
	(1,7),
	(2,5),
	(3,2),
	(3,3),
	(4,2),
	(4,3),
	(4,4),
	(4,5),
	(5,4),
	(6,5),
	(6,9),
	(7,1),
	(7,8),
	(7,6),
	(8,8),
	(8,7),
	(8,10),
	(9,10),
	(9,11),
	(9,2)
	

CREATE TABLE elenco(
	id serial PRIMARY KEY,
	id_ator integer,
	id_filme integer
); ALTER TABLE public.elenco owner to postgres

INSERT INTO elenco(id_ator, id_filme)
values  (1,1),
		(1,4),
		(2,1),
		(3,2),
		(3,3),
		(4,2),
		(4,3),
		(5,5),
		(5,9),
		(6,4),
		(7,4),
		(8,5),
		(8,9),
		(9,5),
		(9,6),
		(9,9),
		(10,7),
		(11,7),
		(12,8),
		(12,10),
		(13,11)

--QUAIS FILMES CADA CLIENTE JÁ ALUGOU--
		
SELECT
  cliente.nome,
  filme.filme
from aluguel
join filme on filme.id = aluguel.id_filme
join cliente on cliente.id = aluguel.id_cliente
order by cliente.nome

--QUAIS FILMES CADA ATOR JÁ PARTICIPOU--

SELECT
  ator.nome,
  filme.filme
from elenco
join ator on ator.id = elenco.id_ator
join filme on filme.id = elenco.id_filme
order by ator.nome

--QUAIS ATORES TEM EM UM DETERMINADO FILME--

SELECT
  filme.filme,
  ator.nome
from elenco
join ator on ator.id = elenco.id_ator
join filme on filme.id = elenco.id_filme
where elenco.id_filme = 9

--QUAIS OS FILMES DE UMA DETERMINADA CATEGORIA--

SELECT
 categoria.categoria,
 filme.filme
 from categoria
 join filme on filme.id_categoria = categoria.id
 where categoria.id = 2

