--Które produkty najlepiej się sprzedają? Wyznacz te, na które złożono ponad 40 zamówień.

--Baza: Northwind, Tabele: dbo.Order Details, dbo.Products, Kolumny: OrderID, ProductID, ProductName, Wynik: 13 rows

SELECT prod.ProductID, prod.ProductName, Count(det.OrderID) as Zamówienia
FROM  dbo.Products as prod JOIN dbo.[Order Details] as det on prod.ProductID = det.ProductID
GROUP BY prod.ProductID, prod.ProductName
HAVING COUNT (det.OrderID) >= 40
ORDER BY Zamówienia desc

--SELECT P.ProductID, P.ProductName, COUNT(OD.OrderID) as Zamowienia

--FROM dbo.[Order Details] as OD

--JOIN dbo.Products as P on OD.ProductID = P.ProductID

--GROUP BY P.ProductID, P.ProductName

--HAVING COUNT(OD.OrderID) >= 40