USE codeup_test_db;

TRUNCATE albums;

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Guns N Roses', 'Appetite for Destruction', '1987', 21900000, 'Hard Rock'),
       ('Pink Floyd','The Wall', '1979', 18700000, 'Progressive Rock'),
       ('Led Zeppelin', 'Led Zeppelin IV', '1971', 29000000, 'Hard Rock'),
       ('Michael Jackson', 'Thriller', '1982', 47300000, 'Pop'),
       ('AC/DC', 'Thriller', '1980', 29400000, 'Hard Rock'),
       ('Meat Loaf', 'Bat Out Of Hell', '1977', 21700000, 'Hard Rock'),
       ('Pink Floyd', 'The Dark Side of the Moon', '1973', 24400000, 'Progressive Rock'),
       ('Whitney Houston/Various Artists', 'The Bodyguard', '1992', 32400000, 'R&B,Soul'),
       ('Eagles', 'Their Greatest Hits (1971–1975)', '1975', 41200000, 'Soft Rock'),
       ('Bee Gees', 'Saturday Night Fever', '1977', 21600000, 'Disco'),
       ('Fleetwood Mac', 'Rumours', '1977', 27900000, 'Soft Rock'),
       ('Shania Twain', 'Come On Over', '1997', 27900000, 'Country, Pop'),
       ('Various Artists', 'Grease: The Original Soundtrack from the Motion Picture', '1978', 14400000, 'Rock'),
       ('Michael Jackson', 'Bad', '1987', 22200000, 'Pop'),
       ('Alanis Morissette', 'Jagged Little Pill', '1995', 24400000, 'Alternative Rock'),
       ('Michael Jackson', 'Dangerous', '1991', 17000000, 'Pop'),
       ('Celine Dion', 'Falling Into You', '1996', 21200000, 'Pop'),
       ('Eagles', 'Hotel California', '1976', 31500000, 'Soft Rock'),
       ('The Beatles', 'Sgt. Peppers Lonely Hearts Club Band', '1967', 18200000, 'Rock'),
       ('Various Artists', 'Dirty Dancing', '1987', 17900000, 'Rock'),
       ('Adele', '21', '2011', 30800000, 'Pop'),
       ('Madonna', 'The Immaculate Collection', '1990', 19500000, 'Pop'),
       ('Celine Dion', 'Lets Talk About Love', '1997', 19300000, 'Pop'),
       ('Metallica', 'Metallica', '1991', 25200000, 'Heavy Metal'),
       ('The Beatles', '1', '2000', 23400000, 'Rock'),
       ('The Beatles', 'Abbey Road', '1969', 14400000, 'Rock'),
       ('ABBA', 'Gold: Greatest Hits', '1992', 23000000, 'Rock'),
       ('Nirvana', 'Nevermind', '1991', 16700000, 'Grunge');
