/*Create Departments table*/
/*
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);
*/

/*Create Employees table*/
/*
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    DepartmentID INT,
    Salary DECIMAL(10, 2),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
*/

/*Create Salaries table*/
/*
CREATE TABLE Salaries (
    SalaryID INT PRIMARY KEY,
    EmployeeID INT,
    Salary DECIMAL(10, 2),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
*/

/*Populate Departments table*/
/*
INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'Sales'),
(2, 'Marketing'),
(3, 'Engineering'),
(4, 'Finance');
*/

/*Populate Employees table*/
/*
INSERT INTO Employees (EmployeeID, Name, DepartmentID, Salary) VALUES
(1, 'John Doe', 1, 50000),
(2, 'Jane Smith', 1, 55000),
(3, 'Michael Johnson', 2, 60000),
(4, 'Emily Brown', 2, 62000),
(5, 'David Wilson', 3, 70000),
(6, 'Jessica Lee', NULL, 75000); -- employee without department
*/

/*Populate Salaries table*/
/*
INSERT INTO Salaries (SalaryID, EmployeeID, Salary) VALUES
(1, 1, 50000),
(2, 2, 55000),
(3, 3, 60000),
(4, 4, 62000),
(5, 5, 70000),
(6, 6, 75000);
*/


/*Retrieve a list of employees with their corresponding department names using an appropriate join.*/
/*
SELECT Employees.Name, Departments.DepartmentName
FROM Employees
LEFT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;
*/

/*Calculate the average salary for each department.*/
/*
SELECT Departments.DepartmentName, AVG(Salaries.Salary) AS AverageSalary
FROM Departments
LEFT JOIN Employees ON Departments.DepartmentID = Employees.DepartmentID
LEFT JOIN Salaries ON Employees.EmployeeID = Salaries.EmployeeID
GROUP BY Departments.DepartmentName;
*/


/*Identify employees who do not belong to any department.*/
/*
SELECT Name
FROM Employees
WHERE DepartmentID IS NULL;
*/