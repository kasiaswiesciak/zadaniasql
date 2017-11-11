--1. Utwórz wspólne wyrażenie tablicowe (CTE), które zwróci nazwy miast i państw, w których są zarówno klienci jak i dostawcy.

--2. W ostatecznym wyniku zapytania chcemy zobaczyć klientów i dostawców (CompanyName, SupplierID / CustomerID) z miast określonych w wyrażeniu tablicowym.

--Baza: Northwind, Tabele: dbo.Suppliers, dbo.Customers, Kolumny: City, Country, CompanyName, SupplierID, CustomerID, Wynik: 14 rows

WITH CTE AS
	(
		SELECT City, Country
		FROM dbo.Suppliers 

		INTERSECT

		SELECT City, Country
		FROM dbo.Customers
		-- tu sobie stworzylam zbior,tabelke gdzie mam ograniczone info, polaczone info
		--o miastach i krajach w dwoch roznych tabelach, polaczylam to INTERSECTem

	)
SELECT 	supp.CompanyName as suppliers, supp.SupplierID, cust.CustomerID, cust.City, cust.CompanyName as customers
FROM dbo.Suppliers supp JOIN dbo.Customers cust ON supp.City = cust.City
WHERE cust.City in (SELECT City from CTE)
order by supp.SupplierID