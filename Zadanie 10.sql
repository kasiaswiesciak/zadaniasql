--Który dostawca jakie produkty dostarcza?

--Baza: Northwind, Tabele: dbo.Suppliers, dbo.Products, Kolumny: Country, CompanyName, ProductName, Wynik: 77 rows

SELECT sup.CompanyName, prod.ProductName
FROM dbo.Suppliers sup JOIN dbo.Products prod on sup.SupplierID = prod.SupplierID
Group by sup.CompanyName, prod.ProductName