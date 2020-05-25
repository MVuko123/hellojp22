drop database if exists kolokvij_vjezba_1;
create database kolokvij_vjezba_1;
use kolokvij_vjezba_1;


create table becar(
   sifra int not null primary key auto_increment,
   drugiputa datetime not null,
   carape varchar(36),
   bojaociju varchar(46),
   haljina varchar(32)
);

create table sestra(
   sifra int not null primary key auto_increment,
   jmbag char(11),
   hlace varchar(42) not null,
   vesta varchar(41),
   prviputa datetime not null,
   modelnaocala varchar(33),
   becar int
);

create table ostavljena(
   sifra int not null primary key auto_increment,
   jmbag char(11),
   bojaociju varchar(49), 
   suknja varchar(31) not null,
   bojakose varchar(45) not null,
   priputa datetime,
   carape varchar(41) not null
);

create table mladic(
   sifra int not null primary key auto_increment,
   prstena int not null,
   maraka decimal(15,9) not null,
   suknja varchar(30),
   narukvica int not null,
   ostavljena int not null
);

create table cura(
   sifra int not null primary key auto_increment,
   bojakose varchar(36),
   jmbag char(11) not null,
   prstena int not null,
   dukserica varchar(38),
   mladic int
);

create table punac(
   sifra int not null primary key auto_increment,
   ekstrovento bit not null,
   vesta varchar(31),
   asocijalno bit not null,
   prviputa datetime,
   eura decimal(15,6) not null,
   cura int 
);

create table snasa(
   sifra int not null primary key auto_increment,
   eura decimal(14,5),
   narukvica int,
   drugiputa datetime not null,
   carape varchar(41)
);

create table ostavljena_snasa(
   sifra int not null primary key auto_increment,
   ostavljena int not null,
   snasa int not null
);

alter table sestra add foreign key (becar) references becar(sifra);

alter table mladic add foreign key (ostavljena) references ostavljena(sifra);

alter table cura add foreign key (mladic) references mladic(sifra);

alter table punac add foreign key (cura) references cura(sifra);

alter table ostavljena_snasa add foreign key (snasa) references snasa(sifra);
alter table ostavljena_snasa add foreign key (ostavljena) references ostavljena(sifra);

select * from ostavljena;
insert into ostavljena(sifra, jmbag, bojaociju, suknja , bojakose , priputa, carape)
values
(null, 'HR349582301', 'smeda', 'plava', 'crna', '2020-03-19', 'zelene');

insert into ostavljena(sifra, jmbag, bojaociju, suknja , bojakose , priputa, carape)
values
(null, 'HR749150285', 'plava', 'crna', 'plava', '2020-02-09', 'bijele');

insert into ostavljena(sifra, jmbag, bojaociju, suknja , bojakose , priputa, carape)
values
(null, 'HR748295412', 'zelena', 'zuta', 'smeda', '2020-03-21', 'crne');

select * from mladic;
insert into mladic(sifra, prstena, maraka, suknja, narukvica, ostavljena)
values
(null, 1, 500, 'plava', 1, 1);

insert into mladic(sifra, prstena, maraka, suknja, narukvica, ostavljena)
values
(null, 2, 800, 'crna', 2, 2);

insert into mladic(sifra, prstena, maraka, suknja, narukvica, ostavljena)
values
(null, 3, 700, 'zuta', 3, 3);


select * from cura;
insert into cura(sifra, bojakose, jmbag, prstena, dukserica, mladic)
values
(null, 'crna', 'HR847349128', 1, 'siva', 1);

insert into cura(sifra, bojakose, jmbag, prstena, dukserica, mladic)
values
(null, 'plava', 'HR283913842', 2, 'roza', 2);

insert into cura(sifra, bojakose, jmbag, prstena, dukserica, mladic)
values
(null, 'smeda', 'HR826401923', 3, 'crna', 3);

select * from snasa;
insert into snasa(sifra, eura, narukvica, drugiputa, carape)
values
(null, 170, 1, '2020-04-05', 'bijele');

insert into snasa(sifra, eura, narukvica, drugiputa, carape)
values
(null, 250, 2, '2020-04-18', 'crne');

insert into snasa(sifra, eura, narukvica, drugiputa, carape)
values
(null, 200, 3, '2020-04-11', 'sive');

select * from ostavljena_snasa;
insert into ostavljena_snasa(sifra, ostavljena, snasa)
values
(null, 1, 1);

insert into ostavljena_snasa(sifra, ostavljena, snasa)
values
(null, 2, 2);

insert into ostavljena_snasa(sifra, ostavljena, snasa)
values
(null, 3, 3);

select * from becar;
insert into becar(sifra, drugiputa, carape, bojaociju, haljina)
values
(sifra, '2020-04-01', 'bijela', ' smeda', 'crvena');

insert into becar(sifra, drugiputa, carape, bojaociju, haljina)
values
(sifra, '2020-04-08', 'crna', ' plava', 'crna');

insert into becar(sifra, drugiputa, carape, bojaociju, haljina)
values
(sifra, '2020-04-18', 'siva', ' zelena', 'siva');

select * from punac;
insert into punac(sifra, ekstrovento, vesta, asocijalno, prviputa , eura, cura)
values
(null, 1, 'plava', 1, '2020-01-22', 200, 1);

insert into punac(sifra, ekstrovento, vesta, asocijalno, prviputa , eura, cura)
values
(null, 0, 'siva', 0, '2020-01-27', 220, 2);

insert into punac(sifra, ekstrovento, vesta, asocijalno, prviputa , eura, cura)
values
(null, 1, 'crvena', 0, '2020-02-12', 250, 3);


select * from sestra;
insert into sestra(sifra, jmbag, hlace, vesta, prviputa , modelnaocala , becar)
values
(null, 'HR827301243', 'sive', ' plava', '2020-01-01', 'Adidas', 1);

insert into sestra(sifra, jmbag, hlace, vesta, prviputa , modelnaocala , becar)
values
(null, 'HR847294723', 'crne', ' crvena', '2020-01-21', 'Under Armor', 2);


insert into sestra(sifra, jmbag, hlace, vesta, prviputa , modelnaocala , becar)
values
(null, 'HR738201932', 'plave', ' zuta', '2020-02-02', 'Tom Ford', 3);

update sestra set hlace = 'Osijek';
update punac set vesta = null where vesta !='AB';
select suknja from mladic where maraka != 7 or maraka != 11 or maraka != 18 or maraka != 25 or maraka != 40;

