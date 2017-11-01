--Dla wszystkich klientów z Wielkiej Brytanii (UK) pokaż nazwę firmy, osobę kontaktową, numer telefonu oraz fax 
--(jeśli istnieje), w formie jaką przedstawiono na screenie. nr,fax:

--Baza: Northwind, Tabela: dbo.Customers, Kolumny: CompanyName, ContactName, Phone, Fax, Wynik: 7 rows

SELECT CompanyName,ContactName, CONCAT(Phone, ' , Fax: ' + Fax) as Contact
FROM dbo.Customers cus
WHERE Country = 'UK'
ORDER BY CompanyName

--CONCAT(Phone, ' , Fax: ' + Fax) - dzieki plusowi przed FAX, wszystkie nr bez fax zostana calkowicie pominiete,
--gdyby dac przecinek to byloby np +(171)4542147, Fax: