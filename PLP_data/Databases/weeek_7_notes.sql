/*
Introduction to SQL NOT NULL Constraint
NOT NULL constraint = ensures data interity by specifying that a column must contain a value and cannot be left empty or filled  with a null value.



ALTER TABLE with NOT NULL Statement
To add or remove the NOT NULL constraint from an existing table, you can use the ALTER TABLE statement.

Adding the NOT NULL Constraint:
alter table table_name
modify column_name data_type not null;

*/

/*create database week7_notes;*/


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
);*/

/*adding the not null constraint*/
/*
alter table employees
modify departmentid int not null;
*/

/*removing the not null constraint*/
/*
alter table  employees
modify departmentid int;
*/


/*
SQL Constraints: Primary Key

primary key = defines  unique identifier for each record in a database table
It enforces data integrity and ensures that each row in the table has a distinct value in the primary key column.

*/



/*create table students_1(
studentid int,
firstname varchar(50),
lasrname varchar(50)
);*/



/*adding primary key to students_1 table*/
/*
alter table students_1
add primary key (studentid);
*/


/*removing a primary key constraint*/
/*
alter table students_1
drop primary key;
*/



/*
SQL Foreign Key Constraint

 foreign key constraint = establish a relationship between two tables by enforcing referential integrity.
 
*/

/*create table employees_1 ( 
employeeid int primary key,
firstname varchar(30),
lastname varchar(50),
departmentid int,
hiredate date
);*/


/*create table products_1 (
productid int primary key,
productname varchar(255) not null,
categoryid int,
price decimal(10,2),
stockquantity int check (stockquantity >= 0)
);*/


/*creating foreign key constraint*/
/*alter table employees_1
add column productid int;*/
/*
alter table employees_1
add constraint fk_productid
foreign key (productid)
references products_1(productid);
*/


/*removing a foreign key constarint*/
/*
alter table employees_1
drop constraint fk_productid;
*/

/* SQL Unique Constraint
unique constarint = ensures that the values in a specific column or set of columns are unique among all the rows in a table
guarantees thata no duplicate values are allowed in the designated column(s) which is vital for maintaing data integrity

Unique vs. Primary Key Constraint



While both unique and primary key constraints serve to enforce data integrity and uniqueness, they have distinct characteristics:



Unique Constraint:
Allows one unique value in the column(s).
Allows NULL values, meaning a unique constraint can have multiple NULL values.
Can be applied to multiple columns.
Often used when you want to ensure the uniqueness of data, but not necessarily as an identifier for records.

Primary Key Constraint:
Implies a unique constraint, but with the added condition that the column(s) cannot contain NULL values.
Serves as a unique identifier for each record in a table.
Usually applied to a single column (though composite primary keys, using multiple columns, are also possible).


*/


/*creating students's table with a unique constraint*/
/*create table students_2 (
studentid int unique,
firstname varchar(50),
lastname varchar(50)
);*/

/*adding a unique constraint to students_2 table*/
/*
alter table students_2
add constraint uc_firstname unique (firstname);
*/

/*removing a unique constraint*/
/*
alter table students_2
drop constraint uc_firstname;
*/

/*
sql constraits check table
constraint = rules enforced on the columns of the table
used to limit the type of data that can go into a table
this enhances accuray and readability of the data in the database

check = specify that a value in a column or columns must satisfy a boolean expression

*/
/*
create table products_2 (
productid int primary key,
productname varchar(255) not null,
sellingprice numeric(10,2) check(sellingprice > 0)
);*/


/*assigning a check constraint*/
/*
create table products_3 (
productid int primary key,
productname varchar(255) not null,
sellingprice numeric(10,2) constraint positive_selling_price check (sellingprice>0)
);
*/

/*check constraint that refers to multiple columns
suppose you store both selling price and costs and want the to be lower than the selling price
*/
/*
create table products_4 (
productid int primary key,
productname varchar(255) not null,
sellingprice numeric(10,2) check (sellingprice>0),
cost numeric(10,2) check (cost>0),
check(sellingprice>cost)
);*/

