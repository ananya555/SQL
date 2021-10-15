CREATE DATABASE hw_student;
USE hw_student;

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

SELECT id_no,
IFNULL(Address,'N/A') Address
FROM teachers;

DROP TABLE teachers;
DROP TABLE students_data;

DROP DATABASE hw_student;


















