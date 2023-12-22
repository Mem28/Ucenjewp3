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
opis text,
upute_za_pripremu text
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

select*from kokteli;
insert into kokteli(naziv,opis,upute_za_pripremu)
values
('Mojito','Mojito je jedan od najpoznatijih koktela na svijetu. Tradicionalni Kubanski koktel nastao u Havani 
brzinom munje se proširio po svijetu zahvaljujući trgovcima i gusarima. S obzirom da je imao sastojke
koji su u izobilju na otoku te uz njegovu lakoću izrade nije ni čudo da je postao tako popularan.',
'1. Sve sastojke osim mineralne vode ulijte u čašu
 2. Dopunite ledom ili drobljenim ledom
 3. Promiješajte pokretima žlicom gore dolje da se svi sastojci izmiješaju i to radite 20 sekundi
 4. Dodajte mineralnu vodu i ponovno promiješajte 20 sekundi
 5. Ukrasite stabljikom mente i uživajte u ljetnom klasiku');
 insert into kokteli(naziv,opis,upute_za_pripremu)
values
('Mojito virgin','Osvježavajuća mješavina limete i mente, ovaj Virgin Mojito recept bit će vaše novo omiljeno piće!
Ovaj bezalkoholni recept za mojito bit će hit kod djece i odraslih. ',
'1. Sve sastojke osim mineralne vode ulijte u čašu
 2. Dopunite ledom ili drobljenim ledom
 3. Promiješajte pokretima žlicom gore dolje da se svi sastojci izmiješaju i to radite 20 sekundi
 4. Dodajte mineralnu vodu i ponovno promiješajte 20 sekundi
 5. Ukrasite stabljikom mente i uživajte u ljetnom klasiku'),

('Sex on the beach','Uz Mojito vjerojatno najpopularniji koktel u Hrvatskoj. Što se tiče porijekla ovog koktela 
nagađa se da je potekao s Floride kada je u svrhu promocije Peach schnappsa barmen Ted Pizio 1980ih 
došao na ideju što prodaje piće. Seks. I tako je nastao Sex on the beach da privuče studente koji su 
dolazili na floridu za spring break odnosno proljetne praznike krajem 3. mjeseca.',
'1. Sve sastojke ulijte u čašu
 2. Dodajte led tako da napunite čašu
 3. Promiješajte žlicom 10ak sekundi da ohladite piće
 4. Ukrasite narančom i uživajte'),

('Pina colada','Pina colada je jedan od najpoznatijih ljetnih koktela porijeklom s Portorika. 
Obično se pravi u dvije verzije i to u shaken i blended verziji.
Blended verzija je verzija s više leda gdje se koktel napravi u blenderu i dobijemo 
izrazito hladno piće teksture gotovo kao sladoled.',
'1. Sve sastojke ulijte u blender
 2. Dodajte 5,6 kocki leda u tu posudu
 3. Blendajte 10 sekundi
 4. Izlijte piće u rashlađenu čašu'),

('Daiquiri','Klasični Daiquiri recept se sastoji od bijelog ruma, preferabilno s Karipskih otoka
koji imaju povijest Španjolske kolonizacije, sviježeg soka od limete te sitnog šećera ili šećernog sirupa.
Nastanak recepture se pripisuje rudarskom inženjeru Jenningsu Coxu, koji je negdje u vremenu 
između 1898. i 1902. godine radio u rudniku u blizini malenog sela Daiquiri na Kubi.',
'1. U shaker staviti led, rum, sok od limete i sirup
 2. Protresti, preliti u čašu
 3. Ukrasiti kolutom limete'),

('Cosmopolitan','Cosmopolitan koktel ili neformalno Cosmo je jedan od najpopularnijih alkoholnih koktela na svijetu.
Nastao je u 20. stoljeću, a svoju slavu stekao je zahvaljujući seriji ”Seks i Grad”.',
'1. Sastojke stavite u shaker pun leda
 2. Protresite i ocijedite (bez leda) u rashlađenu čašu za martini
 3. Čašu ukrasite kriškom limuna ili limete'),

('Margarita','Koktel Margarita jedan je od najomiljenijih koktela za žene. 
Oštar i ukusan, ovaj koktel je najpoznatiji koktel na bazi tequile.',
'1. Kriškom limete natrljajte rub čaše i umočite je u tanjurić napunjen soli
 2. U shaker stavite led, dodajte sastojke, dobro protresite i procijediti u čašu
 3. Ukrasite kriškom limete i poslužite'),

('Whiskey sour','Ovaj koktel se prvi put u pisanim dokumentima spominje 1862. u knjizi Jerryija Thomasa
"The bartenders guide" no vrlo vjerojatno su se, ovaj koktel i kokteli iz porodice soura, pili i puno prije te godine.
Dok su mornari putovali između Europe i Amerika i nosili sa sobom viski trebalo im je vitamina C
koji su dobivali iz limuna i limeta koji su našli na otocima.',
'1. Sve sastojke dobro protresite u shakeru
 2. Prelijte u čašu
 3. Ukrasite koricom naranče'),

('Old fashioned','Unatoč svom imenu, Old Fashioned (staromodan) nikako ne stari. 
Njegovi sastojci su, prvi put, pomiješani još početkom 19. stoljeća. Od tada, Bourbon,
šećer, Agnostura biljni liker i naranča, sastojci koji čine ovaj koktel, dio su menija svakog cijenjenog koktel-bara.',
'1. Stavite kocku šećera u čašu, pospite sa angosturom i žličicom vode, 
mješajte dok se ne rastopi, zatim dodajte kocke leda i bourbon/whiskey
 2. Ukrasite sa kriškom naranče i ukrasnom višnjom'),

('Mai tai','Mai Tai je poznati alkoholni koktel prvi put napravljen u restoranu Trader Vic u Oaklandu 1944. godine.
Naziv koktela dolazi od tahićanske riječi Maita i što znači dobro. Naziv je nastao tako kad je vlasnik restorana Victor
J. Bergeron napravio koktel za svoje prijatelje sa Tahitija nakon čega je jedan od tih prijaetlja, 
Carrie Guild, nakon što ga je probao rekao "Maita i roa ae!" što znači veoma dobro.',
'1. Sve sastojke stavite u shaker
 2. Lagano protresite i prelijte u čašu
 3. Ukrasite s kriškom ananasa, 2 trešnje i listom mente'),

('Cuba libre','Kad su Amerikanci “oslobodili” Kubu od Španjolaca, grupa vojnika otišla je proslaviti pobjedu u jedan bar u Havani.
Tom prilikom, neki je časnik naručio rum sa zdrobljenim ledom, pomiješan s “Coca-Colom” i iscijeđenom limetom. 
Svoju tekuću kreaciju “trgnuo” je s tolikim užitkom da su je i ostali htjeli probati.',
'1. Sve sastojke stavite u čašu sa par kocki leda
 2. Ukrasite kriškom limete'),

('Moscow mule','U New Yorku 1941. tri prijatelja su sjedila za stolom restorana. Jedan od njih se bavio proizvodnjom piva od đumbira,
drugi distribucijom votke, a treći hrane. Odlučili su spariti votku, pivo od đumbira 
i limun te su dobili koktel koji je poharao cijelu zemlju i lansirao Smirnoff u vrh industrije alkoholnih pića.',
'1. Dodajte sastojke u bakreni lončić pun leda
 2. Promiješajte
 3. Ukrasite kriškom limete'),

('Tequila sunrise','Vjeruje se da je Tequila Sunrise stvorena 1930-ih u Tijuani, Meksiko. 
Međutim, stekao je široku popularnost 1970-ih, dijelom zahvaljujući spominjanju u pjesmi 
Rolling Stonesa “Brown Sugar”. Tijekom godina, ostao je omiljeni koktel, slavljen zbog svog upečatljivog izgleda i prekrasnog profila okusa.',
'1. U čašu sa par kocki leda stavite tequilu i sok od naranče
 2. Dodajte sirup koji će potonuti na dno
 3. Lagano promještajte kako bi se stvorio efekt izlaska sunca
 4. Ukrasite s kriškom naranče i višnjom'),


('Long island iced tea','Svoje ponosno ime koktel je dobio po Long Islandu koji se nalazi na jugu New Yorka.
 Izumljen je prije 100 godina, odnosno tijekom slavne prohibicije 1920-ih u Sjedinjenim Državama. 
 Stanovnici su jednostavno morali biti šifrirani od policije, pa su se sve vrste alkoholnih pića maskirale u bezalkoholne',
'1. Shaker za koktele do polovine napuniti kockicama leda
 2. Dodati sve sastojke osim coca-cole
 3. Dobro protresti i uliti u čašu koju ste do polovine napunili sa ledom
 4. Dodati coca colu i ukrasiti sa kriškom limuna'),


('Negroni','Dolazeći iz prekrasne Italije, koktel Negroni je klasik koji zaslužuje pažnju svakog ljubitelja koktela.
Njegova povijest počinje početkom 20. stoljeća, kada je prema legendi grof Camillo Negroni, zamolio barmena u Caffèu Casoni 
da napravi jaču verziju tada popularnog Americana.',
'1. Sve sastojke stavite u shaker sa ledom i dobro protresite
 2. Procijedie u ohlađenu čašu
 3. Ukrasite korom naranče');


	


insert into sastojci(naziv,vrsta)
values
('bijeli rum','alkohol'),('sok cijeđene limete','sok'),('mineralna voda',null),('smeđi šećer',null),('menta',null),('drobljeni led',null),
('liker od breskve','liker'),('votka','alkohol'),('sok od naranče','sok'),('sok od brusnice','sok'),('kockice leda',null),
('krema od kokosa',null),('sirup od kokosa','sirup'),('sok od ananasa','sok'),('Cointreau','alkohol'),('tequila','alkohol'),
('simple sirup','sirup'),('sol',null),('bourbon whiskey','alkohol'),('sok od limuna','sok'),('angostura',null),('amaretto','alkohol'),
('coca-cola','sok'),('ginger beer',null),('triple sec','alkohol'),('grenadine sirup','sirup'),('gin','alkohol'),('vermouth','alkohol'),
('campari','alkohol');

insert into stavke(koktel,sastojak,normativ)
values
(1,1,'5cl'),(1,2,'3cl'),(1,3,'1dcl'),(1,4,'1žlica'),(1,5,'7listića'),(1,6,'puna čaša');

insert into stavke(koktel,sastojak,normativ)
values
(2,2,'3cl'),(2,3,'1dcl'),(2,4,'1žlica'),(2,5,'7listića'),(2,6,'puna čaša');

insert into stavke(koktel,sastojak,normativ)
values
(3,7,'4cl'),(3,8,'3cl'),(3,9,'8cl'),(3,10,'2cl'),(3,11,'puna čaša');

insert into stavke(koktel,sastojak,normativ)
values
(4,1,'6cl'),(4,12,'3cl'),(4,13,'2cl'),(4,14,'4,5cl'),(4,2,'1,5cl'),(4,6,'puna čaša - blendati');

insert into stavke(koktel,sastojak,normativ)
values
(5,1,'6cl'), (5,2,'2cl'),(5,17,'2cl'),(5,11,'puna čaša');

insert into stavke(koktel,sastojak,normativ)
values
(6,8,'3cl'),(6,15,'1,5cl'),(6,2,'1žličica'),(6,10,'0,5cl'),(6,11,'puna čaša');

insert into stavke(koktel,sastojak,normativ)
values
(7,16,'5cl'),(7,15,'2cl'),(7,17,'0,5cl'),(7,2,'2cl'),(7,20,'1cl'),(7,25,'1,5cl'),(7,11,'puna čaša'),(7,18,'na čaši napraviti rub od soli');

insert into stavke(koktel,sastojak,normativ)
values
(8,19,'4,5cl'),(8,20,'3cl'),(8,17,'1,5cl'),(8,11,'puna čaša');

insert into stavke(koktel,sastojak,normativ)
values
(9,4,'1žličica'),(9,21,'3kapljice'),(9,19,'6cl');

insert into stavke(koktel,sastojak,normativ)
values
(10,15,'2cl'),(10,1,'4cl'),(10,22,'1cl'),(10,20,'2cl'),(10,17,'2cl'),(10,2,'1cl'),(10,5,'puna čaša');

insert into stavke(koktel,sastojak,normativ)
values
(11,1,'5cl'),(11,23,'12cl'),(11,2,'3cl'),(11,11,'puna čaša');

insert into stavke(koktel,sastojak,normativ)
values
(12,5,'5cl'),(12,2,'3cl'),(12,24,'12cl'),(12,6,'puna čaša')

insert into stavke (koktel,sastojak,normativ)
values
(13,16,'4,5cl'),(13,9,'9cl'),(13,26,'1,5cl'),(13,11,'par komada');

insert into stavke (koktel,sastojak,normativ)
values
(14,16,'2cl'),(14,8,'2cl'),(14,1,'2cl'),(14,25,'1,5cl'),(14,27,'2cl'),(14,20,'2,5cl'),(14,23,'5cl'),(14,11,'puna čaša');


insert into stavke (koktel,sastojak,normativ)
values
(15,27,'3cl'),(15,28,'3cl'),(15,29,'3cl'),(15,11,'puna čaša');

update sastojci set vrsta='led' where sifra=6;
update sastojci set vrsta='led' where sifra=11;



