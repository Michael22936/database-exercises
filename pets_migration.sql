USE codeup_test_db;

DROP TABLE IF EXISTS pets;

CREATE TABLE pets(
    id    INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    dob DATE,
    weight INT,
    is_sterlized BOOLEAN NOT NULL,
    breed VARCHAR(255),
    description TEXT,
    date_adopted DATE,
    PRIMARY KEY (id)
);