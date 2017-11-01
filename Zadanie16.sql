--Policz, ile jest produktów w każdej kategorii oraz wyznacz cenę najdroższego produktu.

--Baza: Northwind, Tabela: dbo.Products, Kolumny: CategoryID, UnitPrice, Wynik: 8 rows

SELECT Max(prod.UnitPrice) as Maximum, Count (*) as Ilość, cat.CategoryName
FROM dbo.Products prod JOIN dbo.Categories cat ON prod.CategoryID = cat.CategoryID
GROUP BY cat.CategoryName
ORDER BY Maximum desc