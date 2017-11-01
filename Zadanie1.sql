-- Policz, ile w firmie pracuje kobiet, a ilu mê¿czyzn. Wynik podaj równie¿ w procentach.

-- Baza: AdventureWorks, Tabela: HumanResources.Employee, Kolumny: Gender, Wynik: 2 rows



WITH Plec AS 
(
SELECT emp.Gender, count(*) as num
	FROM HumanResources.Employee emp
GROUP BY emp.Gender
)
SELECT num, Gender, CAST(100 * num/sum(num) OVER() AS Decimal (5,2)) FROM Plec


-- OVER - zakresla obszar