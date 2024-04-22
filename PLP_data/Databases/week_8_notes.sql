/*the insert statement is used to add new records or rows into a table

enables copying*/

/*creating a table employees*/

/*
create database week8;
*/

/*use  week8;*/

/*create table employees ( 
employeeid int auto_increment primary key,
first_name varchar(50),
last_name varchar(50),
job_title varchar(50),
salary int(50)
);*/


/*inserting data into the created table*/
/*insert into employees (first_name, last_name, job_title, salary)
values
('john','doe','software engineer', 70000),
('alice','johnson','data analyst', 60000),
('bob','smith','web developer', 65000),
('eva','williams','ux designer', 75000);
*/


/*copying the data rowss using insert function*/
/*create table new_employees ( 
employeeid int auto_increment primary key,
first_name varchar(50),
last_name varchar(50),
job_title varchar(50),
salary int(50)
);
*/

/*
insert into new_employees (first_name, last_name, job_title, salary)
select first_name, last_name, job_title, salary
from employees
where salary>5000;
*/



/*Introduction to SQL UPDATE Clause:*/
/*sql update statement is used to modify existing records in a table*/
/*
update new_employees
set salary = 5
where employeeid = 2;
*/

/*update multiple rows*/
/*
update new_employees
set salary = 6
where salary = 60000;
*/

/*Introduction to SQL DELETE:*/
/*
delete from new_employees
where employeeid = 3;
*/
/*
delete from new_employees
where salary > 80000;
*/

/*cascading delete = rules applied when deleteing linked tables*/