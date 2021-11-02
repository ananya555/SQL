mysql-ctl cli

CREATE DATABASE ananya_db;
USE ananya_db;

CREATE TABLE shirts(
    shirt_id INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY(shirt_id),
    article VARCHAR(100),
    color VARCHAR(100),
    shirt_size VARCHAR(100),
    last_worn INT
);

DESC shirts;

SHOW TABLES;


INSERT INTO shirts(article, color, shirt_size, last_worn) VALUES
('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15),
('purple', 'polo shirt', 'medium', 50);


SELECT * FROM shirts;

SELECT article,color FROM shirts;

SELECT* FROM shirts WHERE shirt_size='M';

SELECT article,color,shirt_size,last_worn FROM shirts WHERE shirt_size='M';

/*...Update...*/


/*.....Change size to ‘L’ for article 'polo shirt’.....*/
UPDATE shirts
SET shirt_size='L'
WHERE article='polo shirt';

/*............Output after update.........*/
SELECT * FROM shirts WHERE article='polo shirt';

/*... Change last_worn to 0 for any last_worn=15....  */
UPDATE shirts
SET last_worn=0
WHERE last_worn=15;

/*...........Output after update.........*/
SELECT * FROM shirts WHERE last_worn=0;


/*.....Change color to 'off white’ and shirt_size to 'XS’ wherever color is 'white’...*/
UPDATE shirts
SET color='off white',shirt_size='XS'
WHERE color='white';

/*...........Output after update.........*/
SELECT * FROM shirts WHERE shirt_size='XS';

/*....Print the complete updated shirts table...*/
SELECT * FROM shirts;

/*....Delete all the shirts which were worn equal/more than 200 days ago....*/
DELETE FROM shirts 
WHERE last_worn>=200;


/*....print output table....*/
SELECT * FROM shirts;


/*....Delete all the tank tops and print output table....*/
DELETE FROM shirts 
WHERE article='tank top';

SELECT * FROM shirts;

/*.......Delete all shirts without deleting the table.....*/
DELETE FROM shirts;

/*.... Showing empty set...*/
SELECT * FROM shirts;
