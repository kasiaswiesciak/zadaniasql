--Pokaż wszystkich pracowników zatrudnionych w 1993 roku.

--Baza: Northwind, Tabela: dbo.Employees, Kolumny: FirstName, LastName, HireDate, Wynik: 3 rows

SELECT CONCAT(emp.FirstName,' ',emp.LastName), emp.HireDate
FROM dbo.Employees emp
WHERE Year(emp.HireDate) = '1993'
