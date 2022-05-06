/* Aggregationen MIN/MAX */

-- Preis der teuersten/günstigsten Aktie?

/*
SELECT
    #MAX(price) AS "Max. Preis"
    MIN(price) AS "Min. Preis"
FROM stocks.ccc
;
*/

-- WELCHE Aktie ist am teuersten/günstigsten ?
-- 1. Subquery
-- 2. ORDER BY .... ASC/DESC & LIMIT 1

#SELECT MAX(price) FROM stocks.ccc;
#SELECT MIN(price) FROM stocks.ccc;

/*
SELECT
    ticker AS SYM,
    c_name Unternehmen,
    price AS "Kurs in $"
FROM stocks.ccc
-- SUBQUERY, hier: zeig mir den max./min. Wert / wichtig: (SELECT ...) !
#WHERE price = (SELECT MAX(price) FROM stocks.ccc) -- max
WHERE price = (SELECT MIN(price) FROM stocks.ccc)
;
*/

/*
SELECT
    ticker SYM,
    c_name AS Unternehmen,
    price AS "Kurs in $"
FROM stocks.ccc
#ORDER BY price DESC
ORDER BY price ASC
LIMIT 1
;
*/

-- Welches Unternehmen hat die längste Div.-Historie ?
SELECT
    ticker AS "SYM",
    c_name AS Unternehmen,
    price Aktienkurs    
FROM stocks.ccc
ORDER BY no_yrs DESC
LIMIT 1
;







