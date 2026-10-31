# projeto-spotify-sql
# Quais gêneros musicais são mais populares no Spotify?

Análise de dados com **SQL** e **Excel** sobre um catálogo de 114.000 músicas do Spotify.

## Objetivo

Responder uma pergunta de negócio: **qual gênero musical tem a maior popularidade média no Spotify?**

Esse tipo de análise ajuda gravadoras, curadores de playlists e artistas a entender onde está a atenção do público.

## Dados

- **Fonte:** [Spotify Tracks Dataset](https://www.kaggle.com/datasets/maharshipandya/-spotify-tracks-dataset) (Kaggle)
- **Tamanho:** 114.000 músicas
- **Colunas usadas:** `track_name`, `artists`, `popularity`, `danceability`, `track_genre`

## Ferramentas

- **MySQL Workbench:** consultas SQL
- **Excel:** tabela e gráfico do resultado

## O que foi feito

Oito consultas SQL, da mais simples à mais completa:

| # | Pergunta | Conceitos usados |
|---|----------|------------------|
| 1 | Como são os dados? | `SELECT`, `LIMIT` |
| 2 | Quais músicas, artistas e popularidade? | escolha de colunas |
| 3 | Quais músicas têm popularidade acima de 80? | `WHERE` |
| 4 | Quais são populares e dançantes ao mesmo tempo? | `WHERE` com `AND` |
| 5 | Quais são as 10 músicas mais populares? | `ORDER BY ... DESC` |
| 6 | Quantas músicas existem e qual a popularidade média? | `COUNT`, `AVG` |
| 7 | Quantas músicas existem por gênero? | `GROUP BY` |
| 8 | Quais gêneros têm a maior popularidade média? | `GROUP BY` + `AVG` + `ORDER BY` |

Todos os códigos estão em [`consultas_spotify.sql`](consultas_spotify.sql).

## Resultado

Top 10 gêneros por popularidade média (escala de 0 a 100):

| Posição | Gênero | Popularidade média |
|---------|--------|--------------------|
| 1 | pop-film | 59,28 |
| 2 | k-pop | 56,90 |
| 3 | chill | 53,65 |
| 4 | sad | 52,38 |
| 5 | grunge | 49,59 |
| 6 | indian | 49,54 |
| 7 | anime | 48,77 |
| 8 | emo | 48,13 |
| 9 | sertanejo | 47,87 |
| 10 | pop | 47,58 |

**Conclusão:** `pop-film` lidera o ranking, seguido por `k-pop` e `chill`. O gráfico está em [`ranking_generos_spotify.xlsx`](ranking_generos_spotify.xlsx) e os prints dos resultados estão na pasta de imagens deste repositório.

## Aprendizados

- Conferir sempre o total de linhas depois de importar os dados. Uma importação incompleta (46 linhas em vez de 114.000) gerava um ranking falso.
- O assistente de importação do Workbench parou sem avisar. O comando `LOAD DATA LOCAL INFILE` carregou o arquivo inteiro.

## Próximos passos

- Cruzar gênero com `danceability` e `energy`
- Montar um painel no Power BI
