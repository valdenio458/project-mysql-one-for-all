SELECT
   MIN(P.cost) AS faturamento_minimo,
   MAX(P.cost) AS faturamento_maximo,
   ROUND(AVG(P.cost),2) AS faturamento_medio,
   SUM(P.cost) AS faturamento_total   
FROM plan AS P
INNER JOIN user AS U
ON P.plan_id = U.plan_id;



