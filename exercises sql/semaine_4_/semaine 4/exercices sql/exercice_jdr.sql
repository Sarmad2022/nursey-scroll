CREATE TABLE classes (
    id_classes  INT PRIMARY KEY NOT NULL,
    nom_class VARCHAR(255),
    armes_favorites VARCHAR(255)
);

CREATE Table races (    
    id_race INT PRIMARY KEY NOT NULL,
    nom_race VARCHAR(255)
);

CREATE table personnages (
    id INT PRIMARY KEY not NULL,
    nom VARCHAR(255),
    fk_id_classe INT,
    fk_id_race INT,
    fk_id_pet INT
);

CREATE Table pets (
    id_pet INT PRIMARY KEY NULL,
    nom_pet VARCHAR(255),
    peut_etre_monte boolean
);

insert into classes values(1,'Guerrier','Epée lourde'),(2,'Mage','Baguette et Grimoire'),(3,'Voleur','2 dagues'),(4,'Invokeur','Baton'),(5,'Archer','Arc et Fleches');

INSERT INTO races values (1,'Humain'),(2,'Elfes de sang'),(3,'Elfe de la nuit'),(4,'Orc'),(5,'Nain');

INSERT INTO pets VALUES (1,'Cheval',true),(2,'Griffon',true),(3,'Loup',true),(4,'Hamster',false),(5,'perroquet',false);

INSERT INTO personnages VALUES (1,'Michael Myers',1,4,1),(2,'Pinhead',2,1,3),(3,'Freddy Krueger',3,2,2),(4,'Jason Voorhees',4,5,5),(5,'LeatherFace',5,3,4);

SELECT nom, nom_class, nom_race, nom_pet FROM personnages JOIN classes ON fk_id_classe = id_classes join races on fk_id_classe = id_race join pets on fk_id_pet= id_pet;

SELECT nom, nom_race FROM personnages join races on fk_id_classe = id_race;

SELECT nom, nom_pet FROM personnages join pets on fk_id_pet= id_pet;

/* faire une view*/

create view fiche_perso as SELECT id, nom, nom_class, nom_race, nom_pet FROM personnages JOIN classes ON fk_id_classe = id_classes join races on fk_id_race = id_race join pets on fk_id_pet= id_pet;

INSERT INTO personnages VALUES (6,'Hannibal Lecter',2,5,3);

select * from fiche_perso;

select * from personnages;

drop View fiche_perso;
