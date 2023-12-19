use master;
go
drop database if exists tvrtka;
go
create database tvrtka;
go
use tvrtka;

create table zaposlenici(
sifra int not null primary key identity(1,1),
ime varchar (50) not null,
prezime varchar (50) not null,
datumrodjenja date,
placa decimal,
invalid varchar (5)
);

create table slike(
sifra_zaposlenici int not null,
rednibroj int,
putanja varchar(10)
);

alter table slike add foreign key (sifra_zaposlenici) references zaposlenici(sifra);


select * from slike;

insert into slike(sifra_zaposlenici,rednibroj,putanja)
values 
(1,1,'putanja1'),
(2,2,'putanja2'),
(1,3,'putanja3'),
(2,4,'putanja4'),
(3,5,'putanja5'),
(3,6,'putanja5');

select * from zaposlenici;

insert into zaposlenici(ime,prezime,datumrodjenja,placa,invalid)
values
('Suzana','Boras','1987-02-15',698.25,'da'),
('Mihael','Novak','1955-11-01',1001.25,'da'),
('Pero','Maric','1965-01-11',2010.14,'ne');



use master;
go
drop database if exists webshop;
go
create database webshop;
go
use webshop;


create table proizvodi(
sifra int not null primary key identity(1,1),
naziv varchar (50) not null,
datumnabave date,
cijena decimal (18,2),
aktivan varchar(2)
);

create table racuni(
sifra int not null primary key identity(1,1),
datum datetime,
kupci_sifra int not null,
status varchar(50)
);


create table stavke(
racuni_sifra int not null,
proizvodi_sifra int not null,
kolicina int,
cijena_proizvodi int not null
);


create table kupci(
sifra int not null primary key identity(1,1),
ime varchar (50) not null,
prezime varchar(50) not null,
ulica varchar(50),
mjesto varchar(50)
);

alter table stavke add foreign key (racuni_sifra) references racuni(sifra);
alter table stavke add foreign key (proizvodi_sifra) references proizvodi(sifra);
alter table racuni add foreign key (kupci_sifra) references kupci(sifra);
alter table stavke add foreign key (cijena_proizvodi) references proizvodi (sifra);



select * from kupci;

insert into kupci(ime,prezime,ulica,mjesto)
values
('Pero','Marić','Vukovarska 15','Osijek'),
('Toni','Lekić','Riječka 14','Osijek'),
('Vesna','Martinović','Divaltova 114','Osijek');

select * from proizvodi; --1-5

insert into proizvodi(naziv,datumnabave,cijena,aktivan)
values
('Noćna svjetiljka', '2023-01-23',23.05,'DA'),
('Luster Crni', '2023-07-05',42.65,'DA'),
('Metla s drškom', '2023-05-23',09.05,'DA'),
('Lopata mala', '2022-04-15',05.05,'DA'),
('Vreće za smeće 15L', '2022-03-15',02.99,'DA');

select * from racuni; --6-10

insert into racuni(datum,kupci_sifra,status)
values
('2023-11-25 11:00:00',1, 'odobreno'),
('2023-05-11 23:04:11',1,'odobreno'),
('2023-11-25 14:08:23',2,'odobreno'),
('2023-02-02 09:14:23',3,'u obradi'),
('2022-12-24 01:15:11',3,'odobreno');


select*from stavke;

insert into stavke(racuni_sifra,proizvodi_sifra,kolicina,cijena_proizvodi)
values 
(6,1,3,1),
(7,2,1,2),
(8,3,2,3);

