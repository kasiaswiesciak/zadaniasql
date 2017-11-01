--Jakie firmy dostarczają Tofu?

--Baza: Northwind, Tabele: dbo.Suppliers, dbo.Products, Kolumny: SupplierID, CompanyName, ProductName, Wynik: 1 row

SELECT prod.ProductName, sup.CompanyName

FROM dbo.Suppliers sup JOIN dbo.Products prod on sup.SupplierID = prod.SupplierID 
WHERE prod.ProductName = 'Tofu'
