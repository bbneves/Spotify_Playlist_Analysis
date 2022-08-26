SELECT artist_name, song_name, COUNT(track_uri) 
FROM playlists
GROUP BY artist_name, song_name
HAVING COUNT(track_uri) > 1
ORDER BY COUNT(track_uri) DESC;