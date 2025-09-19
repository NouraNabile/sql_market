USE market

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