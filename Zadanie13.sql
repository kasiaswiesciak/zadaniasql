--Stwórz raport sprzedażowy – oblicz wartość sprzedaży w każdym miesiącu 1997 roku.

--Baza: Northwind, Tabele: dbo.Orders, dbo.Order Details, Kolumny: OrderDate, UnitPrice, Quantity, Wynik: 12 rows

SELECT YEAR(Ord.OrderDate) as ROK, MONTH (Ord.OrderDate) as MIESIAC, SUM(det.Quantity * det.UnitPrice) as sprzedaz,
CASE 
WHEN  MONTH (Ord.OrderDate) = 1 THEN 'STYCZEN'
END AS MIESIAC2
FROM dbo.Orders as ord 
JOIN dbo.[Order Details] det ON ord.OrderID = det.OrderID
WHERE ord.OrderDate >= '19970101' AND  ord.OrderDate < '19980101'
GROUP BY YEAR(Ord.OrderDate), MONTH (Ord.OrderDate)