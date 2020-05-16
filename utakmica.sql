drop database if exists utakmica;
create database utakmica;
use utakmica;

create table igraci(
   sifra int not null primary key auto_increment,
   ime varchar(50) not null,
   prezime varchar(50) not null,
   broj int not null,
   dob int not null,
   pozicija varchar(50)
);

create table trener(
   sifra int not null primary key auto_increment,
   ime varchar(50) not null,
   prezime varchar(50) not null,
   dob int not null,
   igraci int not null
);

create table klub(
   sifra int not null primary key auto_increment,
   naziv varchar(50) not null,
   trener int not null,
   igraci int not null
);

create table gledatelji(
    sifra int not null primary key auto_increment,
    dob int not null,
    spol char(1)
);

create table stadion(
    sifra int not null primary key auto_increment,
    igraci int not null,
    trener int not null,
    klub int not null,
    gledatelji int not null
);

alter table stadion add foreign key (igraci) references igraci(sifra);
alter table stadion add foreign key (trener) references trener(sifra);
alter table stadion add foreign key (klub) references klub(sifra);
alter table stadion add foreign key (gledatelji) references gledatelji(sifra);

show tables;

select * from igraci;

insert into igraci(sifra, ime, prezime, broj, dob, pozicija)
values
(null, 'Pero', 'Peric', 10, 28, 'centar');

insert into igraci(sifra, ime, prezime, broj, dob, pozicija)
values
(null, 'Mujo', 'Mujic', 22, 24, 'krilo');

insert into igraci(sifra, ime, prezime, broj, dob, pozicija)
values
(null, 'Mile', 'Milic', 8, 31, 'playback');

select * from trener;

insert into trener(sifra, ime, prezime, dob, igraci)
values
(null, 'Marko', 'Markic', 44, 1);


insert into trener(sifra, ime, prezime, dob, igraci)
values
(null, 'Gabrijel', 'Gabric', 32, 2);


insert into trener(sifra, ime, prezime, dob, igraci)
values
(null, 'Anto', 'Antic', 35, 3);


select * from klub;

insert into klub(sifra, naziv, trener, igraci)
values
(null, 'Cedevita', 1, 1);


insert into klub(sifra, naziv, trener, igraci)
values
(null, 'Cibona', 2, 2);


insert into klub(sifra, naziv, trener, igraci)
values
(null, 'Split', 3, 3);


select * from gledatelji;

insert into gledatelji(sifra, dob, spol)
values
(null, 22, 'm');


insert into gledatelji(sifra, dob, spol)
values
(null, 31, 'z');


insert into gledatelji(sifra, dob, spol)
values
(null, 36, 'm');


select * from stadion;

insert into stadion(sifra, igraci, trener, klub, gledatelji)
values
(null, 1, 1, 1, 1);

insert into stadion(sifra, igraci, trener, klub, gledatelji)
values
(null, 2, 2, 2, 2);

insert into stadion(sifra, igraci, trener, klub, gledatelji)
values
(null, 3, 3, 3, 3);


update igraci set broj = 15 where sifra = 1;

update trener set dob = 49 where sifra = 2;

update klub set naziv = 'Zadar' where sifra = 1;

update gledatelji set spol = 'z' where sifra = 3;

delete from stadion where sifra = 2;

delete from gledatelji where sifra = 2;

delete from klub where sifra = 2;

delete from trener where sifra = 2;

delete from igraci where sifra = 2;


