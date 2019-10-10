USE codeup_test_db;

UPDATE albums AS 'sales times 10' SET sales = (sales*10);

SELECT *;

UPDATE albums AS 'changed date to 1800' SET release_date = 1800 WHERE release_date < 1980;

SELECT *;

UPDATE albums AS 'changed Michael Jackson to Peter Jackson' SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';

SELECT *;