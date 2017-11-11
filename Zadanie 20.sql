--Wcielmy w życie zasadę Pareto (zasada 80/20). Mówi ona, że tylko ok. 20% klientów firmy odpowiada za ok. 80% jej przychodów. Sprawdźmy, czy podobna relacja zachodzi i tu.

--1. Utwórz zapytanie, które zwróci nazwę firmy, łączną wartość zamówień firmy, łączną ogólną wartość zamówień.

--2. Zmodyfikuj zapytanie tak, by zwracało również procentowy udział wartości zamówień danej firmy.

--3. Powyższe zapytanie zmodyfikuj jeszcze raz, tak, aby pokazywało również zsumowane punkty procentowe (poczynając od najwyższych wartości).

--Baza: Northwind, Tabela: Sales Totals by Amount (widok), Kolumny: CompanyName, SaleAmount, Wynik: 31 rows

--SELECT DISTINCT sel.CompanyName, sum(sel.SaleAmount) OVER(PARTITION BY SEL.COMPANYNAME) As SumCom, SUM(sel.SaleAmount) over () as AllSum,  
--	sum(sel.SaleAmount) OVER(PARTITION BY SEL.COMPANYNAME)/SUM(sel.SaleAmount) over () * 100 As Pct
--FROM [dbo].[Sales Totals by Amount] sel 
----Group by sel.CompanyName
--Order by Pct desc

WITH CTE AS (
SELECT DISTINCT sel.CompanyName, sum(sel.SaleAmount) OVER(PARTITION BY SEL.COMPANYNAME) As SumCom, SUM(sel.SaleAmount) over () as AllSum,  
	sum(sel.SaleAmount) OVER(PARTITION BY SEL.COMPANYNAME)/SUM(sel.SaleAmount) over () * 100 As Pct
FROM [dbo].[Sales Totals by Amount] sel 
--Order by Pct desc
)
SELECT C.CompanyName, C.SumCom, C.AllSum, C.Pct, Sum(C.Pct) OVER(Order by C.Pct desc) as SumaNarastajaca
FROM CTE C
--ORDER BY C.Pct desc

--over(order by C.Pst desc) bedzie mi jezdzilo po zbiorze procentowym pomniejszajacym sie i dodawalo do siebie koejne procenty
