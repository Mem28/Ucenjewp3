use edunovawp3;

select * from smjerovi;


insert into smjerovi (naziv,trajanje,cijena,vaucer)
values ('Web programiranje', 225, 1315.68, 1);

insert into smjerovi(naziv,trajanje,cijena,vaucer) 
values ('Web dizajn/Front end developer', 155, 783.06, null);

insert into smjerovi(naziv,trajanje,cijena,vaucer) 
values ('Knjigovođa/Računovođa', 180, 988.78,1);


insert into smjerovi(naziv,trajanje,cijena,vaucer)
values ('Engleski jezik', 30, 378.26, null);

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

insert into smjerovi(naziv,trajanje,cijena,vaucer)
values ('Menadžer marketinga',150, null,null);

insert into smjerovi(naziv,trajanje,cijena,vaucer)
values ('Turistički vodič',150, null,null);

insert into smjerovi(naziv,trajanje,cijena,vaucer)
values ('Menadžer prodaje',150, null,null);

insert into smjerovi(naziv,trajanje,cijena,vaucer)
values ('Menadžer marketinga',150, null,null);

insert into smjerovi(naziv,trajanje,cijena,vaucer)
values ('Menadžer financija',150, null,null);

insert into smjerovi(naziv,trajanje,cijena,vaucer)
values ('Poslovni tajnik/ca',40, null,null);

insert into smjerovi(naziv,trajanje,cijena,vaucer)
values ('Primjena GDPR-a',null, null,null);

insert into smjerovi(naziv,trajanje,cijena,vaucer)
values ('Medijski trening',16, null,null);

insert into smjerovi(naziv,trajanje,cijena,vaucer)
values ('Njemački jezik',30, 378.26,null);

insert into smjerovi(naziv,trajanje,cijena,vaucer)
values ('Prijevodi online',null, null,null);

insert into smjerovi(naziv,trajanje,cijena,vaucer)
values ('Pripreme za državnu maturu', null, null,null);




select * from predavaci;

insert into predavaci( ime,prezime,email,oib,iban)
values ('Tomislav', 'Jakopec', 'tomislav.jakopec@gmail.com', null,null);

insert into predavaci( ime,prezime,email,oib,iban)
values ('Dino', 'Budić', 'dino.budić@gmail.com', null, null);

insert into predavaci( ime,prezime,email,oib,iban)
values('Darko', 'Raguž', 'darko.raguz@gmail.com', null, null);

insert into predavaci( ime,prezime,email,oib,iban)
values('Krunoslav', 'Erk', 'krunoslav.erk@gmail.com', null, null);

insert into predavaci( ime,prezime,email,oib,iban)
values('Pavle', 'Vidaković', 'pavle.vidakovic@gmail.com', null, null);

insert into predavaci( ime,prezime,email,oib,iban)
values('Gordana ', 'Cerovečki-Marij', 'gordana.cerovecki@gmail.com', null, null);

insert into predavaci( ime,prezime,email,oib,iban)
values('Toni','Žufić', 'toni.zufic@gmail.com', null, null);

insert into predavaci( ime,prezime,email,oib,iban)
values('Anđelko','Rukelj', 'rukelj.and@gmail.com', null, null);

insert into predavaci( ime,prezime,email,oib,iban)
values('Daria','Duždević', 'daria.duzdevic@gmail.com', null, null);

insert into predavaci( ime,prezime,email,oib,iban)
values('Tihomir','Hunjak', 'tihomir.hunjak@gmail.com', null, null);

insert into predavaci( ime,prezime,email,oib,iban)
values('Davor','Slivka', 'davor.slivka@gmail.com', null, null);

insert into predavaci( ime,prezime,email,oib,iban)
values('Eduard', 'Kuzma', 'eduard.kuzma@gmail.com', null, null);

insert into predavaci( ime,prezime,email,oib,iban)
values('Ivor','Majer', 'ivor.majer@gmail.com', null, null);

insert into predavaci( ime,prezime,email,oib,iban)
values('Marinela','Lovrić', 'marinela.lovric@gmail.com', null, null);

insert into predavaci( ime,prezime,email,oib,iban)
values('Monika','Petrinec', 'monika.petrinec@gmail.com', null, null);

insert into predavaci( ime,prezime,email,oib,iban)
values('Barbara','Dujmović', 'barbara.dujmovic@gmail.com', null, null);

insert into predavaci( ime,prezime,email,oib,iban)
values('Maria','Dubravkić', 'marija.dubravkic@gmail.com', null, null);

insert into predavaci( ime,prezime,email,oib,iban)
values('Marijana','Žaper', 'marijana.zaper@gmail.com', null, null);

insert into predavaci( ime,prezime,email,oib,iban)
values('Marinela','Boras', 'marinela.boras@gmail.com', null, null);

insert into predavaci( ime,prezime,email,oib,iban)
values('Dora','Pavić', 'dora.pavic@gmail.com', null, null);

insert into predavaci( ime,prezime,email,oib,iban)
values('Miroslav','Dikanović', 'miroslav.dikanovic@gmail.com', null, null);

insert into predavaci( ime,prezime,email,oib,iban)
values('Toni','Žufić', 'toni.zufic@gmail.com', null, null);

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





