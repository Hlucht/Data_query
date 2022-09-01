
-- 1
select livro.titulo, editora.nome, estilo.nome, autor.nome from livro
join editora on livro.id_editora = editora.id_editora
join livro_estilo on livro.id_livro = livro_estilo.id_livro
join estilo on livro_estilo.id_estilo = estilo.id_estilo
join livro_autor on livro.id_livro = livro_autor.id_livro
join autor on livro_autor.id_autor = autor.id_autor;

-- 2
select livro.titulo, editora.nome from livro
join editora on livro.id_editora = editora.id_editora
where editora.telefone = 123345;

-- 3
select livro.titulo, autor.nome from livro
join livro_autor on livro.id_livro = livro_autor.id_livro
join autor on livro_autor.id_autor = autor.id_autor
where autor.idade = 35;

-- 4
select livro.titulo, editora.nome, autor.nome from livro
join livro_autor on livro_autor.id_livro = livro.id_livro
join autor on livro_autor.id_autor = autor.id_autor
join editora on livro.id_editora = editora.id_editora
where autor.nome = "Dan Brown";

-- 5
select livro.titulo, editora.nome, autor.nome from livro
join livro_autor on livro_autor.id_livro = livro.id_livro
join autor on livro_autor.id_autor = autor.id_autor
join editora on livro.id_editora = editora.id_editora
where autor.nome = "Dan Brown" and autor.idade = 35;

-- 6
select livro.titulo, autor.nome, editora.nome from livro
join livro_autor on livro.id_livro = livro_autor.id_livro
join autor on livro_autor.id_autor = autor.id_autor
join editora on livro.id_editora = editora.id_editora
where editora.telefone = 123345 and autor.nome = "Dan Brown";
	
-- 7
select livro.titulo, estilo.nome from livro
join livro_estilo on livro.id_livro = livro_estilo.id_livro
join estilo on livro_estilo.id_estilo = estilo.id_estilo
where estilo.nome = 'Romance';

-- 8
select livro.titulo, estilo.nome from livro
join livro_estilo on livro.id_livro = livro_estilo.id_livro
join estilo on livro_estilo.id_estilo = estilo.id_estilo
join editora on livro.id_editora = editora.id_editora
where editora.nome = 'Globo';

-- 9
select livro.titulo, max(valor) from livro
where valor = (select max(valor) from livro)
group by livro.titulo;

-- 10
select livro.titulo, min(valor) from livro
where valor = (select min(valor) from livro)
group by livro.titulo;

-- 11
select avg(valor) from livro;

-- 12
select avg(valor_hr) from autor;

-- 13
select count(id_livro) from livro;

-- 14
select count(id_livro) from livro
join editora on livro.id_editora = editora.id_editora
where editora.id_editora = 2;

-- 15
select count(livro.id_livro) from livro
join livro_estilo on livro.id_livro = livro_estilo.id_livro
join estilo on livro_estilo.id_estilo = estilo.id_estilo
where estilo.id_estilo = 5;

-- 16
select livro.titulo, editora.nome from livro
join editora on livro.id_editora = editora.id_editora;

-- 17
select livro.titulo, editora.nome from livro
join editora on livro.id_editora = editora.id_editora
where editora.nome like'a%';

-- 18
select autor.nome from autor
left join livro_autor on livro_autor.id_autor = autor.id_autor
left join livro on livro_autor.id_livro = livro.id_livro
where livro_autor.id_livro is null;

-- 19
select editora.nome from editora
left join livro on livro.id_editora = editora.id_editora
where livro.id_editora is null;

-- 20
select estilo.nome from estilo
left join livro_estilo on estilo.id_estilo = livro_estilo.id_estilo
where livro_estilo.id_livro is null;
 
 -- 21
select autor.nome, count(livro_autor.id_livro) from autor
join livro_autor on autor.id_autor = livro_autor.id_autor
group by autor.nome;

-- 22
select editora.nome, count(livro.id_livro) from editora
join livro on editora.id_editora = livro.id_editora
group by editora.nome;

-- 23
select estilo.nome, count(livro_estilo.id_livro) from estilo
join livro_estilo on estilo.id_estilo = livro_estilo.id_estilo
group by estilo.nome;

-- 24
select editora.nome, count(livro.id_livro) from livro
join editora on livro.id_editora = editora.id_editora
where editora.nome = "CCCC";

-- 25
select autor.nome, count(livro.id_livro) from livro
join livro_autor on livro_autor.id_livro = livro.id_livro
join autor on livro_autor.id_autor = autor.id_autor
where autor.nome like "J R R Tolkien";








