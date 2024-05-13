/*creating database week15*/
/*
CREATE DATABASE week15;
*/

/*switching to the created database*/
/*
use week15;
*/

/*creating table orders*/
/*
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    ProductID INT,
    Quantity INT,
    Price DECIMAL(10, 2)
);
*/

/*populating table orders with sample data*/
/*
INSERT INTO Orders (ProductID, Quantity, Price) VALUES
(1, 5, 10.50),
(2, 3, 8.75),
(3, 7, 12.00),
(4, 2, 15.25),
(5, 4, 9.99);
*/

/*calculating the total quantity of products sold*/
/*
SELECT SUM(Quantity) AS TotalQuantity FROM Orders;
*/

/*finding the average price of products*/
/*
SELECT AVG(Price) AS AveragePrice FROM Orders;
*/

/*identifying the product with the highest price*/
/*
SELECT ProductID, MAX(Price) AS HighestPrice FROM Orders;
*/

