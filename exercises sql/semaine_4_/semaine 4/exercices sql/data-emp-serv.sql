BEGIN TRANSACTION;

create table emp
(
noemp int not null,
nom varchar(20),
prenom varchar(20),
emploi varchar(20),
sup int,
embauche date,
sal float,
comm float,
noserv int,
noproj int
);


create table serv
(
noserv int not null,
service varchar(20),
ville varchar(20)
);

insert into serv values (1,'DIRECTION','PARIS');
insert into serv values (2,'LOGISTIQUE','SECLIN');
insert into serv values (3,'VENTES','ROUBAIX');
insert into serv values (4,"FORMATION","VILLENEUVE D'ASCQ");
insert into serv values (5,'INFORMATIQUE','LILLE');
insert into serv values (6,'COMPTABILITE','LILLE');
insert into serv values (7,'TECHNIQUE','ROUBAIX');

insert into emp values (1000,'LEROY','PAUL','PRESIDENT',null,'1987-10-25',55005.5,null,1,null);
insert into emp values (1100,'DELPIERRE','DOROTHEE','SECRETAIRE',1000,'1987-10-25',12351.24,null,1,null);
insert into emp values (1101,'DUMONT','LOUIS','VENDEUR',1300,'1987-10-25',9047.9,0,1,null);
insert into emp values (1102,'MINET','MARC','VENDEUR',1300,'1987-10-25',8085.81,17230,1,null);
insert into emp values (1104,'NYS','ETIENNE','TECHNICIEN',1200,'1987-10-25',12342.23,null,1,null);
insert into emp values (1105,'DENIMAL','JEROME','COMPTABLE',1600,'1987-10-25',15746.57,null,1,null);
insert into emp values (1200,'LEMAIRE','GUY','DIRECTEUR',1000,'1987-03-11',36303.63,null,2,null);
insert into emp values (1201,'MARTIN','JEAN','TECHNICIEN',1200,'1987-06-25',11235.12,null,2,null);
insert into emp values (1202,'DUPONT','JACQUES','TECHNICIEN',1200,'1988-10-30',10313.03,null,2,null);
insert into emp values (1300,'LENOIR','GERARD','DIRECTEUR',1000,'1987-04-02',31353.14,13071,3,null);
insert into emp values (1301,'GERARD','ROBERT','VENDEUR',1300,'1999-04-16',7694.77,12430,3,null);
insert into emp values (1303,'MASURE','EMILE','TECHNICIEN',1200,'1988-06-17',10451.05,null,3,null);
insert into emp values (1500,'DUPONT','JEAN','DIRECTEUR',1000,'1987-10-23',28434.84,null,5,null);
insert into emp values (1501,'DUPIRE','PIERRE','ANALYSTE',1500,'1984-10-24',23102.31,null,5,null);
insert into emp values (1502,'DURAND','BERNARD','PROGRAMMEUR',1500,'1987-07-30',13201.32,null,5,null);
insert into emp values (1503,'DELNATTE','LUC','PUPITREUR',1500,'1999-01-15',8801.01,null,5,null);
insert into emp values (1600,'LAVARE','PAUL','DIRECTEUR',1000,'1991-12-13',31238.12,null,6,null);
insert into emp values (1601,'CARON','ALAIN','COMPTABLE',1600,'1985-09-16',33003.3,null,6,null);
insert into emp values (1602,'DUBOIS','JULES','VENDEUR',1300,'1990-12-20',9520.95,35535,6,null);
insert into emp values (1603,'MOREL','ROBERT','COMPTABLE',1600,'1985-07-18',33003.3,null,6,null);
insert into emp values (1604,'HAVET','ALAIN','VENDEUR',1300,'1991-01-01',9388.94,33415,6,null);
insert into emp values (1605,'RICHARD','JULES','COMPTABLE',1600,'1985-10-22',33503.35,null,5,null);
insert into emp values (1615,'DUPREZ','JEAN','BALAYEUR',1000,'1998-10-22',6000.6,null,5,null);

-- affichez tous les employée : la table s'appelle emp
-- select * from emp;

-- affichez tous les services : la table s'appelle serv
-- select * from serv;

-- Sélectionner les emplois de la table EMP.
-- select emploi from emp;

-- Sélectionner les différents emplois de la table EMP regardez : DISTINCT
-- select distinct emploi from emp;

-- Sélectionner les employés du service N°3.
-- select * from emp where noserv = 3;

--Sélectionner les noms, prénoms, numéro d’employé, numéro de service de tous les techniciens.
-- select nom, prenom, noemp, noserv  from emp where emploi ="TECHNICIEN";


-- Sélectionner les noms, numéros de service de tous les services dont le numéro est supérieur à 2.
-- select service, noserv from serv where noserv > 2;
-- select "";
-- Sélectionner les noms, numéros de service de tous les services dont le numéro est inférieur ou égal à 2.
-- select service, noserv from serv where noserv <= 2;
-- select "";
-- Sélectionner les employés dont la commission est inférieure au salaire.
-- select * from emp where comm < sal;
-- select "";
------------------------------------------------------------------
-- Pour les exercices suivants, il faut voir comment fonctionne les "Null"
------------------------------------------------------------------

-- Sélectionner les employés qui ne touchent jamais de commission.
-- select * from emp where comm is null; --Hugo
-- select "";

-- Sélectionner les employés qui touchent éventuellement une commission.
-- select * from emp where comm IS NOT NULL;
-- select "";

-- Sélectionner les employés qui ont un chef.
-- select * from emp where sup is NOT NULL;
-- select "";

-- Sélectionner les employés qui n’ont pas de chef.
-- select * from emp where sup iS NULL;
-- select "";

-----------------------------------------------------------------
-- SELECT AVEC CLAUSE WHERE : and, or, not
-----------------------------------------------------------------

-- Sélectionner les noms, emploi, salaire, numéro de service de tous les employés du service 5 qui gagnent plus de 20000 €.
-- select nom, emploi, sal, noserv from emp where noserv = 5 AND sal >20000;
-- select "";

-- Sélectionner dans les employés tous les présidents et directeurs. Attention, le français et la logique sont parfois contradictoires.
-- select * from emp where emploi = "DIRECTEUR" OR "PRESIDENT";
-- select "";

-- Sélectionner les directeurs qui ne sont pas dans le service 3.
-- select * from emp where emploi = "DIRECTEUR" AND noserv != 3;
-- select "";

-- Sélectionner les directeurs et « les techniciens du service 1 .
-- select * from emp where emploi = "DIRECTEUR" OR emploi="TECHNICIEN" AND noserv=1;
-- select "";

-- Sélectionner les « directeurs et les techniciens » du service 1.
-- select * from emp where (emploi = "DIRECTEUR" OR emploi="TECHNICIEN") AND noserv=1;
-- select "";

--------------------------------------------------------------------------
--EXERCICES : Prédicats construits avec IN, BETWEEN, LIKE
--------------------------------------------------------------------------

-- Sélectionner les employés qui sont techniciens, comptables ou vendeurs.
-- select * from emp where emploi IN("TECHNICIEN", "COMPTABLE", "VENDEUR");
-- select "";

-- Sélectionner les directeurs des services 2, 4 et 5.
-- select * from emp where emploi = "DIRECTEUR" AND noserv IN(2,4,5);
-- select "";

-- Sélectionner les employés qui gagnent en salaire entre 20000 et 40000 euros.
-- select * from emp where sal BETWEEN 20000 AND 40000;
-- select "";

-- Sélectionner les employés qui ne sont pas directeur et qui ont été embauchés en 88.
-- select * from emp where emploi NOT LIKE"DIRECTEUR%" AND embauche LIKE "1988%";
-- select "";

-- Sélectionner les employés dont le nom commence par la lettre M.
-- select * from emp where nom LIKE"M%";
-- select "";

-- Sélectionner les employés ayant au moins deux E dans leur nom.*/
-- select * from emp where nom LIKE "%E%E%";
-- select "";

-- Sélectionner les employés ayant exactement un E dans leur nom. 2 points pour la bonne réponse
-- select * from emp where nom LIKE "%E%" AND NOT nom LIKE "%E%E%";
-- select "";

------------------------------------------------------------------
--              mettre de l'ordre : ORDER BY
------------------------------------------------------------------
 
-- Trier les employés (nom, prénom, n° de service, salaire) du service 3 par ordre de salaire croissant.
-- select nom, prenom, noserv, sal from emp where noserv = 3 ORDER BY sal ASC;
-- select "";

-- Trier les employés (nom, prénom, n° de service , salaire) du service 3 par ordre de salaire décroissant.
-- select nom, prenom, noserv, sal from emp where noserv = 3 ORDER BY sal DESC;
-- select "";
-- triez les personnes dans l'ordre Alphabetique de leur nom et s'ils ont le meme nom, celui du prenom
-- select nom,prenom from emp ORDER BY nom, prenom;
-- select "";

-----------------------------------------------------------------------------

-- pour chaque employés affichez le nom, le prénom et le nom de son service

-- select nom, prenom, service 
-- from emp e, serv s
-- where e.noserv = s.noserv;

-- select "";

-- select nom, prenom, service 
-- from emp e join serv s on e.noserv = s.noserv;

-- pour chaque employés affichez le prenom, le nom de l'employé et celui de son supérieur

-- select e1.nom, e1.prenom , e2.nom, e2.prenom 
-- from emp e1, emp e2
-- where e1.sup = e2.noemp;

-- select "";

-- select e1.nom, e1.prenom , e2.nom, e2.prenom 
-- from emp e1 join emp e2 on e1.sup = e2.noemp;

----------------------------------------------------------------------------
--          Creation : Créer une table et Insérer des donnée
----------------------------------------------------------------------------

-- nous allons créer une table : projet avec comme éléments à l'intérieur :
--  n° de projet = noproj
--  nom de projet = nomProj
--  capital du projet = capital

create table projet (
noproj int not null,
nomproj varchar(6),
capital float
);



insert into projet (noproj,nomproj,capital) values (1,"ALPHA",500000.0);
insert into projet values (2,"BETA", 750000.5);
insert into projet values (3,"GAMMA", 1000000.25);

select * from projet;

-- on ajoute le SAV en tant que nouveau service,
-- c'est le 8eme service
-- il est basé à LOMME
-- Créez ce nouveau service

insert into serv values (8, 'SAV', 'LOMME');

-- Vous etes le(a) nouveau(elle) Directeur(trice) de ce nouveau service, salaire à votre convenance !!!!
insert into emp values (1616,'WILS','DAVID','DIRECTEUR',1000,'2022-01-19',1000000.0,null,8,null);

---------------------------------------------------------------------------
--                  Mise à jour : UPDATE
---------------------------------------------------------------------------

-- oups votre salaire n'est pas à la hauteur de votre nouvelle fonction : doublez-le
UPDATE emp
SET sal = sal * 2
WHERE prenom = upper("daVid");

select * from emp where prenom = "DAVID";

-- le projet Alpha est attribué aux personnes qui ont un salaire inférieur à 9000 euros

-- le Projet Béta est attribué aux Vendeurs et aux personnes travaillant en Informatique

-- le projet Gamma est destiné aux personnes n'aillant pas encore de projet

---------------------------------------------------------------------
--                       Supprimer : DELETE
---------------------------------------------------------------------

-- Virez le president !!!!

---------------------------------------------------------------------

-- Vous voila Promu(e) président(e) ! votre salaire est multipliée par 4, les subalternes du précédent président sont les vôtre
