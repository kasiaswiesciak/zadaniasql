--Policz, ile zamówień obsłużył każdy z pracowników; wyniki opisz jako przedziały: mniej niż 50, między 50 a 100, więcej niż 100.

--Baza: Northwind, Tabela: dbo.Orders, Kolumny: EmployeeID, OrderID, Wynik: 9 rows

SELECT ord.EmployeeID, concat(emp.LastName, emp.FirstName) as Nazwa,
CASE
WHEN Count(ord.OrderID) < 50 THEN 'Mniej niz 50'
WHEN Count(ord.OrderID) BETWEEN 50 AND 100 THEN 'Miedzy 50 a 100'
WHEN Count(ord.OrderID) > 100 THEN 'Wiecej niz 100'
END As Zamowienia
FROM dbo.Orders ord join dbo.Employees emp on ord.EmployeeID = emp.EmployeeID
GROUP BY ord.EmployeeID, emp.LastName, emp.FirstName
ORDER BY ord.EmployeeID;

----- czemu nie idzie bez group by? bo najpierw grupuje po imionach np wszystkich januszy a pozniej zostaja mu janusze z roznymi nazwiskami
--- wiec musimy pogrupowac jeszcze raz