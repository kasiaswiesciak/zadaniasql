--Dla każdego stanowiska oblicz średni wiek jego pracowników.

--Baza: Northwind, Tabela: dbo.Employees, Kolumny: Title, BirthDate, Wynik: 4 rows

SELECT emp.title, AVG(DATEDIFF(year, emp.BirthDate, GETDATE())) as Avg
FROM dbo.Employees emp
Group by emp.title


-- INTERSECT

Do wyznaczenia części wspólnej zbiorów, używamy operatora INTERSECT. Podobnie jak EXCEPT, zaimplementowany w SQL Server, 
został również tylko jako INTERSECT DISTINCT, czyli części wspólna dwóch zbiorów z usunięciem duplikatów.

--Wybierz wszystkich klientów, którzy zamówili produkty o id 1 i 55. Zadanie rozwiąż na dwa sposoby.

--Baza: Northwind, Tabele: dbo.Order Details, dbo.Orders, Kolumny: CustomerID, OrderID, ProductID, Wynik: 16 rows

SELECT O.CustomerID
FROM dbo.[Order Details] OD JOIN dbo.Orders O
ON OD.OrderID = O.OrderID
WHERE OD.ProductID = 1

INTERSECT

SELECT O.CustomerID
FROM dbo.[Order Details] OD JOIN dbo.Orders O
ON OD.OrderID = O.OrderID
WHERE OD.ProductID = 55

ORDER BY O.CustomerID;