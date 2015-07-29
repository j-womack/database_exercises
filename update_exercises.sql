USE codeup_test_db;

SELECT name AS 'All Albums' FROM albums;
UPDATE albums SET sales_in_millions = sales_in_millions * 10;
SELECT name, sales_in_millions AS 'All Albums' FROM albums;

SELECT name AS 'All albums released before 1980' FROM albums WHERE release_date < 1980;
UPDATE albums SET release_date = release_date - 100 WHERE release_date < 1980;
SELECT name, release_date AS 'All albums released before 1980' FROM albums WHERE release_date < 1980;

SELECT name AS 'Albums by Michael Jackson' FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT name, artist AS 'Albums by Peter Jackson' FROM albums WHERE artist = 'Peter Jackson';