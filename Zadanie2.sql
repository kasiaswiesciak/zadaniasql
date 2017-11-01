--Dla każdego klienta pokaż datę oraz numer pierwszego złożonego zamówienia.

--Baza: Northwind, Tabela: dbo.Orders, Kolumny: CustomerID, OrderID, OrderDate, Wynik: 89 rows

--The MIN() function returns the smallest value of the selected column.

--The MAX() function returns the largest value of the selected column.

SELECT CustomerID, Min(OrderID) as FirstOrder, MIN(OrderDate) as FirstDate
	FROM dbo.Orders 
	Group by CustomerID
