CREATE DATABASE IF NOT EXISTS TD_I;


USE TD_I;


CREATE  TABLE IF NOT EXISTS Color (
id int unsigned not null auto_increment,
Red boolean, #couleur primaire
Blue boolean, #couleur primaire
Yellow boolean, #couleur primaire
Green boolean, #mélange
Purple boolean, #mélange
primary key (id)
)
COMMENT= 'choix de gamme de couleurs' ;


CREATE  TABLE IF NOT EXISTS Material (
id int unsigned not null auto_increment,
types1 TINYINT(255), #Les Matières existantes
primary key (id)
)
COMMENT= 'choix de matériaux' ;


CREATE  TABLE IF NOT EXISTS Quantity (
id smallint unsigned auto_increment PRIMARY KEY,
Color_id int unsigned null,
Material_id int unsigned null,
constraint cle_etrange foreign key (Color_id) references Color(id),
constraint cle_etrange2 foreign key (Material_id) references Material(id)
)
COMMENT= 'Il y a 3 éléments d_une entité (unknown)' ;



CREATE  TABLE IF NOT EXISTS Rarity (
id int unsigned not null auto_increment,
Value1 CHAR(15) not null,
primary key (id)
)
COMMENT= 'valeur de rareté';


DROP TABLE Rarity;


CREATE DATABASE if not exists Variante;
DROP DATABASE if exists Variante;