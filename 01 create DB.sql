use market
------------CREATE TABLES------------
--create customers table
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

--create product table
CREATE TABLE Products 
(
	ProductID	   INT IDENTITY(1,1) PRIMARY KEY,
	ProductName	   NVARCHAR(255),
	ProductColor   NVARCHAR(25),
	Category	   NVARCHAR(50),
	ProductPrice	DECIMAL(10,2) not null
)

--create orders table
CREATE TABLE Orders
(
	OrderID			INT IDENTITY(1,1) PRIMARY KEY,
	CustomerID		INT Foreign Key REFERENCES Customers(CustomerID),
	OrderDate		DATE,
	ShipppedDate	DATE
)

--create orderdetails table
CREATE TABLE OrderDetails
( 
	OrderID		INT,
	ProductID	INT,
	Quantity	INT not null,
	PRIMARY KEY (OrderID, ProductID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
)