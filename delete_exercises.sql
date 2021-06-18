USE codeup_test_db;

SELECT 'Albums released after 1991: ' AS '';
DELETE  FROM albums WHERE release_date > 1991;

SELECT 'These are all the DISCO Albums; ' AS '';
DELETE FROM albums WHERE genre = 'Disco';

SELECT 'These are all The Beatles Albums; ' AS '';
DELETE FROM albums WHERE artist = 'The Beatles';