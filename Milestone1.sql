CREATE DATABASE hw_student;   /* Creating a DATABASE */
USE hw_student;


/*  Making a TABLE named 'students_data' in 'hw_student' DATABASE  */
CREATE TABLE students_data(
    roll_no INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY(roll_no),
    first_name VARCHAR(30) NOT NULL DEFAULT 'UNKNOWN',
    last_name VARCHAR(30),
    class_rank INT NOT NULL
);

DESC students_data;  
SHOW TABLES;


INSERT INTO students_data(first_name,last_name,class_rank) VALUES  ('Kavita','Gupta',17),('Vidya','Balan',3),('Nidhi','Sharma',27),('Riya','Kumar',12);


INSERT INTO students_data(first_name,class_rank) VALUES ('Drishti',7),('Samiksha',1),('Poornima',6),('Kavya',25);

INSERT INTO students_data(class_rank) VALUES  (2),(15);

INSERT INTO students_data(first_name,last_name,class_rank) VALUES  ('Harshita','Mehra',4),('Avni','Chaturvedi',5),('Nidhi','KUmari',8),('Pawan','Kumar',10);


SELECT * FROM students_data;

SELECT roll_no,first_name,class_rank FROM students_data;

SELECT roll_no AS 'Roll number',
first_name AS 'First Name',
last_name AS 'Last Name',
class_rank AS 'Rank'
FROM students_data;

/* Creating another TABLE named 'teachers' in 'hw_student' DATABASE  */
CREATE TABLE teachers(
    id_no INT AUTO_INCREMENT,
    PRIMARY KEY(id_no),
    Name VARCHAR(60) NOT NULL DEFAULT 'UNKNOWN USER',
    Address VARCHAR(100) NULL,
    Age INT NOT NULL
);

INSERT INTO teachers(Name,Address,Age) VALUES  ('Priety Goel','Shimla Road, Himachal Pradesh',35);
INSERT INTO teachers(Name,Address,Age) VALUES  ('Sunil Kumar Verma', 'LodhiRoad, New Delhi',28);
INSERT INTO teachers(Name,Address,Age) VALUES ('Priyanka','Tonk,Rajasthan',31);
INSERT INTO teachers(Name) VALUES ('Anshika kapoor');
INSERT INTO teachers(Address,Age) VALUES  ('Dwarka, Delhi',25),('Tonk,Rajasthan',38);
INSERT INTO teachers(Name,,Age) VALUES  ('Sakshi',28),('Sangam Jha',31);

/* DOUBT

SELECT id_no,
IFNULL(Address,'N/A') Address
FROM teachers;*/

DROP TABLE teachers;
DROP TABLE students_data;

DROP DATABASE hw_student;


/* Adding pastry_shop DATABASE*/
CREATE DATABASE pastry_shop;
SHOW DATABASES;
USE pastry_shop;

CREATE TABLE menu(
	s_no INT,
	pastry_name VARCHAR(30),
	price INT
);

DESC menu;
SHOW TABLES;

SHOW COLUMNS FROM menu; 

INSERT INTO menu(s_no,pastry_name,price) VALUES (1,'choco_butter',80);
INSERT INTO menu(s_no,pastry_name,price) VALUES (2,'honey and choco',100),(3,'strawberry with vanilla',120);



SELECT * FROM menu;

DESC menu;


INSERT INTO menu(pastry_name,price) VALUES ('butter cookie',50);
SELECT * FROM menu;



INSERT INTO menu(s_no,pastry_name,price) VALUES (2,'honey and choco',70),(3,'mixed fruit',70);
SELECT * FROM menu;


INSERT INTO menu(s_no,pastry_name) VALUES (5,'chocolate truffle');
SELECT * FROM menu;



CREATE TABLE menu2(
	S_NO INT NOT NULL,
	Pastry_name varchar(30) NOT NULL,
	Price INT NOT NULL
);



DESC menu2;

SELECT * FROM menu2;

INSERT INTO menu(s_no) VALUES (23);

SELECT * FROM menu;

INSERT INTO menu2(Pastry_name,Price) VALUES ('Red Velvet',150);
SELECT * FROM menu2;

INSERT INTO menu2(Pastry_name,Price) VALUES ('Pineapple',100);
SELECT * FROM menu2;

INSERT INTO menu2(S_NO,Pastry_name,Price) VALUES (1,'choco_butter',90);
SELECT * FROM menu2;
INSERT INTO menu2(Pastry_name,Price) VALUES ('butter_cookie',85),('nut&cream', 75), ('red velvet',80);
SELECT * FROM menu2;

INSERT INTO menu2(S_NO,Pastry_name,Price) VALUES (2,'honey and choco',70),(3,'mixed fruit',70);
SELECT * FROM menu2;

INSERT INTO menu2(S_NO,Pastry_name) VALUES (1,'vegan choclate pastry');
SELECT * FROM menu2;



INSERT INTO menu2(price)
VALUE (70),(80),(77);
SELECT * FROM menu2;


CREATE TABLE menu3( 
 s_no INT NOT NULL,
    pastry_name varchar(30) NOT NULL DEFAULT 'unavailable',
    price INT NOT NULL DEFAULT 9999
);

CREATE TABLE menu4(
 s_no INT NOT NULL AUTO_INCREMENT,
    pastry_name varchar(30) NOT NULL DEFAULT 'unavailable',
    price INT NOT NULL DEFAULT 1000,
    PRIMARY KEY (s_no)
);

INSERT INTO menu4(pastry_name,price) VALUES ('Dark forest with cherry',120);
SELECT * FROM menu4;


INSERT INTO menu4(pastry_name) VALUES ('Mango pastry');
SELECT * FROM menu4;

INSERT INTO menu4(s_no,pastry_name,price) VALUES(4,'Butter Scotch Pastry',90);
SELECT * FROM menu4;

INSERT INTO menu4(pastry_name,price) VALUES('Mocha Pastry',150);
SELECT * FROM menu4;

INSERT INTO menu4(price) VALUES(39);
SELECT * FROM menu4;


DESC menu2;
DESC menu3;
DESC menu4;
DESC menu;


SHOW TABLES;

DROP TABLE menu;
SHOW TABLES;


SHOW WARNINGS;

DROP DATABASE pastry_shop;

SHOW DATABASES;

SELECT * FROM menu2;

















