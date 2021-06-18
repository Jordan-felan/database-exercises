USE codeup_test_db;

SELECT 'This is a list of all PInk Floyd albums' AS '';
SELECT * FROM albums WHERE artist = 'Pink Floyd';

SELECT 'This is the year Sgt. Pepper''s Lonely Hearts Club Band was released.' AS '';
SELECT YEAR(release_date) FROM albums WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';

SELECT 'The genre for Nirvanas Nevermind is: ' AS '';
SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT 'Albums released in the 1990s are: ' AS '';
SELECT * FROM albums WHERE YEAR(release_date) BETWEEN 1990 AND 1999;

SELECT 'These albums sold less than 20million copies; ' AS '';
SELECT * FROM albums WHERE sales < 20000000;

SELECT 'These are all the Rock Albums; ' AS '';
SELECT * FROm albums WHERE genre = 'Rock';
