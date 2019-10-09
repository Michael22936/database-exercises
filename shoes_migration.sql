USE codeup_test_db;

DROP TABLE IF EXISTS shoes;

CREATE TABLE shoes(
    id    INT UNSIGNED NOT NULL AUTO_INCREMENT,
    color VARCHAR(255) DEFAULT 'no color',
    product_description TEXT,
    rating INT,
    price DOUBLE(7,2) NOT NULL,
    in_stock INT NOT NULL,
    date_delivered DATE,
    size INT NOT NULL,
    PRIMARY KEY (id)
);