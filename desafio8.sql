SELECT
    Ar.artist artista,
    Al.album album
FROM artist AS Ar
INNER JOIN album AS Al
ON Ar.artist_id = Al.artist_id
WHERE Ar.artist = 'Walter Phoenix'
ORDER BY album;