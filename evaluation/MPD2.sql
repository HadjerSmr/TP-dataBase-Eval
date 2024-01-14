CREATE TABLE propréitaire(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR (50) NOT NULL,
    prenom VARCHAR (255) NOT NULL,
    adresse TEXT (500) NOT NULL,
    tel TINYINT (25) NOT NULL
);

CREATE TABLE locataire(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR (50) NOT NULL,
    prenom VARCHAR (255) NOT NULL,
    adresse TEXT (500) NOT NULL,
    tel TINYINT (25) NOT NULL
);

CREATE TABLE Appartement(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    taille SMALLINT (6500) NOT NULL,
    adresse TEXT (500) NOT NULL,
    prix_de_location INT (1000000) NOT NULL,
    pourcentage DECIMAL (10,2) NOT NULL,
    durée INT (5000) NOT NULL
    
    
);

CREATE TABLE bail(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    num  TINYINT (255) NOT NULL,
    periode INT (50000) NOT NULL,
    id_appartement INTEGER,
    id_locataire INTEGER,
    FOREIGN KEY (id_appartement) REFERENCES appartement(id),
    FOREIGN KEY (id_locataire) REFERENCES locataire(id)
);

CREATE TABLE  gestion(
    id_propréitaire INTEGER,
    id_locataire INTEGER,
    FOREIGN KEY (id_propréitaire) REFERENCES propréitaire(id),
    FOREIGN KEY (id_locataire) REFERENCES locataire(id)
);