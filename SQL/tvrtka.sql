use master;
go
drop database if exists tvrtka;
go
create database tvrtka collate Croatian_CI_AS;
go
use tvrtka;

create table zaposlenici(
sifra int not null primary key identity(1,1),
ime varchar (50) not null,
prezime varchar (50) not null,
datumrodjenja datetime,
placa decimal (18,2),
invalid varchar(2)
);

create table slike(
sifra int not null,
zaposlenici_sifra int not null,
rednibroj int,
putanja varchar(50)
);

alter table slike add foreign key (zaposlenici_sifra) references zaposlenici(sifra);

select * from zaposlenici;
insert into zaposlenici(ime,prezime,datumrodjenja,placa,invalid)
values
('Pero','Lukić','1965-11-25 20:00:00',1020.20,'ne'),
('Mate','Perić','1959-09-07 14:00:00',930.20,'da'),
('Marija','Teran','1989-02-13 11:30:00',789.50,'ne');

select*from slike;
insert into slike(sifra,zaposlenici_sifra,rednibroj,putanja)
values
(1,1,1,'putanja1'),
(2,1,2,'putanja2'),
(3,2,3,'putanja3'),
(4,2,4,'putanja4'),
(5,3,5,'putanja5'),
(6,3,6,'putanja6');


