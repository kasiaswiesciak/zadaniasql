--Oblicz, ile było zamówień na towary każdej kategorii w skali każdego roku.

--Baza: Northwind, Tabele: dbo.Orders, dbo.Order Details, dbo.Products, 
--dbo.Categories, Kolumny: OrderDate, CategoryName, OrderID, Wynik: 24 rows

SELECT YEAR(ord.OrderDate) as Rok, cat.CategoryName as Kategoria, count(ord.OrderID) as Ilość

FROM dbo.Orders ord JOIN dbo.[Order Details] det ON ord.OrderID = det.OrderID
JOIN dbo.Products prod on det.ProductID = prod.ProductID
JOIN dbo.Categories cat on prod.CategoryID = cat.CategoryID 

Group by cat.CategoryName, YEAR(ord.OrderDate)
order by rok
