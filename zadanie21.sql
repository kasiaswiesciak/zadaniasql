--Utwórz kwerendę, która policzy, ile jest niepowtarzających się imion. Zadanie rozwiąż na co najmniej dwa sposoby.

--Baza: AdventureWorks2012, Tabela: Person.Person, Kolumna: FirstName, Wynik: 1018 rows

SELECT DISTINCT per.FirstName, ROW_NUMBER() OVER(ORDER BY per.firstname)
FROM Person.Person per
group by per.FirstName

