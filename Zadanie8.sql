--Dla klientów o ID ALFKI, ISLAT, SAVEA stwórz zestawienie, pokazujące ich 
--uporządkowane i ponumerowane według wartości zamówienia.

--Baza: Northwind, Tabele: dbo.Orders, dbo.Order Details, Kolumny: CustomerID, OrderID, UnitPrice, Quantity, Wynik: 151 rows

--ROW_NUMBER musi wystepowac z OVER Określa ona kolejny, unikalny numer wiersza w ramach partycji (lub całego zbioru wynikowego) 
--zgodnie z zastosowanym sposobem sortowania.


SELECT O.CustomerID, O.OrderID, (OD.UnitPrice * OD.Quantity) as OrdVal, ROW_NUMBER() OVER(PARTITION BY O.CustomerID 
ORDER BY (OD.UnitPrice * OD.Quantity) DESC) as Numeracja 

FROM dbo.Orders as O JOIN dbo.[Order Details] as OD on O.OrderID = OD.OrderID WHERE O.CustomerID IN('ALFKI', 'ISLAT', 'SAVEA')

ORDER BY O.CustomerID, OrdVal DESC;
