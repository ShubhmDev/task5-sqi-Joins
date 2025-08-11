--INNER JOIN – Customers with Orders
--Only customers who have placed orders (no unmatched customers).

SELECT c.CustomerID,c.CustomerName,o.OrderID,o.OrderDate,o.Amount
FROM Customers c INNER JOIN Orders o 
where c.CustomerID = o.CustomerID;


--products per orders displays
SELECT o.OrderID,c.CustomerName,p.ProductName,od.Quantity,od.Price,
(od.Quantity * od.Price) AS Total
FROM OrderDetails od JOIN Orders o 
ON od.OrderID = o.OrderID
JOIN Customers c 
ON o.CustomerID = c.CustomerID
JOIN Products p ON od.ProductID = p.ProductID;

--LEFT JOIN – All Customers + Their Orders (if any)
--Show all customers, even those who haven't placed an order.
--All customers (some OrderID values may be NULL if no order exists).
SELECT 
    c.CustomerID,
    c.CustomerName,
    o.OrderID,
    o.OrderDate, o.Amount
FROM Customers c LEFT JOIN Orders o 
where c.CustomerID = o.CustomerID;

--All Orders + Matching Customers
--Show all orders, even if there’s no matching customer
SELECT 
    o.OrderID,
    o.OrderDate,
    o.Amount,
    c.CustomerID,
    c.CustomerName
FROM Customers c
RIGHT JOIN Orders o ON c.CustomerID = o.CustomerID;

--Customers Who Haven’t Ordered
SELECT 
    c.CustomerID,
    c.CustomerName
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;

--Customers Who Placed Multiple Orders
SELECT c.CustomerID,
c.CustomerName,
COUNT(o.OrderID) AS TotalOrders
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.CustomerName
HAVING COUNT(o.OrderID) > 1
ORDER BY TotalOrders DESC;

