/* ***************************************       ******************************************* */
-- Exercie 1 : Créer la base de données « immobilier » et y stocker les différentes tables
/* ***************************************       ******************************************* */

/*-- Création de ma table Agence
CREATE TABLE agence(  
idAgence int(6) ZEROFILL NOT NULL PRIMARY KEY AUTO_INCREMENT,
nom VARCHAR(50),
adresse VARCHAR(50)
);
*/

/*-- Création de ma table Personne
CREATE TABLE personne (
idPersonne INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nom VARCHAR(30),
prenom VARCHAR(30),
email  VARCHAR(50)
);
*/

/*-- Création de ma table Demande
CREATE TABLE demande(  
idDemande INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
idPersonne INT NOT NULL,
type  VARCHAR(30),
ville VARCHAR(30),
budget INT,
superficie INT,
categorie VARCHAR(20),
-- création de ma foreign key entre idPersonne & demande
CONSTRAINT fk_idPersonne FOREIGN KEY (idPersonne) REFERENCES personne(idPersonne)
);
*/

/*-- Création de ma table Logement_agence <<<< Attention >>>> FK idLogement | idAgence
CREATE TABLE logement_agence(  
idLogementAgence INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
idAgence  int(6) ZEROFILL NOT NULL,
idLogement  INT(5) ZEROFILL NOT NULL,
frais INT,
-- Création de mes foreign keys idLogement(logement) & logement_agence & idAgence (Agence) & logement_agence 
CONSTRAINT fk_idLogement FOREIGN KEY (idLogement) REFERENCES logement(idLogement),
CONSTRAINT fk_idAgence FOREIGN KEY (idAgence) REFERENCES Agence(idAgence)
);
*/

/*-- Création de ma table logement
CREATE TABLE logement(  
idLogement  INT(5) ZEROFILL NOT NULL PRIMARY KEY AUTO_INCREMENT,
type  VARCHAR(30),
ville VARCHAR(30),
prix INT NOT NULL,
superficie INT,
categorie VARCHAR(20)
);
*/

/*-- Création de ma table logement_personne <<<< Attention >>>> FK idLogement | idPersonne
CREATE TABLE logement_personne (
idLogementPersonne INT NOT NULL PRIMARY KEY,
idPersonne INT NOT NULL,
idLogement  int(6) ZEROFILL NOT NULL,
-- Création de mes foreign keys idLogement(logement) & logement_personne & idPersonne (Personne) & logement_personne
CONSTRAINT fk_idLogement2 FOREIGN KEY (idLogement) REFERENCES logement(idLogement),
CONSTRAINT fk_personne2 FOREIGN KEY (idPersonne) REFERENCES personne(idPersonne)
);
*/

/*--Supprimer une CONSTRAINT puis une TABLE et ensuite ajouter une FK

DELIMITER ;
ALTER TABLE logement_agence DROP CONSTRAINT fk_idAgence;
DROP TABLE agence;
ALTER TABLE logement_agence ADD 
CONSTRAINT fk_idAgence FOREIGN KEY (idAgence) REFERENCES Agence(idAgence);
*/


/* ***************************************       ******************************************* */
-- Exercice 2 : Faire un trigger permettant de vérifier si l’email est bien valide avant l’ajout dans la table personne. Vous pouvez les expressions régulières. 
/* ***************************************       ******************************************* */

/*-- Création d'un trigger qui vérifie l'email avant insertion*/
DELIMITER //
CREATE TRIGGER verifmailInsert BEFORE INSERT 
ON personne
FOR EACH ROW
BEGIN
    IF (NEW.email NOT LIKE  '_%@__%.__%') 
    Then    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'email invalide';
    END IF;
END//
DELIMITER ;

*/

/*-- Création d'un trigger qui vérifie l'email avant modification pour éviter qu'on saisisse un mauvaise email en modifiant.*/

DELIMITER //
CREATE TRIGGER verifmailModify BEFORE UPDATE 
ON personne
FOR EACH ROW
BEGIN
    IF (new.email NOT LIKE  '_%@__%.__%') 
    Then    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'email invalide';
    END IF;
END//

DELIMITER ;
*/

/* ***************************************       ******************************************* */
-- Exercice 3 : Procédures stockées.
-- 3-1 Préparer des procédures stockées.
/* ***************************************       ******************************************* */

/*--insertion des agences en PS:
DELIMITER //
CREATE PROCEDURE insert_agences()
BEGIN
INSERT into agence (nom,adresse) VALUES
('logic-immo','www.logic-immo.com'),
('century21','rue century'),
('laforet','rue laforet'),('fnaim','rue fnaim'),
('orpi','rue orpi'),('foncia','rue foncia'),
('guy-hoquet','rue guy-hoquet'),
('seloger','www.seloger.com'),
('bouygues-immobilier','www.bouygues-immobilier.com');
END//
DELIMITER ;

--Appel PS insert_agences
CALL insert_agences();
*/

-------------------------------------------------------------------------------------------------

/*--insertion des demandes en PS:
DELIMITER //
CREATE PROCEDURE insert_demandes()
BEGIN
INSERT into demande (idPersonne,type,ville,budget,superficie,categorie) VALUES
(1,'appartement','paris',530000,120,'vente'),
(3,'appartement','bordeaux',120000,18,'vente'),
(4,'appartement','bordeaux',145000,21,'vente'),
(5,'appartement','bordeaux',152000,26,'vente'),
(6,'appartement','lyon',200000,55,'vente'),
(9,'appartement','paris',171000,40,'vente'),
(13,'appartement','paris',163000,25,'vente'),
(16,'appartement','paris',132000,15,'vente'),
(19,'appartement','paris',350000,80,'vente'),
(22,'appartement','lyon',600,20,'location'),
(25,'appartement','lyon',188000,65,'vente'),
(27,'appartement','paris',400,15,'location'),
(28,'appartement','paris',330500,100,'vente'),
(31,'appartement','paris',90000,15,'vente'),
(32,'appartement','lyon',123800,21,'vente'),
(35,'appartement','lyon',1200,70,'vente'),
(37,'appartement','lyon',1500,100,'vente'),
(43,'appartement','paris',600,20,'location'),
(44,'appartement','paris',750,30,'location'),
(45,'appartement','bordeaux',680,30,'location'),
(46,'appartement','bordeaux',213000,40,'vente');
END//
DELIMITER ;

--Appel PS insert_agences
CALL insert_demandes();
*/

-------------------------------------------------------------------------------------------------

/*--insertion des logements en PS:
DELIMITER //
CREATE PROCEDURE insert_logements(
--IN ctype varchar(30),
--IN cville VARCHAR(30),
--IN cprix INT,
--IN csuperficie INT,
--IN ccategorie VARCHAR(20)
)
BEGIN
INSERT into logement (type,ville,prix,superficie,categorie) VALUES
--(ctype,cville,cprix,csuperficie,ccategorie);
('appartement','paris',185000,61,'vente'),
('appartement','paris',115000,15,'vente'),
('Maison','paris',510000,130,'vente'),
('appartement','bordeaux',550,17,'location'),
('appartement','lyon',420,14,'location'),
('appartement','paris',160000,40,'vente'),
('appartement','paris',670,35,'location'),
('appartement','lyon',110000,16,'vente'),
('appartement','bordeaux',161500,33,'vente'),
('appartement','paris',202000,90,'vente');
END//
DELIMITER ;

--Appel PS insert_agences
CALL insert_logements();
--('appartement','paris',185000,61,'vente'),
--('appartement','paris',115000,15,'vente'),
--('appartement','paris',510000,130,'vente'),
--('appartement','bordeaux',550,17,'location'),
--('appartement','lyon',420,14,'location'),
--('appartement','paris',160000,40,'vente'),*
--('appartement','paris',670,35,'location'),
--('appartement','lyon',110000,16,'vente'),
--('appartement','bordeaux',161500,33,'vente'),
---('appartement','paris',202000,90,'vente');
*/

-------------------------------------------------------------------------------------------------

/*--insertion des logements gérés par l'agence (logement_agence) en PS:

DELIMITER //
CREATE PROCEDURE insert_logementsAgence()
BEGIN
INSERT into logement_agence (idAgence,idLogement,frais) VALUES(000001,00002,15000);
END //
DELIMITER ;

--Appel PS insert_logementsagences
CALL insert_logementsAgence(
    --000001,00002,15000
    );
*/


/*--Modif d'infos des logements gérés par l'agence (logement_agence) en PS:

DELIMITER //
CREATE PROCEDURE ajouter_logementsAgence(
IN cidAgence INT(6),
IN cidLogement INT(5),
IN cfrais INT
)
BEGIN

INSERT into logement_agence (idAgence,idLogement,frais) VALUES(cidAgence,cidLogement,cfrais);
END //
DELIMITER ;

--Appel PS insert_logementsagences
CALL ajouter_logementsAgence(
    000008,00010,2500
    );
*/

---------------------------------------------------------------------------------------------------

/*PS: Insérer une personne
DELIMITER //
CREATE PROCEDURE insert_personne(
IN cnom varchar(30),
IN cprenom varchar(30),
IN cemail varchar(50)
)
BEGIN
INSERT into personne (nom,prenom,email) VALUES(cnom,cprenom,cemail)
('Sweeney','Hugo','nec.ligula@protonmail.org'),
('Matthews','Jean','felis@aol.edu'),
('Gibson','Richard','eu.neque.pellentesque@aol.com'),
('Harper','Jacques','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu'),
('Sweeney','Dora','nec.ligula@protonmail.org'),
('Matthews','Neville','felis@aol.edu'),
('Gibson','Inez','eu.neque.pellentesque@aol.com'),
('Harper','Alika','et.magnis.dis@outlook.ca'),
('Love','Elijah','lobortis@yahoo.edu');
END//
DELIMITER ;

CALL insert_personne('NOMXXXX','PRENOMXXXXX','EMAILXXXXXXXX';

*/

-------------------------------------------------------------------------------------------------

/* PS: Afficher demande de vente
DELIMITER //
CREATE PROCEDURE afficherDemandeVente()
BEGIN
    SELECT idDemande, type,superficie,budget, nom, prenom FROM demande D,personne P WHERE D.idPersonne=P.idPersonne AND categorie like 'vente';
END//
DELIMITER ;

-- CALL afficherDemandeVente()
*/

/* PS: Afficher demande de loc
DELIMITER //
CREATE PROCEDURE afficherDemandeLocation()
BEGIN
    SELECT idDemande, type,superficie,budget, nom, prenom FROM demande D,personne P WHERE D.idPersonne=P.idPersonne AND categorie like 'location';
END//
DELIMITER ;

-- CALL afficherDemandeLocation()
*/



/* ***************************************       ******************************************* */
-- Exercice 4 : 
/* ***************************************       ******************************************* */


-- 1 Affichez le nom des agences /
SELECT nom FROM agence;

-- 2 Affichez le numéro de l’agence « Orpi »/
SELECT idAgence,nom FROM agence WHERE nom like 'orpi';

-- 3 Affichez le premier enregistrement de la table logement /
SELECT * FROM logement WHERE idLogement=1;

--4 Affichez le nombre de logements (Alias : Nombre de logements) /
SELECT COUNT(idLogement) AS 'Nombre de Logements' FROM Logement;

-- 5 Affichez les logements à vendre à moins de 150 000 € dans l’ordre croissant des prix./
SELECT * FROM logement WHERE prix < 150000 AND categorie like'vente' ORDER BY prix /*par dft asc*/;

-- 6 Affichez le nombre de logements à la location (alias : nombre) /
SELECT COUNT(idLogement),categorie as 'nombre' FROM logement where categorie like 'location'; 

-- 7 Affichez les villes différentes recherchées par les personnes demandeuses d'un logement /
SELECT DISTINCT ville FROM demande;

-- 8 Affichez le nombre de biens à vendre par ville /
Select count(*) as 'nombre de biens',ville FROM logement WHERE categorie like'vente' GROUP BY ville;

-- 9  Quelles sont les id des logements destinés à la location ? /
SELECT idLogement as 'bien N°',ville,categorie as 'destiné à la :' FROM Logement WHERE categorie LIKE 'location';

-- 10 Quels sont les id des logements entre 20 et 30m² ? /
SELECT idLogement as'Biens N°',superficie as 'm2' FROM logement WHERE superficie >= 20 AND superficie <=30 ;

-- 11 Quel est le prix vendeur (hors frais) du logement le moins cher à vendre ? (Alias :prix minimum) /
SELECT MIN(prix) as 'prix minimum' FROM logement WHERE categorie like 'vente';
d
-- 12 Dans quelles villes se trouve les maisons à vendre ? /
SELECT ville, idLogement as'biens N°' FROM logement WHERE type like 'maison';

-- 13 L’agence Orpi souhaite diminuer les frais qu’elle applique sur le logement ayant l'id « 3 ». Passer les frais de ce logement de 800 à 730€ /
UPDATE logement_agence  SET  frais=730 WHERE idlogement=3 AND idAgence = (Select idAgence FROM agence where nom like 'orpi');

-- 14 .Quels sont les logements gérés par l’agence « seloger » /
SELECT idLogement as'bien N°' FROM logement_agence WHERE idAgence = (Select idAgence FROM agence where nom like 'seloger');  
 -- 15 Affichez le nombre de propriétaires dans la ville de Paris (Alias : Nombre) /
 SELECT COUNT(idPersonne) as 'nbre de propriétaire',ville FROM demande 
 WHERE  ville like 'paris';

 -- 16 .Affichez les informations des trois premières personnes souhaitant acheter un logement /
 SELECT * from personne p,demande d 
 WHERE p.idPersonne = d.idPersonne 
 AND categorie like'vente'
 order by idDemande  Limit 3;

-- 17 Affichez les prénoms, email des personnes souhaitant accéder à un logement en location sur la ville de Paris /
SELECT prenom,email FROM personne P, demande D 
WHERE P.idPersonne=D.idPersonne
AND D.ville LIKE 'paris'
AND D.categorie like 'location';

-- 18 Si l’ensemble des logements étaient vendus ou loués demain, quel serait le bénéfice généré grâce aux frais d’agence et pour chaque agence (Alias : bénéfice, classement : par ordre croissant des gains)
SELECT SUM(frais) as 'Bénéfice', idAgence FROM logement_agence GROUP BY idAgence ORDER BY Bénéfice;

-- 19 Affichez le prénom et la ville où se trouve le logement de chaque propriétaire /
SELECT prenom,ville FROM demande D, personne P
WHERE D.idPersonne=P.idPersonne
OR P.idPersonne=(SELECT idPersonne from logement_personne WHERE idLogement IS NOT NULL);

-- 20 Affichez le nombre de logements à la vente dans la ville de recherche de « hugo » (alias : nombre) /
SELECT COUNT(L.ville) as 'Nombre' FROM logement L,demande D, personne P 
WHERE D.idPersonne = P.idPersonne
AND D.ville = L.ville
AND P.idPersonne IN (SELECT idPersonne FROM Personne where prenom LIKE 'Hugo');


/* ***************************************       ******************************************* */
-- Exercice 5 : 
/* ***************************************       ******************************************* */
/*
-- 1 Créer deux utilisateurs ‘afpa’ et ‘cda’ /
CREATE USER 'afpa'@'localhost' IDENTIFIED BY 'moussaCnivunivu';

CREATE USER 'cda'@'localhost' IDENTIFIED BY 'moussaCnivunivu';

-- 2 Donner les droits d’afficher et d’ajouter des personnes et logements pour l’utilisateur afpa /
GRANT SELECT, INSERT ON immobilier.personne TO 'afpa'@'localhost';
GRANT SELECT, INSERT ON immobilier.logement TO 'afpa'@'localhost';

-- 3 Donner les droits de supprimer des demandes d’achat et logements pour l’utilisateur cda /
GRANT SELECT,DELETE ON immobilier.demande TO 'cda'@'localhost';
GRANT SELECT, DELETE ON immobilier.logement TO 'afpa'@'localhost';
*/