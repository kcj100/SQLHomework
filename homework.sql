-- Create database
CREATE DATABASE movie_db;

-- Use database
USE movie_db;

-- Create table
CREATE TABLE movies (
     Title VARCHAR(255),
     Runtime INT,
     Genre VARCHAR(255),
     IMDB_Score DECIMAL(3, 1),
     Rating VARCHAR(10)
     );

-- Insert all movies into table
INSERT INTO movies (Title, Runtime, Genre, IMDB_Score, Rating)
     VALUES
     ('Howard the Duck', 110, 'Sci-Fi', 4.6, 'PG'),
     ('Lavalantula', 83, 'Horror', 4.7, 'TV-14'),
     ('Starship Troopers', 129, 'Sci-Fi', 7.2, 'PG-13'),
     ('Waltz With Bashir', 90, 'Documentary', 8.0, 'R'),
     ('Spaceballs', 96, 'Comedy', 7.1, 'PG'),
     ('Monsters Inc.', 92, 'Animation', 8.1, 'G');

-- Describe columns of movies table and their types
DESCRIBE movies;

-- List all movies from movies table
SELECT * from movies;

-- Insert another movie to movies table
INSERT INTO movies (Title, Runtime, Genre, IMDB_Score, Rating)
     VALUES
     ('Star Trek Beyond', 122, 'Sci-Fi', 7.0, 'PG-13');

-- List all movies again
SELECT * from movies;

-- Insert another movie into movies table
INSERT INTO movies (Title, Runtime, Genre, IMDB_Score, Rating)
     VALUES
     ('Black Panther: Wakanda Forever', 161, 'Action-Adventure', 6.7, 'PG-13');

-- List all Sci-Fi only movies
SELECT Title FROM movies WHERE Genre = 'Sci-Fi';

-- List all movies with IMDB score greater than 6.5
SELECT Title FROM movies WHERE IMDB_Score >= 6.5;

-- List all movies rated G or PG and under 100 minutes
SELECT Title
     FROM movies
     WHERE (Rating = 'G' OR Rating = 'PG') AND Runtime < 100;

-- List all averages of each movie genre's runtime and only if they score below 7.5 on IMDB
SELECT Genre, AVG(Runtime) AS AverageRuntime
     FROM movies
     WHERE IMDB_Score < 7.5
     GROUP BY Genre;

-- Update Starship Troopers rating to R from PG-13
UPDATE movies SET Rating = 'R' WHERE Title = 'Starship Troopers' AND Rating = 'PG-13';

-- List all movies from movie table
SELECT * FROM movies;

-- List all movies based on rating and average score, max score, and min score columns.
SELECT Rating, AVG(IMDB_Score) AS AverageScore, MAX(IMDB_Score) AS MaxScore,
     MIN(IMDB_Score) AS MinScore
     FROM movies
     GROUP BY Rating;

-- List all movies based on rating and average score, max score, and min score columns only
-- if there is more than one movie of the same rating
SELECT Rating, AVG(IMDB_Score) AS AverageScore, MAX(IMDB_Score) AS MaxScore,
     MIN(IMDB_Score) AS MinScore
     FROM movies
     GROUP BY Rating
     HAVING COUNT(*) > 1;

-- Delete all movies that are rated R
DELETE FROM movies WHERE Rating = 'R';

-- List all movies after deletion
SELECT * FROM movies;

-- List all genres along with the top IMDB score out of their respective movies
SELECT Genre, MAX(IMDB_Score) AS TopIMDBScore FROM movies
     GROUP BY Genre;

-- List all genres along with the average runtime of all of their movies
SELECT Genre, AVG(Runtime) AS AverageRuntime
     FROM movies
     GROUP BY Genre;

-- List all movies that have a runtime lower than or equal to 90 minutes
SELECT Title, Runtime FROM movies WHERE Runtime <= 90;

-- Create a new table called video_games
CREATE TABLE  video_games (
     id INT AUTO_INCREMENT PRIMARY KEY,
     title VARCHAR(255) NOT NULL,
     platform VARCHAR(50),
     release_year INT,
     genre VARCHAR(100)
     );

-- Show all columns of video_games table
DESCRIBE video_games;

-- Insert video games into video_games table
INSERT INTO video_games (title, platform, release_year, genre) 
VALUES 
('God Of War Ragnarok', 'Playstation', 2022, 'Action-Adventure'), 
('Starfield', 'XBOX/PC', 2023, 'Action-Adventure');

-- List all video games from video_games table.
SELECT * FROM video_games;