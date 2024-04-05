/*create database slozzy; */


/*create table employees ( 
employeeid int primary key,
firstname varchar(30),
lastname varchar(50),
departmentid int,
hiredate date
);*/

/*
create table products (
productid int primary key,
productname varchar(255) not null,
categoryid int,
price decimal(10,2),
stockquantity int check (stockquantity >= 0)
);
*/


/*The SQL ALTER TABLE statement is a powerful command that allows
 you to make structural changes to an existing database table. 
 can also be used to modify existing columns in a table*/
 
/*adding an email column to employees table */

/*
alter table employees
add email varchar(255);
*/


/*modifying the salary column in the employees table*/
/*
alter table employees
modify salary decimal(10,2);
*/


/*dropping the email column in employees table*/
/*
alter table employees
drop column email;
*/

/*deleting a table syntax*/
/*
drop table products;
*/

/*deleting multiple tables*/
/*
drop table products, employees;
*/


