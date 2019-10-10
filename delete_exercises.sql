USE codeup_test_db;

DELETE FROM albums AS 'deleted albums after 1991' WHERE release_date > 1991;

SELECT *;

DELETE FROM albums AS 'delete albums with disco' WHERE genre = 'disco';

SELECT *;

DELETE FROM albums AS 'delete albums by Whitney Houston' WHERE artist = 'Whitney Houston';

SELECT *;
