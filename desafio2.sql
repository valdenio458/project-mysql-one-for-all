SELECT
	COUNT(S.song_id) `cancoes`,
    COUNT(DISTINCT(A.artist_id)) `artista`,
    COUNT(DISTINCT(A.album_id)) `albuns`    
FROM song AS S
INNER JOIN album As A
ON S.album_id = A.album_id  ;
    
select * from album;