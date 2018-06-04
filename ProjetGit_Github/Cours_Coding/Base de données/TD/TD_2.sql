drop database if  exists `db2`;
CREATE DATABASE IF NOT EXISTS `db2`;
USE `db2`;

CREATE TABLE if not exists `Livres`(
	`id` smallint unsigned auto_increment PRIMARY KEY,
    `titre` varchar(100),
    `nmb_de_page` mediumint,
    `date_de_parution` date,
    `ISBN`char(10),
    `ENA`char(13)
    );
CREATE TABLE if not exists `Users`(
	`id` smallint unsigned auto_increment PRIMARY KEY,
    `name` varchar(255),
    `pseudo` varchar(255),
    `mail` varchar(255),
    `livre_id`smallint unsigned,
    KEY `livre_idx` (`livre_id`),
	constraint  `livre_fk` foreign key (`livre_id`)
	references `Livres`(`id`)
    ON DELETE SET NULL ON UPDATE CASCADE

);
INSERT into `Users` ( `id`, `name`, `pseudo`, `mail`) VALUES ( NULL,'Thomas', 'PIPI', 'thomas.PIPI@gmail.com' );
INSERT into `Livres` (`id`, `titre`, `nmb_de_page`, `date_de_parution`, `ISBN`, `ENA`) VALUES ( NULL, 'Heroes', '205', '2017/01/02', '978-2-9100-01-1', '0278256843');

SELECT *
FROM `Users`
WHERE `name` ;

 SELECT *
FROM `Users`
GROUP BY `pseudo` ASC;

SELECT *
FROM `Users`
ORDER BY `mail` DESC;

SELECT *
FROM `Livres`
HAVING `titre`;

SELECT *
FROM `Livres`
LIMIT 3;

SELECT *
FROM `Livres`
WHERE `date_de_parution`;

SELECT *
FROM `Livres`
WHERE `ISBN`;


SELECT *
FROM `Livres`
WHERE `ENA`;

UPDATE IGNORE `Users` SET `name`= 'Xavier' WHERE id=1;
UPDATE IGNORE `Users` SET `pseudo`= 'MOMO' WHERE id=1;
UPDATE IGNORE `Users` SET `mail`= 'Xavier.MOMO@gmail.com'  WHERE id=1;
UPDATE IGNORE `Livres` SET `titre`= 'Heros Factory'  WHERE id=1;
UPDATE IGNORE `Livres` SET `nmb_de_page`=  '300' WHERE id=1;
UPDATE IGNORE `Livres` SET `date_de_parution`=  '2017/12/24' WHERE id=1;
UPDATE IGNORE `Livres` SET `ISBN`=  '631-5-6100-03-7' WHERE id=1;
UPDATE IGNORE `Livres` SET `ENA`=  '5397610745' WHERE id=1;

DELETE IGNORE FROM `Users`;

INSERT into `Users` ( `id`, `name`, `pseudo`, `mail`) VALUES ( NULL,'Thomas', 'PIPI', 'thomas.PIPI@gmail.com' );

DELETE IGNORE FROM `Users` WHERE `mail`;
DELETE IGNORE FROM `Users` LIMIT 3;

INSERT into `Users` ( `id`, `name`, `pseudo`, `mail`) VALUES ( NULL,'Thomas', 'PIPI', 'thomas.PIPI@gmail.com' );
INSERT into `Users` ( `name`, `pseudo`, `mail`) VALUES ('Xavier', 'Mama', 'xavier.Mama@gmail.com' );
INSERT into `Users` ( `name`, `pseudo`, `mail`) VALUES ('Jessy', 'Molo', 'jessy.yolo@gmail.com' );

SELECT *
FROM `Users`
WHERE `name` BETWEEN 'Thomas' AND 'Jessy';

SELECT *
FROM `Users`
WHERE `name` NOT BETWEEN 'Xavier' AND 'Jessy';

SELECT *
FROM `Users`
WHERE `name` IN('Thomas');

SELECT *
FROM `Users`
WHERE `name` NOT IN('Thomas');

SELECT *
FROM `Users`
WHERE `id` IS NULL;

SELECT *
FROM `Users`
WHERE `id` IS NOT NULL;

SELECT *
FROM `Users`
WHERE `pseudo` LIKE 'M@';