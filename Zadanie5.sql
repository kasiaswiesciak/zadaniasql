--Wyświetl wszystkich klientów (nazwa firmy, osoba kontaktowa i numer telefonu), którzy nie podali swojego numeru Fax.

--Baza: Northwind, Tabela: dbo.Customers, Kolumny: CompanyName, ContactName, Phone, Fax, Wynik: 22 rows

SELECT CompanyName, ContactName, Phone
FROM dbo.Customers
WHERE Fax is Null
ORDER BY CompanyName