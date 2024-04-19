SELECT
   song nome_musica,
CASE
  WHEN song LIKE '%Streets' THEN REPLACE(song, 'Streets', 'Code Review')
  WHEN song LIKE '%Her Own' THEN REPLACE(song, 'Her Own', 'Trybe')
  WHEN song LIKE '%Inner Fire' THEN REPLACE(song, 'Inner Fire', 'Project')
  WHEN song LIKE '%Silly' THEN REPLACE(song, 'Silly', 'Nice')
  WHEN song LIKE '%Circus' THEN REPLACE(song, 'Circus', 'Pull Request')
  ELSE song
END novo_nome
FROM song
WHERE song RLIKE 'Streets|Her Own|Inner Fire|Silly|Circus'
ORDER BY song;




