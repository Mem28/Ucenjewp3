use edunovawp3;

select * from smjerovi;

insert into smjerovi (naziv,trajanje,cijena,vaucer)
values ('Web programiranje', 225, 1859.45, 1);

insert into smjerovi values
('Web dizajn', null, null, null);

insert into smjerovi(naziv) values ('čadkč ČDJK');


insert into smjerovi(naziv,trajanje,cijena,vaucer)
values ('knjigovodstvo', 185, 1324.34,1);

delete from smjerovi;

insert into smjerovi (naziv,trajanje,cijena,vaucer)
values ('web programiranje', 225, 1911.10, 1);

insert into smjerovi(naziv) values ('web dizajn');
insert into smjerovi(naziv) values ('knjigovodstvo');
insert into smjerovi(naziv) values ('engleski jezik');

select * from predavaci;

insert into predavaci( ime,prezime,email,oib,iban)
values ('Tomislav', 'Jakopec', 'tomislav.jakopec@gmail.com', null,null);
insert into predavaci( ime,prezime,email,oib,iban)
values ('Pero', 'Marić', 'maric.pero@gmail.com', null, null);
insert into predavaci( ime,prezime,email,oib,iban)
values('Željka', 'Tikulić', 'zeljka_tikulic@gmail.com', '55543215762', null);
insert into predavaci( ime,prezime,email,oib,iban)
values('Marijan', 'Novak', 'marnovak@gmail.com', null, 'HR23000036487475384');


select * from polaznici;

insert into polaznici (ime, prezime, email, oib, brojugovora)
values ('Ana', 'Horvat', 'ana.horvat@gmail.com', null, null);

insert into polaznici (ime, prezime, email, oib, brojugovora)
values ('Tea', 'Perić', 'tea.peric@gmail.com', null, null);

insert into polaznici (ime, prezime, email, oib, brojugovora)
values ('Leon', 'Androković', 'leonoandrokovic@gmail.com', null, null);

insert into polaznici (ime, prezime, email, oib, brojugovora)
values ('Petar', 'Stokovir', 'petar.perosto@gmail.com', null, null);

insert into polaznici (ime, prezime, email, oib, brojugovora)
values ('Julija', 'Marinković', 'juli.marinkovic@gmail.com', null, null);

insert into polaznici (ime, prezime, email, oib, brojugovora)
values ('Patrik', 'Horvokas', 'patrik.uvijek@gmail.com', null, null);

insert into polaznici (ime, prezime, email, oib, brojugovora)
values ('Dolores', 'Pušić', 'dooris.pusic@gmail.com', null, null);

insert into polaznici (ime, prezime, email, oib, brojugovora)
values ('Toni', 'Lukić', 'toni.lukic22@gmail.com', null, null);





