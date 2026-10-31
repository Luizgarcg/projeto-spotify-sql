-- Desafio 1: ver as primeiras linhas da tabela
select * from tracks limit 11;

-- Desafio 2: ver nome da música, artista e popularidade
select artists,track_name,popularity from tracks limit 20;
-- Desafio 3: filtrar músicas com popularidade maior que 80
select track_name,artists,popularity from tracks where  popularity > 80 limit 20;

-- Desafio 4: filtrar músicas populares e dançantes
select track_name,artists,popularity,danceability from tracks where popularity > 70 and danceability > 0.7 limit 20;

-- Desafio 5: Top 10 músicas mais populares
select track_name,artists,popularity from tracks order by popularity desc limit 10;

-- Desafio 6: total de músicas e popularidade média
select count(track_name),AVG(popularity) from tracks;

-- Desafio 7: quantidade de músicas por gênero
select track_genre, count(track_name) from tracks group by track_genre limit 10;

-- Desafio 8: ranking dos gêneros mais populares (média de popularidade)
select track_genre, avg(popularity) from tracks group by track_genre order by avg(popularity) desc limit 10;
