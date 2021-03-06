
USE codeup_test_db;

# DROP TABLE IF EXISTS quotes;
#
# CREATE TABLE quotes (
#     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#     author_first_name VARCHAR(50),
#     author_last_name  VARCHAR(100) NOT NULL,
#     content TEXT NOT NULL,
#     PRIMARY KEY (id)
# );
#
# INSERT INTO quotes (author_first_name, author_last_name, content)
# VALUES ('Douglas', 'Adams', 'I love deadlines. I love the whooshing noise they make as they go by.'),
# ('Douglas', 'Adams', 'Don''t Panic.'),
# ('Douglas', 'Adams', 'Time is an illusion. Lunchtime doubly so.'),
# ('Mark', 'Twain', 'Clothes make the man. Naked people have little or no influence on society.'),
# ('Kurt', 'Vonnegut', 'The universe is a big place, perhaps the biggest.');
#
# SELECT * FROM quotes;

DROP TABLE IF EXISTS authors;

CREATE TABLE authors (
     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
     first_name VARCHAR(50),
     last_name  VARCHAR(100) NOT NULL,
     PRIMARY KEY (id)
);

INSERT INTO authors(first_name, last_name) VALUES
('Douglas', 'Adams'),
('Mark', 'Twain'),
('Kurt', 'Vonnegut');

SELECT * FROM authors;

DROP TABLE IF EXISTS quotes;

CREATE TABLE quotes (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    content TEXT NOT NULL,
    author_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (author_id) REFERENCES authors (id)
);

SELECT * FROM quotes;

INSERT INTO quotes (author_id, content)
VALUES ((select id from authors where first_name = 'Douglas' and last_name = 'Adams'),
'I love deadlines. I love the whooshing noise they make as they go by.');
INSERT INTO quotes (author_id, content)
VALUES ((select id from authors where first_name = 'Douglas' and last_name = 'Adams'),
'Time is an illusion. Lunchtime doubly so.');
INSERT INTO quotes (author_id, content)
values ((select id from authors where first_name = 'Mark' and last_name = 'Twain'),
'Clothes make the man. Naked people have little or no influence on society.');
INSERT INTO quotes (author_id, content)
values ((select id from authors where first_name = 'Kurt' and last_name = 'Vonnegut'),
'The universe is a big place, perhaps the biggest.');
INSERT INTO quotes (author_id, content)
VALUES ((select id from authors where first_name = 'Douglas' and last_name = 'Adams'), 'Don''t Panic.');

SELECT quotes.content AS 'content', CONCAT(authors.first_name, ' ', authors.last_name)
AS 'author name' FROM quotes
JOIN authors ON authors.id = author_id;

SELECT * FROM quotes;

DROP TABLE IF EXISTS topics;

CREATE TABLE topics (
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(255),
PRIMARY KEY (id)
);

INSERT INTO topics(name) VALUES
('Space and Time'),
('Humor'),
('Office Life'),
('Hitchiker''s Guide to the Galaxy');