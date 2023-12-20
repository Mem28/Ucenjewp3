use master;
go
drop database if exists webshop;
go
create database webshop collate Croatian_CI_AS;
go
use webshop;

create table proizvodi(
sifra int not null primary key identity(1,1),
naziv varchar (50) not null,
datumnabave datetime,
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
cijena_sifra int not null
);

create table kupci(
sifra int not null primary key identity(1,1),
ime varchar (50) not null,
prezime varchar (50) not null,
ulica varchar(50),
mjesto varchar (50)
);

alter table stavke add foreign key (racuni_sifra) references racuni(sifra);
alter table stavke add foreign key (proizvodi_sifra) references proizvodi(sifra);
alter table stavke add foreign key (cijena_sifra) references proizvodi (sifra);
alter table racuni add foreign key (kupci_sifra) references kupci(sifra);



insert into kupci(ime,prezime,ulica,mjesto)
values
('Željka','Lažinić','Vojnovićeva 111', 'Dubrovnik'),
('Petra','Kalazić','Vukovarska 33','Osijek'),
('Tin','Tomas','Županijska 23','Zagreb');

select*from proizvodi; --1do3

insert into proizvodi(naziv,datumnabave,cijena,aktivan)
values
('Prada paradox','2023-02-21 10:00:00',58.90,'DA'),
('Mancera red tobacco','2023-01-11 11:00:00', 111.30,'DA'),
('Carolina Herrera','2023-01-25 01:11:25', 101.90,'DA');


insert into racuni(datum,kupci_sifra,status)
values
(null,1,'odobreno'),
(null,1,'odobreno'),
(null,2,'odobreno'),
(null,2,'odobreno'),
(null,3,'odobreno'),
(null,3,'odobreno');


insert into stavke(racuni_sifra,proizvodi_sifra,cijena_sifra,kolicina)
values
(2,1,1,2),
(1,2,2,1),
(6,3,3,3),
(5,2,2,1),
(4,1,1,2),
(3,2,3,3);

