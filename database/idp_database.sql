drop table if exists Cereri;
drop table if exists Utilizatori;
drop table if exists Zboruri;


CREATE TABLE Utilizatori (
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nume VARCHAR(100) NOT NULL,
prenume VARCHAR(100) NOT NULL,
parola VARCHAR(100) NOT NULL,
varsta VARCHAR(100)
);

CREATE TABLE Zboruri (
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
plecare VARCHAR(100) NOT NULL,
destinatie VARCHAR(100) NOT NULL,
data DATE,
nr_locuri INT(6),
tip_zbor VARCHAR(100),
pret INT(6)
);

CREATE TABLE Cereri (
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
id_utilizator INT(6) UNSIGNED NOT NULL,
id_zbor INT(6) UNSIGNED NOT NULL, 
nr_persoane INT(6) UNSIGNED NOT NULL,
INDEX (id_utilizator),
FOREIGN KEY (id_utilizator)
REFERENCES Utilizatori(id),
INDEX (id_zbor),
FOREIGN KEY (id_zbor)
REFERENCES Zboruri(id)
);

insert into Utilizatori(id, nume, prenume, parola, varsta)
values (1,'Cojocaru','Miruna','abcdef',23), (2,'Fetoiu','Catalin','aaaaaa',22),
(3,'Icatoiu','Cosmin','bbbbbb',23), (4,'Toma','Andreea','qwerty',40),
(5,'Ionescu','Andrei','wwwwww',32), (6,'Burtea','Andrei','wsedrf',23),
(7,'Popescu','Flaviu','wsedrf',50), (8,'Ungureanu','Vlad','qwerfg',45),
(9,'Adespei','Dorin','wsedrf',34), (10,'Dudas','Maria','shjass',27);

insert into Zboruri (id, plecare, destinatie, data, nr_locuri, tip_zbor, pret)
values (1,'Bucuresti', 'Paris', '2019-08-10' ,30,'Economy Class', 30),
(2,'Bucuresti', 'Paris', '2019-08-20' ,20,'Economy Class', 35),
(3,'Bucuresti', 'Paris', '2019-09-10' ,25,'Economy Class', 37),
(4,'Bucuresti', 'Paris', '2019-08-10' ,40,'Business Class', 220),
(5,'Bucuresti', 'Paris', '2019-08-20' ,10,'Business Class', 150),
(6,'Bucuresti', 'Paris', '2019-09-10' ,6,'Business Class', 190),
(7,'Bucuresti', 'Paris', '2019-08-10' ,40,'First Class', 220),
(8,'Bucuresti', 'Paris', '2019-08-20' ,10,'First Class', 150),
(9,'Bucuresti', 'Paris', '2019-09-10' ,6,'First Class', 190),
(10, 'Paris', 'Bucuresti', '2019-08-10' ,30,'Economy Class', 30),
(11, 'Paris', 'Bucuresti', '2019-08-20' ,20,'Economy Class', 35),
(12, 'Paris', 'Bucuresti', '2019-09-10' ,25,'Economy Class', 37),
(13, 'Paris', 'Bucuresti', '2019-08-10' ,40,'Business Class', 220),
(14, 'Paris', 'Bucuresti', '2019-08-20' ,10,'Business Class', 150),
(15, 'Paris', 'Bucuresti', '2019-09-10' ,6,'Business Class', 190),
(16, 'Paris', 'Bucuresti', '2019-08-10' ,40,'First Class', 220),
(17, 'Paris', 'Bucuresti', '2019-08-20' ,10,'First Class', 150),
(18, 'Paris', 'Bucuresti', '2019-09-10' ,6,'First Class', 190),
(19,'Bucuresti', 'Londra', '2019-08-10' ,30,'Economy Class', 30),
(20,'Bucuresti', 'Roma', '2019-08-20' ,20,'Economy Class', 35),
(21,'Bucuresti', 'Viena', '2019-09-10' ,25,'Economy Class', 37),
(22,'Bucuresti', 'Londra', '2019-08-10' ,40,'Business Class', 220),
(23,'Bucuresti', 'Roma', '2019-08-20' ,10,'Business Class', 150),
(24,'Bucuresti', 'Viena', '2019-09-10' ,6,'Business Class', 190),
(25,'Bucuresti', 'Londra', '2019-08-10' ,40,'First Class', 220),
(26,'Bucuresti', 'Roma', '2019-08-20' ,10,'First Class', 150),
(27,'Bucuresti', 'Viena', '2019-09-10' ,6,'First Class', 190),
(28, 'Londra', 'Bucuresti', '2019-08-10' ,30,'Economy Class', 30),
(29, 'Roma', 'Bucuresti', '2019-08-20' ,20,'Economy Class', 35),
(30, 'Viena', 'Bucuresti', '2019-09-10' ,25,'Economy Class', 37),
(31, 'Londra', 'Bucuresti', '2019-08-10' ,40,'Business Class', 220),
(32, 'Roma', 'Bucuresti', '2019-08-20' ,10,'Business Class', 150),
(33, 'Viena', 'Bucuresti', '2019-09-10' ,6,'Business Class', 190),
(34, 'Londra', 'Bucuresti', '2019-08-10' ,40,'First Class', 220),
(35, 'Roma', 'Bucuresti', '2019-08-20' ,10,'First Class', 150),
(36, 'Viena', 'Bucuresti', '2019-09-10' ,6,'First Class', 190),
(37,'Bucuresti', 'Berlin', '2019-08-10' ,30,'Economy Class', 30),
(38,'Bucuresti', 'Venetia', '2019-08-20' ,20,'Economy Class', 35),
(39,'Bucuresti', 'Barcelona', '2019-09-10' ,25,'Economy Class', 37),
(40,'Bucuresti', 'Berlin', '2019-08-10' ,40,'Business Class', 220),
(41,'Bucuresti', 'Venetia', '2019-08-20' ,10,'Business Class', 150),
(42,'Bucuresti', 'Barcelona', '2019-09-10' ,6,'Business Class', 190),
(43,'Bucuresti', 'Berlin', '2019-08-10' ,40,'First Class', 220),
(44,'Bucuresti', 'Venetia', '2019-08-20' ,10,'First Class', 150),
(45,'Bucuresti', 'Barcelona', '2019-09-10' ,6,'First Class', 190),
(46, 'Berlin', 'Bucuresti', '2019-08-10' ,30,'Economy Class', 30),
(47, 'Venetia', 'Bucuresti', '2019-08-20' ,20,'Economy Class', 35),
(48, 'Barcelona', 'Bucuresti', '2019-09-10' ,25,'Economy Class', 37),
(49, 'Berlin', 'Bucuresti', '2019-08-10' ,40,'Business Class', 220),
(50, 'Venetia', 'Bucuresti', '2019-08-20' ,10,'Business Class', 150),
(51, 'Barcelona', 'Bucuresti', '2019-09-10' ,6,'Business Class', 190),
(52, 'Berlin', 'Bucuresti', '2019-08-10' ,40,'First Class', 220),
(53, 'Venetia', 'Bucuresti', '2019-08-20' ,10,'First Class', 150),
(54, 'Barcelona', 'Bucuresti', '2019-09-10' ,6,'First Class', 190);

insert into Cereri (id, id_utilizator, id_zbor, nr_persoane)
values (1, 2, 4, 2), (2, 2, 15, 2), (3, 3, 49, 3),
(4, 4, 54, 2), (5, 5, 47, 2), (6, 6, 39, 1), (7, 6, 43, 2),
(8, 8, 38, 2), (9, 9, 23, 1), (10, 10, 52, 2)




