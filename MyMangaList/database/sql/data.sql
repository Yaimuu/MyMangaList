INSERT INTO Utilisateur(Id_Utilisateur, name, email, password, imageProfile) VALUES(DEFAULT, 'toto', 'toto@tata.fr', 'toto', 'https://cdn.myanimelist.net/images/manga/3/179023.jpg?s=e79cbbeb57b734d4b5f6d29f94162627');

INSERT INTO Manga VALUES(DEFAULT, 'Shingeki no Kyojin', true, 'https://cdn.myanimelist.net/images/manga/2/37846.jpg?s=bdda4d1c1d85237aead7d545f876c077'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.3 FROM Manga WHERE titre = 'Shingeki no Kyojin';
INSERT INTO Manga VALUES(DEFAULT, 'Berserk', true, 'https://cdn.myanimelist.net/images/manga/1/157897.jpg?s=f03b5f8bfeb0b0962b7d5e7cb9a8d0d3'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.69 FROM Manga WHERE titre = 'Berserk';
INSERT INTO Manga VALUES(DEFAULT, 'One Piece', true, 'https://cdn.myanimelist.net/images/manga/3/55539.jpg?s=b4d9e935b7152f0c9e69b34a7797fe02'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.57 FROM Manga WHERE titre = 'One Piece';
INSERT INTO Manga VALUES(DEFAULT, 'Tokyo Ghoul', true, 'https://cdn.myanimelist.net/images/manga/3/114037.jpg?s=05189a66837fded55ee49a4eb8764350'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.26 FROM Manga WHERE titre = 'Tokyo Ghoul';
INSERT INTO Manga VALUES(DEFAULT, 'Naruto', true, 'https://cdn.myanimelist.net/images/manga/3/117681.jpg?s=6dc21454a32172a2e1783bd664668a22'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.03 FROM Manga WHERE titre = 'Naruto';
INSERT INTO Manga VALUES(DEFAULT, 'One Punch-Man', true, 'https://cdn.myanimelist.net/images/manga/3/80661.jpg?s=3eb9cd0c329dacd00f6c318ee0f5945f'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.365 FROM Manga WHERE titre = 'One Punch-Man';
INSERT INTO Manga VALUES(DEFAULT, 'Boku no Hero Academia', true, 'https://cdn.myanimelist.net/images/manga/1/209370.jpg?s=2ecbe2700c0d80f4ee08692d7efeac4c'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.14 FROM Manga WHERE titre = 'Boku no Hero Academia';
INSERT INTO Manga VALUES(DEFAULT, 'Death Note', true, 'https://cdn.myanimelist.net/images/manga/2/54453.jpg?s=64e676c2d2ea8370b400a0503db2bc46'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.36 FROM Manga WHERE titre = 'Death Note';
INSERT INTO Manga VALUES(DEFAULT, 'Bleach', true, 'https://cdn.myanimelist.net/images/manga/2/180089.jpg?s=6370e41455cb4d19c56a475065a69cde'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 3.835 FROM Manga WHERE titre = 'Bleach';
INSERT INTO Manga VALUES(DEFAULT, 'Oyasumi Punpun', true, 'https://cdn.myanimelist.net/images/manga/3/164420.jpg?s=76cffa4b8fdbfedb7a554a5a5695a47a'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.525 FROM Manga WHERE titre = 'Oyasumi Punpun';
INSERT INTO Manga VALUES(DEFAULT, 'Horimiya', true, 'https://cdn.myanimelist.net/images/manga/2/245008.jpg?s=5462d4cb470126a5c9f229d82656eaec'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.235 FROM Manga WHERE titre = 'Horimiya';
INSERT INTO Manga VALUES(DEFAULT, 'Fairy Tail', true, 'https://cdn.myanimelist.net/images/manga/3/198604.jpg?s=03c4ce0761b0e458e45e2015698aedf9'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 3.805 FROM Manga WHERE titre = 'Fairy Tail';
INSERT INTO Manga VALUES(DEFAULT, 'Fullmetal Alchemist', true, 'https://cdn.myanimelist.net/images/manga/3/243675.jpg?s=8cb0a643f8a7597514447f2dd0e4ffc2'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.54 FROM Manga WHERE titre = 'Fullmetal Alchemist';
INSERT INTO Manga VALUES(DEFAULT, 'Solo Leveling', true, 'https://cdn.myanimelist.net/images/manga/3/222295.jpg?s=b3abea95ceaccea8adf223bd0e4047b6'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.43 FROM Manga WHERE titre = 'Solo Leveling';
INSERT INTO Manga VALUES(DEFAULT, 'Yakusoku no Neverland', true, 'https://cdn.myanimelist.net/images/manga/3/186922.jpg?s=fdb8d7cec23c00593d8ae08ad14dd89d'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.135 FROM Manga WHERE titre = 'Yakusoku no Neverland';
INSERT INTO Manga VALUES(DEFAULT, 'Kimetsu no Yaiba', true, 'https://cdn.myanimelist.net/images/manga/3/179023.jpg?s=e79cbbeb57b734d4b5f6d29f94162627'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.135 FROM Manga WHERE titre = 'Kimetsu no Yaiba';
INSERT INTO Manga VALUES(DEFAULT, 'Koe no Katachi', true, 'https://cdn.myanimelist.net/images/manga/1/120529.jpg?s=7d7fdc308409589ca579b5a9376effd9'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.43 FROM Manga WHERE titre = 'Koe no Katachi';
INSERT INTO Manga VALUES(DEFAULT, 'Tokyo Ghoul:re', true, 'https://cdn.myanimelist.net/images/manga/3/145997.jpg?s=5fd6213483fd2efcff049d83bc49ca75'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.11 FROM Manga WHERE titre = 'Tokyo Ghoul:re';
INSERT INTO Manga VALUES(DEFAULT, 'Chainsaw Man', true, 'https://cdn.myanimelist.net/images/manga/3/216464.jpg?s=be8b827c88ca462abed2d034b1a98dae'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.31 FROM Manga WHERE titre = 'Chainsaw Man';
INSERT INTO Manga VALUES(DEFAULT, 'Vagabond', true, 'https://cdn.myanimelist.net/images/manga/2/181787.jpg?s=bbd3ff81b5d8e50781531c60cd68773f'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.56 FROM Manga WHERE titre = 'Vagabond';
INSERT INTO Manga VALUES(DEFAULT, 'Hunter x Hunter', true, 'https://cdn.myanimelist.net/images/manga/2/192445.jpg?s=cbd958f9856b0815b80482e980068f09'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.34 FROM Manga WHERE titre = 'Hunter x Hunter';
INSERT INTO Manga VALUES(DEFAULT, 'Vinland Saga', true, 'https://cdn.myanimelist.net/images/manga/2/188925.jpg?s=18b1d30b74bf96b476068901f579e408'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.465 FROM Manga WHERE titre = 'Vinland Saga';
INSERT INTO Manga VALUES(DEFAULT, 'Deadman Wonderland', true, 'https://cdn.myanimelist.net/images/manga/3/186275.jpg?s=ff3776222b973d2387da90f92e5b9a40'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.01 FROM Manga WHERE titre = 'Deadman Wonderland';
INSERT INTO Manga VALUES(DEFAULT, 'Gantz', true, 'https://cdn.myanimelist.net/images/manga/4/157936.jpg?s=7dba6353cf3e8a6a33b774e69a9389cb'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.065 FROM Manga WHERE titre = 'Gantz';
INSERT INTO Manga VALUES(DEFAULT, 'Kaguya-sama wa Kokurasetai: Tensai-tachi no Renai Zunousen', true, 'https://cdn.myanimelist.net/images/manga/3/188896.jpg?s=107a5af07f0e6992faa286f94596f231'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.47 FROM Manga WHERE titre = 'Kaguya-sama wa Kokurasetai: Tensai-tachi no Renai Zunousen';
INSERT INTO Manga VALUES(DEFAULT, 'Nisekoi', true, 'https://cdn.myanimelist.net/images/manga/1/181212.jpg?s=1eabb8ef5077becd88e991c8d0236783'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 3.87 FROM Manga WHERE titre = 'Nisekoi';
INSERT INTO Manga VALUES(DEFAULT, 'Shokugeki no Souma', true, 'https://cdn.myanimelist.net/images/manga/1/115803.jpg?s=81e873b30b25fb95aac05da2f3082bec'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.01 FROM Manga WHERE titre = 'Shokugeki no Souma';
INSERT INTO Manga VALUES(DEFAULT, 'Komi-san wa, Comyushou desu.', true, 'https://cdn.myanimelist.net/images/manga/3/188962.jpg?s=d16052498e2147d8a71952cee752a5ad'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.14 FROM Manga WHERE titre = 'Komi-san wa, Comyushou desu.';
INSERT INTO Manga VALUES(DEFAULT, 'Nanatsu no Taizai', true, 'https://cdn.myanimelist.net/images/manga/2/153111.jpg?s=2c89018c27b7866657c0ae33c208a1d2'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 3.83 FROM Manga WHERE titre = 'Nanatsu no Taizai';
INSERT INTO Manga VALUES(DEFAULT, 'JoJo no Kimyou na Bouken Part 7: Steel Ball Run', true, 'https://cdn.myanimelist.net/images/manga/3/179882.jpg?s=dac8109140406ca296cf4946296b5037'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.615 FROM Manga WHERE titre = 'JoJo no Kimyou na Bouken Part 7: Steel Ball Run';
INSERT INTO Manga VALUES(DEFAULT, 'Jujutsu Kaisen', true, 'https://cdn.myanimelist.net/images/manga/3/210341.jpg?s=de72e44283fecf6cc443b4d3cdc92df8'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.255 FROM Manga WHERE titre = 'Jujutsu Kaisen';
INSERT INTO Manga VALUES(DEFAULT, 'Akame ga Kill!', true, 'https://cdn.myanimelist.net/images/manga/1/187665.jpg?s=1c270e5900141b65a8b8375cdc44904f'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 3.94 FROM Manga WHERE titre = 'Akame ga Kill!';
INSERT INTO Manga VALUES(DEFAULT, 'Soul Eater', true, 'https://cdn.myanimelist.net/images/manga/1/159808.jpg?s=07c4af86e98319298ef532c085b37036'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.045 FROM Manga WHERE titre = 'Soul Eater';
INSERT INTO Manga VALUES(DEFAULT, 'Bakuman.', true, 'https://cdn.myanimelist.net/images/manga/1/208974.jpg?s=8a17bc2d7d4a3edf7988c1e6e2933581'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.215 FROM Manga WHERE titre = 'Bakuman.';
INSERT INTO Manga VALUES(DEFAULT, 'Noragami', true, 'https://cdn.myanimelist.net/images/manga/2/90899.jpg?s=8be01bc701d79415ad3b8dca1cf6b430'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.225 FROM Manga WHERE titre = 'Noragami';
INSERT INTO Manga VALUES(DEFAULT, 'Monster', true, 'https://cdn.myanimelist.net/images/manga/3/54525.jpg?s=c660994ac8ba790d9e6bb2400f7c73cd'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.545 FROM Manga WHERE titre = 'Monster';
INSERT INTO Manga VALUES(DEFAULT, 'Haikyuu!!', true, 'https://cdn.myanimelist.net/images/manga/4/89519.jpg?s=ad82f09ca07db963223d9c5d025454f3'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.45 FROM Manga WHERE titre = 'Haikyuu!!';
INSERT INTO Manga VALUES(DEFAULT, '20th Century Boys', true, 'https://cdn.myanimelist.net/images/manga/1/54437.jpg?s=2dfac509e795f7cc672f1b4c4930bf92'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.47 FROM Manga WHERE titre = '20th Century Boys';
INSERT INTO Manga VALUES(DEFAULT, 'Ao Haru Ride', true, 'https://cdn.myanimelist.net/images/manga/1/62369.jpg?s=d164302e5e6458851fe89df62211a4f2'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.095 FROM Manga WHERE titre = 'Ao Haru Ride';
INSERT INTO Manga VALUES(DEFAULT, 'JoJo no Kimyou na Bouken Part 6: Stone Ocean', true, 'https://cdn.myanimelist.net/images/manga/3/75929.jpg?s=c7fc82daa0c446512544220416ef7552'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.09 FROM Manga WHERE titre = 'JoJo no Kimyou na Bouken Part 6: Stone Ocean';
INSERT INTO Manga VALUES(DEFAULT, 'Uzumaki', true, 'https://cdn.myanimelist.net/images/manga/3/185972.jpg?s=8d5359a5c3f7369167bdedb9653de9e8'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.085 FROM Manga WHERE titre = 'Uzumaki';
INSERT INTO Manga VALUES(DEFAULT, 'Claymore', true, 'https://cdn.myanimelist.net/images/manga/5/25982.jpg?s=066ae69ac2050a16285dce7c9464f1ae'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.16 FROM Manga WHERE titre = 'Claymore';
INSERT INTO Manga VALUES(DEFAULT, 'Kaichou wa Maid-sama!', true, 'https://cdn.myanimelist.net/images/manga/2/120073.jpg?s=2c7a3343b6283d1c17e97598f0237715'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.205 FROM Manga WHERE titre = 'Kaichou wa Maid-sama!';
INSERT INTO Manga VALUES(DEFAULT, 'Pandora Hearts', true, 'https://cdn.myanimelist.net/images/manga/5/185498.jpg?s=09ec431f855e51918ef49e7111e180b2'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.3 FROM Manga WHERE titre = 'Pandora Hearts';
INSERT INTO Manga VALUES(DEFAULT, 'Ao no Exorcist', true, 'https://cdn.myanimelist.net/images/manga/2/188810.jpg?s=58d78a05bea87f51b2e922ec3b0168c4'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 3.975 FROM Manga WHERE titre = 'Ao no Exorcist';
INSERT INTO Manga VALUES(DEFAULT, 'Kuroshitsuji', true, 'https://cdn.myanimelist.net/images/manga/1/28128.jpg?s=2dfc4a27d6c0e6aa126fc3e6ddb889da'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.22 FROM Manga WHERE titre = 'Kuroshitsuji';
INSERT INTO Manga VALUES(DEFAULT, 'Black Clover', true, 'https://cdn.myanimelist.net/images/manga/2/166254.jpg?s=fe7cfade4ab7915a02f1ec61732f2b4f'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 3.875 FROM Manga WHERE titre = 'Black Clover';
INSERT INTO Manga VALUES(DEFAULT, 'D.Gray-man', true, 'https://cdn.myanimelist.net/images/manga/3/28084.jpg?s=f3286e098586e132add9a0909e169a32'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.145 FROM Manga WHERE titre = 'D.Gray-man';
INSERT INTO Manga VALUES(DEFAULT, 'ReLIFE', true, 'https://cdn.myanimelist.net/images/manga/2/171573.jpg?s=a03a56ed3f40a2b7d1f8eaed154b61e0'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.335 FROM Manga WHERE titre = 'ReLIFE';
INSERT INTO Manga VALUES(DEFAULT, 'Ansatsu Kyoushitsu', true, 'https://cdn.myanimelist.net/images/manga/3/243932.jpg?s=025174705e51c0d6e238468a68ac66a2'); 
INSERT INTO MangaLectureFini (Id_Utilisateur, Id_Manga, note) SELECT 1, Id_Manga, 4.145 FROM Manga WHERE titre = 'Ansatsu Kyoushitsu';


INSERT INTO Artiste VALUES(DEFAULT, 'Urasawa', 'Naoki'); 
INSERT INTO Genre VALUES(DEFAULT, 'Mystery'); 
INSERT INTO Artiste VALUES(DEFAULT, 'Miura', 'Kentarou'); 
INSERT INTO Artiste VALUES(DEFAULT, 'Urasawa', 'Naoki'); 
INSERT INTO Artiste VALUES(DEFAULT, 'Ashinano', 'Hitoshi'); 
INSERT INTO Genre VALUES(DEFAULT, 'Drama'); 
INSERT INTO Artiste VALUES(DEFAULT, 'Morikawa', 'George'); 
INSERT INTO Artiste VALUES(DEFAULT, 'Tanemura', 'Arina'); 
INSERT INTO Genre VALUES(DEFAULT, 'Comedy'); 
INSERT INTO Artiste VALUES(DEFAULT, 'Kishimoto', 'Masashi'); 
INSERT INTO Artiste VALUES(DEFAULT, 'Kubo', 'Tite'); 
INSERT INTO Artiste VALUES(DEFAULT, 'Oda', 'Eiichiro'); 
INSERT INTO Genre VALUES(DEFAULT, 'Action'); 
INSERT INTO Artiste VALUES(DEFAULT, 'Obata', 'Takeshi'); 
INSERT INTO Artiste VALUES(DEFAULT, 'Tanemura', 'Arina'); 
INSERT INTO Genre VALUES(DEFAULT, 'Adventure'); 
INSERT INTO Artiste VALUES(DEFAULT, 'Inoue', 'Takehiko'); 
INSERT INTO Artiste VALUES(DEFAULT, 'Shinjou', 'Mayu'); 
INSERT INTO Artiste VALUES(DEFAULT, 'Sugisaki', 'Yukiru');

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

INSERT INTO Editer VALUES (1,4);
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


-- Tomes Shingeki no Kyojin (id=1)
INSERT INTO Tome VALUES (1, DEFAULT, 'Tome 1', 1, '2010-03-17', 'https://uploads.mangadex.org/covers/304ceac3-8cdb-4fe7-acf7-2b6ff7a60613/a6a8ae55-5e15-43b9-bfcc-cd398bd317cb.jpg.512.jpg');
INSERT INTO Tome VALUES (1, DEFAULT, 'Tome 2', 2, '2010-07-16', 'https://uploads.mangadex.org/covers/304ceac3-8cdb-4fe7-acf7-2b6ff7a60613/3f2b9c2d-242d-4022-aa86-1494921a4140.jpg.512.jpg');
INSERT INTO Tome VALUES (1, DEFAULT, 'Tome 3', 3, '2010-12-09', 'https://uploads.mangadex.org/covers/304ceac3-8cdb-4fe7-acf7-2b6ff7a60613/40e86dcb-c49f-441b-909d-53fa84917486.jpg.512.jpg');
INSERT INTO Tome VALUES (1, DEFAULT, 'Tome 4', 4, '2011-04-08', 'https://uploads.mangadex.org/covers/304ceac3-8cdb-4fe7-acf7-2b6ff7a60613/e5551db5-510d-4ec2-bdfb-4d57c8782519.jpg.512.jpg');


-- Tomes Berserk (id=2)
INSERT INTO Tome VALUES (2, DEFAULT, 'Tome 1', 1, '1990-11-26', 'https://uploads.mangadex.org/covers/801513ba-a712-498c-8f57-cae55b38cc92/0df7ec20-26e9-4703-b3db-d3e664433825.jpg.512.jpg');
INSERT INTO Tome VALUES (2, DEFAULT, 'Tome 2', 2, '1991-02-26', 'https://uploads.mangadex.org/covers/801513ba-a712-498c-8f57-cae55b38cc92/fbfea921-434c-479b-bcc5-5c7c0b72cbbc.jpg.512.jpg');
INSERT INTO Tome VALUES (2, DEFAULT, 'Tome 3', 3, '1991-10-25', 'https://uploads.mangadex.org/covers/801513ba-a712-498c-8f57-cae55b38cc92/bedb2395-8995-46c7-8fce-70f89dc24b79.jpg.512.jpg');
INSERT INTO Tome VALUES (2, DEFAULT, 'Tome 4', 4, '1992-02-26', 'https://uploads.mangadex.org/covers/801513ba-a712-498c-8f57-cae55b38cc92/8aee7c35-b81a-4384-bb6a-a4b4890881e1.jpg.512.jpg');

-- Tomes One Piece (id=3)
INSERT INTO Tome VALUES (3, DEFAULT, 'Tome 1', 1, '1997-12-24', 'https://uploads.mangadex.org/covers/a1c7c817-4e59-43b7-9365-09675a149a6f/3573d948-fe54-4b81-9293-c74f5bb34c91.jpg.512.jpg');
INSERT INTO Tome VALUES (3, DEFAULT, 'Tome 2', 2, '1997-12-24', 'https://uploads.mangadex.org/covers/a1c7c817-4e59-43b7-9365-09675a149a6f/673d3da4-4e17-44d5-8012-38bbf85b18a3.jpg.512.jpg');
INSERT INTO Tome VALUES (3, DEFAULT, 'Tome 3', 3, '1997-12-24', 'https://uploads.mangadex.org/covers/a1c7c817-4e59-43b7-9365-09675a149a6f/4f927923-09c8-47af-9109-38e7e759bc96.jpg.512.jpg');
INSERT INTO Tome VALUES (3, DEFAULT, 'Tome 4', 4, '1997-12-24', 'https://uploads.mangadex.org/covers/a1c7c817-4e59-43b7-9365-09675a149a6f/7c4368ba-5d67-4d36-b3d6-d904a57f268f.jpg.512.jpg');

-- Tomes Tokyo Ghoul (id=4)
INSERT INTO Tome VALUES (4, DEFAULT, 'Tome 1', 1, '2012-02-17', 'https://uploads.mangadex.org/covers/6a1d1cb1-ecd5-40d9-89ff-9d88e40b136b/040e8ae9-4ddd-49d2-8986-56782b391714.jpg.512.jpg');
INSERT INTO Tome VALUES (4, DEFAULT, 'Tome 2', 2, '2012-03-19', 'https://uploads.mangadex.org/covers/6a1d1cb1-ecd5-40d9-89ff-9d88e40b136b/d1f5b63b-87c2-4a05-a018-fd380a623b86.jpg.512.jpg');
INSERT INTO Tome VALUES (4, DEFAULT, 'Tome 3', 3, '2012-06-19', 'https://uploads.mangadex.org/covers/6a1d1cb1-ecd5-40d9-89ff-9d88e40b136b/ef89128c-0b19-4c7a-996d-50d22832f39e.jpg.512.jpg');
INSERT INTO Tome VALUES (4, DEFAULT, 'Tome 4', 4, '2012-09-19', 'https://uploads.mangadex.org/covers/6a1d1cb1-ecd5-40d9-89ff-9d88e40b136b/bdab71f2-1f1d-46ab-969f-f4792540c561.jpg.512.jpg');

-- Tomes Naruto (id=5)
INSERT INTO Tome VALUES (5, DEFAULT, 'Tome 1', 1, '2000-03-03', 'https://uploads.mangadex.org/covers/6b1eb93e-473a-4ab3-9922-1a66d2a29a4a/c5a3090c-4ca0-40a2-9102-e0ee0c6dac15.jpg.512.jpg');
INSERT INTO Tome VALUES (5, DEFAULT, 'Tome 2', 2, '2000-06-02', 'https://uploads.mangadex.org/covers/6b1eb93e-473a-4ab3-9922-1a66d2a29a4a/e4da8120-c450-43b7-8125-9f1c6be2800c.jpg.512.jpg');
INSERT INTO Tome VALUES (5, DEFAULT, 'Tome 3', 3, '2000-08-04', 'https://uploads.mangadex.org/covers/6b1eb93e-473a-4ab3-9922-1a66d2a29a4a/8137489b-5cf3-4883-b055-cddaa0f06788.jpg.512.jpg');
INSERT INTO Tome VALUES (5, DEFAULT, 'Tome 4', 4, '2000-10-04', 'https://uploads.mangadex.org/covers/6b1eb93e-473a-4ab3-9922-1a66d2a29a4a/9a838405-c2e2-4c4a-a666-83f2193a9071.jpg.512.jpg');

-- Tomes One Punch-Man (id=6)
INSERT INTO Tome VALUES (6, DEFAULT, 'Tome 1', 1, '2012-12-04', 'https://uploads.mangadex.org/covers/d8a959f7-648e-4c8d-8f23-f1f3f8e129f3/dfc14954-f855-47a3-9401-4abe2a78621a.jpg.512.jpg');
INSERT INTO Tome VALUES (6, DEFAULT, 'Tome 2', 2, '2012-12-04', 'https://uploads.mangadex.org/covers/d8a959f7-648e-4c8d-8f23-f1f3f8e129f3/f5b9fa82-b9cc-43c9-b206-d3cfcbc447ad.jpg.512.jpg');
INSERT INTO Tome VALUES (6, DEFAULT, 'Tome 3', 3, '2013-04-04', 'https://uploads.mangadex.org/covers/d8a959f7-648e-4c8d-8f23-f1f3f8e129f3/5e85cbd3-efcb-4954-8146-785ea6466dc5.jpg.512.jpg');
INSERT INTO Tome VALUES (6, DEFAULT, 'Tome 4', 4, '2013-08-02', 'https://uploads.mangadex.org/covers/d8a959f7-648e-4c8d-8f23-f1f3f8e129f3/18d11783-04c7-4e44-a949-1d5c7ac2838f.jpg.512.jpg');

-- Tomes Boku no Hero Academia (id=7)
INSERT INTO Tome VALUES (7, DEFAULT, 'Tome 1', 1, '2014-11-04', 'https://uploads.mangadex.org/covers/4f3bcae4-2d96-4c9d-932c-90181d9c873e/c7a7101a-8e22-442b-a1db-55ba9ef5b1ab.jpg.512.jpg');
INSERT INTO Tome VALUES (7, DEFAULT, 'Tome 2', 2, '2015-01-05', 'https://uploads.mangadex.org/covers/4f3bcae4-2d96-4c9d-932c-90181d9c873e/746a215e-3a1e-4bde-a86c-1bbfcdac37aa.png.512.jpg');
INSERT INTO Tome VALUES (7, DEFAULT, 'Tome 3', 3, '2015-04-04', 'https://uploads.mangadex.org/covers/4f3bcae4-2d96-4c9d-932c-90181d9c873e/43d1808b-4b15-4ac6-985f-ea6a1af67a0c.png.512.jpg');
INSERT INTO Tome VALUES (7, DEFAULT, 'Tome 4', 4, '2015-06-04', 'https://uploads.mangadex.org/covers/4f3bcae4-2d96-4c9d-932c-90181d9c873e/f915b409-c2a5-475c-92b4-71d0720ec52b.jpg.512.jpg');

-- Tomes Death Note (id=8)
INSERT INTO Tome VALUES (8, DEFAULT, 'Tome 1', 1, '2004-04-02', 'https://uploads.mangadex.org/covers/75ee72ab-c6bf-4b87-badd-de839156934c/8f45c074-5512-4679-a14b-cac837c87171.jpg.512.jpg');
INSERT INTO Tome VALUES (8, DEFAULT, 'Tome 2', 2, '2004-07-02', 'https://uploads.mangadex.org/covers/75ee72ab-c6bf-4b87-badd-de839156934c/14f108ed-7398-4396-a026-7a329c04fc28.jpg.512.jpg');
INSERT INTO Tome VALUES (8, DEFAULT, 'Tome 3', 3, '2004-09-03', 'https://uploads.mangadex.org/covers/75ee72ab-c6bf-4b87-badd-de839156934c/a2293788-279e-4849-ab75-dc324ee36161.jpg.512.jpg');
INSERT INTO Tome VALUES (8, DEFAULT, 'Tome 4', 4, '2004-11-04', 'https://uploads.mangadex.org/covers/75ee72ab-c6bf-4b87-badd-de839156934c/36a4d59f-042e-48d0-bdd3-77d6e0a4040e.jpg.512.jpg');

-- Tomes Bleach (id=9)
INSERT INTO Tome VALUES (9, DEFAULT, 'Tome 1', 1, '2002-01-05', 'https://uploads.mangadex.org/covers/239d6260-d71f-43b0-afff-074e3619e3de/6e94210b-f378-4146-82d0-66d5c04ca6b5.jpg.512.jpg');
INSERT INTO Tome VALUES (9, DEFAULT, 'Tome 2', 2, '2002-03-04', 'https://uploads.mangadex.org/covers/239d6260-d71f-43b0-afff-074e3619e3de/885eb2b7-4b0f-4f84-84ec-6983a1b29dae.jpg.512.jpg');
INSERT INTO Tome VALUES (9, DEFAULT, 'Tome 3', 3, '2002-06-04', 'https://uploads.mangadex.org/covers/239d6260-d71f-43b0-afff-074e3619e3de/6643c901-43b8-4b79-9fff-bcfd2d284a13.jpg.512.jpg');
INSERT INTO Tome VALUES (9, DEFAULT, 'Tome 4', 4, '2002-09-04', 'https://uploads.mangadex.org/covers/239d6260-d71f-43b0-afff-074e3619e3de/6fbf0a4a-10b8-4314-a3cc-f9af88e815eb.jpg.512.jpg');

-- Tomes Oyasumi Punpun (id=10)
INSERT INTO Tome VALUES (10, DEFAULT, 'Tome 1', 1, '2007-08-03', 'https://uploads.mangadex.org/covers/4301d363-ee02-43f4-ae24-4cbf29a74830/0295431e-ccb9-4599-900f-0a1bc7380561.jpg.512.jpg');
INSERT INTO Tome VALUES (10, DEFAULT, 'Tome 2', 2, '2007-12-05', 'https://uploads.mangadex.org/covers/4301d363-ee02-43f4-ae24-4cbf29a74830/8bdd7847-b634-453e-93ab-654cf1612e8d.jpg.512.jpg');
INSERT INTO Tome VALUES (10, DEFAULT, 'Tome 3', 3, '2008-06-05', 'https://uploads.mangadex.org/covers/4301d363-ee02-43f4-ae24-4cbf29a74830/1067c320-812c-4d0d-8301-740429b332f5.jpg.512.jpg');
INSERT INTO Tome VALUES (10, DEFAULT, 'Tome 4', 4, '2009-01-30', 'https://uploads.mangadex.org/covers/4301d363-ee02-43f4-ae24-4cbf29a74830/6d31fe58-d8f9-437f-8739-cc0f00cffa80.jpg.512.jpg');

-- Tomes Horimiya (id=11)
INSERT INTO Tome VALUES (11, DEFAULT, 'Tome 1', 1, '2012-03-27', 'https://uploads.mangadex.org/covers/a25e46ec-30f7-4db6-89df-cacbc1d9a900/888ac8b4-0b0f-45e8-8592-fe6681e14f53.png.512.jpg');
INSERT INTO Tome VALUES (11, DEFAULT, 'Tome 2', 2, '2012-11-27', 'https://uploads.mangadex.org/covers/a25e46ec-30f7-4db6-89df-cacbc1d9a900/ccb1cbe5-81e8-4630-b378-593a47362146.png.512.jpg');
INSERT INTO Tome VALUES (11, DEFAULT, 'Tome 3', 3, '2013-04-27', 'https://uploads.mangadex.org/covers/a25e46ec-30f7-4db6-89df-cacbc1d9a900/89b9c77d-0e9d-4438-a7e1-7f7e9c202756.png.512.jpg');
INSERT INTO Tome VALUES (11, DEFAULT, 'Tome 4', 4, '2013-10-26', 'https://uploads.mangadex.org/covers/a25e46ec-30f7-4db6-89df-cacbc1d9a900/89435919-e6d9-4a3c-b787-9bff308347d9.png.512.jpg');

-- Tomes Fairy Tail (id=12)
INSERT INTO Tome VALUES (12, DEFAULT, 'Tome 1', 1, '2006-12-15', 'https://uploads.mangadex.org/covers/227e3f72-863f-46f9-bafe-c43104ca29ee/396f9cad-0035-420e-aa28-72183de1ebb5.jpg.512.jpg');
INSERT INTO Tome VALUES (12, DEFAULT, 'Tome 2', 2, '2007-01-17', 'https://uploads.mangadex.org/covers/227e3f72-863f-46f9-bafe-c43104ca29ee/fd7052cc-eb07-4069-aede-bf8afb2329b7.jpg.512.jpg');
INSERT INTO Tome VALUES (12, DEFAULT, 'Tome 3', 3, '2007-04-13', 'https://uploads.mangadex.org/covers/227e3f72-863f-46f9-bafe-c43104ca29ee/88cb9404-4f0f-4610-93b1-6b519f5b173a.jpg.512.jpg');
INSERT INTO Tome VALUES (12, DEFAULT, 'Tome 4', 4, '2007-05-17', 'https://uploads.mangadex.org/covers/227e3f72-863f-46f9-bafe-c43104ca29ee/ca98746e-2bb3-40f0-a8a8-d3d3b8234047.jpg.512.jpg');

-- Tomes Fullmetal Alchemist (id=13)
INSERT INTO Tome VALUES (13, DEFAULT, 'Tome 1', 1, '2002-01-01', 'https://uploads.mangadex.org/covers/dd8a907a-3850-4f95-ba03-ba201a8399e3/a9cd0207-1b86-4738-a2b5-3575c32d5315.jpg.512.jpg');

-- Tomes Solo Leveling (id=14)
INSERT INTO Tome VALUES (14, DEFAULT, 'Tome 1', 1, '2019-09-26', 'https://uploads.mangadex.org/covers/32d76d19-8a05-4db0-9fc2-e0b0648fe9d0/20952a33-eb69-42e7-8719-af9a37828281.jpg.512.jpg');

-- Tomes Yakusoku no Neverland (id=15)
INSERT INTO Tome VALUES (15, DEFAULT, 'Tome 1', 1, '2016-12-02', 'https://uploads.mangadex.org/covers/46e9cae5-4407-4576-9b9e-4c517ae9298e/97b244ef-5179-4e21-bbba-099c5f129bda.jpg.512.jpg');

-- Tomes Kimetsu no Yaiba (id=16)
INSERT INTO Tome VALUES (16, DEFAULT, 'Tome 1', 1, '2016-06-03', 'https://uploads.mangadex.org/covers/789642f8-ca89-4e4e-8f7b-eee4d17ea08b/6fa2282f-282b-41cf-8ab7-fbdbeb822bd5.jpg.512.jpg');

-- Tomes Koe no Katachi (id=17)
INSERT INTO Tome VALUES (17, DEFAULT, 'Tome 1', 1, '2013-11-15', 'https://uploads.mangadex.org/covers/4bde51e5-e420-45a4-98e9-7405bf2d59ff/456391d7-33c1-4b0e-bace-3fa3b89d29f9.jpg.512.jpg');

-- Tomes Tokyo Ghoul:re (id=18)
INSERT INTO Tome VALUES (18, DEFAULT, 'Tome 1', 1, '2014-12-19', 'https://uploads.mangadex.org/covers/59f47645-66a9-443e-8228-788313c3ae3c/d335cd7f-00ff-4109-8d34-042822155d94.jpg.512.jpg');

-- Tomes Chainsaw Man (id=19)
INSERT INTO Tome VALUES (19, DEFAULT, 'Tome 1', 1, '2019-03-04', 'https://uploads.mangadex.org/covers/a77742b1-befd-49a4-bff5-1ad4e6b0ef7b/59ade418-3590-4d7b-91b0-24c8feaa845f.png.512.jpg');

-- Tomes Vagabond (id=20)
INSERT INTO Tome VALUES (20, DEFAULT, 'Tome 1', 1, '1999-03-23', 'https://uploads.mangadex.org/covers/d1a9fdeb-f713-407f-960c-8326b586e6fd/dcfe20c2-fdf6-4594-9621-59a43e4b5a0e.jpg.512.jpg');

-- Tomes Hunter x Hunter (id=21)
INSERT INTO Tome VALUES (21, DEFAULT, 'Tome 1', 1, '1998-06-04', 'https://uploads.mangadex.org/covers/db692d58-4b13-4174-ae8c-30c515c0689c/aa112927-f1e5-4fe4-a4db-7fd4a1536e3c.jpg.512.jpg');

-- Tomes Vinland Saga (id=22)
INSERT INTO Tome VALUES (22, DEFAULT, 'Tome 1', 1, '2006-06-23', 'https://uploads.mangadex.org/covers/5d1fc77e-706a-4fc5-bea8-486c9be0145d/1e1daf8f-f208-486d-88b9-c96a009d9f91.jpg.512.jpg');

-- Tomes Deadman Wonderland (id=23)
INSERT INTO Tome VALUES (23, DEFAULT, 'Tome 1', 1, '2007-06-26', 'https://uploads.mangadex.org/covers/b96e5e23-0017-4e89-a582-ddaa261bd21d/7091e61f-2063-4b60-bde3-6d99e17d25d4.jpg.512.jpg');

-- Tomes Gantz (id=24)
INSERT INTO Tome VALUES (24, DEFAULT, 'Tome 1', 1, '2000-12-11', 'https://uploads.mangadex.org/covers/c196dcc8-d942-4abf-987f-bfa244650585/4f36d25c-0ecc-4d5b-abe7-c1f72a828805.jpg.512.jpg');

-- Tomes Kaguya-Sama wa Kokurasetai: Tensai-tachi no Renai Zunousen (id=25)
INSERT INTO Tome VALUES (25, DEFAULT, 'Tome 1', 1, '2016-03-18', 'https://uploads.mangadex.org/covers/37f5cce0-8070-4ada-96e5-fa24b1bd4ff9/d6c6cdbe-1a46-47b3-8f96-0e0c3049d059.png.512.jpg');
INSERT INTO Tome VALUES (25, DEFAULT, 'Tome 2', 2, '2016-07-19', 'https://uploads.mangadex.org/covers/37f5cce0-8070-4ada-96e5-fa24b1bd4ff9/fce76ffe-2f49-40f9-a9a5-11d96e108478.png.512.jpg');
INSERT INTO Tome VALUES (25, DEFAULT, 'Tome 3', 3, '2016-10-19', 'https://uploads.mangadex.org/covers/37f5cce0-8070-4ada-96e5-fa24b1bd4ff9/d9af38ca-d404-45b0-a669-e1253a1d2672.png.512.jpg');
INSERT INTO Tome VALUES (25, DEFAULT, 'Tome 4', 4, '2017-01-19', 'https://uploads.mangadex.org/covers/37f5cce0-8070-4ada-96e5-fa24b1bd4ff9/46c44825-0586-4583-9ce0-0a5c06234d66.png.512.jpg');

-- Tomes Nisekoi (id=26)
INSERT INTO Tome VALUES (26, DEFAULT, 'Tome 1', 1, '2012-05-02', 'https://uploads.mangadex.org/covers/ce16b1c3-d6bb-41e0-8671-d8b065248ba2/decafe0e-8654-451b-ac09-244c6eda7346.jpg.512.jpg');

-- Tomes Shokugeki no Souma (id=27)
INSERT INTO Tome VALUES (27, DEFAULT, 'Tome 1', 1, '2013-04-04', 'https://uploads.mangadex.org/covers/5f20891f-0136-4fa8-afb7-d72f2af23c65/7094810f-c01c-4422-b92c-a2a12afbd03c.jpg.512.jpg');

-- Tomes Komi-san wa, Comyushou desu. (id=28)
INSERT INTO Tome VALUES (28, DEFAULT, 'Tome 1', 1, '2016-09-16', 'https://uploads.mangadex.org/covers/a96676e5-8ae2-425e-b549-7f15dd34a6d8/a1b35672-7b7f-4d63-8f42-d05b45b09cf6.png.512.jpg');

-- Tomes Nanatsu no Taizai (id=29)
INSERT INTO Tome VALUES (29, DEFAULT, 'Tome 1', 1, '2013-02-15', 'https://uploads.mangadex.org/covers/e52d9403-3356-403b-b7bb-d7d6a420dd50/bbd65afc-fbc7-4b32-9ac6-d972bdca36f2.jpg.512.jpg');

-- Tomes Jojo no Kimyou na Bouken Part 7: Steel Ball Run (id=30)
INSERT INTO Tome VALUES (30, DEFAULT, 'Tome 1', 1, '2004-05-20', 'https://uploads.mangadex.org/covers/1044287a-73df-48d0-b0b2-5327f32dd651/2e58f82f-428a-4adf-a372-3c59781c46f8.jpg.512.jpg');

-- Tomes Jujustu Kaisen (id=31)
INSERT INTO Tome VALUES (31, DEFAULT, 'Tome 1', 1, '2018-07-04', 'https://uploads.mangadex.org/covers/c52b2ce3-7f95-469c-96b0-479524fb7a1a/d75ef89a-1c7b-4da8-9895-f1b8641e7d2d.jpg.512.jpg');

-- Tomes Akame ga Kill! (id=32)
INSERT INTO Tome VALUES (32, DEFAULT, 'Tome 1', 1, '2010-08-21', 'https://uploads.mangadex.org/covers/8946189d-682f-4838-9c2a-3c2dd5132f2c/a84f4c03-4617-4c7b-869c-f31523c7c3db.jpg.512.jpg');

-- Tomes Soul Eater (id=33)
INSERT INTO Tome VALUES (33, DEFAULT, 'Tome 1', 1, '2004-06-22', 'https://uploads.mangadex.org/covers/53ef1720-7a5d-40ad-90b0-2f9ca0a1ab01/6163c521-db05-4b23-9642-862d55fe9787.jpg.512.jpg');

-- Tomes Bakuman (id=34)
INSERT INTO Tome VALUES (34, DEFAULT, 'Tome 1', 1, '2009-01-05', 'https://uploads.mangadex.org/covers/fa3e0b2f-4e1f-48ee-9af0-1de9dc28ca51/b4fb1e0a-6ab1-4ba8-9dc2-daa0505d4677.jpg.512.jpg');

-- Tomes Noragami (id=35)
INSERT INTO Tome VALUES (35, DEFAULT, 'Tome 1', 1, '2011-07-15', 'https://uploads.mangadex.org/covers/e5ce88e2-8c46-482d-8acf-5c6d5a64a585/eb7e8831-89fc-4ae1-938d-92edd86419b7.jpg.512.jpg');

-- Tomes Monster (id=36)
INSERT INTO Tome VALUES (36, DEFAULT, 'Tome 1', 1, '1995-06-30', 'https://cdn.myanimelist.net/images/manga/3/54525.jpg');

-- Tomes Haikyuu!! (id=37)
INSERT INTO Tome VALUES (37, DEFAULT, 'Tome 1', 1, '2012-06-04', 'https://uploads.mangadex.org/covers/8f8b7cb0-7109-46e8-b12c-0448a6453dfa/9078041a-7c7b-4cf1-ab7b-e683beb501c7.jpg.512.jpg');

-- Tomes 20th Century Boys (id=38)
INSERT INTO Tome VALUES (38, DEFAULT, 'Tome 1', 1, '2000-01-29', 'https://uploads.mangadex.org/covers/ad06790a-01e3-400c-a449-0ec152d6756a/b5f72e59-9fe2-4392-ac6a-249bda1dda41.jpg.512.jpg');

-- Tomes Ao Haru Ride (id=39)
INSERT INTO Tome VALUES (39, DEFAULT, 'Tome 1', 1, '2011-04-13', 'https://uploads.mangadex.org/covers/aa0399ae-d9e8-44ce-9459-30763de36604/bbee7f39-411f-4a77-b2da-0fcaddaaca8a.jpg.512.jpg');

-- Tomes Jojo no Kimyou na Bouken Part 6: Stone Ocean (id=40)
INSERT INTO Tome VALUES (40, DEFAULT, 'Tome 1', 1, '2000-05-01', 'https://uploads.mangadex.org/covers/72d1ae71-4391-4bb2-9f39-784af3cc3c71/9c1cfa6c-0590-4935-8e9a-838ff0ed4f47.png.512.jpg');

-- Tomes Uzumaki (id=41)
INSERT INTO Tome VALUES (41, DEFAULT, 'Tome 1', 1, '1998-08-29', 'https://uploads.mangadex.org/covers/f4cfbb1c-766e-49db-ae80-1a5db3cbcc1b/0a93ebbc-6b75-426c-9f23-f9a985581320.jpg.512.jpg');

-- Tomes Claymore (id=42)
INSERT INTO Tome VALUES (42, DEFAULT, 'Tome 1', 1, '2002-01-05', 'https://uploads.mangadex.org/covers/be8fe64b-37da-4fba-b14d-603aba19be1f/946b216b-c1fd-443a-a22d-800ff2160c7d.jpg.512.jpg');

-- Tomes Kaichou wa Maid-sama! (id=43)
INSERT INTO Tome VALUES (43, DEFAULT, 'Tome 1', 1, '2006-09-05', 'https://uploads.mangadex.org/covers/d5e2bd89-e300-4262-a799-fb4f79bdb777/6c51ae0a-8fa9-4e78-acb6-d3d7036e25b9.jpg.512.jpg');

-- Tomes Pandora Hearts (id=44)
INSERT INTO Tome VALUES (44, DEFAULT, 'Tome 1', 1, '2006-10-27', 'https://uploads.mangadex.org/covers/25aaabb1-9f74-4469-a8d6-1eac5924cc79/17c5977f-ddd7-417c-bb01-f40684273f07.jpg.512.jpg');

-- Tomes Ao no Exorcist (id=45)
INSERT INTO Tome VALUES (45, DEFAULT, 'Tome 1', 1, '2009-08-04', 'https://uploads.mangadex.org/covers/3ee952f1-45c7-4c39-aea2-7df7676606d4/09380b6e-c2f0-43df-b219-fe9672090407.jpg.512.jpg');

-- Tomes Kuroshitsuji (id=46)
INSERT INTO Tome VALUES (46, DEFAULT, 'Tome 1', 1, '2007-02-27', 'https://uploads.mangadex.org/covers/8bd19e5c-94f7-4368-a918-50f463857446/a54bd7a8-a4d7-45f8-bb4e-c347cacc343a.jpg.512.jpg');

-- Tomes Black Clover (id=47)
INSERT INTO Tome VALUES (47, DEFAULT, 'Tome 1', 1, '2016-09-07', 'https://uploads.mangadex.org/covers/e7eabe96-aa17-476f-b431-2497d5e9d060/a8ce3755-86ae-428a-af1b-9f283ab3ae83.jpg.512.jpg');

-- Tomes D.Gray-man (id=48)
INSERT INTO Tome VALUES (48, DEFAULT, 'Tome 1', 1, '2004-10-04', 'https://uploads.mangadex.org/covers/b6886009-e60b-44a7-abc2-a575765277ba/c6eb3aa2-d26b-4471-af69-7999adbef135.jpg.512.jpg');

-- Tomes ReLIFE (id=49)
INSERT INTO Tome VALUES (49, DEFAULT, 'Tome 1', 1, '2014-08-12', 'https://uploads.mangadex.org/covers/6e3553b9-ddb5-4d37-b7a3-99998044774e/e4504532-62f8-467c-9f90-d6390b5f3126.jpg.512.jpg');

-- Tomes Ansatsu Kyoushitsu (id=50)
INSERT INTO Tome VALUES (50, DEFAULT, 'Tome 1', 1, '2012-11-02', 'https://uploads.mangadex.org/covers/333f4d22-7753-4e3b-b0da-0a69b2cdce4f/da6a849e-1645-46ae-9ada-8f13356595f0.jpg.512.jpg');
