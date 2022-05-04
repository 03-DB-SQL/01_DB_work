/* USER TAB. Version 3 */

/* Table users */
DROP TABLE IF EXISTS boo.users;

CREATE TABLE IF NOT EXISTS boo.users
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    userName VARCHAR(20) NOT NULL UNIQUE,
    userPwd VARCHAR(40) NOT NULL,
    familyName VARCHAR(20) NOT NULL,
    firstName VARCHAR(20) NOT NULL
);

/* Struktur */
#DESCRIBE boo.users;

/* Daten */
-- Nachteil: PWDs liegen offen! 
INSERT INTO boo.users(userName,firstName,familyName,userPwd)
VALUES ("max","Max","Mütze",SHA1("1234"));
INSERT INTO boo.users(userName,firstName,familyName,userPwd)
VALUES ("maxine","Maxine","Mützerich",SHA1("#7xD0"));
INSERT INTO boo.users(userName,firstName,familyName,userPwd)
VALUES ("maxl","Max","Mützerich",SHA1("user1234"));

/* Inhalte : Ergebnistabelle */
SELECT * FROM boo.users;

/* Änderungen an bestehender Tabelle / Struktur*/
ALTER TABLE
    boo.users
ADD    
    userPLZ VARCHAR(5) NOT NULL DEFAULT "00000"
;

/* Struktur */
DESCRIBE boo.users;

/* Update vo Daten */
UPDATE boo.users SET userPLZ = "70367" WHERE id = 1;
UPDATE boo.users SET userPLZ = "70481" WHERE firstName = "Maxine";


/* Inhalte : Ergebnistabelle */
SELECT * FROM boo.users;
