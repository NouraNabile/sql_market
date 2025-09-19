# market Analysis SQL Project

## Project Overview

**Project Title**: sql market
**Database**: `market`

## Objectives

1. **create database**: Create and populate a retail sales database with the provided sales data.
2. **insert data**: insert data by IDENTITY_INSERT
3. **Exploratory Data Analysis (EDA)**: Perform basic exploratory data analysis to understand the dataset.
4. **Business Analysis**: Use SQL to answer specific business questions and derive insights from the sales data.

## Project Structure

### 1. Database

```sql
CREATE TABLE Customers
(
	CustomerID	INT IDENTITY(1,1) PRIMARY KEY,
	FirstName	VARCHAR(255) NOT NULL,
	LastName	VARCHAR(255) NOT NULL,
	Address		VARCHAR(255) ,
	City		VARCHAR(100),
	Mobile		VARCHAR(15),
	Email		VARCHAR(50) UNIQUE
)

CREATE TABLE Products
(
	ProductID	   INT IDENTITY(1,1) PRIMARY KEY,
	ProductName	   NVARCHAR(255),
	ProductColor   NVARCHAR(25),
	Category	   NVARCHAR(50),
	ProductPrice	DECIMAL(10,2) not null
)


CREATE TABLE Orders
(
	OrderID			INT IDENTITY(1,1) PRIMARY KEY,
	CustomerID		INT Foreign Key REFERENCES Customers(CustomerID),
	OrderDate		DATE,
	ShipppedDate	DATE
)

CREATE TABLE OrderDetails
(
	OrderID		INT,
	ProductID	INT,
	Quantity	INT not null,
	PRIMARY KEY (OrderID, ProductID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
)
```

### 2. insert datag

```sql
SET IDENTITY_INSERT Customers ON
INSERT INTO Customers
	(CustomerID, FirstName,	LastName, Address, City, Mobile, Email)
VALUES
	(1, 'Ahmed', 'AlaaEldeen', '128 st. Elstade',  'Kafrelshiekh', '010136778446', 'cxctds@gmail.com'),
	(2, 'Abeer', 'Elmahdy', '14 st. Elgamee',  'Balteem', '011778443696', 'cxcds@yahoo.com'),
	(3, 'AbdAllah', 'Emad', '7 st. Elmarkaz',  'Beyala', '015136778446', 'cxscds@gmail.com'),
	(4, 'Ahmed', 'Essam', '15 st. Elmaamoon',  'Alryad', '012136778446', 'cxcvds@gmail.com'),
	(5, 'Eslam', 'Mohamed', '18 st. Elnabawy',  'Kafrelshiekh', '011136778446', 'cxcnds@gmail.com'),
	(6, 'Adel', 'Mahmoud', '21 st. Elgamee Elkbeer',  'Elhamoul', '015136778446', 'cmxcds@yahoo.com')
SET IDENTITY_INSERT Customers OFF
-----------------------------------------
SET IDENTITY_INSERT Products ON
INSERT INTO Products
	(ProductID,	ProductName, ProductColor, ProductPrice)
VAlUES
	(1, 'Samsung Galaxy s20', 'Black', 20000),
	(2, 'Samsung Galaxy s20 Ultra', 'Blue', 20550),
	(3, 'Iphone 12 pro', 'White', 21000),
	(4, 'Iphone 12 pro max', 'Yellow', 21000)
SET IDENTITY_INSERT Products OFF
------------------------------------------
SET IDENTITY_INSERT Orders ON
INSERT INTO Orders
	(OrderID, CustomerID, OrderDate, ShipppedDate)
VAlUES
	(2, 5, '2020-10-15' , '2020-10-20')
SET IDENTITY_INSERT Orders OFF
-------------------------------------------
INSERT INTO OrderDetails
	(OrderID, ProductID, Quantity)
VALUES
	(2, 3, 1)
--------------------------------------------------------------------------------------------------
```

### 3. Business Analysis

```sql
SELECT * FROM Customers

SELECT * FROM Products

SELECT * FROM Orders

SELECT * FROM OrderDetails

SELECT CONCAT(C.FirstName,' ',C.LastName) AS 'Full Name' , P.ProductName as 'Product Name', P.ProductColor as 'Product Color',
	   P.ProductPrice as 'Item Price',  OD.Quantity,(P.ProductPrice * OD.Quantity) AS 'Total Price' , O.OrderDate , O.ShipppedDate
	FROM OrderDetails OD
	JOIN Orders O		on OD.OrderID = O.OrderID
	JOIN Products P		on OD.ProductID = P.ProductID
	JOIN Customers C	on O.CustomerID = C.CustomerID
```

- **LinkedIn**: [Connect with me professionally](www.linkedin.com/in/noura-nabile-1530b9241)
