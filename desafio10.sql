SELECT 
   S.song nome,
   COUNT(H.time_stamp) reproducoes
FROM song As S
INNER JOIN reproduction_history AS H
ON S.song_id = H.song_id
INNER JOIN user As U
ON H.user_id = U.user_id
INNER JOIN plan As P
ON U.plan_id = P.plan_id
WHERE P.plan IN('gratuito', 'pessoal')
GROUP BY S.song
ORDER BY S.song;   




