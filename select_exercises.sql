USE codeup_test_db;

SELECT name AS 'albums from Pink Floyd' FROM albums WHERE artist = 'Pink Floyd';

SELECT release_date AS 'Sgt. Pepper''s Lonely Hearts Club Band by year' FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT name AS 'Nirvana'FROM albums WHERE id = 36;

SELECT name AS 'albums between 1990 and 2000' FROM albums WHERE release_date BETWEEN 1990 AND 2000;

SELECT sales AS 'albums made less than 20 million' FROM albums WHERE sales < 20;

SELECT name AS 'albums in the rock genre' FROM albums WHERE genre = 'Rock';