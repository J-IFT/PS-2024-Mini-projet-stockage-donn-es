-- Supprimer les tables si elles existent déjà
DROP TABLE IF EXISTS VisitesVet;
DROP TABLE IF EXISTS Animaux;
DROP TABLE IF EXISTS Veterinaires;
DROP TABLE IF EXISTS Proprietaires;

-- Création de la table "Proprietaires"
CREATE TABLE Proprietaires (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nom VARCHAR(255) NOT NULL,
    Adresse VARCHAR(255),
    Contact VARCHAR(20)
);

-- Création de la table "Veterinaires"
CREATE TABLE Veterinaires (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nom VARCHAR(255) NOT NULL,
    Specialite VARCHAR(255),
    Contact VARCHAR(20)
);

-- Création de la table "Animaux"
CREATE TABLE Animaux (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nom VARCHAR(255) NOT NULL,
    Espece VARCHAR(255) NOT NULL,
    Age INT,
    Sexe CHAR(1),
    Proprietaire_ID INT,
    FOREIGN KEY (Proprietaire_ID) REFERENCES Proprietaires(ID) ON DELETE SET NULL
);

-- Création de la table "VisitesVet"
CREATE TABLE VisitesVet (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Animal_ID INT,
    Veterinaire_ID INT,
    Date DATE,
    Raison VARCHAR(255),
    Traitement VARCHAR(255),
    FOREIGN KEY (Animal_ID) REFERENCES Animaux(ID) ON DELETE CASCADE,
    FOREIGN KEY (Veterinaire_ID) REFERENCES Veterinaires(ID) ON DELETE CASCADE
);

-- Ajouter un nouvel animal
INSERT INTO Animaux (Nom, Espece, Age, Sexe, Proprietaire_ID) VALUES ('Fido', 'Chien', 3, 'M', 1);

-- Ajouter un nouveau propriétaire
INSERT INTO Proprietaires (Nom, Adresse, Contact) VALUES ('Alice', '123 Rue des Animaux', '555-1234');

-- Ajouter un nouveau vétérinaire
INSERT INTO Veterinaires (Nom, Specialite, Contact) VALUES ('Dr. Smith', 'Chirurgie', '555-5678');

-- Ajouter une nouvelle visite vétérinaire
INSERT INTO VisitesVet (Animal_ID, Veterinaire_ID, Date, Raison, Traitement) VALUES (1, 1, '2024-01-20', 'Examen annuel', 'Aucun traitement nécessaire');
