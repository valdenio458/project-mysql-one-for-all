SELECT 
   user usuario,
   COUNT(H.song_id) qtde_musicas_ouvidas,
   ROUND(SUM(S.duration_seconds)/60,2) total_minutos
FROM user AS U
INNER JOIN reproduction_history AS H
ON U.user_id = H.user_id
INNER JOIN song AS S
ON S.song_id = H.song_id
GROUP BY user
ORDER BY user;



