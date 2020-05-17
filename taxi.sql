# d:\xampp\mysql\bin\mysql -uedunova -pedunova < d:\jp22\taxi1.sql
drop database if exists taxi1;
create database taxi1;
use taxi1;

create table vozac(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    dob int,
    spol char(1)
);

create table putnik(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    dob int not null,
    spol char(1) not null,
    nacinplacanja varchar(50) not null
);

create table vozilo(
    sifra int not null primary key auto_increment,
    registracija varchar(50)not null,
    boja varchar(50) not null,
    vozac int not null,
    putnik int not null,
    marka varchar(50) not null
);

create table voznja(
    sifra int not null primary key auto_increment,
    vozac int not null,
    putnik int not null,
    vozilo int not null
);

alter table voznja add foreign key (vozac) references vozac(sifra);
alter table voznja add foreign key (putnik ) references putnik(sifra);
alter table voznja add foreign key (vozilo) references vozilo(sifra);

show tables;

select * from vozac;

insert into vozac(sifra, ime, prezime, dob, spol)
values
(null, ' Pero', 'Peric', 34, 'm');

insert into vozac(sifra, ime, prezime, dob, spol)
values
(null, 'Ante', 'Antic', 45, 'm');

insert into vozac(sifra, ime, prezime, dob, spol)
values
(null, ' Ines', 'Inic', 56, 'z');

select * from putnik;

insert into putnik(sifra, ime, prezime, dob, spol, nacinplacanja )
values
(null, 'Miro', 'Miric', 23, 'm', 'gotovina');

insert into putnik(sifra, ime, prezime, dob, spol, nacinplacanja )
values
(null, 'Ana', 'Anic', 38, 'z', 'kartica');

insert into putnik(sifra, ime, prezime, dob, spol, nacinplacanja )
values
(null, 'Nina', 'Ninic', 19, 'z', 'gotovina');

select * from vozilo;

insert into vozilo(sifra, registracija, boja, vozac, putnik, marka)
values
(null, 'SB764GZ', 'Crna', 1, 1, 'Audi');

insert into vozilo(sifra, registracija, boja, vozac, putnik, marka)
values
(null, 'SB528KJ', 'Bijela', 2, 2, 'Renault');

insert into vozilo(sifra, registracija, boja, vozac, putnik, marka)
values
(null, 'SB193HZ', 'Crvena', 3, 3, 'Citroen');

select * from voznja;

insert into voznja(sifra, vozac, putnik, vozilo)
values
(null, 1, 1, 1);

insert into voznja(sifra, vozac, putnik, vozilo)
values
(null, 2, 2, 2);

insert into voznja(sifra, vozac, putnik, vozilo)
values
(null, 3, 3, 3);

update vozac set ime = 'Mujo' where sifra = 1;

update putnik set ime = 'Nikolina' where sifra = 2;

update vozilo set boja = 'Zuta' where sifra = 3;

delete from voznja where sifra = 2;

delete from vozilo where sifra = 2;

delete from putnik where sifra = 2;

delete from vozac where sifra = 2;

