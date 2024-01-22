use master;
go
drop database if exists koktel;
go
create database koktel collate Croatian_CI_AS;
go
use koktel;

create table kokteli(
sifra int not null primary key identity (1,1),
naziv varchar (50) not null,
opis varchar(max),
upute_za_pripremu varchar(max)
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


insert into kokteli(naziv,opis,upute_za_pripremu)
values

('Mojito',

'Mojito je jedan od najpoznatijih koktela na svijetu. Tradicionalni Kubanski koktel nastao u Havani 
brzinom munje se proširio po svijetu zahvaljujući trgovcima i gusarima. S obzirom da je imao sastojke
koji su u izobilju na otoku te uz njegovu lakoću izrade nije ni čudo da je postao tako popularan.',

'1. Staviti listiće mente, šećer i kockice limete u visoku čašu
 2. Sastojke nježno zdrobiti, dodati drobljeni led, rum i mineralnu.
 3. Promiješati
 4. Ukrasiti dodatnim ledom,mentom te kriškom limete'),

('Mojito virgin',

'Bezalkoholna verzija vječnog klasika Mojita ',

'1. Staviti listiće mente, šećer i kockice limete u visoku čašu
 2. Sastojke nježno zdrobiti, dodati drobljeni led i mineralnu.
 3. Promiješati
 4. Ukrasiti dodatnim ledom,mentom te kriškom limete'),

('Sex on the beach',

'Legenda kaže da je 1987. godine u Floridi, za vrijeme ljetnih praznika, mladi barmen napravio mješavinu 
peach schnapps (likera od breskve), vodke, soka od limete i grenadine za lokalno natjecanje barmena. 
Kada su ga upitali kako se piće zove, ko iz topa, ispalio je “Sex on the Beach”, s obzirom 
da su dva glavna razloga zašto ljudi dolaze na Floridu u ljetnim mjesecima upravo plaža i sex, i eto imena.',

'1. U shaker staviti sve sastojke
 2. Protresti 15 sec, preliti u čašu
 4. Ukrasiti narančom i višnjom'),

('Pina colada',

'Legenda kaže da je gusar iz Puerto Rica svojoj posadi pravio piće koje je bilo mješavina soka od ananasa,
ruma i kokosovog mlijeka kako bi ih zaštitio od prevelike vrućine i podignuo moral. 
Svake godine 10. srpnja se slavi dan Pina Colade u Puerto Ricu.',

'1. Sve sastojke ulijte u blender
 2. Dodajte 5,6 kocki leda 
 3. Blendajte 10 sekundi
 4. Izlijte piće u rashlađenu čašu i ukrasite kriškom ananasa'),

('Daiquiri',

'Klasični Daiquiri recept se sastoji od bijelog ruma, preferabilno s Karipskih otoka
koji imaju povijest Španjolske kolonizacije, sviježeg soka od limete te sitnog šećera ili šećernog sirupa.
Nastanak recepture se pripisuje rudarskom inženjeru Jenningsu Coxu, koji je negdje u vremenu 
između 1898. i 1902. godine radio u rudniku u blizini malenog sela Daiquiri na Kubi.',

'1. U shaker staviti led, rum, sok od limete i sirup
 2. Protresti 15 sec, procijediti u rashlađenu čašu za daiquiri
 3. Ukrasiti kolutom limete'),

('Cosmopolitan',

'Cosmopolitan koktel ili neformalno Cosmo je jedan od najpopularnijih alkoholnih koktela na svijetu.
Nastao je u 20. stoljeću, a svoju slavu stekao je zahvaljujući seriji ”Seks i Grad”.',

'1. Sastojke staviti u shaker pun leda
 2. Protresti i procijediti u rashlađenu čašu za martini
 3. Ukrasiti kolutom limuna ili limete'),

('Margarita',

'Koktel Margarita jedan je od najomiljenijih koktela za žene. 
Oštar i ukusan, ovaj koktel je najpoznatiji koktel na bazi tequile.',

'1. Kriškom limete natrljati rub čaše i umočiti je u tanjurić napunjen soli
 2. U shaker staviti led, dodati sastojke, dobro protresti i procijediti u čašu
 3. Ukrasiti kriškom limete'),

('Whiskey sour',

'Ovaj koktel se prvi put u pisanim dokumentima spominje 1862. u knjizi Jerryija Thomasa
"The bartenders guide". Dok su mornari putovali između Europe i Amerike i nosili sa sobom viski, trebalo im je vitamina C
koji su dobivali iz limuna i limeta koji su našli na otocima.',

'1. Sve sastojke dobro protresti u shakeru
 2. Preliti u čašu
 3. Ukrasiti koricom naranče'),

('Old fashioned',

'Unatoč svom imenu, Old Fashioned (staromodan) nikako ne stari. 
Njegovi sastojci su prvi put pomiješani još početkom 19. stoljeća. Od tada Bourbon,
šećer, Agnostura i naranča; dio su menija svakog cijenjenog koktel-bara.',

'1. Staviti kocku šećera u čašu, pospiti sa angosturom i žličicom vode, 
mješati dok se ne rastopi, dodati kocke leda i bourbon/whiskey
 2. Ukrasiti sa kriškom naranče i ukrasnom višnjom'),

('Mai tai',

'Mai Tai je poznati alkoholni koktel prvi put napravljen u restoranu Trader Vic u Oaklandu 1944. godine.
Naziv koktela dolazi od tahićanske riječi Maita i što znači dobro. Naziv je nastao tako kad je vlasnik restorana Victor
J. Bergeron napravio koktel za svoje prijatelje sa Tahitija nakon čega je jedan od tih prijaetlja, 
Carrie Guild, nakon što ga je probao rekao "Maita i roa ae!" što znači veoma dobro.',

'1. Sve sastojke staviti u shaker
 2. Lagano protresti i preliti u čašu
 3. Ukrasiti s kriškom ananasa, 2 trešnje i listom mente'),

('Cuba libre',

'Kad su Amerikanci “oslobodili” Kubu od Španjolaca, grupa vojnika otišla je proslaviti pobjedu u jedan bar u Havani.
Tom prilikom, neki je časnik naručio rum, pomiješan s “Coca-Colom” i iscijeđenom limetom. 
Svoju tekuću kreaciju “trgnuo” je s tolikim užitkom da su je i ostali htjeli probati.',

'1. Sve sastojke staviti u čašu sa par kocki leda
 2. Ukrasiti kriškom limete'),

('Moscow mule',

'U New Yorku 1941. tri prijatelja su sjedila za stolom restorana. Jedan od njih se bavio proizvodnjom piva od đumbira,
drugi distribucijom votke, a treći hrane. Odlučili su spariti votku, pivo od đumbira 
i limun te su dobili koktel koji je poharao cijelu zemlju i lansirao Smirnoff u vrh industrije alkoholnih pića.',

'1. Dodati sastojke u bakreni lončić pun leda
 2. Promiješati
 3. Ukrasiti kriškom limete'),

('Tequila sunrise',

'Vjeruje se da je Tequila Sunrise stvorena 1930-ih u Tijuani, Meksiko. 
Međutim, stekla je široku popularnost 1970-ih, dijelom zahvaljujući spominjanju u pjesmi 
Rolling Stonesa “Brown Sugar”. Tijekom godina, ostao je omiljeni koktel, slavljen zbog svog upečatljivog izgleda i prekrasnog profila okusa.',

'1. U čašu sa ledom staviti tequilu i sok od naranče
 2. Dodati sirup koji će potonuti na dno
 3. Lagano promješati kako bi se stvorio efekt izlaska sunca
 4. Ukrasiti s kriškom naranče i višnjom'),


('Long island iced tea',

'Svoje ponosno ime koktel je dobio po Long Islandu koji se nalazi na jugu New Yorka.
 Izumljen je prije 100 godina, odnosno tijekom slavne prohibicije 1920-ih u Sjedinjenim Državama. 
 Stanovnici su jednostavno morali biti šifrirani od policije, pa su se sve vrste alkoholnih pića maskirale u bezalkoholne',

'1. Shaker za koktele do polovine napuniti kockicama leda
 2. Dodati sve sastojke osim coca-cole
 3. Dobro protresti i uliti u čašu 
 4. Dodati coca colu i ukrasiti kriškom limuna'),


('Negroni',

'Dolazeći iz prekrasne Italije, koktel Negroni je klasik koji zaslužuje pažnju svakog ljubitelja koktela.
Njegova povijest počinje početkom 20. stoljeća, kada je prema legendi grof Camillo Negroni, zamolio barmena u Caffèu Casoni 
da napravi jaču verziju tada popularnog Americana.',

'1. Sve sastojke staviti u shaker sa ledom i dobro protresti
 2. Procijediti u ohlađenu čašu
 3. Ukrasiti korom naranče'),

 ('Zombie',

 'Izumitelj Zombi koktela, Donn Beach, napravio je mješavinu 3 vrste ruma, likera i voćnih sokova
  da pomogne jednom gostu svladati – mamurluk. Gost se naravno vratio nakon svega nekoliko dana i 
  žalio se kako se dan nakon tog koktela osjećao kao zombi. Nakon što je to čuo, Donn je ovaj koktel uvrstio na koktel kartu sa tim nazivom.',

'1. Sve sastojke sa ledom dobro protresti u shakeru
 2. Preliti u čašu sa par kocki leda
 3. Ukrasiti listićima mente'),

 ('Martini',

'Svoju neprolaznu popularnost ovaj bistri eliksir, načinjen od gina i suhog vermoutha,
 a dekoriran najčešće maslinom ili spiralom korice limuna, duguje američkom visokom društvu koje ga je rado ispijalo. 
 I hollywoodske zvijezde koje su ga uživale, kako na velikom platnu tako i privatno, dodale su mu auru glamura i svjetsku slavu.',

'1. U shaker uliti ohlađeni gin, zatim dodati ohlađeni vermut i smrvljeni led
 2. Dobro protresti u shakeru, cca 30 sec, uliti u ohlađenu martini čašu
 3. Dodati 2 masline');
	


insert into sastojci(naziv,vrsta)
values
('bijeli rum','alkohol'),('sok cijeđene limete','sok'),('mineralna voda',null),('smeđi šećer',null),('menta',null),('drobljeni led','led'),
('liker od breskve','liker'),('votka','alkohol'),('sok od naranče','sok'),('sok od brusnice','sok'),('kockice leda','led'),
('krema od kokosa',null),('sirup od kokosa','sirup'),('sok od ananasa','sok'),('Cointreau','alkohol'),('tequila','alkohol'),
('simple sirup','sirup'),('sol',null),('bourbon whiskey','alkohol'),('sok od limuna','sok'),('angostura',null),('amaretto','alkohol'),
('coca-cola','sok'),('ginger beer','alkohol'),('triple sec','alkohol'),('grenadine sirup','sirup'),('gin','alkohol'),('vermouth','alkohol'),
('campari','alkohol'),('tamni rum','alkohol'),('brandy od marelice','alkohol'),('zlatni rum','alkohol'),('sok od papaje','sok'),('masline',null);

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
(4,1,'6cl'),(4,12,'3cl'),(4,13,'2cl'),(4,14,'4,5cl'),(4,2,'1,5cl'),(4,6,'puna čaša');

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
(9,4,'1žličica'),(9,21,'3kapljice'),(9,19,'6cl'),(9,11,'pola čaše');

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

insert into stavke (koktel,sastojak,normativ)
values 
(16,2,'1,5cl'),(6,14,'1,25cl'),(6,1,'1.25cl'),(6,30,'1,25cl'),(6,26,'par kapi'),(6,31,'1,25cl'),(6,32,'1,25cl'),(6,33,'1,25cl'),(6,11,'puna čaša');

insert into  stavke (koktel,sastojak,normativ)
values
(17,27,'6cl'),(17,28,'1cl'),(17,34,'2 komada');



