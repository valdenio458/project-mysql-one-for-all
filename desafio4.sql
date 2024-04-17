SELECT 
   U.user usuario,
   IF(MAX(YEAR(H.time_stamp)) = 2021, 'Usuário ativo', 'Usuário inativo') condicao_usuario
FROM user AS U
INNER JOIN reproduction_history AS H
ON U.user_id = H.user_id
GROUP BY U.user_id
ORDER BY usuario;




