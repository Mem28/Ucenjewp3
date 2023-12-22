use master;
go
drop database if exists koktelbp;
go
create database koktelbp collate Croatian_CI_AS;
go
use koktelbp;

create table kokteli(
sifra int not null primary key identity (1,1),
naziv varchar (50) not null,
opis text
);
create table sastojci(
sifra int not null primary key identity(1,1),
naziv varchar(50) not null,
vrsta varchar(50)
);
create table stavke(
koktel int not null,
sastojak int not null,
normativ varchar(50),
);

alter table stavke add foreign key (koktel) references kokteli(sifra);
alter table stavke add foreign key (sastojak) references sastojci(sifra);



insert into kokteli(naziv,opis)
values
('Mojito','Mojito je jedan od najpoznatijih koktela na svijetu. Tradicionalni Kubanski koktel nastao u Havani 
brzinom munje se proširio po svijetu zahvaljujući trgovcima i gusarima. S obzirom da je imao sastojke
koji su u izobilju na otoku te uz njegovu lakoću izrade nije ni čudo da je postao tako popularan.'),

('Mojito virgin','Osvježavajuća mješavina limete i mente, ovaj Virgin Mojito recept bit će vaše novo omiljeno piće!
Ovaj bezalkoholni recept za mojito bit će hit kod djece i odraslih. '),

('Sex on the beach','Uz Mojito vjerojatno najpopularniji koktel u Hrvatskoj. Što se tiče porijekla ovog koktela 
nagađa se da je potekao s Floride kada je u svrhu promocije Peach schnappsa barmen Ted Pizio 1980ih 
došao na ideju što prodaje piće. Seks. I tako je nastao Sex on the beach da privuče studente koji su 
dolazili na floridu za spring break odnosno proljetne praznike krajem 3. mjeseca.'),

('Pina colada','Pina colada je jedan od najpoznatijih ljetnih koktela porijeklom s Portorika. 
Obično se pravi u dvije verzije i to u shaken i blended verziji.
Blended verzija je verzija s više leda gdje se koktel napravi u blenderu i dobijemo 
izrazito hladno piće teksture gotovo kao sladoled.'),

('Daiquiri','Klasični Daiquiri recept se sastoji od bijelog ruma, preferabilno s Karipskih otoka
koji imaju povijest Španjolske kolonizacije, sviježeg soka od limete te sitnog šećera ili šećernog sirupa.
Nastanak recepture se pripisuje rudarskom inženjeru Jenningsu Coxu, koji je negdje u vremenu 
između 1898. i 1902. godine radio u rudniku u blizini malenog sela Daiquiri na Kubi.'),

('Cosmopolitan','Cosmopolitan koktel ili neformalno Cosmo je jedan od najpopularnijih alkoholnih koktela na svijetu.
Nastao je u 20. stoljeću, a svoju slavu stekao je zahvaljujući seriji ”Seks i Grad”.'),

('Margarita','Koktel Margarita jedan je od najomiljenijih koktela za žene. 
Oštar i ukusan, ovaj koktel je najpoznatiji koktel na bazi tequile.'),

('Whiskey sour','Ovaj koktel se prvi put u pisanim dokumentima spominje 1862. u knjizi Jerryija Thomasa
"The bartenders guide" no vrlo vjerojatno su se, ovaj koktel i kokteli iz porodice soura, pili i puno prije te godine.
Dok su mornari putovali između Europe i Amerika i nosili sa sobom viski trebalo im je vitamina C
koji su dobivali iz limuna i limeta koji su našli na otocima.'),

('Old fashioned','Unatoč svom imenu, Old Fashioned (staromodan) nikako ne stari. 
Njegovi sastojci su, prvi put, pomiješani još početkom 19. stoljeća. Od tada, Bourbon,
šećer, Agnostura biljni liker i naranča, sastojci koji čine ovaj koktel, dio su menija svakog cijenjenog koktel-bara.'),

('Mai tai','Mai Tai je poznati alkoholni koktel prvi put napravljen u restoranu Trader Vic u Oaklandu 1944. godine.
Naziv koktela dolazi od tahićanske riječi Maita i što znači dobro. Naziv je nastao tako kad je vlasnik restorana Victor
J. Bergeron napravio koktel za svoje prijatelje sa Tahitija nakon čega je jedan od tih prijaetlja, 
Carrie Guild, nakon što ga je probao rekao "Maita i roa ae!" što znači veoma dobro.'),

('Cuba libre','Kad su Amerikanci “oslobodili” Kubu od Španjolaca, grupa vojnika otišla je proslaviti pobjedu u jedan bar u Havani.
Tom prilikom, neki je časnik naručio rum sa zdrobljenim ledom, pomiješan s “Coca-Colom” i iscijeđenom limetom. 
Svoju tekuću kreaciju “trgnuo” je s tolikim užitkom da su je i ostali htjeli probati.'),

('Moscow mule','U New Yorku 1941. tri prijatelja su sjedila za stolom restorana. Jedan od njih se bavio proizvodnjom piva od đumbira,
drugi distribucijom votke, a treći hrane. Odlučili su spariti votku, pivo od đumbira 
i limun te su dobili koktel koji je poharao cijelu zemlju i lansirao Smirnoff u vrh industrije alkoholnih pića.');



insert into sastojci(naziv,vrsta)
values
('bijeli rum','alkohol'),('sok cijeðene limete','sok'),('mineralna voda',null),('smeði šeæer',null),('menta',null),('drobljeni led',null),
('liker od breskve','liker'),('votka','alkohol'),('sok od naranèe','sok'),('sok od brusnice','sok'),('kockice leda',null),
('krema od kokosa',null),('sirup od kokosa','sirup'),('sok od ananasa','sok'),('Cointreau','alkohol'),('tequila','alkohol'),
('simple sirup','sirup'),('sol',null),('bourbon whiskey','alkohol'),('sok od limuna','sok'),('angostura',null),('amaretto','alkohol'),
('coca-cola','sok'),('ginger beer',null),('triple sec','alkohol');




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
(7,16,'5cl'),(7,15,'2cl'),(7,17,'0,5cl'),(7,2,'2cl'),(7,20,'1cl'),(7,25,'1,5cl'),(7,11,'puna èaša'),(7,18,'na èaši napraviti rub od soli');

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

