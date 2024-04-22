/*Introduction to ORDER BY Clause:*/
/*The SQL ORDER BY clause is used to sort the result set of a query in ascending (default) or descending order based on one or more columns. It is often used with the SELECT statement to organize the output of a query.*/

/*create database week10*/
/*use week10*/

/*create table employees ( 
employeeid int auto_increment primary key,
first_name varchar(50),
last_name varchar(50),
job_title varchar(50),
salary int(50)
);*/

/*order by single column */
/*
select first_name
from employees
order by first_name asc;
*/

/*order by multiple columns*/
/*
select first_name, job_title, salary
from employees
order by first_name asc, salary desc;
*/


