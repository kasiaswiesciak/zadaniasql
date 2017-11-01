--Dla zamówień o numerach 10250, 10657, 10710 i 10901 policz, ile produktów zawiera każde z nich, 
--oblicz średnią cenę produktu i podaj kraj, do którego zostało dostarczone.

--Baza: Northwind, Tabela: dbo.Order Details, dbo.Orders, Kolumny:  OrderID, UnitPrice, Quantity, ShipCountry, Wynik: 4 rows


SELECT Ord.ShipCountry, ord.OrderID, avg(det.UnitPrice*det.Quantity) as średnia, count(*) as produkty
FROM dbo.[Order Details] det JOIN dbo.Orders ord ON det.OrderID = ord.OrderID
GROUP BY Ord.OrderID, ord.ShipCountry
HAVING ord.OrderID IN (10250,10657,10710,10901)
