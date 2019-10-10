USE codeup_test_db;

DROP TABLE IF EXISTS books;

CREATE TABLE books
(
    id    INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) DEFAULT 'Unknown',
    date_published INT(4),
    description TEXT,
    bestseller_week INT DEFAULT 0,
    PRIMARY KEY (id)
);