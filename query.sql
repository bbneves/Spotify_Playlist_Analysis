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
-- Display 'playlists' table
SELECT * FROM playlists;

--DROP TABLE for 'features'
DROP TABLE features CASCADE;

-- Joining tables by song uri
SELECT playlists.Playlist,
    playlists.Followers,
    playlists.Songs,
    playlists.Genre_1,
    playlists.Genre_2,
    playlists.URI,
    playlists.Song_URI,
    playlists.Artist_Name,
    playlists.Song_Name,
    playlists.Popularity,
    features.danceability,
    features.energy,
    features.key,
    features.loudness,
    features.mode,
    features.speechiness,
    features.acousticness,
    features.instrumentalness,
    features.liveness,
    features.valence,
    features.tempo,
    features.type,
    features.id,
    features.track_href,
    features.analysis_url,
    features.duration_ms,
    features.time_signature,
    features.song_name,
    features.artist_name,
    features.popularity_score
INTO song_data
FROM playlists 
LEFT JOIN features 
ON playlists.Song_URI = features.URI;

SELECT * FROM song_data
