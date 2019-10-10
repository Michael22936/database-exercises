USE codeup_test_db;

SELECT * FROM albums WHERE artist = 'Pink Floyd';

SELECT * FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT * FROM albums WHERE id = 36;

SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 2000;

SELECT * FROM albums WHERE sales < 20;

SELECT* FROM albums WHERE genre = 'Rock';