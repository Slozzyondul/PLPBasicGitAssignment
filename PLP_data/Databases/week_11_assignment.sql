/*Create the database*/
/*CREATE DATABASE IF NOT EXISTS SchoolDB;*/

/*Use the database*/
/*USE SchoolDB;*/


/*Create the Students table*/

/*CREATE TABLE IF NOT EXISTS Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Grade CHAR(1)
);*/

/*Insert sample data into the Students table*/
/*
INSERT INTO Students (FirstName, LastName, Age, Grade) VALUES
('John', 'Doe', 30, 'A'),
('Jane', 'Smith', 22, 'C'),
('Alice', 'Johnson', 28, 'B'),
('Bob', 'Brown', 24, 'A'),
('Emily', 'Jones', 26, 'B'),
('Michael', 'Williams', 27, 'C');
*/

/*Question1*/

/*SELECT * FROM Students WHERE Age > 25;*/

/*Question2*/
/*SELECT * FROM Students WHERE Grade IN ('A', 'B');*/


/*Question3*/
/*SELECT DISTINCT Age FROM Students;*/


