USE join_test_db;

DROP DATABASE IF EXISTS join_test_db;
CREATE DATABASE join_test_db;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS roles;

CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);

SELECT * FROM roles;
SELECT * FROM users;

SELECT users.name, roles.name
FROM users
         JOIN roles -- same as INNER JOIN
              ON roles.id = users.role_id;

SELECT users.name, roles.name
FROM users
         LEFT JOIN roles
                   ON roles.id = users.role_id;

SELECT users.name, roles.name
FROM users
         RIGHT JOIN roles
                    ON roles.id = users.role_id;








USE employees;

show tables;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE to_date = '9999-01-01'
ORDER BY dept_name;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE to_date = '9999-01-01' AND gender = 'F'
ORDER BY dept_name;

SELECT t.title, COUNT(first_name)
FROM employees as e
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
         JOIN titles t
              ON e.emp_no = t.emp_no
WHERE dept_name = 'Customer Service' AND t.to_date = '9999-01-01'
GROUP BY title;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name, salaries.salary
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
         JOIN salaries ON e.emp_no = salaries.emp_no
WHERE de.to_date = '9999-01-01' AND salaries.to_date = '9999-01-01'
ORDER BY dept_name;




