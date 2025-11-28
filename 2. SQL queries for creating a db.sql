CREATE TABLE Genre (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE Artist (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE Album (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    release_year INT
);

CREATE TABLE Artist_Album (
    artist_id INT NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES Artist(id),
    FOREIGN KEY (album_id) REFERENCES Album(id),
    PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE Track (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES Album(id)
);

CREATE TABLE Compilation (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    release_year INT
);

CREATE TABLE Compilation_Track (
    compilation_id INT NOT NULL,
    track_id INT NOT NULL,
    FOREIGN KEY (compilation_id) REFERENCES Compilation(id),
    FOREIGN KEY (track_id) REFERENCES Track(id),
    PRIMARY KEY (compilation_id, track_id)
);