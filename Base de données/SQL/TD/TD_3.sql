DROP DATABASE IF EXISTS `db3`;
CREATE DATABASE IF NOT EXISTS `db3`;
USE `db3`;

CREATE TABLE if not exists `Livres`(
	`id` smallint unsigned auto_increment ,
    `titre` varchar(100),
    `nmb_de_page` mediumint,
    `date_de_parution` date,
    `ISBN`char(10),
    `ENA`char(13),
    PRIMARY KEY(`id`)
);

CREATE TABLE if not exists `Film`(
	`id` smallint unsigned auto_increment ,
    `titre` varchar(100),
    `nmb_de_min` smallint,
    `date_de_creation` date,
    PRIMARY KEY(`id`)
);

CREATE TABLE if not exists `Musique`(
	`id` smallint unsigned auto_increment ,
    `titre` varchar(100),
    `nmb_de_min` mediumint,
    `date_de_sortie` date,
    PRIMARY KEY(`id`)
);

INSERT into `Film` (`id`, `titre`, `nmb_de_min`, `date_de_creation`) VALUES ( NULL, 'Heroes', '240', '2017/01/02');
INSERT into `Film` (`id`, `titre`, `nmb_de_min`, `date_de_creation`) VALUES ( NULL, 'Heroghghes', '240', '2017/01/02');
INSERT into `Film` (`id`, `titre`, `nmb_de_min`, `date_de_creation`) VALUES ( NULL, 'Herztehoes', '240', '2017/01/02');
INSERT into `Film` (`id`, `titre`, `nmb_de_min`, `date_de_creation`) VALUES ( NULL, 'Herjjoes', '240', '2017/01/02');
INSERT into `Film` (`id`, `titre`, `nmb_de_min`, `date_de_creation`) VALUES ( NULL, 'Heroes', '240', '2017/01/02');
INSERT into `Film` (`id`, `titre`, `nmb_de_min`, `date_de_creation`) VALUES ( NULL, 'Herdsghoes', '240', '2017/01/02');

INSERT into `Livres` (`id`, `titre`, `nmb_de_page`, `date_de_parution`) VALUES ( NULL, 'Heroes', '240', '2017/01/02');
INSERT into `Livres` (`id`, `titre`, `nmb_de_page`, `date_de_parution`) VALUES ( NULL, 'Herxddoes', '240', '2017/01/02');
INSERT into `Livres` (`id`, `titre`, `nmb_de_page`, `date_de_parution`) VALUES ( NULL, 'Heroùmlkes', '240', '2017/01/02');
INSERT into `Livres` (`id`, `titre`, `nmb_de_page`, `date_de_parution`) VALUES ( NULL, 'Herjjoes', '240', '2017/01/02');

INSERT into `Musique` (`id`, `titre`, `nmb_de_min`, `date_de_sortie`) VALUES ( NULL, 'Heroes', '240', '2017/01/02');
INSERT into `Musique` (`id`, `titre`, `nmb_de_min`, `date_de_sortie`) VALUES ( NULL, 'Hersdgoes', '240', '2017/01/02');

INSERT INTO `Musique` (`id`, `titre`, `nmb_de_min`, `date_de_sortie`)
SELECT *
FROM `Film`
WHERE `titre` = 'Herdsghoes';

#TRUNCATE table `Film`;

SELECT * FROM `Film`
INNER JOIN `Livres`
ON `Film`.`titre` = `Livres`.`titre`;

SELECT * FROM `Film`
LEFT JOIN `Livres`
ON `Film`.`titre` = `Livres`.`titre`;

SELECT * FROM `Film`
RIGHT JOIN `Livres`
ON `Film`.`titre` = `Livres`.`titre`;

#SELECT * FROM `Film`
#FULL JOIN `Livres`
#ON `Film`.`titre` = `Livres`.`titre`;

SELECT * FROM `Film`
NATURAL JOIN `Livres`;

SELECT * FROM `Film`, `Livres`, `Musique`
WHERE `Film`.`titre` = `Livres`.`titre`
OR `Film`.`titre` = `Musique`.`titre`;

ALTER TABLE `Livres`
CHANGE `date_de_parution` `date_de_sortie` DATE;
