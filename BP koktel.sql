use master;
go
drop database if exists koktelbp;
go
create database koktelbp collate Croatian_CI_AS;
go
use koktelbp;

create table kokteli(
sifra int not null primary key identity (1,1),
naziv varchar (50) not null
);
create table sastojci(
sifra int not null primary key identity(1,1),
naziv varchar(50) not null,
vrsta varchar(50)
);
create table stavke(
koktel int not null,
sastojak int not null,
normativ varchar(50)
);

alter table stavke add foreign key (koktel) references kokteli(sifra);
alter table stavke add foreign key (sastojak) references sastojci(sifra);



insert into kokteli(naziv)
values
('Mojito'),('Mojito virgin'),('Sex on the beach'),('Pina colada'),('Daiquiri'),
('Cosmopolitan'),('Margarita'),('Whiskey sour'),('Old fashioned'),('Mai tai'),('Cuba libre'),('Moscow mule');



insert into sastojci(naziv,vrsta)
values
('bijeli rum','alkohol'),('sok cijeðene limete','sok'),('mineralna voda',null),('smeði šeæer',null),('menta',null),('drobljeni led',null),
('liker od breskve','liker'),('votka','alkohol'),('sok od naranèe','sok'),('sok od brusnice','sok'),('kockice leda',null),
('krema od kokosa',null),('sirup od kokosa','sirup'),('sok od ananasa','sok'),('Cointreau','alkohol'),('tequila','alkohol'),
('simple sirup','sirup'),('sol',null),('bourbon whiskey','alkohol'),('sok od limuna','sok'),('angostura',null),('amaretto','alkohol'),
('coca-cola','sok'),('ginger beer',null);




insert into stavke(koktel,sastojak,normativ)
values
(1,1,'5cl'),(1,2,'3cl'),(1,3,'1dcl'),(1,4,'1žlica'),(1,5,'7listiæa'),(1,6,'puna èaša');

insert into stavke(koktel,sastojak,normativ)
values
(2,2,'3cl'),(2,3,'1dcl'),(2,4,'1žlica'),(2,5,'7listiæa'),(2,6,'puna èaša');

insert into stavke(koktel,sastojak,normativ)
values
(3,7,'4cl'),(3,8,'3cl'),(3,9,'8cl'),(3,10,'2cl'),(3,11,'puna èaša');

insert into stavke(koktel,sastojak,normativ)
values
(4,1,'6cl'),(4,12,'3cl'),(4,13,'2cl'),(4,14,'4,5cl'),(4,2,'1,5cl'),(4,6,'puna èaša - blendati');

insert into stavke(koktel,sastojak,normativ)
values
(5,1,'6cl'), (5,2,'2cl'),(5,17,'2cl'),(5,11,'puna èaša');

insert into stavke(koktel,sastojak,normativ)
values
(6,8,'3cl'),(6,15,'1,5cl'),(6,2,'1žlièica'),(6,10,'0,5cl'),(6,11,'puna èaša');

insert into stavke(koktel,sastojak,normativ)
values
(7,16,'5cl'),(7,15,'2cl'),(7,17,'0,5cl'),(7,2,'2cl'),(7,20,'1cl'),(7,11,'puna èaša'),(7,18,'na èaši napraviti rub od soli');

insert into stavke(koktel,sastojak,normativ)
values
(8,19,'4,5cl'),(8,20,'3cl'),(8,17,'1,5cl'),(8,11,'puna èaša');

insert into stavke(koktel,sastojak,normativ)
values
(9,4,'1žlièica'),(9,21,'3kapljice'),(9,19,'6cl');

insert into stavke(koktel,sastojak,normativ)
values
(10,15,'2cl'),(10,1,'4cl'),(10,22,'1cl'),(10,20,'2cl'),(10,17,'2cl'),(10,2,'1cl'),(10,5,'puna èaša');

insert into stavke(koktel,sastojak,normativ)
values
(11,1,'5cl'),(11,23,'12cl'),(11,2,'3cl'),(11,11,'puna èaša');

insert into stavke(koktel,sastojak,normativ)
values
(12,5,'5cl'),(12,2,'3cl'),(12,24,'12cl'),(12,6,'puna èaša');