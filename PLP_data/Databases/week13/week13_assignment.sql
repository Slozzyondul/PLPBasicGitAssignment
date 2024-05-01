/*Create Employees table*/
/*
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Salary DECIMAL(10, 2),
    BonusPercentage DECIMAL(5, 2)
);
*/


/*populating the employees table wih some sample data*/
/*
INSERT INTO Employees (EmployeeID, FirstName, LastName, Salary, BonusPercentage)
VALUES 
    (1, 'John', 'Doe', 60000.00, 8.0),
    (2, 'Jane', 'Smith', 75000.00, 12.5),
    (3, 'Michael', 'Johnson', 90000.00, 10.0),
    (4, 'Emily', 'Williams', 55000.00, 5.0),
    (5, 'David', 'Brown', 85000.00, 15.0);
    */

/*Adding TotalCompensation column*/

/*
ALTER TABLE Employees
ADD TotalCompensation DECIMAL(10, 2);
*/


/*Update TotalCompensation using CASE statement*/
/*
UPDATE Employees
SET TotalCompensation = Salary + (Salary * (BonusPercentage / 100));
*/


/*Query to identify employees with Total Compensation > $80,000*/
/*
SELECT * 
FROM Employees 
WHERE TotalCompensation > 80000.00;
*/


/*Update FirstName of employees with Total Compensation < $60,000*/

/*
UPDATE Employees
SET FirstName = 'LowCompensation'
WHERE TotalCompensation < 60000.00;
*/