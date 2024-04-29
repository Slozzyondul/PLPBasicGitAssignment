/*create table employees ( 
employeeid int auto_increment primary key,
first_name varchar(50),
last_name varchar(50),
email VARCHAR(50),
phone_number INT(20),
hire_date DATE,
job_id INT(10),
manager_id INT(10), 
department_id INT(10),
job_title varchar(50),
salary int(50)
);*/

/*DESCRIBE employees;*/

/*Populate the table with sample data*/

/*
INSERT INTO Sales (Category, QuantitySold, Revenue) VALUES
('Electronics', 100, 5000.00),
('Electronics', 150, 7500.00),
('Clothing', 200, 10000.00),
('Clothing', 250, 12500.00),
('Books', 50, 2500.00),
('Books', 100, 5000.00);
*/


/*Task 1: Calculate the total quantity sold and revenue for each product category*/
/*
SELECT Category, SUM(QuantitySold) AS TotalQuantitySold, SUM(Revenue) AS TotalRevenue
FROM Sales
GROUP BY Category;
*/

/*Task 2: Find the average revenue per unit sold for each product category*/
/*
SELECT Category, AVG(Revenue / QuantitySold) AS AvgRevenuePerUnit
FROM Sales
GROUP BY Category;
*/

/*Task 3: Identify the product categories with the highest total revenue*/
/*
SELECT Category, SUM(Revenue) AS TotalRevenue
FROM Sales
GROUP BY Category
ORDER BY TotalRevenue DESC
LIMIT 1;
*/
