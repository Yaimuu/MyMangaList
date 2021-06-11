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
   image VARCHAR(300),
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

INSERT INTO Manga VALUES(DEFAULT, 'Monster', true, 'https://cdn.myanimelist.net/images/manga/3/54525.jpg'); 
INSERT INTO Artiste VALUES(DEFAULT, 'Urasawa', 'Naoki'); 
INSERT INTO Genre VALUES(DEFAULT, 'Mystery'); 
INSERT INTO Manga VALUES(DEFAULT, 'Berserk', false, 'https://cdn.myanimelist.net/images/manga/1/157897.jpg'); 
INSERT INTO Artiste VALUES(DEFAULT, 'Miura', 'Kentarou'); 
INSERT INTO Manga VALUES(DEFAULT, '20th Century Boys', true, 'https://cdn.myanimelist.net/images/manga/1/54437.jpg'); 
INSERT INTO Artiste VALUES(DEFAULT, 'Urasawa', 'Naoki'); 
INSERT INTO Manga VALUES(DEFAULT, 'Yokohama Kaidashi Kikou', true, 'https://cdn.myanimelist.net/images/manga/1/171813.jpg'); 
INSERT INTO Artiste VALUES(DEFAULT, 'Ashinano', 'Hitoshi'); 
INSERT INTO Genre VALUES(DEFAULT, 'Drama'); 
INSERT INTO Manga VALUES(DEFAULT, 'Hajime no Ippo', false, 'https://cdn.myanimelist.net/images/manga/1/15282.jpg'); 
INSERT INTO Artiste VALUES(DEFAULT, 'Morikawa', 'George'); 
INSERT INTO Manga VALUES(DEFAULT, 'Full Moon wo Sagashite', true, 'https://cdn.myanimelist.net/images/manga/3/175970.jpg'); 
INSERT INTO Artiste VALUES(DEFAULT, 'Tanemura', 'Arina'); 
INSERT INTO Manga VALUES(DEFAULT, 'Tsubasa: RESERVoir CHRoNiCLE', true, 'https://cdn.myanimelist.net/images/manga/2/27076.jpg'); 
INSERT INTO Manga VALUES(DEFAULT, 'xxxHOLiC', true, 'https://cdn.myanimelist.net/images/manga/3/217533.jpg'); 
INSERT INTO Genre VALUES(DEFAULT, 'Comedy'); 
INSERT INTO Manga VALUES(DEFAULT, 'Naruto', true, 'https://cdn.myanimelist.net/images/manga/3/117681.jpg'); 
INSERT INTO Artiste VALUES(DEFAULT, 'Kishimoto', 'Masashi'); 
INSERT INTO Manga VALUES(DEFAULT, 'Bleach', true, 'https://cdn.myanimelist.net/images/manga/2/180089.jpg'); 
INSERT INTO Artiste VALUES(DEFAULT, 'Kubo', 'Tite'); 
INSERT INTO Manga VALUES(DEFAULT, 'One Piece', false, 'https://cdn.myanimelist.net/images/manga/3/55539.jpg'); 
INSERT INTO Artiste VALUES(DEFAULT, 'Oda', 'Eiichiro'); 
INSERT INTO Genre VALUES(DEFAULT, 'Action'); 
INSERT INTO Manga VALUES(DEFAULT, 'Death Note', true, 'https://cdn.myanimelist.net/images/manga/2/54453.jpg'); 
INSERT INTO Artiste VALUES(DEFAULT, 'Obata', 'Takeshi'); 
INSERT INTO Manga VALUES(DEFAULT, 'Kamichama Karin', true, 'https://cdn.myanimelist.net/images/manga/2/2074.jpg'); 
INSERT INTO Manga VALUES(DEFAULT, 'Kamikaze Kaitou Jeanne', true, 'https://cdn.myanimelist.net/images/manga/4/175801.jpg'); 
INSERT INTO Artiste VALUES(DEFAULT, 'Tanemura', 'Arina'); 
INSERT INTO Genre VALUES(DEFAULT, 'Adventure'); 
INSERT INTO Manga VALUES(DEFAULT, 'Slam Dunk', true, 'https://cdn.myanimelist.net/images/manga/2/157904.jpg'); 
INSERT INTO Artiste VALUES(DEFAULT, 'Inoue', 'Takehiko'); 
INSERT INTO Manga VALUES(DEFAULT, '17-sai: Hajimete no H', true, 'https://cdn.myanimelist.net/images/manga/3/4976.jpg'); 
INSERT INTO Artiste VALUES(DEFAULT, 'Shinjou', 'Mayu'); 
INSERT INTO Manga VALUES(DEFAULT, 'Angelic Layer', true, 'https://cdn.myanimelist.net/images/manga/3/179060.jpg'); 
INSERT INTO Manga VALUES(DEFAULT, 'D.N.Angel', false, 'https://cdn.myanimelist.net/images/manga/2/145023.jpg'); 
INSERT INTO Artiste VALUES(DEFAULT, 'Sugisaki', 'Yukiru');

INSERT INTO Tome VALUES (2, 1, 'Tome 1', 1, '1990-11-26', 'https://uploads.mangadex.org/covers/801513ba-a712-498c-8f57-cae55b38cc92/0df7ec20-26e9-4703-b3db-d3e664433825.jpg.512.jpg');
INSERT INTO Tome VALUES (2, 2, 'Tome 2', 2, '1991-02-26', 'https://uploads.mangadex.org/covers/801513ba-a712-498c-8f57-cae55b38cc92/fbfea921-434c-479b-bcc5-5c7c0b72cbbc.jpg.512.jpg');
INSERT INTO Tome VALUES (2, 3, 'Tome 3', 3, '1991-10-25', 'https://uploads.mangadex.org/covers/801513ba-a712-498c-8f57-cae55b38cc92/bedb2395-8995-46c7-8fce-70f89dc24b79.jpg.512.jpg');
INSERT INTO Tome VALUES (2, 4, 'Tome 4', 4, '1992-02-26', 'https://uploads.mangadex.org/covers/801513ba-a712-498c-8f57-cae55b38cc92/8aee7c35-b81a-4384-bb6a-a4b4890881e1.jpg.512.jpg');


INSERT INTO Auteur VALUES (DEFAULT, 1);
INSERT INTO Auteur VALUES (DEFAULT, 2);
INSERT INTO Auteur VALUES (DEFAULT, 3);
INSERT INTO Auteur VALUES (DEFAULT, 4);
INSERT INTO Auteur VALUES (DEFAULT, 5);
INSERT INTO Auteur VALUES (DEFAULT, 6);
INSERT INTO Auteur VALUES (DEFAULT, 7);


INSERT INTO Dessinateur VALUES (DEFAULT, 8);
INSERT INTO Dessinateur VALUES (DEFAULT, 9);
INSERT INTO Dessinateur VALUES (DEFAULT, 10);
INSERT INTO Dessinateur VALUES (DEFAULT, 11);
INSERT INTO Dessinateur VALUES (DEFAULT, 12);
INSERT INTO Dessinateur VALUES (DEFAULT, 13);
INSERT INTO Dessinateur VALUES (DEFAULT, 14);

INSERT INTO Editeur VALUES (DEFAULT, 'Delcourt');
INSERT INTO Editeur VALUES (DEFAULT, 'Soleil');
INSERT INTO Editeur VALUES (DEFAULT, 'Tonkam');
INSERT INTO Editeur VALUES (DEFAULT, 'Ankama');
INSERT INTO Editeur VALUES (DEFAULT, 'Glenat');
INSERT INTO Editeur VALUES (DEFAULT, 'Kaze');
INSERT INTO Editeur VALUES (DEFAULT, 'Panini');

INSERT INTO Editer VALUES (1,8);
INSERT INTO Editer VALUES (2,7);
INSERT INTO Editer VALUES (3,6);
INSERT INTO Editer VALUES (4,5);
INSERT INTO Editer VALUES (5,4);
INSERT INTO Editer VALUES (6,3);
INSERT INTO Editer VALUES (7,2);
INSERT INTO Editer VALUES (8,1);

INSERT INTO Creer VALUES(1,1,1);
INSERT INTO Creer VALUES(2,2,2);
INSERT INTO Creer VALUES(3,3,3);
INSERT INTO Creer VALUES(4,4,4);
INSERT INTO Creer VALUES(5,5,5);
INSERT INTO Creer VALUES(6,6,6);
INSERT INTO Creer VALUES(7,7,7);
INSERT INTO Creer VALUES(1,8,1);
INSERT INTO Creer VALUES(2,9,2);
INSERT INTO Creer VALUES(3,10,3);
INSERT INTO Creer VALUES(4,11,4);
INSERT INTO Creer VALUES(5,12,5);
INSERT INTO Creer VALUES(6,13,6);
INSERT INTO Creer VALUES(7,14,7);
INSERT INTO Creer VALUES(1,15,1);
INSERT INTO Creer VALUES(2,16,2);
INSERT INTO Creer VALUES(3,17,3);
INSERT INTO Creer VALUES(4,18,4);

INSERT INTO GenreManga VALUES (1,2);
INSERT INTO GenreManga VALUES(2,4);
INSERT INTO GenreManga VALUES(3,1);
INSERT INTO GenreManga VALUES(4,5);
INSERT INTO GenreManga VALUES(5,4);
INSERT INTO GenreManga VALUES(6,5);
INSERT INTO GenreManga VALUES(7,1);
INSERT INTO GenreManga VALUES(8,2);
INSERT INTO GenreManga VALUES(9,3);
INSERT INTO GenreManga VALUES(10,4);
INSERT INTO GenreManga VALUES(11,5);
INSERT INTO GenreManga VALUES(12,3);
INSERT INTO GenreManga VALUES(13,4);
INSERT INTO GenreManga VALUES(14,1);
INSERT INTO GenreManga VALUES(15,5);
INSERT INTO GenreManga VALUES(16,3);
INSERT INTO GenreManga VALUES(17,4);
INSERT INTO GenreManga VALUES(18,2);
     