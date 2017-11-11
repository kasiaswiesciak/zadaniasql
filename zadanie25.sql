--Treść: Znajdź pierwsze i ostatnie zamówienie.

--Polecenia/funkcje w zapytaniu: SELECT, FROM, SELECT TOP, UNION ALL, ORDER BY, DESC

SELECT
OH.SalesOrderID
,OH.OrderDate AS DataZamowienia
,OH.CustomerID AS ID_Klienta
,OH.SalesPersonID AS ID_Sprzedawcy
FROM
(
SELECT TOP 1
O.SalesOrderID
FROM
Sales.SalesOrderHeader O
ORDER BY
O.OrderDate, SalesOrderID
) AS SQ
JOIN Sales.SalesOrderHeader OH ON SQ.SalesOrderID = OH.SalesOrderID

UNION ALL

SELECT
OH.SalesOrderID
,OH.OrderDate AS DataZamowienia
,OH.CustomerID AS ID_Klienta
,OH.SalesPersonID AS ID_Sprzedawcy
FROM
(
SELECT TOP 1
O.SalesOrderID
FROM
Sales.SalesOrderHeader O
ORDER BY
O.OrderDate DESC, SalesOrderID DESC
) AS SQ
JOIN Sales.SalesOrderHeader OH ON SQ.SalesOrderID = OH.SalesOrderID