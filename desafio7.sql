SELECT
   Ar.artist artista,
   Al.album, 
   COUNT(F.user_id) seguidores
FROM artist As Ar
INNER JOIN album AS Al
ON Ar.artist_id = Al.artist_id
INNER JOIN following_artists AS F
ON Ar.artist_id = F.artist_id
GROUP BY Al.album_id
ORDER BY seguidores DESC, artista, Al.album;



