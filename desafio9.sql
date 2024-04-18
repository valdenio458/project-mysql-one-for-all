SELECT
  COUNT(H.song_id) As quantidade_musicas_no_historico
FROM reproduction_history AS H
INNER JOIN user As U
ON H.user_id = U.user_id
WHERE U.user = 'Bill';


