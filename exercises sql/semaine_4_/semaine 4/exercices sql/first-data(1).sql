/* Create a table called NAMES */
CREATE TABLE Personnes(Id integer PRIMARY KEY, prenom text, age int, metier text );

/* Create few records in this table */
INSERT INTO Personnes VALUES(1,'Tom', 28 , 'Cuisinier'), (2,'Lucy', 18 , 'Etudiante'), (3,'Frank', 31 , 'Cariste'), (4,'Jane',  21 , 'Musicienne' ), (5,'Robert', 54 , 'Chauffeur');

-- 1. Afficher les toutes les colonnes de la table personne
select * from personnes;

-- 2. Afficher juste le prénom
select prenom FROM personnes;

-- 3. Afficher le prénom et le métier
select prenom,metier from personnes;

-- 4. Afficher l'age et la profession
SELECT age,metier FROM personnes;

-- 5. Affichez les informations de Lucy
select * from personnes where prenom='Lucy';

-- 6. Afficher la personne de 21 ans et qui est musicienne
select * from personnes where age=21 and metier = 'Musicienne';

-- 7. Afficher le Cuisinier et le Chauffeur
SELECT * FROM Personnes 
WHERE metier = 'Cuisinier' OR  metier = 'Chauffeur';

-- 8. Afficher les personnes qui ne sont pas Cariste
select * from personnes where not metier = 'Cariste';

-- 9. affichez les personnes de plus de 20 ans
SELECT * FROM Personnes WHERE age > 20 ;

-- 10. affichez les personnes de moins de 40 ans et qui ont un id > 2
SELECT * FROM Personnes WHERE age < 40 And id > 2 ;

-- 11. trouvez les prénoms qui contiennent un 'a'
SELECT * FROM Personnes WHERE prenom LIKE '%a%' ;

-- 12. Trouvez les métiers qui contiennent à la fois un 'e' et un 'r'
SELECT * FROM personnes WHERE metier LIKE '%e%' AND metier LIKE '%r%';

-- 13. Affichez le Cariste, le Cuisinier et l'Etudiante
SELECT * FROM personnes where metier IN ('Cariste', 'Cuisinier', 'Etudiante');

-- 14. affichez les personnes entre 20 et 40 ans
SELECT * FROM personnes WHERE age BETWEEN 20 AND 40;

-- 15. Affichez toute la table par ordre croissant d'age
SELECT * FROM personnes ORDER BY age;

-- 16. Affichez les personnes qui ne sont pas compris entre 20 et 40 par ordre décroissant d'age
SELECT * FROM Personnes WHERE age NOT BETWEEN  20 AND 40 ORDER BY age DESC;

-- Bonus Affichez les personnes qui ont un métier qui contient au moins 2 voyelles identiques trié par ordre alphabétique de prénom
SELECT * FROM personnes WHERE metier Like '%i%i%' OR metier LIKE '%e%e%' OR metier LIKE '%a%a%' OR metier LIKE '%o%o%' OR metier LIKE '%u%u%' OR metier LIKE 'E%e%' ORDER BY prenom;

-- Ajout de la 2me table
CREATE Table cars
(
id_Cars INT PRIMARY KEY NOT NULL,
marque VARCHAR(20),
modeles  VARCHAR(20),
prix FLOAT,
mise_en_circulation DATE,
couleur VARCHAR(20)
);

SELECT*FROM cars;

INSERT INTO cars(id_cars,marque,modeles,prix,mise_en_circulation,couleur)
VALUES(1,'audi','rs6',50000, '2019-01-01' ,'rouge');

INSERT INTO cars(id_cars,marque,modeles,prix,mise_en_circulation,couleur)
VALUES(2,'citroen','cactus',15000, '2019-01-01' ,'vert');

INSERT INTO cars(id_cars,marque,modeles,prix,mise_en_circulation,couleur)
VALUES(3,'bmw','serie 7',107000, '2021-01-01' ,'blanc');

INSERT INTO cars(id_cars,marque,modeles,prix,mise_en_circulation,couleur)
VALUES(4,'mercedes','hybride',520000, '2022-01-01' ,'bleu');

Alter table personnes add column id_voiture int;

select * from personnes;

UPDATE personnes set id_voiture = 1 where id = 1;
UPDATE personnes set id_voiture = 2 where id = 3;
UPDATE personnes set id_voiture = 3 where id = 5;
UPDATE personnes set id_voiture = 4 where id = 4;

-- 17. Affichez la personne qui n'a pas de voiture
select * from personnes where id_voiture is null;

-- 18. Affichez les personnes ayant une voiture
select * from personnes where id_voiture is not null;

-- 19. Affichez les prénom des personnes avec le modèle et la marque de leur voiture
SELECT prenom, modeles, marque FROM personnes JOIN cars ON id_voiture = id_cars;

-- 20 cherchez le propriétaire de la voiture mise en circulation en 2019 et que le prix est supérieur à 20.000 euros
SELECT prenom, marque, mise_en_circulation, prix FROM personnes join cars ON id_voiture = id_cars WHERE mise_en_circulation = '2019-01-01' AND prix > 20000;

-- 21 Cherchez les propriétaires des voitures qui ont une mise circulation plus ancienne que la voiture de Robert
SELECT prenom, marque, mise_en_circulation from personnes JOIN cars on id_voiture = id_cars where mise_en_circulation < (select mise_en_circulation FROM personnes join cars on id_voiture = id_cars where prenom ='Robert');

-- 22 affichez les voitures plus chères que l'Audi
SELECT marque, prix FROM cars where prix >( select prix from cars where marque = 'audi');

-- 23. comptez le nombre de voiture mises en circulation de 2019 à 2021
select COUNT(*) from cars where mise_en_circulation BETWEEN '2019-01-01' and  '2021-12-31';

-- 24 Affichez la moyenne des prix des véhicules
SELECT AVG(prix)  from cars;

-- 25 Affichez la personne la plus jeune
SELECT prenom, age FROM personnes WHERE age = (SELECT MIN(age) FROM personnes);

-- 26 Affichez la voiture la plus récente
SELECT marque,mise_en_circulation FROM cars where mise_en_circulation = (SELECT MAX(mise_en_circulation) FROM cars);

-- 27 Calculez l'écart d'age en entre la personne la plus jeune et la personne la plus agée
SELECT MAX(age) - MIN(age) FROM personnes;


