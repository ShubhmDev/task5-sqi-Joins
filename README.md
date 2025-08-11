
## Objective
To understand and apply different types of SQL JOINs (INNER, LEFT, RIGHT, FULL OUTER) using a mini e-commerce database that includes Customers, Orders, Products, and OrderDetails tables.

## 🛠️ Tools Used
- MySQL Workbench 
-Vscode

## 🧱 Tables Created
- **Customers**: Stores customer information
- **Orders**: Stores order details, linked to Customers via `CustomerID`
-**Products**:stores unitPrice,productName.
-**OrderDetails**:stores OrderID, ProductID, Quantity, Price linked via `OrderID` to Orders table amd 
                  productId linked via Product table

## 🔗 SQL Join Types Implemented
- **INNER JOIN**: Retrieves matching records from both tables  
- **LEFT JOIN**: Retrieves all customers, with or without orders  
- **RIGHT JOIN**: Retrieves all orders, even if customer data is missing  
- **FULL JOIN**: Combines LEFT and RIGHT JOIN results (using `UNION`)

## Deliverables
- SQL scripts for creating tables and inserting sample data  
- Queries demonstrating all four types of joins  
- Query to find customers with multiple orders and the highest order count

## Outcome
Achieved proficiency in merging and analyzing data across tables using SQL joins.


