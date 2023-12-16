use edunovawp3;

select * from smjerovi;


insert into smjerovi (naziv,trajanje,cijena,vaucer)
values ('Web programiranje', 225, 1911.10, 1);

insert into smjerovi(naziv) values ('Web dizajn/Front end developer');
insert into smjerovi(naziv) values ('Knjigovođa/Računovođa');
insert into smjerovi(naziv) values ('Engleski jezik');

insert into smjerovi(naziv,trajanje,cijena,vaucer)
values ('Java developer',130, 922.42,0);

insert into smjerovi(naziv,trajanje,cijena,vaucer)
values ('Php developer',130, 922.42,0);

insert into smjerovi(naziv,trajanje,cijena,vaucer)
values ('Android developer',130, null ,0);

insert into smjerovi(naziv,trajanje,cijena,vaucer)
values ('Wordpress developer',20, null,0);

insert into smjerovi(naziv,trajanje,cijena,vaucer)
values ('Javascript developer',30, null ,0);

insert into smjerovi(naziv,trajanje,cijena,vaucer)
values ('Woocommerce trening',24, null,null);

insert into smjerovi(naziv,trajanje,cijena,vaucer)
values ('3D print dizajner',130, null,null);

insert into smjerovi(naziv,trajanje,cijena,vaucer)
values ('Serviser osobnih računala',155, null,null);

insert into smjerovi(naziv,trajanje,cijena,vaucer)
values ('Grafički dizajner',150, null,null);

insert into smjerovi(naziv,trajanje,cijena,vaucer)
values ('Računalni operater',155, 371.62,null);







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





