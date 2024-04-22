/*create database countries*/
/*use countries*/
/*
create table countries ( 
country_id int auto_increment primary key,
country_name varchar(50),
region_id varchar(50)
);
*/

/*inserting data to the country table*/

/*
insert into countries(country_id, country_name, region_id) values (1,'argentina',2); 
insert into countries(country_id, country_name, region_id) values (2,'australia',3); 
insert into countries(country_id, country_name, region_id) values (3,'belgium',1); 
insert into countries(country_id, country_name, region_id) values (4,'brazil',2); 
insert into countries(country_id, country_name, region_id) values (5,'canada',2); 
insert into countries(country_id, country_name, region_id) values (6,'switzerland',1); 
insert into countries(country_id, country_name, region_id) values (7,'china',3); 
insert into countries(country_id, country_name, region_id) values (8,'germany',1); 
insert into countries(country_id, country_name, region_id) values (9,'denmark',1); 
insert into countries(country_id, country_name, region_id) values (10,'egypt',4); 
insert into countries(country_id, country_name, region_id) values (11,'france',1); 
insert into countries(country_id, country_name, region_id) values (12,'hongkong',3); 
insert into countries(country_id, country_name, region_id) values (13,'israel',4); 
insert into countries(country_id, country_name, region_id) values (14,'india',3); 
insert into countries(country_id, country_name, region_id) values (15,'italy',1); 
insert into countries(country_id, country_name, region_id) values (16,'japan',3); 
insert into countries(country_id, country_name, region_id) values (17,'kuwait',4); 
insert into countries(country_id, country_name, region_id) values (18,'mexico',2); 
insert into countries(country_id, country_name, region_id) values (19,'nigeria',4); 
insert into countries(country_id, country_name, region_id) values (20,'netherlands',1); 
insert into countries(country_id, country_name, region_id) values (21,'singapore',3); 
insert into countries(country_id, country_name, region_id) values (22,'united kingdom',1); 
insert into countries(country_id, country_name, region_id) values (23,'united states',2); 
insert into countries(country_id, country_name, region_id) values (24,'zambia',4); 
*/


/*order by multiple columns*/
/*
select country_id, country_name, region_id
from countries
order by country_name asc, country_id desc;
*/


