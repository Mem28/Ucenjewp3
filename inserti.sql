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








