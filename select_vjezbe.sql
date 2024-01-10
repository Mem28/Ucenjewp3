select*from smjerovi;
select naziv,naziv from smjerovi;

select naziv,cijena,* from smjerovi;
select naziv as smjer_naziv, cijena from smjerovi;

select naziv,cijena,'Osijek' as mjesto, 2 as broj from smjerovi;

select naziv,len(naziv) as znakova from smjerovi;

select getdate();

select ime,prezime from polaznici
where prezime = 'Toliæ';

select*from polaznici where sifra<12;

select*from polaznici where ime like '%a%';

select*from polaznici where sifra between 2 and 5;

select *from polaznici where sifra in (2,7,9);

select*from polaznici where ime like '%a%' and sifra>10;

select*from polaznici where ime not like '%a%';

select*from polaznici where ime like 'm%'or ime like '1%'
order by prezime desc;

select top 10*from polaznici;

select top 10* into odabrani from polaznici;


select*from odabrani;

drop table odabrani;

use knjiznica;

select* from katalog;

select* from katalog where naslov like'%život%';

select* from katalog where naslov like'%ljubav%' and sifra not in (2784,2938,3036,2541,3031);

select*from mjesto where naziv like'&kaladont&';

select count (*) from mjesto;