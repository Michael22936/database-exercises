USE codeup_test_db;

DROP TABLE IF EXISTS albums;

ALTER TABLE albums
    ADD UNIQUE (artist, name);

CREATE TABLE albums
(
    id           INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist       VARCHAR(255)     NOT NULL,
    name         VARCHAR(255)      NOT NULL,
    release_date INT(4) UNSIGNED NOT NULL,
    sales        FLOAT(5,2)        NOT NULL,
    genre        VARCHAR(255)      NOT NULL,
    PRIMARY KEY (id)
);
