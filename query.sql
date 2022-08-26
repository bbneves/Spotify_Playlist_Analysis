-- Creating 'playlists' table
CREATE TABLE playlists (
    playlist_name VARCHAR(20),
    followers INT,
    songs INT,
    genre_1 VARCHAR(20),
    genre_2 VARCHAR(20),
    playlist_uri VARCHAR(40),
    track_uri VARCHAR(40),
    artist_name VARCHAR(40),
    song_name VARCHAR(40),
    popularity_score INT,
    PRIMARY KEY (track_uri),
    --FOREIGN KEY (track_uri),
    UNIQUE (track_uri)
);

-- Display 'playlists' table
SELECT * FROM playlists;

-- DROP TABLE for 'playlists'
DROP TABLE playlists CASCADE;


-- Creating 'features' table
CREATE TABLE features (
    danceability FLOAT,
    energy FLOAT,
    key INT,
    loudness FLOAT,
    mode INT,
    speechiness FLOAT,
    acousticness FLOAT,
    instrumentalness FLOAT,
    liveness FLOAT,
    valence FLOAT,
    tempo FLOAT,
    type VARCHAR(20),
    id VARCHAR(40),
    track_uri VARCHAR(40),
    track_href VARCHAR(40),
    analysis_url VARCHAR(40),
    duration_ms INT,
    time_signature INT,
    song_name VARCHAR(40),
    artist_name VARCHAR(40),
    popularity_score INT,
    PRIMARY KEY (track_uri),
    UNIQUE (track_uri)
);

--Display 'features'
SELECT * FROM features;


--DROP TABLE for 'features'
DROP TABLE features CASCADE;

-- Joining tables by track_uri
SELECT pl.playlist_name,
    pl.followers,
    pl.songs,
    pl.genre_1,
    pl.genre_2,
    pl.playlist_uri,
    pl.track_uri,
    pl.artist_name,
    pl.song_name,
    pl.popularity_score,
    fe.danceability,
    fe.energy,
    fe.key,
    fe.loudness,
    fe.mode,
    fe.speechiness,
    fe.acousticness,
    fe.instrumentalness,
    fe.liveness,
    fe.valence,
    fe.tempo,
    fe.type,
    fe.id,
    fe.track_href,
    fe.analysis_url,
    fe.duration_ms,
    fe.time_signature,
    fe.song_name,
    fe.artist_name,
    fe.popularity_score,
INTO song_data
FROM playlists as pl
LEFT JOIN features as fe
ON pl.track_uri = fe.track_uri
ORDER BY pl.track_uri;
SELECT * FROM song_data
