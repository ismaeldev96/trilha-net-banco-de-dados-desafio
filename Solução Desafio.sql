/* 1- Buscar o nome e ano dos filmes */
SELECT Nome, Ano FROM Filmes

/* 2- Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano */
SELECT Nome, Ano FROM Filmes ORDER BY Ano

/* 3- Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o */
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De volta para o futuro'

/* 4- Buscar os filmes lan�ados em 1997 */
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

/* 5 - Buscar os filmes lan�ados AP�S o ano 2000 */
SELECT * FROM Filmes WHERE Ano > 2000

/* 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente */
SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC

/* 7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente  
(Corre��o seguindo o enunciado n�o seria capaz de trazer o resultado igual o da imagem, ent�o notei que o resultado seria a ordem decrescente do COUNT)*/
SELECT Ano, COUNT(*) as QuantidadeFilmes FROM Filmes GROUP BY Ano ORDER BY QuantidadeFilmes DESC

/* 8- Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome*/
SELECT * FROM Atores WHERE Genero = 'M'

/* 9- Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome 
(Corre��o seguindo o enunciado n�o seria capaz de trazer o resultado igual o da imagem enunciado n�o pede para retornar o id*/
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

/* 10- Buscar o nome do filme e o g�nero*/
SELECT Filmes.Nome, Generos.Genero
FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;

/* 11 - Buscar o nome do filme e o g�nero do tipo "Mist�rio" */
SELECT Filmes.Nome, Generos.Genero
FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mist�rio'

/* 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel */
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM Filmes
JOIN ElencoFilme ON ElencoFilme.IdFilme = Filmes.Id 
JOIN Atores ON Atores.Id = ElencoFilme.IdAtor;