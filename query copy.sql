-- Creating 'playlists' table
CREATE TABLE playlists (
    track_uri VARCHAR(40),
    playlist_name VARCHAR(20),
    followers INT,
    songs INT,
    genre_1 VARCHAR(20),
    genre_2 VARCHAR(20),
    playlist_uri VARCHAR(40),
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
    track_uri VARCHAR(40),
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
    track_href VARCHAR(40),
    analysis_url VARCHAR(40),
    duration_ms INT,
    time_signature INT,
    artist_name VARCHAR(40),
    song_name VARCHAR(40),
    popularity_score INT,
    PRIMARY KEY (track_uri),
    UNIQUE (track_uri)
);

--Display 'features'
SELECT * FROM features;


--DROP TABLE for 'features'
DROP TABLE features CASCADE;

