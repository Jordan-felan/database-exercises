
USE employees;

SELECT employees.last_name, salaries.salary
FROM employees JOIN salaries
                    ON employees.emp_no = salaries.emp_no
LIMIT 50;

# SELECT AVG(salary), gender FROM employees
# JOIN salaries ON employees.emp_no = salaries.emp_no
# GROUP BY gender;

CREATE DATABASE join_test_db;
# USE join_test_db;
# CREATE TABLE roles (
#                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#                        name VARCHAR(100) NOT NULL,
#                        PRIMARY KEY (id)
# );
#
# CREATE TABLE users (
# id INT UNSIGNED NOT NULL AUTO_INCREMENT,
# name VARCHAR(100) NOT NULL,
# email VARCHAR(100) NOT NULL,
# role_id INT UNSIGNED DEFAULT NULL,
# PRIMARY KEY (id),
# FOREIGN KEY (role_id) REFERENCES roles (id)
# );
#
# INSERT INTO roles (name) VALUES ('admin');
# INSERT INTO roles (name) VALUES ('author');
# INSERT INTO roles (name) VALUES ('reviewer');
# INSERT INTO roles (name) VALUES ('commenter');
#
# INSERT INTO users (name, email, role_id) VALUES
# ('bob', 'bob@example.com', 1),
# ('joe', 'joe@example.com', 2),
# ('sally', 'sally@example.com', 3),
# ('adam', 'adam@example.com', 3),
# ('jane', 'jane@example.com', null),
# ('mike', 'mike@example.com', null);

USE join_test_db;


DESCRIBE users;

SELECT * FROM users;

SELECT users.name AS user_name, roles.name
FROM users LEFT JOIN roles
                     ON users.role_id = roles.id;

USE codeup_test_db;
CREATE TABLE persons (
                         person_id INT NOT NULL AUTO_INCREMENT,
                         first_name VARCHAR(25) NOT NULL,
                         album_id INT NOT NULL,
                         PRIMARY KEY (person_id)
);

INSERT INTO persons (first_name, album_id) VALUES ('Olivia', 29), ('Santiago', 27), ('Tareq', 15), ('Anaya', 28);

SELECT p.first_name, a.name FROM persons p JOIN albums a ON p.album_id = a.id;

#LEFT JOIN
SELECT p.first_name, a.name FROM albums a  LEFT JOIN persons p ON a.id= p.album_id;
SELECT p.first_name, a.name FROM persons p LEFT JOIN albums a ON p.album_id = a.id;

#RIGHT JOIN
SELECT p.first_name, a.name FROM persons p RIGHT JOIN albums a ON p.album_id = a.id;
SELECT p.first_name, a.name FROM albums a  RIGHT JOIN persons p ON a.id= p.album_id;

SELECT * FROM persons;

CREATE TABLE preferences (
                             person_id INT NOT NULL,
                             album_id INT NOT NULL
);

INSERT INTO preferences (person_id, album_id) VALUES (1, 12), (1, 5), (1, 22), (1, 29), (2, 1), (2, 31), (2, 30), (3, 11), (3, 26), (3, 25);

SELECT * FROM preferences;

SELECT p.first_name AS name, a.name AS album FROM persons p JOIN preferences pf ON p.person_id = pf.person_id JOIN albums a ON pf.album_id = a.id;

#first part of exercise
USE join_test_db;
INSERT INTO users (name, email, role_id) VALUES
('summer', 'summer@example.com', 2),
('morty', 'morty@example.com', 2),
('rick', 'rick@example.com', 2),
('jerry', 'jerry@example.com', null);

SELECT * FROM users;

SELECT users.name AS user_name, roles.name
FROM users LEFT JOIN roles
ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name
FROM users RIGHT JOIN roles
ON users.role_id = roles.id;