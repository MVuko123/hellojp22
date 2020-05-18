# d:\xampp\mysql\bin\mysql -uedunova -pedunova < d:\jp22\vrtic.sql
drop database if exists vrtic;
create database vrtic;
use vrtic;

create table skupina(
    sifra int not null primary key auto_increment,
    brojucenika int not null,
    naziv varchar(50) not null
);

create table dijete(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    spol char(1) not null,
    skupina int not null,
    dob int not null
);

create table odgajateljica(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    dob int not null,
    email varchar(50) not null,
    oib char(11),
    ugovor varchar(50),
    skupina int not null,
    placa int
);
create table strucnasprema(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    odgajateljica int not null
);

create table vrtic(
    sifra int not null primary key auto_increment,
    skupina int not null,
    dijete int not null,
    odgajateljica int not null,
    strucnasprema int not null
);

alter table vrtic add foreign key (skupina) references skupina(sifra);
alter table vrtic add foreign key (odgajateljica) references odgajateljica(sifra);
alter table vrtic add foreign key (dijete) references dijete(sifra);
alter table vrtic add foreign key (strucnasprema) references strucnasprema(sifra);

show tables;

select * from skupina;

insert into skupina (sifra, brojucenika, naziv)
values
(null, 17, 'Jaslice');

insert into skupina (sifra, brojucenika, naziv)
values
(null, 20, 'Vrtic');

insert into skupina (sifra, brojucenika, naziv)
values
(null, 25, 'Predskola');

select * from dijete;

insert into dijete(sifra, ime, prezime, spol,skupina, dob)
values
(null, 'Marko', 'Markovic', 'm', 1, 2);

insert into dijete(sifra, ime, prezime, spol,skupina, dob)
values
(null, 'Ana', 'Anic', 'z', 1, 1.5);

insert into dijete(sifra, ime, prezime, spol,skupina, dob)
values
(null, 'Klara', 'Klaric', 'z', 1, 2.5);

insert into dijete(sifra, ime, prezime, spol,skupina, dob)
values
(null, 'Pero', 'Peric', 'm', 2, 4);

insert into dijete(sifra, ime, prezime, spol,skupina, dob)
values
(null, 'Nada', 'Nadic', 'z', 2, 4.5);

insert into dijete(sifra, ime, prezime, spol,skupina, dob)
values
(null, 'Duro', 'Duric', 'm', 2, 4);

insert into dijete(sifra, ime, prezime, spol,skupina, dob)
values
(null, 'Milan', 'Milic', 'm', 3, 5.5);

insert into dijete(sifra, ime, prezime, spol,skupina, dob)
values
(null, 'Maja', 'Majic', 'z', 3, 5);

insert into dijete(sifra, ime, prezime, spol,skupina, dob)
values
(null, 'Bruno', 'Brunic', 'm', 3, 5.5);

select * from odgajateljica;

insert into odgajateljica (sifra, ime, prezime, dob, email, oib, ugovor, skupina, placa)
values
(null, 'Sara', 'Saric', 27, 'sara.saric@gmail.com', '23485729403', null, 1, 4240);

insert into odgajateljica (sifra, ime, prezime, dob, email, oib, ugovor, skupina, placa)
values
(null, 'Ivona', 'Vonic', 25, 'ivona.vonic@gmail.com', '75839265', null, 2, 4785);

insert into odgajateljica (sifra, ime, prezime, dob, email, oib, ugovor, skupina, placa)
values
(null, 'Marija', 'Marijic', 32, 'marija.marijic@gmail.com', '64927502345', null, 3, 5200);

select * from strucnasprema;

insert into strucnasprema (sifra, naziv, odgajateljica)
values
(null, 'Visa skola', 1);

insert into strucnasprema (sifra, naziv, odgajateljica)
values
(null, 'Strucna sprema', 2);

insert into strucnasprema (sifra, naziv, odgajateljica)
values
(null, '5 godina faksa', 3);

select * from vrtic;

insert into vrtic(sifra, skupina, dijete , odgajateljica , strucnasprema )
values
(null, 1, 1, 1, 1);

insert into vrtic(sifra, skupina, dijete , odgajateljica , strucnasprema )
values
(null, 1, 2, 1, 1);

insert into vrtic(sifra, skupina, dijete , odgajateljica , strucnasprema )
values
(null, 1, 3, 1, 1);

insert into vrtic(sifra, skupina, dijete , odgajateljica , strucnasprema )
values
(null, 2, 4, 2, 2);

insert into vrtic(sifra, skupina, dijete , odgajateljica , strucnasprema )
values
(null, 2, 5, 2, 2);

insert into vrtic(sifra, skupina, dijete , odgajateljica , strucnasprema )
values
(null, 2, 6, 2, 2);

insert into vrtic(sifra, skupina, dijete , odgajateljica , strucnasprema )
values
(null, 3, 7, 3, 3);

insert into vrtic(sifra, skupina, dijete , odgajateljica , strucnasprema )
values
(null, 3, 8, 3, 3);

insert into vrtic(sifra, skupina, dijete , odgajateljica , strucnasprema )
values
(null, 3, 9, 3, 3);

update skupina set brojucenika = 14 where sifra = 1;

update dijete set ime = 'Vlatka' where sifra = 5;

update odgajateljica set ime = 'Mirna' where sifra = 3;










