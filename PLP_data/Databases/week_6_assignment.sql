/*create database UniversityDB;*/


/*creating students table */
/*
create table Students( 
studentID int primary key,
firstnme varchar(50),
lastname varchar(50),
age date,
major varchar(50)
);
*/

/*modifying the age column in the employees table*/
/*
alter table students
modify age int;
*/

/*inserting data into students table */
/*
insert into Students(studentID, firstnme, lastname, age, major) values (1, 'solo', 'ondula', 27, 'mathematics'); 
insert into Students(studentID, firstnme, lastname, age, major) values (2, 'juan', 'omusinde', 15, 'art');
insert into Students(studentID, firstnme, lastname, age, major) values (3, 'iturbe', 'obi', 18, 'chemistry');
insert into Students(studentID, firstnme, lastname, age, major) values (4, 'brian', 'ati', 19, 'biology');
insert into Students(studentID, firstnme, lastname, age, major) values (5, 'midoz', 'ali', 25, 'physics');
insert into Students(studentID, firstnme, lastname, age, major) values (6, 'toress', 'elnino', 29, 'literature');
insert into Students(studentID, firstnme, lastname, age, major) values (7, 'olivia', 'wendy', 17, 'sports');
insert into Students(studentID, firstnme, lastname, age, major) values (8, 'kerr', 'chelsea', 23, 'engineering');
*/

/*adding a GPA column to students table */
/*
alter table students
add gpa decimal (10,2);
*/

/*inserting gpa points was accomplished using the gui table*/


/*renaming the table*/
/*
rename table students to EnrolledStudents;
*/


/*creating table cousres*/
/*
create table Courses(
courseId int primary key,
courseName varchar(100),
instructor varchar(100),
credits int
);
*/

/*inserting data into courses table*/

/*
insert into courses(courseId, courseName, instructor, credits) values (101, 'law', 'abdul', '10');
insert into courses(courseId, courseName, instructor, credits) values (102, 'art', 'ahmed', '12');
insert into courses(courseId, courseName, instructor, credits) values (103, 'mathematics', 'maria', '8');
insert into courses(courseId, courseName, instructor, credits) values (104, 'computer', 'sam', '12');
insert into courses(courseId, courseName, instructor, credits) values (105, 'sports', 'leah', '9');
*/

/*dropping/deleting enrolledstudents table from the database*/
/*
drop table enrolledstudents;
*/