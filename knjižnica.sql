use master;
go
drop database if exists knjiznica;
go
create database knjiznica collate Croatian_CI_AS;
go
use knjiznica;

create table osobe(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null,
adresa varchar(50),
email varchar(50)
);

create table clan(
sifra int not null primary key identity(1,1),
clbroj int
);

create table vlasnik(
sifra int not null primary key identity(1,1),
knjiga int
);

create table knjige(
sifra int not null primary key identity(1,1),
naslov varchar(50) not null,
pisac varchar(50) not null,
vlasnik_sifra int,
clan_sifra int,
datumpos datetime,
datumvrac datetime
);

alter table knjige add foreign key (vlasnik_sifra) references vlasnik(sifra);
alter table knjige add foreign key (clan_sifra) references clan(sifra);



insert into osobe(ime,prezime,adresa,email)
values
('Marko','Žaper','Vukovarska 111', 'markozap@gmail.com'),
('Pero','Lukić','Županijska 22','perolukic@gmail.com'),
('Lana','Klarić','Divaltova 55','Lanaklar@gmail.com');


insert into clan(clbroj)
values 
(1),(2),(3);


insert into vlasnik(knjiga)
values
(1),(2),(3),(4),(5);


insert into knjige(vlasnik_sifra,clan_sifra,naslov,pisac,datumpos,datumvrac)
values
(2,3,'Između redaka','Lauren Asher',null,null),
(3,1,'Krvni izdajnik','Lynette Noni',null,null),
(5,2,'Sjeti se','Carly Cesaire',null,null);