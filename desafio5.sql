SELECT 
   S.song cancao,
   COUNT(H.song_id) reproducoes
FROM song As S
INNER JOIN reproduction_history AS H
ON S.song_id = H.song_id
GROUP BY H.song_id
ORDER BY reproducoes DESC, S.song;


