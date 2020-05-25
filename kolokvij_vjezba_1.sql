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


select * from snasa;

select * from ostavljena_snasa;
