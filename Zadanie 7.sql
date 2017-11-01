--Dla pracowników o id równym 1, 2, 3, 6, 8 oraz 9 ustal tytuły grzecznościowe (pan lub pani). 
--Jeśli tytuł grzecznościowy jest inny, zostaje oryginalny.
-- Imię i nazwisko powinno znaleźć się w jednej kolumnie.

--Baza: Northwind, Tabela: dbo.Employees, Kolumny: EmployeeID, TitleOfCourtesy, FirstName, LastName, Wynik: 6 rows

SELECT EmployeeID, CONCAT(FirstName,' ', LastName) as Pracownik,
CASE TitleOfCourtesy
WHEN 'Ms.' then 'Pani'
WHEN 'Mr.' then 'Pan'
ELSE TitleOfCourtesy
End as Tytuł

FROM dbo.Employees 
WHERE EmployeeID IN (1,2,3,6,8,9)
ORDER BY Pracownik

--- tak sie tez da polaczyc imie i nazwisko (FirstName +' '+ LastName) as Pracownik