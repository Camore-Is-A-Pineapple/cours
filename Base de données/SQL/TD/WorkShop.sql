CREATE DATABASE  IF NOT EXISTS `workshop` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `workshop`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: workshop
-- ------------------------------------------------------
-- Server version	5.7.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acteur`
--

DROP TABLE IF EXISTS `acteur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acteur` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acteur`
--

LOCK TABLES `acteur` WRITE;
/*!40000 ALTER TABLE `acteur` DISABLE KEYS */;
INSERT INTO `acteur` VALUES (1,'Aaron Stanford','1976-12-27'),(2,'Amanda Schull','1978-08-26'),(3,'Kirk Acevedo','1971-11-27'),(4,'Noah Bean','1978-08-20'),(5,'Stephen Amell','1981-05-08'),(6,'Katherine Evelyn Anita Cassidy','1986-11-25'),(7,'David Ramsey','1971-11-17'),(8,'Willa Joanna Chance Holland','1991-06-18'),(9,'Paul Blackthorne','1969-03-05'),(10,'Emily Bett Rickards','1991-07-24'),(11,'John Barrowman','1967-03-11'),(12,'Andrew James Clutterbuck','1973-09-14'),(13,'Chandler Riggs','1999-06-27'),(14,'Norman Mark Reedus','1969-01-06'),(15,'Melissa Suzanne McBride','1965-05-23'),(16,'Lauren Cohan','1982-01-07'),(17,'Danai Gurira','1978-02-14'),(18,'Michael Emerson','1954-09-07'),(19,'Robert Carlyle','1961-04-14');
/*!40000 ALTER TABLE `acteur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assoc_a_n`
--

DROP TABLE IF EXISTS `assoc_a_n`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assoc_a_n` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_acteur` int(10) unsigned DEFAULT NULL,
  `id_nationalite` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `assoc_a_n_idx` (`id_acteur`),
  KEY `assoc_n_a_idx` (`id_nationalite`),
  CONSTRAINT `assoc_a_n_fk` FOREIGN KEY (`id_acteur`) REFERENCES `acteur` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `assoc_n_a_fk` FOREIGN KEY (`id_nationalite`) REFERENCES `nationalite` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COMMENT='Association entre acteur et nationalité';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assoc_a_n`
--

LOCK TABLES `assoc_a_n` WRITE;
/*!40000 ALTER TABLE `assoc_a_n` DISABLE KEYS */;
INSERT INTO `assoc_a_n` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,3),(6,6,1),(7,7,1),(8,8,1),(9,9,2),(10,10,3),(11,11,2),(12,17,1),(13,17,4),(14,16,1),(15,16,2),(16,15,1),(17,14,1),(18,13,1),(19,12,2),(20,18,1),(21,19,2);
/*!40000 ALTER TABLE `assoc_a_n` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assoc_s_a`
--

DROP TABLE IF EXISTS `assoc_s_a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assoc_s_a` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_serie` int(10) unsigned DEFAULT NULL,
  `id_acteur` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `assoc_s_a_idx` (`id_serie`),
  KEY `assoc_a_s_idx` (`id_acteur`),
  CONSTRAINT `assoc_a_s_fk` FOREIGN KEY (`id_acteur`) REFERENCES `acteur` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `assoc_s_a_fk` FOREIGN KEY (`id_serie`) REFERENCES `serie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1 COMMENT='Association entre série et acteur';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assoc_s_a`
--

LOCK TABLES `assoc_s_a` WRITE;
/*!40000 ALTER TABLE `assoc_s_a` DISABLE KEYS */;
INSERT INTO `assoc_s_a` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,5),(6,2,6),(7,2,7),(8,2,8),(9,2,9),(10,2,10),(11,2,11),(12,2,3),(13,3,3),(14,4,3),(15,5,3),(16,6,3),(17,6,4),(18,7,4),(19,8,5),(20,9,5),(21,10,5),(22,8,6),(23,9,6),(24,8,7),(25,9,7),(26,8,8),(27,8,9),(28,9,9),(29,8,10),(30,9,10),(31,10,10),(32,8,11),(33,9,11),(34,12,11),(35,13,11),(36,3,12),(37,3,13),(38,3,14),(39,3,15),(40,3,16),(41,3,17),(42,14,7),(43,14,14),(44,4,18),(45,2,18),(46,15,18),(47,7,19),(48,16,19);
/*!40000 ALTER TABLE `assoc_s_a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assoc_s_c`
--

DROP TABLE IF EXISTS `assoc_s_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assoc_s_c` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_serie` int(10) unsigned DEFAULT NULL,
  `id_chaine` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `assoc_s_c_idx` (`id_serie`),
  KEY `assoc_c_s_idx` (`id_chaine`),
  CONSTRAINT `assoc_c_s_fk` FOREIGN KEY (`id_chaine`) REFERENCES `chaine_tv` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `assoc_s_c_fk` FOREIGN KEY (`id_serie`) REFERENCES `serie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 COMMENT='Association entre série et chaine';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assoc_s_c`
--

LOCK TABLES `assoc_s_c` WRITE;
/*!40000 ALTER TABLE `assoc_s_c` DISABLE KEYS */;
INSERT INTO `assoc_s_c` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,2),(9,9,2),(10,10,2),(11,10,4),(12,12,8),(13,13,8),(14,14,9),(15,15,7),(16,16,1),(17,19,2),(18,19,9),(19,20,6),(20,21,2);
/*!40000 ALTER TABLE `assoc_s_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assoc_s_g`
--

DROP TABLE IF EXISTS `assoc_s_g`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assoc_s_g` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_serie` int(10) unsigned DEFAULT NULL,
  `id_genre` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `assoc_s_g_idx` (`id_serie`),
  KEY `assoc_g_s_idx` (`id_genre`),
  CONSTRAINT `assoc_g_s_fk` FOREIGN KEY (`id_genre`) REFERENCES `genre_cinema` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `assoc_s_g_fk` FOREIGN KEY (`id_serie`) REFERENCES `serie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1 COMMENT='Association entre série et genre';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assoc_s_g`
--

LOCK TABLES `assoc_s_g` WRITE;
/*!40000 ALTER TABLE `assoc_s_g` DISABLE KEYS */;
INSERT INTO `assoc_s_g` VALUES (1,1,1),(2,1,2),(3,2,2),(4,2,3),(5,2,4),(6,2,5),(7,3,2),(8,3,6),(9,4,2),(10,4,3),(11,4,10),(12,4,11),(13,5,2),(14,5,7),(15,5,8),(16,5,9),(17,6,1),(18,6,7),(21,7,2),(22,7,8),(23,8,1),(24,8,2),(25,8,3),(26,8,4),(27,8,5),(28,9,2),(29,9,3),(30,9,4),(31,9,5),(32,10,5),(33,12,1),(34,13,1),(35,14,3),(36,14,8),(37,14,12),(38,14,13),(39,15,2),(40,15,3),(41,15,4),(42,15,8),(43,15,11),(44,15,14),(45,15,15),(46,15,16),(47,16,1),(48,16,17);
/*!40000 ALTER TABLE `assoc_s_g` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chaine_tv`
--

DROP TABLE IF EXISTS `chaine_tv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chaine_tv` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nom_UNIQUE` (`nom`),
  KEY `chaine_nom_idx` (`nom`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chaine_tv`
--

LOCK TABLES `chaine_tv` WRITE;
/*!40000 ALTER TABLE `chaine_tv` DISABLE KEYS */;
INSERT INTO `chaine_tv` VALUES (7,'ABC'),(3,'AMC'),(8,'BBC'),(4,'CBS'),(6,'FOX'),(5,'NBC'),(1,'Syfy'),(2,'The CW'),(9,'The WB');
/*!40000 ALTER TABLE `chaine_tv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre_cinema`
--

DROP TABLE IF EXISTS `genre_cinema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre_cinema` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `genre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `genre_UNIQUE` (`genre`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre_cinema`
--

LOCK TABLES `genre_cinema` WRITE;
/*!40000 ALTER TABLE `genre_cinema` DISABLE KEYS */;
INSERT INTO `genre_cinema` VALUES (3,'action'),(4,'aventure'),(12,'comique'),(16,'complot'),(2,'dramatique'),(10,'espionnage'),(8,'fantastique'),(9,'fantasy'),(6,'horreur'),(13,'magique'),(17,'militaire'),(15,'mystère'),(7,'policier'),(14,'psychologique'),(1,'science-fiction'),(5,'super-héros'),(11,'thriller');
/*!40000 ALTER TABLE `genre_cinema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nationalite`
--

DROP TABLE IF EXISTS `nationalite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nationalite` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nationalite` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nationalite_UNIQUE` (`nationalite`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nationalite`
--

LOCK TABLES `nationalite` WRITE;
/*!40000 ALTER TABLE `nationalite` DISABLE KEYS */;
INSERT INTO `nationalite` VALUES (5,'Allemande'),(1,'Américaine'),(2,'Anglaise'),(6,'Australienne'),(7,'Autrichienne'),(8,'Belge'),(3,'Canadienne'),(9,'Espagnole'),(10,'Française'),(11,'Iranienne'),(12,'Italienne'),(13,'Marocaine'),(14,'Norvégienne'),(15,'Suédoise'),(16,'Suisse'),(4,'Zimbabwéenne');
/*!40000 ALTER TABLE `nationalite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serie`
--

DROP TABLE IF EXISTS `serie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serie` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `titre` varchar(80) DEFAULT NULL,
  `synopsis` text,
  `nb_saison` tinyint(3) unsigned DEFAULT NULL,
  `nb_episode` int(10) unsigned DEFAULT NULL,
  `date_debut_diff` date DEFAULT NULL,
  `date_fin_diff` date DEFAULT NULL COMMENT 'NULL si toujours en production',
  PRIMARY KEY (`id`),
  KEY `serie_titre_idx` (`titre`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serie`
--

LOCK TABLES `serie` WRITE;
/*!40000 ALTER TABLE `serie` DISABLE KEYS */;
INSERT INTO `serie` VALUES (1,'12 Monkeys','2043 : au cours du xxie siècle, une épidémie a ravagé la Terre et décimé 93,6 % de l\'humanité. Alors que les derniers humains tentent de survivre à la faim et aux bandes, une équipe de scientifiques rassemblée autour du Dr Katarina Jones mène un projet : renvoyer un homme dans le passé afin qu\'il empêche la propagation du virus. James Cole est donc renvoyé en 2013 pour y trouver le Dr Cassandra Railly, qu\'ils ont identifié comme une source indispensable grâce à un message audio découvert après sa mort. Les deux se retrouvent ensuite en 2015 et mènent ensemble l\'enquête pour découvrir les origines du virus.\n\nIls apprennent alors l\'existence d\'un groupe qui souhaite que le virus soit diffusé nommé « l\'Armée des 12 singes ».',3,36,'2015-01-16',NULL),(2,'Arrow','Après un violent naufrage, le jeune milliardaire et playboy Oliver Queen, porté disparu et présumé mort depuis cinq ans, est découvert vivant sur une île isolée dans la Mer de Chine. Quand il rentre chez lui, à Starling City, sa mère dévouée Moira, sa sœur bien-aimée Thea et son meilleur ami Tommy l\'accueillent chez lui, mais ils sentent qu\'Oliver a changé.\n\nAlors qu\'Oliver cache la vérité sur l\'homme qu\'il est devenu, il cherche désespérément à faire amende honorable pour les actions passées de son père grâce à une liste de noms d\'individus ayant, selon les propres mots d\'Oliver, « trahi leur ville », qu\'il cherche à faire emprisonner. Il tente également de se réconcilier avec son ex-petite amie Laurel Lance qui a un nouveau prétendant, qui n\'est d\'autre que Tommy.\n\nIl devient alors un justicier qui va réparer les torts de sa famille, lutter contre les « maux de la société » et redonner à la ville de Starling son ancienne gloire. En tant qu\'héritier de la multinationale Queen Consolidated, Oliver joue également le rôle d\'un coureur de jupons riche, insouciant et négligeant afin de cacher son identité secrète. Cependant, le père de Laurel, l\'inspecteur Quentin Lance, est déterminé à arrêter le justicier qui sévit dans sa ville…',6,128,'2012-10-10',NULL),(3,'The Walking Dead','L\'histoire suit le personnage de Rick Grimes (interprété par Andrew Lincoln), adjoint du shérif du comté de Kings (en Géorgie) qui se réveille d\'un coma de plusieurs semaines pour découvrir que la population a été ravagée par une épidémie post-apocalyptique inconnue qui transforme les êtres humains en morts-vivants, appelés « rôdeurs ». Après avoir retrouvé sa famille, il devient très vite le leader d\'un groupe de rescapés d\'Atlanta. Ils seront amenés à devoir survivre dans un monde post-apocalyptique face à des rôdeurs et d\'autres groupes de survivants, pour certains plus dangereux encore que les rôdeurs eux-mêmes. Ensemble, ils vont devoir tant bien que mal faire face à ce nouveau monde devenu méconnaissable, à travers leur périple dans le Sud profond des États-Unis.',8,120,'2010-10-31',NULL),(4,'Person of Interest','John Reese, un ex-agent paramilitaire de la Central Intelligence Agency présumé mort, est engagé par le mystérieux milliardaire Harold Finch. Dans le passé, ce dernier a conçu un système de surveillance de masse pour le gouvernement voulant éviter un nouveau 11 septembre. Le système est capable de prédire les actes terroristes dans le monde, en s\'appuyant sur de nombreuses données comme les enregistrements des caméras de surveillance et des appels téléphoniques, ou les antécédents judiciaires.\n\nConsidérant qu\'il avait donné au gouvernement un outil au pouvoir immense et inimaginable, Finch s\'est bâti une porte dérobée qui lui permet d\'accéder au système par précaution.\n\nCependant, la Machine repère aussi les crimes entre citoyens ordinaires considérés comme mineurs par le gouvernement. Les autorités ayant décidé de ne pas tenir compte de ces données, Finch reçoit chaque jour les numéros de sécurité sociale des personnes impliquées à New York ou dans ses environs. C\'est avec l\'aide de Reese qu\'il va tenter de retrouver ces « Persons of Interest » (« Personnes d\'intérêt ») et de découvrir si elles ont le rôle de victime ou de coupable dans l\'affaire concernée.\n\nTraqués par le lieutenant de police Jocelyn « Joss » Carter, ils sont aidés par un autre lieutenant, anciennement véreux, Lionel Fusco, qui leur fournit des informations et garde un œil sur sa collègue policière. Mais l’arrivée dans New York de deux justiciers va également contrarier plusieurs organisations criminelles.',5,103,'2011-09-22','2016-06-21'),(5,'Grimm','À Portland, l\'inspecteur Nick Burkhardt découvre qu\'il est l\'un des derniers descendants des Grimm, une lignée de chasseurs dont les célèbres récits des frères Grimm se rapprochent désormais bien plus de la réalité que de contes imaginés. Étant policier depuis plusieurs années, Nick doit désormais s\'assurer, aussi bien en tant que policier que Grimm, de servir et protéger toutes personnes victimes de certaines créatures maléfiques.\n\nNick se retrouve ainsi dans un univers inconnu régi par des règles qu’il ne connaît pas. Il est aidé d\'Eddy Monroe, un Blutbad (c\'est-à-dire un homme-loup) capable de voir les êtres surnaturels de cet univers, tout comme lui. Plus tard, il reçoit également l\'aide de la compagne de Monroe, Rosalee Calvert (une Fuchsbau, c\'est-à-dire une femme-renarde), et d\'Hank Griffin, son coéquipier humain.',6,123,'2011-10-28','2017-03-31'),(6,'Fringe','Olivia Dunham est un agent spécial du FBI. Avec le professeur Walter Bishop, un savant fou qui souffre de problèmes psychologiques ayant conduit à son internement pendant 17 ans et son fils touche-à-tout Peter Bishop, ils travaillent pour une branche fictive de l\'agence, la section « Fringe », qui a pour vocation d\'enquêter sur des événements mystérieux touchant à certains aspects des sciences marginales : maladies rares, cryptozoologie, transhumains avec des capacités psychiques, téléportation, pyrokinésie, etc.\n\nDe par le monde, une série d\'expériences collectivement appelées le « schéma » ou le « projet » (« pattern » en anglais) se produisent dans ce domaine. Dunham, Peter et Walter ont pour mission d\'enquêter sur ces événements afin d\'en déterminer la source. La multinationale Massive Dynamic, compagnie de pointe dans la recherche et les hautes technologies, est étroitement liée à ce projet tandis que son ennemi, la cellule bioterroriste ZFT, orchestre la majeure partie de ces phénomènes afin de se préparer à la singularité technologique. Au cœur du combat entre ces deux factions se trouve un nootropique appelé le Cortexiphan, développé par Walter Bishop et son ancien associé, William Bell - cofondateur de Massive Dynamic, et qui a servi à traiter plusieurs enfants, dont Dunham.',5,100,'2008-09-09','2013-01-18'),(7,'Once Upon a Time','Au Pays des Contes, la Méchante Reine fait irruption au mariage de Blanche-Neige et du prince Charmant et annonce qu\'elle lancera une malédiction sur leur monde qui privera chacun de sa fin heureuse. Inquiets, les jeunes mariés craignent pour leur enfant à venir. Ils décident de consulter Rumplestiltskin / le Ténébreux, un étrange et dangereux personnage. Ce dernier les informe que l\'enfant qu\'ils attendent viendra les sauver lors de son 28e anniversaire. Leur fille, prénommée Emma, naît et la malédiction se rapproche. Le prince réussit à envoyer sa fille dans un endroit sûr grâce à un arbre magique construit par Geppetto, tandis que tous sont envoyés dans un monde sans magie : le monde moderne.\n\nÀ Boston, Emma Swan, une auxiliaire de justice, reçoit la visite de son fils biologique, Henry Mills, le soir de son 28e anniversaire. Alors qu\'elle l\'avait abandonné à la naissance, le jeune garçon lui demande de le suivre dans une petite ville nommée Storybrooke. Dès lors, il prétend que la ville abrite tous les personnages de contes de fées que nous connaissons, amnésiques suite à la malédiction de la Méchante Reine. Malgré elle, Emma entame ensuite une rivalité contre la mère adoptive d\'Henry, Regina Mills, par ailleurs maire de la ville. Elle rencontre également Mary Margaret Blanchard, David Nolan, M. Gold et bien d\'autres résidents de Storybrooke. À la suite de l\'arrivée d\'Emma, l\'horloge de la ville et le temps, jusqu\'alors arrêtés, se remettent en marche.',7,143,'2011-10-23',NULL),(8,'Flash','Barry Allen est un jeune scientifique qui travaille pour la police de Central City. Enfant, il est témoin du meurtre inexplicable de sa mère, prise au piège dans un tourbillon d\'éclairs. Dès lors, il se met à croire au surnaturel et cherche le moyen de le prouver pour faire innocenter son père emprisonné.\n\nPuis, un jour, touché par un éclair provoqué par l\'explosion de l\'accélérateur de particules dans les laboratoires de Harrison Wells, Barry va sombrer dans le coma pendant neuf mois. À son réveil, il découvre qu\'il peut courir à une vitesse surhumaine et peut guérir de façon accélérée. Il va réaliser par la suite qu\'il n\'est pas le seul à avoir obtenu des facultés surhumaines.',4,82,'2014-10-07',NULL),(9,'DC\'s Legends of Tomorrow','Rip Hunter, un agent faisant anciennement partie de la confédération des maîtres du temps désobéit à cette dernière en volant un vaisseau (nommé Waverider) pouvant voyager à travers le temps dans le but de recruter un groupe de super-héros et de super-vilains capable d\'affronter une menace planétaire : le criminel Vandal Savage et son armée de super soldats ayant conquis et soumis le futur. Ils ont pris le contrôle de toutes les infrastructures et ont fait des humains des esclaves. Ce groupe est initialement composé de Captain Cold, Heat Wave, Atom, Hawkgirl, Hawkman, White Canary et Firestorm.',3,43,'2016-01-21',NULL),(10,'Supergirl','Kara Zor-El, cousine de Kal-El, est arrivée sur Terre, mais avec 24 ans de retard. Elle avait pour mission de protéger son cousin, mais celui-ci est devenu entre temps un super héros respecté de tous. La jeune fille est donc recueillie par une famille d\'adoption, la famille Danvers. Elle change donc son nom pour Kara Danvers. Grâce à sa famille adoptive, la jeune fille apprend à maîtriser ses super-pouvoirs, mais surtout à les cacher du grand public.\n\nUne fois adulte, âgée de 24 ans, elle travaille comme assistante pour Cat Grant au sein du groupe de média CatCo, dans la ville de National City, située sur la côte Ouest des États-Unis. Une catastrophe inattendue va l\'obliger à se montrer telle qu\'elle est vraiment aux yeux de tous. Très vite, les habitants de la ville ayant vu ses incroyables capacités la surnomment Supergirl.',3,55,'2015-10-26',NULL),(12,'Doctor Who','Doctor Who relate les aventures de son personnage principal, un extraterrestre de la race des Seigneurs du Temps (Time Lords), appelé le Docteur. Il est originaire de la planète Gallifrey et voyage à bord d\'un TARDIS (Time And Relative Dimension In Space, ou Temps À Relativité Dimensionnelle Inter-Spatiale en français), une machine pouvant voyager dans l\'espace et dans le temps. Particulièrement attaché à la Terre, il est régulièrement accompagné dans ses voyages par des compagnons, pour la plupart humains et féminins.\n\nLe TARDIS du Docteur a l\'apparence d\'une cabine téléphonique de police bleue britannique des années 1960, le système de camouflage (permettant de se fondre au lieu et à l\'époque où il se pose) étant resté bloqué lors du tout premier épisode de la première série. Le TARDIS est plus grand à l\'intérieur qu\'à l\'extérieur, suscitant l\'étonnement de ceux qui y entrent. Il est également équipé d\'un tournevis sonique, un outil qui possède plusieurs fonctions, tel que le déverrouillage ou la réparation d\'objets.\n\nDans la première série (1963-1989), le Docteur est un Seigneur du Temps parmi d\'autres, alors que dans la seconde série (depuis 2005), il se présente comme le dernier survivant de sa race. Il aurait mis fin à la Guerre du Temps entre les Daleks et les Seigneurs du Temps.\n\nComme tous les Seigneurs du Temps, le Docteur a le pouvoir de se régénérer lorsqu\'il est mortellement blessé. Cette régénération s\'accompagne de changements : il s\'agit de la même personne, possédant les mêmes souvenirs, mais avec un corps et un caractère transformés.',37,827,'1963-11-23',NULL),(13,'Torchwood','Torchwood se déroule à Cardiff quelque temps après la fin de la deuxième saison de Doctor Who.\n\nElle suit la branche galloise d\'une agence secrète intitulée l\'Institut Torchwood. L\'Institut Torchwood a été créé par la Reine Victoria en 1879 pour lutter contre les ennemis extraterrestres de l\'Empire britannique, enquêter sur les incidents impliquant des extraterrestres, récupérer des objets extraterrestres tombés entre les mains d\'humains et exposer la puissance du Royaume-Uni de cette époque. Il est directement financé par la Couronne britannique. Comme expliqué dans l\'annonce du prégénérique, Torchwood est en dehors du gouvernement, au-dessus de la police et sous les Nations Unies. Si leur existence publique est censée être secrète, elle passe aux yeux de la population comme un groupe d\'action spéciale.\n\nOn apprend dans l\'épisode pilote que la ville de Cardiff est construite sur une faille spatio-temporelle ouverte en permanence, ce qui permet aux aliens de pénétrer dans notre monde. On y voit l\'agent de police Gwen Cooper découvrir l\'existence de Torchwood et de ses activités secrètes. Le Capitaine Jack Harkness dirigeant Torchwood accepte de lui présenter son équipe composée de Suzie Costello, Owen Harper, Toshiko Sato et Ianto Jones. Jack Harkness se révèle être un être immortel qui semble avoir vécu pour Torchwood depuis la fin du xixe siècle. Par la suite, Gwen rejoint Torchwood devenant un membre à part entière. Il lui arrive de le regretter, mais elle est plus souvent fière de faire partie de cet institut secret.',4,41,'2006-10-22','2011-09-15'),(14,'Charmed','Les trois sœurs Halliwell découvrent qu\'elles descendent d\'une famille de sorcières et doivent apprendre à se servir de leurs pouvoirs magiques afin de lutter contre le mal et les démons qui veulent les détruire afin de s\'approprier leurs pouvoirs.',8,178,'1998-10-07','2006-05-21'),(15,'Lost','Le vol 815 de la compagnie Oceanic Airlines, reliant Sydney à Los Angeles, explose en plein vol au-dessus d\'une île du Pacifique non répertoriée sur les cartes. Le cockpit, l\'avant ainsi que la queue de l\'appareil tombent en des endroits différents de l\'île, où les survivants vont apprendre à cohabiter et survivre. Dès les premiers jours, ils se rendent compte qu\'ils ne sont pas seuls sur ce bout de terre, qui est le théâtre d\'évènements étranges : activité magnétique intense, ours polaires rodant dans la jungle, apparitions de revenants, monstre inconnu (fumée noire) errant dans la jungle ou encore indigènes hostiles surnommés Les Autres (The Others) qui agissent sous l\'influence d\'un certain Jacob, un chef mystique.\n\nLes survivants découvrent également les bâtiments abandonnés du projet Dharma, une organisation ayant mené des recherches scientifiques sur l\'île dans les années 1970 et 1980. Les membres du projet Dharma étudiaient le voyage dans le temps. En 1977, un incident a conduit le projet Dharma à maîtriser une importante accumulation d\'énergie électromagnétique dans un bunker où, toutes les cent huit minutes, une série de nombres (4 8 15 16 23 42) doit être entrée dans un terminal informatique pour éviter que cette énergie ne s\'échappe.\n\nBientôt, à travers une série d\'épreuves où beaucoup vont laisser la vie, les passagers du vol 815 vont découvrir que l\'avion ne s\'est pas écrasé par hasard, et qu\'ils ne sont que de simples pions sur un échiquier à échelle humaine.',6,121,'2004-09-22','2010-05-23'),(16,'Stargate Universe','La troisième série de la franchise Stargate est basée sur la découverte et l\'utilisation du neuvième chevron de la porte des étoiles.\n\nAprès avoir résolu un problème mathématique vieux de plusieurs milliers d\'années, écrit dans une autre langue et caché dans un jeu vidéo, le jeune Eli Wallace (David Blue) est appelé à contribuer au projet « Porte des étoiles », en collaborant avec le professeur Nicolas Rush (Robert Carlyle) sur la base Icare, où se trouve l\'énergie nécessaire à l\'utilisation du neuvième chevron ; énergie provenant du noyau de la planète où se trouve la base Icare.\n\nLors d\'une attaque de la base, le professeur Nicolas Rush voit sa dernière chance de composer l\'adresse à neuf chevrons et réussit, grâce au jeune Eli, à ouvrir un vortex stable. Les survivants débarquent sur le Destinée, un vaisseau ancien qui aurait servi à explorer les frontières de l\'univers tout en suivant la trajectoire d\'un premier vaisseau servant à disséminer des portes des étoiles dans l\'univers. La planète abritant la base Icare est détruite durant l\'attaque, ce qui les isole de la Terre.\n\nSitué à plusieurs milliards d\'années-lumière de la Terre, dirigé par le colonel Everett Young et le professeur Nicolas Rush, le groupe hétérogène des rescapés tente alors de survivre sur le vaisseau, dont la plupart des systèmes sont vétustes et peuvent lâcher à tout moment. Une panne du système de renouvellement de l\'air apparaît ainsi quelques heures après leur arrivée.',2,74,'2009-10-02','2011-05-09'),(17,'Stargate SG-1','Suite à la découverte de la \"Porte des étoiles\", le colonel Jack O\'Neill et son équipe partent à la découverte de mondes et civilisations inconnus...',10,214,'1997-07-27','2007-03-13'),(18,'Stargate Atlantis','Cette série met en scène une délégation de scientifiques et de militaires partis explorer la cité mythique d\'Atlantis, située dans la galaxie de Pégase, et découverte grâce à un avant-poste construit par les Anciens situé sur Terre (en Antarctique).',5,100,'2004-07-16','2009-01-09'),(19,'Smallville','Octobre 1989. Une pluie de météorites s\'abat sur Smallville, dans le Kansas, bouleversant la vie de tous ses habitants. Un couple de fermiers, les Kent, découvrent sur la route que la pluie de météorites accompagnait un vaisseau extra-terrestre, qui renferme un enfant de trois ans. Jonathan et Martha récupèrent alors ce jeune garçon venu du ciel et l\'élèvent comme leur propre fils.\n\nDes années plus tard. Clark Kent tente de vivre une vie normale malgré d\'extraordinaires pouvoirs qu\'il essaye de dissimuler aux yeux de ses amis, Chloé, Pete, Lana et le mystérieux Lex Luthor. Après une scolarité agitée au Lycée de Smallville, il s\'engage comme journaliste au Daily Planet en compagnie de Lois Lane.\n\nClark devra faire d\'énormes sacrifices au cours de son périple pour mettre ses pouvoirs au service du bien et devenir le héros acclamé de tous, Superman.',10,218,'2001-10-16','2011-05-13'),(20,'Alcatraz','Le 21 mars 1963, la prison d\'Alcatraz ferma officiellement ses portes et tous les prisonniers furent transférés hors de l\'île. Seulement la vérité est tout autre : au matin du 20 mars, les deux gardiens de la relève découvrent le bâtiment entièrement vide, sans trace des détenus ni des gardiens et aucun indice indiquant où ils se trouvent.\n\nSan Francisco, de nos jours. Le lieutenant Rebecca Madsen et le professeur Diego Soto, historien spécialiste d\'Alcatraz qui vit de l\'écriture de bandes dessinées, s\'associent avec une agence secrète dirigée par Emerson Hauser. Leur mission est de retrouver les 302 prisonniers et gardiens de la célèbre prison qui ont traversé le temps jusqu\'à aujourd\'hui sans vieillir et avec une mission indéterminée.',1,13,'2012-01-16','2012-03-26'),(21,'Continuum','En 2077, Kiera Cameron est un agent, envoyée par accident dans le passé. Elle tente d\'appréhender les condamnés à mort qui se sont évadés dans ce même espace-temps. Coincée à Vancouver en 2012, elle ne peut plus rejoindre ni son mari ni son fils, restés en 2077.\n\nElle lutte alors, avec l\'aide du lieutenant de police Carlos Fonnegra, contre les criminels et terroristes qui pourraient l\'empêcher de retourner à son époque et plus encore, définitivement effacer son avenir et, ipso facto, sa famille.',4,42,'2012-05-27','2015-10-09');
/*!40000 ALTER TABLE `serie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-16  3:36:57
