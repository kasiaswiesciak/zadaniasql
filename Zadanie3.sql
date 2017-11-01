--Dla klientów z Francji wyświetl nazwę firmy, osobę kontaktową oraz numer telefonu; 
--numer powinien być rozdzielony za pomocą myślników, zamiast kropek.

--Baza: Northwind, Tabela: dbo.Customers, Kolumny: CompanyName, ContactName, Phone, Wynik: 11 rows

SELECT CompanyName, ContactName, Replace(Phone, '.', '-') as Phone 
FROM dbo.Customers
WHERE Country = 'France'
ORDER BY CompanyName asc
--'czyli on wie ze kazda kropka ma byc zastapiona