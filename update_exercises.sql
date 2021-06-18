USE codeup_test_db;

SELECT 'All Albums' AS '';
SELECT * FROM albums;
UPDATE albums SET sales = sales * 5;


SELECT 'All albums before 1980' AS '';
SELECT * FROM albums WHERE release_date < 1980;
UPDATE albums SET release_date = (release_date - 100) WHERE release_date < 1980;

SELECT 'All Michael Jackson Albums' AS '';
SELECT * FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
