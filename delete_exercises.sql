USE codeup_test_db;

DELETE FROM albums WHERE release_date > 1991;

SELECT *;

DELETE FROM albums WHERE genre = 'disco';

SELECT *;

DELETE FROM albums WHERE artist = 'Whitney Houston';

SELECT *;
