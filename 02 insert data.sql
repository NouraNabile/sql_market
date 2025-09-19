USE market

---------------------------------Insert Data Into Tables--------------------------------------
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

------------------------------------To Delete Data From Tables------------------------------------
-- Delete by this order
-- 1) Delete all OrderDetails data
DELETE FROM OrderDetails
-- 2) Delete all Orders data
DELETE FROM Orders
-- 3) Delete all Products data
DELETE FROM Products
-- 4) Delete all Customers data
DELETE FROM Customers
