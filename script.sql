--creating schema
create database Ecomsite
use Ecomsite;

--creaating tables and inserting data in tables.
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerName VARCHAR(100),
    Country VARCHAR(50),
    Email VARCHAR(50),
    MobileNo VARCHAR(10)
);
INSERT INTO Customers (CustomerName, Country, Email, MobileNo) VALUES
('Aarav Sharma', 'India', 'aaravsharma@gmail.com', '9876543210'),
('Vivaan Patel', 'India', 'vivaanpatel@gmail.com', '9876543211'),
('Aditya Reddy', 'India', 'adityareddy@gmail.com', '9876543212'),
('Krishna Iyer', 'India', 'krishnaiyer@gmail.com', '9876543213'),
('Aryan Joshi', 'India', 'aryanjoshi@gmail.com', '9876543214'),
('Vihaan Nair', 'India', 'vihaannair@gmail.com', '9876543215'),
('Rahul Kapoor', 'India', 'rahulkapoor@gmail.com', '9876543216'),
('Rohan Mehta', 'India', 'rohanmehta@gmail.com', '9876543217'),
('Yash Deshmukh', 'India', 'yashdeshmukh@gmail.com', '9876543218'),
('Raj Singh', 'India', 'rajsingh@gmail.com', '9876543219'),
('Karan Verma', 'India', 'karanverma@gmail.com', '9876543220'),
('Siddharth Das', 'India', 'siddharthdas@gmail.com', '9876543221'),
('Manav Chatterjee', 'India', 'manav.chatterjee@gmail.com', '9876543222'),
('Aniket Rao', 'India', 'aniketrao@gmail.com', '9876543223'),
('Pranav Pillai', 'India', 'pranavpillai@gmail.com', '9876543224'),
('Mohit Menon', 'India', 'mohit.menon@gmail.com', '9876543225');

CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100),
    UnitPrice DECIMAL(10, 2)
);
INSERT INTO Products (ProductName, UnitPrice) VALUES
('Laptop', 55000.00),
('Smartphone', 22000.00),
('Tablet', 18000.00),
('Wireless Mouse', 1200.00),
('Keyboard', 1500.00),
('Monitor', 14000.00),
('Printer', 8000.00),
('Router', 2500.00),
('External Hard Drive', 6000.00),
('Headphones', 3000.00);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    OrderDate DATE,
    CustomerID INT,
    Amount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
INSERT INTO Orders (OrderDate, CustomerID, Amount) VALUES
('2025-08-01', 1, 1200.00),
('2025-08-02', 2, 950.00),
('2025-08-03', 3, 1100.50),
('2025-08-04', 1, 500.75),
('2025-08-05', 5, 2000.00),
('2025-08-06', 6, 1750.00),
('2025-08-06', 10, 2200.00),
('2025-08-07', 15, 800.00);

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    Price DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID);
    
);

INSERT INTO OrderDetails (OrderID, ProductID, Quantity, Price) VALUES
(25, 4, 2, 1200.00),
(25, 5, 1, 1500.00),
(26, 2, 1, 22000.00),
(27, 3, 1, 18000.00),
(28, 6, 1, 14000.00),
(29, 1, 1, 55000.00),
(30, 7, 1, 8000.00),
(31, 10, 2, 3000.00),
(32, 8, 1, 2500.00),
(32, 9, 1, 6000.00);



