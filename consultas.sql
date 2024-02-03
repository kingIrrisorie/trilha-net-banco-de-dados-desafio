-- 1
SELECT Nome, Ano FROM Filmes

-- 2
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano ASC

-- 3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Id = 28

-- 4 
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

-- 5 
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000

-- 6 
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT
	Ano, COUNT(*) Quantidade, SUM(Duracao) TotalDuracao 
FROM
	Filmes 
GROUP BY
	Ano
ORDER BY
	TotalDuracao DESC
-- deixei visivel o total de duracao, pois na imagem no github, pode estar errada


-- 8 
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M'

-- 9 
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

-- 10
SELECT Filmes.Nome, Generos.Genero 
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
ORDER BY Generos.Genero

-- 11 
SELECT Filmes.Nome, Generos.Genero 
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id where Generos.Genero = 'Mistério'

-- 12
select Nome, PrimeiroNome, UltimoNome, Papel from Filmes
INNER JOIN ElencoFilme ON ElencoFilme.IdFilme = Filmes.Id
INNER JOIN Atores on ElencoFilme.IdAtor = Atores.Id
