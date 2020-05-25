drop database if exists vjezba_novi;
create database vjezba_novi;
use vjezba_novi;
create table punac (
	sifra int not null primary key auto_increment,
	ogrlica int,
	gustoca decimal(14,9),
	hlace varchar(41) not null
);
create table cura (
	sifra int not null primary key auto_increment,
	novcica decimal(16,5) not null,
	gustoca decimal(18,6) not null,
	lipa decimal(13,10),
	ogrlica int not null,
	bojakose varchar(38),
	suknja varchar(36),
	punac int 
);
create table sestra(
sifra int not null primary key auto_increment,
introvertno bit ,
haljina varchar(31) not null,
maraka decimal(16,6),
hlace varchar(46) not null,
narukvica int not null
);
create table zena(
sifra int not null primary key auto_increment,
treciputa datetime,
hlace varchar(46),
kratkamajica varchar(31) not null,
jmbag char(11) not null,
bojaociju varchar(39) not null,
haljina varchar(44),
sestra int not null
);
create table muskarac(
sifra int not null primary key auto_increment,
bojaociju varchar(50) not null,
hlace varchar(50) ,
modelnaocala varchar(43),
maraka decimal(14,5) not null,
zena int not null
);
create table  mladic(
sifra int not null primary key auto_increment,
suknja varchar(50) not null,
kuna decimal(16,8) not null,
drugiputa datetime ,
asocijalno bit ,
ekstroventno bit not null,
dukserica varchar(48) not null,
muskarac int
);
create table svekar (
sifra int not null primary key auto_increment,
bojaociju varchar(40) not null,
prstena int ,
dukserica varchar(41),
lipa decimal(13,8),
eura decimal(12,7),
majica varchar(35)
);
create table sestra_svekar(
sifra int not null primary key auto_increment,
sestra int not null,
svekar int not null
);

alter table cura add foreign key(punac) references punac(sifra);

alter table zena add foreign key(sestra) references sestra(sifra);

alter table muskarac add foreign key(zena) references zena(sifra);

alter table mladic add foreign key(muskarac) references muskarac(sifra);

alter table sestra_svekar add foreign key(sestra) references sestra(sifra);
alter table sestra_svekar add foreign key (svekar) references svekar(sifra);

show tables;

select * from punac;
insert into punac(sifra, ogrlica, gustoca, hlace)
values
(null, 1,1 ,'crne');

insert into punac(sifra, ogrlica, gustoca, hlace)
values
(null, 2,2 ,'sive');

insert into punac(sifra, ogrlica, gustoca, hlace)
values
(null, 3,3 ,'crvena');

select * from cura;
insert into cura(sifra, novcica, gustoca, lipa, ogrlica, bojakose, suknja, punac)
values
(null, 7, 4, 50, 8, 'plava', 'crna', 1);

insert into cura(sifra, novcica, gustoca, lipa, ogrlica, bojakose, suknja, punac)
values
(null, 9, 3, 70, 5, 'crna', 'siva', 2);

insert into cura(sifra, novcica, gustoca, lipa, ogrlica, bojakose, suknja, punac)
values
(null, 6, 10, 30, 7, 'smeda', 'crvena', 3);

select * from sestra;
insert into sestra(sifra, introvertno, haljina, maraka, hlace, narukvica)
values
(null, 1, 'crna', 50, 'bijele', 10);

insert into sestra(sifra, introvertno, haljina, maraka, hlace, narukvica)
values
(null, 0, 'siva', 30, 'crne', 11);


insert into sestra(sifra, introvertno, haljina, maraka, hlace, narukvica)
values
(null, 1, 'bijela', 60, 'sive', 20);

select * from zena;

insert into zena(sifra, treciputa, hlace, kratkamajica, jmbag, bojaociju, haljina, sestra)
values
(null,'2020-05-20', 'crne', 'plava', 'HR848294243', 'plava', ' bijela', 1);

insert into zena(sifra, treciputa, hlace, kratkamajica, jmbag, bojaociju, haljina, sestra)
values
(null,'2020-05-19', 'bijele', 'zelena', 'HR748293213', 'smeda', 'crvena', 2);

insert into zena(sifra, treciputa, hlace, kratkamajica, jmbag, bojaociju, haljina, sestra)
values
(null,'2020-05-10', 'zute', 'crna','HR748275918', 'zelena', 'crna', 3);

select * from muskarac;
insert into muskarac(sifra, bojaociju, hlace, modelnaocala, maraka, zena)
values
(null, 'plava', 'crne', 'under armor', '50', 1);

insert into muskarac(sifra, bojaociju, hlace, modelnaocala, maraka, zena)
values
(null, 'smede', 'bijele', 'adidas', '45', 2);

insert into muskarac(sifra, bojaociju, hlace, modelnaocala, maraka, zena)
values
(null, 'zelene', 'sive', 'tom ford', '32', 3);

select * from mladic;
insert into mladic(sifra, suknja, kuna, drugiputa, asocijalno, ekstroventno, dukserica, muskarac)
values
(null, 'crna', 150, '2020-05-22', 1, 0, 'plava', 1);

insert into mladic(sifra, suknja, kuna, drugiputa, asocijalno, ekstroventno, dukserica, muskarac)
values
(null, 'bijela', 200, '2020-05-03', 0, 1, 'bijela', 2);

insert into mladic(sifra, suknja, kuna, drugiputa, asocijalno, ekstroventno, dukserica, muskarac)
values
(null, 'zuta', 185, '2020-05-12', 1, 1, 'crna', 3);

select * from svekar;
insert into svekar(sifra, bojaociju, prstena, dukserica, lipa, eura, majica)
values
(null, 'plava', 4, 'bijela', 50, 33, 'crna');

insert into svekar(sifra, bojaociju, prstena, dukserica, lipa, eura, majica)
values
(null, 'zelena', 2, 'crna', 30, 21, 'bijela');

insert into svekar(sifra, bojaociju, prstena, dukserica, lipa, eura, majica)
values
(null, 'smeda', 5, 'plavaa', 70, 19, 'plava');

select * from sestra_svekar;
insert into sestra_svekar(sifra, sestra, svekar)
values
(null, 1, 1);

insert into sestra_svekar(sifra, sestra, svekar)
values
(null, 2, 2);

insert into sestra_svekar(sifra, sestra, svekar)
values
(null, 3, 3);

update cura set gustoca = 15.77;
delete from mladic where kuna > 15.78;

select kratkamajica from zena where hlace like '%ana%';

select a.dukserica, f.asocijalno , e.hlace , d.hlace 
from svekar a
inner join sestra_svekar b on b.svekar = a.sifra
inner join sestra c on c.sifra = b.sestra 
inner join zena d on d.sestra = c.sifra 
inner join muskarac e on e.zena = d.sifra 
inner join mladic f on f.muskarac = e.sifra 
where d.hlace like 'A%' and c.haljina like '%Ba%'
order by e.hlace desc;


select a.haljina, a.maraka
from sestra a
left join sestra_svekar b on a.sifra = b.sifra;