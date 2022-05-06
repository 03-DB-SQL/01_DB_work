/* QUERIES Filtern mit WHERE */

/*
    Eingrenzen/Filtern WHERE & AND/OR etc.
    Eingrenzen/Filtern WHERE & LIKE + Parameter
    Eingrenzen/Filtern WHERE & RegEx
    Eingrenzen/Filtern WHERE & IN / NOT IN
    Eingrenzen/Filtern WHERE & BETWEEN / NOT BETWEEN
*/

-- Eingrenzen/Filtern WHERE & AND/OR etc.
-- Scharfe Suche
/*
SELECT
	ticker AS "SYM",
    c_name AS "Unternehmen",
	price AS "Kurs ($)",
    payouts AS "Zahlung p.a.",
    dividend AS "Dividende",
	CONCAT(sector, " | ", industry) AS "Operations"
FROM stocks.ccc

-- Einzeldaten / Strings / numerisch
#WHERE sector = "Communication Services" -- spez. Sektor
#WHERE industry = "Media" -- spez. Branche
WHERE payouts = 12 -- Wer zahlt monatlich?

-- Kombination durch AND
#WHERE sector = "Communication Services" AND industry = "Entertainment"
#WHERE sector = "Communication Services" AND payouts = 12
-- Kombination durch AND / OR
#WHERE sector = "Communication Services" AND (industry = "Entertainment" OR industry = "Media")
-- Kombination durch AND / NOT
#WHERE sector = "Communication Services" AND NOT industry = "Media"

-- Sortierung
ORDER BY industry DESC 
#ORDER BY price DESC 

-- Begrenzung
LIMIT 20
;
*/

-- Eingrenzen/Filtern WHERE & LIKE + Parameter
-- Unscharfe Suche 
/*
SELECT
	ticker AS "SYM",
    c_name AS Unternehmen,
	industry Branche
FROM stocks.ccc

-- scharfe Suche nach Strings
#WHERE industry = "Media"

-- unschärfere Suchen --
-- Branchenname beginnt mit ... , dahinter beliebige Chars
#WHERE industry LIKE "Air%"
-- Branchenname endet mit ... , davor beliebige Chars
#WHERE industry LIKE "%ment"
-- Branchenname enthaelt ...
#WHERE industry LIKE "%ood%"

-- Branchenname endet/beginnt mit ... , danach/davor/inmitten genau _ Char
#WHERE industry LIKE "__dia"
#WHERE industry LIKE "Med__"
#WHERE industry LIKE "M___a"
#WHERE industry LIKE "_ir%"
#WHERE industry LIKE "_ood%"

#WHERE industry LIKE "%ment"
#WHERE industry LIKE "%ment" AND industry NOT LIKE "%ipment"
#WHERE industry LIKE "%ment" AND industry NOT LIKE "%ipment" AND industry NOT LIKE "%tain%"


ORDER BY industry ASC
LIMIT 40
;
*/

--  Eingrenzen/Filtern WHERE & IN / NOT IN (Suchsets)
/*
SELECT 
    ticker AS "SYM",
    c_name AS "Unternehmen",
    sector AS "Sektor",
    industry AS "Branche"
FROM stocks.ccc

#WHERE sector = "Financials" 
#WHERE sector = "Financials" AND industry NOT IN ("Insurance","Banks") 
WHERE industry IN ("Banks","Beverages")

ORDER BY industry ASC
LIMIT 400 -- X Zeilen ab 0
;
*/

-- Eingrenzen/Filtern WHERE & RegEx
/*
SELECT
	c_name "Unternehmen"
FROM stocks.ccc
#WHERE c_name RLIKE "^[AZ]"  -- mit A oder Z beginnend
WHERE c_name RLIKE "^[1-9]"  -- mit Ziffer beginnend
ORDER BY c_name;
*/










