--Policz wartości zamówień, zrealizowane przez każdego pracownika w 1997 roku.

--Baza: Northwind, Tabele: dbo.Employees, dbo.Orders, dbo.Order Details, Kolumny: EmployeeID,
--LastName, Title, UnitPrice, Quantity, Wynik: 9 rows

SELECT CONCAT(emp.FirstName,' ',emp.LastName) as Nazwa, SUM(det.UnitPrice * det.Quantity) AS Sprzedaz
FROM dbo.Employees emp 
JOIN dbo.Orders ord ON emp.EmployeeID = ord.EmployeeID
JOIN dbo.[Order Details] det ON ord.OrderID = det.OrderID
GROUP BY emp.FirstName,emp.LastName
ORDER BY Sprzedaz desc

