/*CREATE TABLE regions ( 
  region_id INT(11) AUTO_INCREMENT PRIMARY KEY,
  region_name VARCHAR(25) DEFAULT NULL
);
*/


/*
create table countries ( 
country_id char(2) primary key,
country_name varchar(40) default null,
region_id int (11) not null,
foreign key (region_id) references regions (region_id) on delete
cascade on update cascade
);
*/


/*
create table locations ( 
location_id int (11) auto_increment primary key,
street_address varchar (40) default null,
postal_code varchar (12) default null,
city varchar (30) not null,
state_province varchar (25) default null,
country_id char (2) not null,
foreign key (country_id) references countries(country_id) on delete
cascade on update cascade
);
*/


/*
create table jobs ( 
job_id int (11) auto_increment primary key,
job_title varchar (35) not null,
min_salary decimal (8,2) default null,
max_salary decimal (8,2) default null
);

*/


/*
create table departments ( 
department_id int (11) auto_increment primary key,
department_name varchar (30) not null,
location_id int (11) default null,
foreign key (location_id) references locations (location_id) on delete
cascade on update cascade
);
*/


/*
create table employees ( 
employee_id int (11) auto_increment primary key,
first_name varchar (20) default null,
last_name varchar (25) not null,
email varchar (100) not null,
phone_number varchar (20) default null,
hire_date date not null,
job_id int (11) not null,
salary decimal (8,2) not null,
manager_id int (11) default null,
department_id int (11) default null,
foreign key (job_id) references departments(department_id) on 
update cascade,
foreign key (department_id) references departments (department_id) on 
delete cascade on update cascade,
foreign key (manager_id) references employees (employee_id)
);
*/

/*
create table dependents ( 
dependent_id int (11) auto_increment primary key,
first_name varchar (50) not null,
last_name varchar (50) not null,
relationship varchar (25) not null,
employee_id int (11) not null,
foreign key (employee_id) references employees (employee_id) on delete
cascade on update cascade
);
*/