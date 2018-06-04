SELECT * FROM workshop.acteur;


#Requête 2
Select nom, (YEAR(NOW()) - YEAR(date_naissance)) AS age
FROM acteur
ORDER BY date_naissance DESC;


#Requête 4 (ne marche pas) 


#Requête 5
SELECT n.nationalite, a.nom FROM assoc_a_n AS an
INNER JOIN nationalite AS n ON n.id = an.id_nationalite
LEFT JOIN acteur AS a ON a.id = an.id_acteur ORDER BY nom;


#Requête 7
SELECT COUNT(*)
FROM serie
WHERE date_fin_diff IS NULL;


#Requête 9
SELECT titre
FROM serie
AS len_synopsis
WHERE `titre` LIKE '%M%'
ORDER BY synopsis DESC;


#Requête 10
SELECT (SELECT COUNT(id) FROM nationalite) AS nb_nationalite,
(SELECT COUNT(id) FROM acteur) AS nb_acteur,
(SELECT COUNT(id) FROM chaine_tv) AS nb_chaine_tv,
(SELECT COUNT(id) FROM genre_cinema)AS nb_genre_cinema,
(SELECT SUM(nb_episode) FROM serie) AS nb_episode;


#Requête 15
SELECT *
FROM `serie`
WHERE `date_fin_diff`
BETWEEN '2006/01/01' AND '2014/12/31'
ORDER BY `date_debut_diff` ASC;



#Requête 18








