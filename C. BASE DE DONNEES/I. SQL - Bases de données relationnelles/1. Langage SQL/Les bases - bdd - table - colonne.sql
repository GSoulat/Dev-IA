-- Pour connaitre la version de Mysql :
SELECT VERSION();

-- Pour créer une base de donnée :
CREATE DATABASE manouvellebasededonnee;

-- Pour supprimer manouvellebasededonnee :
DROP DATABASE manouvellebasededonnee;

-- Selecter une base de données par défaut
use manouvellebasededonnee;

-- Pour créer une table exemple Utilisateur 
CREATE TABLE utilisateur
(
	id INT PRIMARY KEY NOT NULL,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    email VARCHAR(255),
    date_naissance DATE,
    pays VARCHAR(255),
    ville VARCHAR(255),
    nombre_acaht INT
);

-- Pour supprimer une table 
DROP TABLE utilisateur;

-- Pour ajouter une colonne
ALTER TABLE utilisateur
ADD adresse VARCHAR(255);

-- Pour supprimer une colonnne
ALTER TABLE utilisateur
DROP COLUMN nombre_acaht;

-- Pour renommer une colonne
ALTER TABLE utilisateur
CHANGE adresse code_postal INT;



