/* ------  Strukturen ----- */


/* DB boo löschen, falls vorhanden*/
#DROP DATABASE IF EXISTS boo;

/* DB boo anlegen, falls noch nicht vorhanden*/
#CREATE DATABASE IF NOT EXISTS boo;

/* DB auswählen */
USE boo;

/* Tabelle test löschen, falls vorhanden*/
DROP TABLE IF EXISTS test;

/* Tab. test anlegen, falls noch nicht vorhanden*/
CREATE TABLE IF NOT EXISTS test
(
	name VARCHAR(20) NOT NULL DEFAULT "TBA",
	age INT NOT NULL DEFAULT 0
);

/* Alle Tabellen in der DB anzeigen */
#SHOW TABLES;

/* Struktur der Tabelle anzeigen */
DESCRIBE test;

/* ----- Daten ------- */
INSERT INTO test(name,age) VALUES ("Grizabella",29);
INSERT INTO test(age,name) VALUES (35,"Alonzo");
INSERT INTO test VALUES ();


INSERT INTO test(age,name) VALUES (35,"Alonzo");
INSERT INTO test(age,name) VALUES (35,"Alonzo");

/* ---- Inhalte der Tabelle anzeigen ---- */
SELECT * FROM test;