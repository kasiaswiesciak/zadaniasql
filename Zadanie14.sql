--Napisz kwerendę, która zwróci listę państw, do których dostarczono zamówienia w 1997 roku (nazwy państw nie mogą się powtarzać).

--Baza: Northwind, Tabela: dbo.Orders, Kolumny: ShipCountry, ShippedDate, Wynik: 21 rows

SELECT DISTINCT ShipCountry
FROM dbo.Orders
WHERE Year(ShippedDate) = '1997'

