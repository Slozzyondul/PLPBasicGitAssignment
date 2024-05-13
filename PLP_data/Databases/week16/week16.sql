/*creating database week16 and switching to it*/
/*
CREATE DATABASE week16;
use week16;
*/


/*creating table employeesA*/
/*
CREATE TABLE EmployeesA (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Salary DECIMAL(10, 2)
);
*/

/*creating table employeesB*/
/*
CREATE TABLE EmployeesB (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Salary DECIMAL(10, 2)
);
*/

/*populating employeesA with sample data*/
/*
INSERT INTO EmployeesA (EmployeeID, FirstName, LastName, Salary)
VALUES 
    (1, 'John', 'Doe', 50000.00),
    (2, 'Jane', 'Smith', 60000.00),
    (3, 'Alice', 'Johnson', 55000.00);
*/

/*populating employeesB with sample data*/
/*
INSERT INTO EmployeesB (EmployeeID, FirstName, LastName, Salary)
VALUES 
    (2, 'Jane', 'Smith', 60000.00),
    (3, 'Alice', 'Johnson', 55000.00),
    (4, 'Bob', 'Williams', 58000.00);
*/

/*using UNION to retrieve a list of unique employees from both tables*/
/*
SELECT EmployeeID, FirstName, LastName, Salary FROM EmployeesA
UNION
SELECT EmployeeID, FirstName, LastName, Salary FROM EmployeesB;
*/

/*using INTERSECT to find employees who are common in both tables*/
/*
SELECT EmployeeID, FirstName, LastName, Salary FROM EmployeesA
INTERSECT
SELECT EmployeeID, FirstName, LastName, Salary FROM EmployeesB;
*/

/*using the EXCEPT operator to identify employees present in EmployeesA but not in EmployeesB.*/
/*
SELECT EmployeeID, FirstName, LastName, Salary FROM EmployeesA
EXCEPT
SELECT EmployeeID, FirstName, LastName, Salary FROM EmployeesB;
*/