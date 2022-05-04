/* ------  Strukturen ----- */

/* 	 
	Tabelle mit id als PRIMARY KEY --> 
    KEINE Duplikate moeglich
    AUTO_INCREMENT ++
    DEFAULT-Werte eintragen
*/


/* Tabelle test löschen, falls vorhanden*/
DROP TABLE IF EXISTS boo.test;

/* Tab. test anlegen, falls noch nicht vorhanden*/
CREATE TABLE IF NOT EXISTS boo.test
(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL DEFAULT "TBA",
	age INT NOT NULL DEFAULT 0
);

/* Alle Tabellen in der DB anzeigen */
#SHOW TABLES;

/* Struktur der Tabelle anzeigen */
DESCRIBE boo.test;

/* ----- Daten ------- */
INSERT INTO boo.test(name,age) VALUES ("Grizabella",29);
INSERT INTO boo.test(age,name) VALUES (35,"Alonzo");


-- ABER: Doppelte Datensätze werden zugelassen !
INSERT INTO boo.test(age,name) VALUES (35,"Alonzo");
INSERT INTO boo.test(age,name) VALUES (35,"Alonzo");

/* ---- Inhalte der Tabelle anzeigen ---- */
SELECT * FROM boo.test;