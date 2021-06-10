CREATE TABLE Utilisateur(
   Id_Utilisateur SERIAL,
   pseudo VARCHAR(50),
   mail VARCHAR(50),
   password VARCHAR(50),
   imageProfile VARCHAR(300)
);

ALTER TABLE Utilisateur ADD PRIMARY KEY(Id_Utilisateur);

CREATE TABLE Manga(
   Id_Manga SERIAL,
   titre VARCHAR(300),
   fini BOOL,
   image VARCHAR(300),
   PRIMARY KEY(Id_Manga)
);

CREATE TABLE Editeur(
   Id_Editeur SERIAL,
   nom VARCHAR(50),
   PRIMARY KEY(Id_Editeur)
);

CREATE TABLE Tome(
   Id_Manga BIGINT UNSIGNED,
   Id_Tome SERIAL,
   nom VARCHAR(50),
   numero INT,
   dateParution DATE,
   image VARCHAR(50),
   PRIMARY KEY(Id_Manga, Id_Tome),
   FOREIGN KEY(Id_Manga) REFERENCES Manga(Id_Manga)
);

CREATE TABLE Chapitre(
   Id_Manga BIGINT UNSIGNED,
   Id_Tome BIGINT UNSIGNED,
   Id_Chapitre SERIAL,
   nom VARCHAR(100),
   numero INT,
   nb_pages INT,
   PRIMARY KEY(Id_Manga, Id_Tome, Id_Chapitre),
   FOREIGN KEY(Id_Manga, Id_Tome) REFERENCES Tome(Id_Manga, Id_Tome)
);

CREATE TABLE Artiste(
   Id_Artiste SERIAL,
   nom VARCHAR(50),
   prenom VARCHAR(50),
   PRIMARY KEY(Id_Artiste)
);

CREATE TABLE Genre(
   Id_Genre SERIAL,
   libelle VARCHAR(50),
   PRIMARY KEY(Id_Genre)
);

CREATE TABLE Admin(
   Id_Admin SERIAL,
   Id_Utilisateur BIGINT UNSIGNED NOT NULL,
   PRIMARY KEY(Id_Admin),
   UNIQUE(Id_Utilisateur),
   FOREIGN KEY(Id_Utilisateur) REFERENCES Utilisateur(Id_Utilisateur)
);

CREATE TABLE Auteur(
   Id_Auteur SERIAL,
   Id_Artiste BIGINT UNSIGNED NOT NULL,
   PRIMARY KEY(Id_Auteur),
   UNIQUE(Id_Artiste),
   FOREIGN KEY(Id_Artiste) REFERENCES Artiste(Id_Artiste)
);

CREATE TABLE Dessinateur(
   Id_Dessinateur SERIAL,
   Id_Artiste BIGINT UNSIGNED NOT NULL,
   PRIMARY KEY(Id_Dessinateur),
   UNIQUE(Id_Artiste),
   FOREIGN KEY(Id_Artiste) REFERENCES Artiste(Id_Artiste)
);

CREATE TABLE Editer(
   Id_Manga BIGINT UNSIGNED,
   Id_Editeur BIGINT UNSIGNED,
   PRIMARY KEY(Id_Manga, Id_Editeur),
   FOREIGN KEY(Id_Manga) REFERENCES Manga(Id_Manga),
   FOREIGN KEY(Id_Editeur) REFERENCES Editeur(Id_Editeur)
);

CREATE TABLE Creer(
   Id_Auteur BIGINT UNSIGNED,
   Id_Manga BIGINT UNSIGNED,
   Id_Dessinateur BIGINT UNSIGNED,
   PRIMARY KEY(Id_Auteur, Id_Manga, Id_Dessinateur),
   FOREIGN KEY(Id_Auteur) REFERENCES Auteur(Id_Auteur),
   FOREIGN KEY(Id_Manga) REFERENCES Manga(Id_Manga),
   FOREIGN KEY(Id_Dessinateur) REFERENCES Dessinateur(Id_Dessinateur)
);

CREATE TABLE MangaLectureEnCours(
   Id_Utilisateur BIGINT UNSIGNED,
   Id_Manga BIGINT UNSIGNED,
   note INT,
   tomeEnCours INT,
   chapitreEnCours INT,
   PRIMARY KEY(Id_Utilisateur, Id_Manga),
   FOREIGN KEY(Id_Utilisateur) REFERENCES Utilisateur(Id_Utilisateur),
   FOREIGN KEY(Id_Manga) REFERENCES Manga(Id_Manga)
);

CREATE TABLE Ami(
   Id_Utilisateur BIGINT UNSIGNED,
   Id_Utilisateur_1 BIGINT UNSIGNED,
   PRIMARY KEY(Id_Utilisateur, Id_Utilisateur_1),
   FOREIGN KEY(Id_Utilisateur) REFERENCES Utilisateur(Id_Utilisateur),
   FOREIGN KEY(Id_Utilisateur_1) REFERENCES Utilisateur(Id_Utilisateur)
);

CREATE TABLE MangaLectureFini(
   Id_Utilisateur BIGINT UNSIGNED,
   Id_Manga BIGINT UNSIGNED,
   note INT,
   PRIMARY KEY(Id_Utilisateur, Id_Manga),
   FOREIGN KEY(Id_Utilisateur) REFERENCES Utilisateur(Id_Utilisateur),
   FOREIGN KEY(Id_Manga) REFERENCES Manga(Id_Manga)
);

CREATE TABLE GenreManga(
   Id_Manga BIGINT UNSIGNED,
   Id_Genre BIGINT UNSIGNED,
   PRIMARY KEY(Id_Manga, Id_Genre),
   FOREIGN KEY(Id_Manga) REFERENCES Manga(Id_Manga),
   FOREIGN KEY(Id_Genre) REFERENCES Genre(Id_Genre)
);
