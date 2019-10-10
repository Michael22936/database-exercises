USE codeup_test_db;

SELECT 'deleted albums after 1991' AS 'albums';

DELETE FROM albums WHERE release_date > 1991;

SELECT *;

SELECT 'delete albums with disco' AS 'albums';

DELETE FROM albums WHERE genre = 'disco';

SELECT *;

SELECT 'delete albums by Whitney Houston' AS 'albums';

DELETE FROM albums WHERE artist = 'Whitney Houston';

SELECT *;
