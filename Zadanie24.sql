
INTERSECT

--Wskaż, w których państwach i miastach (Country, City):

--a) mają siedziby zarówno klienci, jak i dostawcy


SELECT Country, City
FROM dbo.Customers

INTERSECT

SELECT Country, City
FROM dbo.Suppliers


SELECT concat(per.LastName,' ',per.FirstName) as name, pph.PhoneNumber  
FROM Person.Person per 
	 JOIN Person.PersonPhone pph on per.BusinessEntityID = pph.BusinessEntityID
	 JOIN Person.PhoneNumberType pnrt on pph.PhoneNumberTypeID = pnrt.PhoneNumberTypeID
WHERE pnrt.PhoneNumberTypeID = 3
	
--Baza: AdventureWorks

--Zadanie nr: 17

--Treść: Wyświetl służbowe numery telefonów pracowników.
