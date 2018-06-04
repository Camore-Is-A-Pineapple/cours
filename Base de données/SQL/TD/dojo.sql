DROP DATABASE IF EXISTS `Dojo`;
CREATE DATABASE IF NOT EXISTS `Dojo`;
USE `Dojo`;

CREATE TABLE if not exists `Jeux_Video`(
	`id` int unsigned auto_increment ,
    `titre` varchar(100),
    `Editeur` varchar(100),
    `Date_de_sortie` DATE,
    `Plateforme`varchar(100),
    `genre`varchar(100),
    
    PRIMARY KEY(`id`)
);

CREATE TABLE if not exists `Jeux_Société`(
	`id` int unsigned auto_increment ,
    `Nom` varchar(100),
    `Editeur` varchar(100),
    `Nombre_de_joueurs` SMALLINT,
    `Date_de_sortie`DATE,
    `Pièces_Détachées`BOOLEAN,
    `genre`varchar(100),

    
    
    PRIMARY KEY(`id`)
);

CREATE TABLE if not exists `Jeux_Carte`(
	`id` int unsigned auto_increment ,
    `Nom` varchar(100),
    `Editeur` varchar(100),
	`Date_de_sortie` DATE,
    `Nombre_de_joueurs` SMALLINT,
    `Nombre_de_cartes` SMALLINT,
    `Durée d'une partie` varchar(100),
	`genre`varchar(100),
    
    PRIMARY KEY(`id`)
);

CREATE TABLE if not exists `user`(
	`id` int unsigned auto_increment ,
    `Nom` varchar(100),
    `Prenom` varchar(100),
    `Date_de_naissance` DATE,
    `id_Jeux_Video` SMALLINT,
    `Id_Jeux_Carte` SMALLINT,
    `Id_Jeux_Société` varchar(100),
    
    PRIMARY KEY(`id`)
);

CREATE TABLE if not exists `stat`(
	`id` int unsigned auto_increment ,
    `id_Jeux_Video` int unsigned,
    `Id_Jeux_Carte` int unsigned,
    `Id_Jeux_Société` int unsigned,
	`id_user` int unsigned,
    KEY `Nom_Jeux_Video_idx` (`id_Jeux_VIdeo`),
    
	CONSTRAINT `Jeux_ Video_fk` FOREIGN KEY (`id_Jeux_Video`)
    REFERENCES `Jeux_Video` (`id`)
	ON DELETE SET NULL ON UPDATE CASCADE,
    
	CONSTRAINT `Jeux_ Société_fk` FOREIGN KEY (`id_Jeux_Société`)
    REFERENCES `Jeux_Société` (`id`)
	ON DELETE SET NULL ON UPDATE CASCADE,
    
    CONSTRAINT `Jeux_ Carte_fk` FOREIGN KEY (`id_Jeux_Carte`)
    REFERENCES `Jeux_Carte` (`id`)
	ON DELETE SET NULL ON UPDATE CASCADE,
    
    PRIMARY KEY(`id`)
);

INSERT INTO `Jeux_Video` VALUES (NULL , 'DB_F', 'Bandai', '2018/01/26', 'PS4', 'Combat');
INSERT INTO `Jeux_Video` VALUES (NULL , 'MH WORLD', 'CAPCOM', '2018/01/26', 'PS4', 'RPG');
INSERT INTO `Jeux_Video` VALUES (NULL , 'Zelda BOTW', 'NINTENDO', '2017/03/03', 'Switch', 'RPG');
INSERT INTO `Jeux_Video` VALUES (NULL , 'MEDAL OF HONOR UNDERGROUND', 'EA', '2000/10/23', 'XBOX', 'FPS');
INSERT INTO `Jeux_Video` VALUES (NULL , 'NEED FOR SPEED HOT PURSUIT', 'EA', '1998/11/05', 'PS2', 'Course');

INSERT INTO `Jeux_société` VALUES (NULL , 'MONOPOLY', 'HASBRO', 6, '1936/02/06', TRUE, 'Plateau');
INSERT INTO `Jeux_société` VALUES (NULL , 'Table de ouija', 'HASBRO', 4, '1990/01/01', FALSE, 'Mystique');
INSERT INTO `Jeux_société` VALUES (NULL , '1000_bornes', 'DUJARDIN', 6, '1954/01/01', FALSE, 'Cartes');
INSERT INTO `Jeux_société` VALUES (NULL , 'Touché_Coulé', 'STAREX_NOVENTY_CO', 2, '1931/01/01', FALSE, 'Stratégie');
INSERT INTO `Jeux_société` VALUES (NULL , 'puzzle', 'jeux_nathan', 1, '1975/02/02', TRUE, 'Reflexion');

INSERT INTO `Jeux_Carte` VALUES (NULL , 'Pokemon', 'Pokemon', '2002/03/14', 2, 151, '10/30', 'Collection');
INSERT INTO `Jeux_Carte` VALUES (NULL , 'YU_GI_HO', 'Pokemon', '2001/02/02', 4, 46, '10/60', 'Collection');
INSERT INTO `Jeux_Carte` VALUES (NULL , 'Solitaire', 'carte_à_jouer', '1998/06/18', 1, 54, 'Variable', 'Patience');
INSERT INTO `Jeux_Carte` VALUES (NULL , 'UNO', 'Matel', '2004/10/18', 8, 108, '30min', 'Familial');

INSERT INTO `user` VALUES (NULL, 'Millet', 'Thomas', '1988/03/01', NULL, NULL, NULL);
INSERT INTO `user` VALUES (NULL, 'Corbes', 'Xavier', '1998/12/13', NULL, NULL, NULL);
INSERT INTO `user` VALUES (NULL, 'Arial', 'Jessy', '1998/11/20', NULL, NULL, NULL);
INSERT INTO `user` VALUES (NULL, 'Leteno', 'Maxime', '1998/05/04', NULL, NULL, NULL);



#moyenne d’âge de la clientèle (user) /AVERAGE/
SELECT YEAR(NOW()) - AVG(YEAR(`Date_de_naissance`))
FROM `user`
WHERE `Date_de_naissance` NOT IN ('0000/00/00');

SELECT *
FROM `Jeux_Video`
WHERE `Date_de_sortie`
BETWEEN '1997/01/01' AND '2004/01/01';

SELECT *
FROM `Jeux_Société`
WHERE `Date_de_sortie`
BETWEEN '1997/01/01' AND '2004/01/01';

SELECT *
FROM `Jeux_Carte`
WHERE `Date_de_sortie`
BETWEEN '1997/01/01' AND '2004/01/01';



#titre listé via ORDER BY en DESC
SELECT *
FROM `Jeux_Video`
ORDER BY `titre` ASC;

#Jointure de Jeux_Société et Jeux_Carte (pour les jeux ayant les meme nombre de joueurs)
SELECT * 
FROM `Jeux_Société`
INNER JOIN `Jeux_Carte`
ON `Jeux_Société`.`Nombre_de_joueurs` = `Jeux_Carte`.`Nombre_de_joueurs`;

#Where, Like (Liste les jeux vidéos commencant par M)
SELECT*
FROM `Jeux_Video`
WHERE `titre` LIKE 'M%';


#Affiche le jeu de carte avec 46 cartes
SELECT *
FROM `Jeux_Carte`
WHERE `Nombre_de_cartes` in (46);




#Qui joue a quoi / qui ne joue pas a quoi

/*

INSERT INTO `stat` (`id_Jeux_Video`,`Id_Jeux_Carte`,`Id_Jeux_Société`, `id_user`) VALUES
(3, NULL, NULL, 1),
(NULL, NULL, 1,1),
(NULL, NULL, 3,1),
(NULL, NULL, 4,1),
(NULL, 3, NULL, 1),
(3, NULL, NULL, 2),
(4, NULL, NULL, 2),
(5, NULL, NULL, 2),
(NULL, 2, NULL, 2),
(NULL, 1, NULL, 2),
(NULL, 4, NULL, 2),
(NULL, NULL, 1,2),
(NULL, NULL, 3,2),
(NULL, NULL, 4,2),
(NULL, NULL, 5,2),
(1, NULL, NULL, 3),
(3, NULL, NULL, 3),
(4, NULL, NULL, 3),
(5, NULL, NULL, 3),
(NULL, 1, NULL, 3),
(NULL, 4, NULL, 3),
(NULL, NULL, 1,3),
(NULL, NULL, 4,3),
(1, NULL, NULL, 4),
(3, NULL, NULL, 4),
(NULL, 1, NULL, 4),
(NULL, 4, NULL, 4),
(NULL, NULL, 1,4),
(NULL, NULL, 3,4); 

*/
