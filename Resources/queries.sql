SELECT DISTINCT ON (t.track_id) t.artist_name, t.track_name, t.album_release_date, t.popularity, fo.playlist_name, fo.followers, fe.danceability, fe.energy, fe.key, fe.loudness, fe.mode, fe.speechiness, fe.acousticness, fe.instrumentalness, fe.liveness, fe.valence, fe.tempo, fe.duration_ms, fe.time_signature, t.track_id
FROM tracks AS t
JOIN followers AS fo
ON t.track_id = fo.track_id
JOIN features AS fe
ON t.track_id = fe.id;

SELECT DISTINCT ON (t.track_id) fe.danceability, fe.energy, fe.key, fe.loudness, fe.mode, fe.speechiness, fe.acousticness, fe.instrumentalness, fe.liveness, fe.valence, fe.tempo, fe.duration_ms, fe.time_signature, t.popularity, t.track_id 
FROM tracks AS t
JOIN features AS fe
ON fe.id = t.track_id;