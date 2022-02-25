-- 15.5.2.1
-- 1. List just the titles of all the movies in the database.
-- SELECT title
-- FROM movies;


-- 2. List the title and year of each movie in the database in DESCENDING order of the year released. (Hint: Combine the SELECT command with the ORDER BY keywords).
-- SELECT title, year_released
-- FROM movies
-- ORDER BY year_released DESC;


-- 3. List all columns for all records of the directors table in ASCENDING alphabetical order based on the director’s country of origin.
-- SELECT *
-- FROM directors
-- ORDER BY country;


-- 4. ORDER BY can also consider multiple columns. List all columns for all records of the directors table in ASCENDING alphabetical order first by the director’s country of origin and then by the director’s last name.
-- SELECT *
-- FROM directors
-- ORDER BY country, last_name;


-- 5. Insert a new record into the directors table for Rob Reiner, an American film director.
-- INSERT INTO directors (first_name, last_name, country)
-- VALUES("Rob", "Reiner", "USA");


-- 6. Combine the SELECT and WHERE keywords to list the last_name and director_id for Rob Reiner.
-- SELECT last_name, director_id
-- FROM directors
-- WHERE director_id = 11;


-- 7. Insert a new record into the movies table for The Princess Bride, which was released in 1987 and directed by Rob Reiner.
-- INSERT INTO movies (title, year_released, director_id)
-- VALUES("The Princess Bride", 1987, 11);


-- 8.  If you list all of the data from the movies table (SELECT * FROM movies;), you will see a column of director ID numbers. This data is not particularly helpful to a user, since they probably want to see the director names instead. Use an INNER JOIN in your SQL command to display a list of movie titles, years released, and director last names.
-- SELECT title, year_released, last_name
-- FROM movies
-- INNER JOIN directors ON movies.director_id = directors.director_id;


-- 9. List all the movies in the database along with the first and last name of the director. Order the list alphabetically by the director’s last name.
-- SELECT DISTINCT first_name, last_name
-- FROM movies
-- INNER JOIN directors ON movies.director_id = directors.director_id
-- ORDER BY last_name;


-- 10. List the first and last name for the director of The Incredibles. You can do this with either a join or a WHERE command, but for this step please use WHERE.
-- SELECT first_name, last_name
-- FROM directors
-- WHERE director_id = (SELECT director_id FROM movies WHERE title = "The Incredibles");


-- 11. List the last name and country of origin for the director of Roma. You can do this with either a join or a WHERE command, but for this step please use a join.
-- SELECT DISTINCT last_name, country
-- FROM directors
-- INNER JOIN movies ON directors.director_id = (SELECT director_id FROM movies WHERE title = "Roma");


-- 12. Delete a row from the movies table. What consequence does this have on directors? List the contents of both tables to find out.
-- DELETE FROM movies
-- WHERE title = "The Princess Bride";
-- SELECT *
-- FROM movies;
-- SELECT *
-- FROM directors;
-- INSERT INTO movies (title, year_released, director_id)
-- VALUES("The Princess Bride", 1987, 11);


-- 13. Try to delete one person from the directors table. What error results from trying to remove a director?
-- DELETE FROM directors WHERE director_id = 11;
-- INSERT INTO directors (first_name, last_name, country)
-- VALUES("Rob", "Reiner", "USA");

-- Bonus missions
-- SELECT title AS "Movie's Title", year_released AS "Year of release"
-- FROM movies
-- WHERE director_id = (SELECT director_id FROM directors WHERE first_name = "Peter" AND last_name = "Jackson");

-- ALTER TABLE movies
-- ADD COLUMN earnings INTEGER;

-- SELECT *
-- FROM movies
-- ORDER BY earnings;

SELECT *
FROM movies
WHERE earnings > 50000000
ORDER BY earnings;



 


















