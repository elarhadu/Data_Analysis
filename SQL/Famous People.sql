-- NAMES --
/*
Persis Yentumi
Emmanuella Adu
Joseph Boateng
Ebenezer Kojo Frimpong
*/

-- create the database
CREATE DATABASE famous_people;

-- set the default database
USE famous_people;

-- create MovieActors table
CREATE TABLE MovieActors (
id INTEGER PRIMARY KEY AUTO_INCREMENT,
fullname TEXT,
age INTEGER,
nationality TEXT);
    
INSERT INTO MovieActors (fullname, age, nationality) VALUES ("Tom Hanks", 66, "US");
INSERT INTO MovieActors (fullname, age, nationality) VALUES ("Meryl Streep", 73, "US");
INSERT INTO MovieActors (fullname, age, nationality) VALUES ("Leonardo DiCaprio", 48, "US");
INSERT INTO MovieActors (fullname, age, nationality) VALUES ("Julia Roberts", 55, "US");
INSERT INTO MovieActors (fullname, age, nationality) VALUES ("Denzel Washington", 68, "US");
INSERT INTO MovieActors (fullname, age, nationality) VALUES ("Chris Hemsworth", 39, "Australia");
INSERT INTO MovieActors (fullname, age, nationality) VALUES ("Emma Stone", 34, "US");
INSERT INTO MovieActors (fullname, age, nationality) VALUES ("Robert Downey Jr.", 57, "US");
INSERT INTO MovieActors (fullname, age, nationality) VALUES ("Scarlett Johansson", 38, "US");
INSERT INTO MovieActors (fullname, age, nationality) VALUES ("Idris Elba", 50, "UK");
INSERT INTO MovieActors (fullname, age, nationality) VALUES ("Charlize Theron", 47, "South Africa/US");
INSERT INTO MovieActors (fullname, age, nationality) VALUES ("Matt Damon", 52, "US");
INSERT INTO MovieActors (fullname, age, nationality) VALUES ("Cate Blanchett", 53, "Australia");
INSERT INTO MovieActors (fullname, age, nationality) VALUES ("Brad Pitt", 59, "US");
INSERT INTO MovieActors (fullname, age, nationality) VALUES ("Sandra Bullock", 58, "US");

-- create Movie table
CREATE TABLE Movies (
id INTEGER PRIMARY KEY AUTO_INCREMENT,
movieactors_id INTEGER,
title VARCHAR(255),
release_year INTEGER,
genre VARCHAR(255),
actor VARCHAR(255)
);

INSERT INTO Movies (movieactors_id, title, release_year, genre, actor) VALUES (1, "Forrest Gump", 1994, "Drama", "Tom Hanks");
INSERT INTO Movies (movieactors_id,title, release_year, genre, actor) VALUES (2, "The Devil Wears Prada", 2006, "Comedy", "Meryl Streep");
INSERT INTO Movies (movieactors_id, title, release_year, genre, actor) VALUES (3, "Titanic", 1997, "Romance", "Leonardo DiCaprio");
INSERT INTO Movies (movieactors_id, title, release_year, genre, actor) VALUES (4, "Pretty Woman", 1990, "Romance", "Julia Roberts");
INSERT INTO Movies (movieactors_id, title, release_year, genre, actor) VALUES (5, "Training Day", 2001, "Thriller", "Denzel Washington");
INSERT INTO Movies (movieactors_id, title, release_year, genre, actor) VALUES (6, "Thor", 2011, "Superhero", "Chris Hemsworth");
INSERT INTO Movies (movieactors_id, title, release_year, genre, actor) VALUES (7, "La La Land", 2016, "Musical", "Emma Stone");
INSERT INTO Movies (movieactors_id, title, release_year, genre, actor) VALUES (8, "Iron Man", 2008, "Superhero", "Robert Downey Jr.");
INSERT INTO Movies (movieactors_id, title, release_year, genre, actor) VALUES (9, "Lucy", 2014, "Science Fiction", "Scarlett Johansson");
INSERT INTO Movies (movieactors_id, title, release_year, genre, actor) VALUES (10, "Luther", 2010, "Crime", "Idris Elba");
INSERT INTO Movies (movieactors_id, title, release_year, genre, actor) VALUES (11, "Mad Max: Fury Road", 2015, "Action", "Charlize Theron");
INSERT INTO Movies (movieactors_id, title, release_year, genre, actor) VALUES (12, "The Martian", 2015, "Science Fiction", "Matt Damon");
INSERT INTO Movies (movieactors_id, title, release_year, genre, actor) VALUES (13, "Blue Jasmine", 2013, "Drama", "Cate Blanchett");
INSERT INTO Movies (movieactors_id, title, release_year, genre, actor) VALUES (14, "Once Upon a Time in Hollywood", 2019, "Comedy", "Brad Pitt");
INSERT INTO Movies (movieactors_id, title, release_year, genre, actor) VALUES (15, "Gravity", 2013, "Science Fiction", "Sandra Bullock");


CREATE TABLE MovieActorsMarital(
    movieactors_id INTEGER,
    spouse VARCHAR(255),
    married_date DATE,
    FOREIGN KEY (movieactors_id) REFERENCES MovieActors(id)
);


INSERT INTO MovieActorsMarital (movieactors_id, spouse, married_date) VALUES (1, 'Rita Wilson', '1988-04-30'); 
INSERT INTO MovieActorsMarital (movieactors_id, spouse, married_date) VALUES (2, 'Don Gummer', '1978-09-30');  
INSERT INTO MovieActorsMarital (movieactors_id, spouse, married_date) VALUES (3, 'Camila Morrone', '2020-01-01');  
INSERT INTO MovieActorsMarital (movieactors_id, spouse, married_date) VALUES (4, 'Danny Moder', '2002-07-04');  
INSERT INTO MovieActorsMarital (movieactors_id, spouse, married_date) VALUES (5, 'Pauletta Washington', '1983-06-25'); 
INSERT INTO MovieActorsMarital (movieactors_id, spouse, married_date) VALUES (6, 'Elsa Pataky', '2010-04-01');  
INSERT INTO MovieActorsMarital (movieactors_id, spouse, married_date) VALUES (7, 'Dave McCary', '2020-12-04');  
INSERT INTO MovieActorsMarital (movieactors_id, spouse, married_date) VALUES (8, 'Susan Downey', '2005-08-27');  
INSERT INTO MovieActorsMarital (movieactors_id, spouse, married_date) VALUES (9, 'Romain Dauriac', '2014-10-01');  
INSERT INTO MovieActorsMarital (movieactors_id, spouse, married_date) VALUES (10, 'Sabrina Dhowre', '2019-04-26');  
INSERT INTO MovieActorsMarital (movieactors_id, spouse, married_date) VALUES (11, 'Sean Penn', '2010-01-01'); 
INSERT INTO MovieActorsMarital (movieactors_id, spouse, married_date) VALUES (12, 'Luciana Barroso', '2005-12-11');  
INSERT INTO MovieActorsMarital (movieactors_id, spouse, married_date) VALUES (13, 'Andrew Upton', '1997-01-01'); 
INSERT INTO MovieActorsMarital (movieactors_id, spouse, married_date) VALUES (14, 'Angelina Jolie', '2014-08-23');  
INSERT INTO MovieActorsMarital (movieactors_id, spouse, married_date) VALUES (15, 'Bryan Randall', '2022-06-01');  

-- queries
select * FROM MovieActors;
select * FROM Movies;
select * FROM MovieActorsMarital;

-- check spouse
SELECT MovieActors.fullname, MovieActorsMarital.spouse
FROM MovieActorsMarital
JOIN MovieActors ON MovieActorsMarital.movieactors_id = MovieActors.id;

-- List all movies with their associated actors
SELECT Movies.title, MovieActors.fullname
FROM Movies
JOIN MovieActors ON Movies.movieactors_id = MovieActors.id;

-- List all movies released in a particular year
SELECT * FROM Movies WHERE release_year = 2015;

-- List all actors who have starred in movies released in a particular genre
SELECT DISTINCT MovieActors.fullname
FROM Movies
JOIN MovieActors ON Movies.movieactors_id = MovieActors.id
WHERE Movies.genre = "Science Fiction";

-- List all actors and the number of movies they've starred in
SELECT MovieActors.fullname, COUNT(*) AS movie_count
FROM MovieActors
JOIN Movies ON MovieActors.id = Movies.movieactors_id
GROUP BY MovieActors.fullname
ORDER BY movie_count DESC;