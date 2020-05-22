drop database if exists kino;
create database kino;
use kino;

create table film(
   sifra int not null primary key auto_increment,
   naziv varchar(50) not null,
   redatelj varchar(50) not null,
   godina int not null,
   ocjena int not null
);

create table projekcija(
    sifra int not null primary key auto_increment,
    film int not null,
    datum datetime not null
);


create table kupac(
   sifra int not null primary key auto_increment,
   spol char(1) not null,
   dob int not null,
   ime varchar(50) not null,
   prezime varchar(50) not null
);

create table karta(
    sifra int not null primary key auto_increment,
    cijena int not null,
    kupac int not null,
    projekcija int not null,
    sjedalo int not null,
    red char(1) not null 
);

create table hrana_pice(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    cijena int not null
);

create table pojeo_popio(
   sifra int not null primary key auto_increment,
   kolicina int not null,
   karta int not null,
   hrana_pice int not null
);


alter table projekcija add foreign key (film) references film(sifra);

alter table karta add foreign key (kupac) references kupac(sifra);
alter table karta add foreign key (projekcija) references projekcija(sifra);

alter table pojeo_popio add foreign key (karta) references karta(sifra);
alter table pojeo_popio add foreign key (hrana_pice) references hrana_pice(sifra);

show tables;

select * from film;

insert into film(sifra, naziv, redatelj, godina, ocjena)
values
(null, 'The Dark Knight' , 'Christopher Nolan', 2008, 9);

insert into film(sifra, naziv, redatelj, godina, ocjena)
values
(null, 'Inception' , 'Christopher Nolan', 2010, 8.8);

insert into film(sifra, naziv, redatelj, godina, ocjena)
values
(null, 'Gladiator' , 'Ridley Scott', 2000, 8.5);

insert into film(sifra, naziv, redatelj, godina, ocjena)
values
(null, 'The Lord of the Rings: The Fellowship of the Ring' , 'Peter Jackson', 2001, 8.8);

insert into film(sifra, naziv, redatelj, godina, ocjena)
values
(null, 'Django Unchained' , 'Quentin Tarantino', 2012, 8.4);

insert into film(sifra, naziv, redatelj, godina, ocjena)
values
(null, 'Inglorious Besterds' , 'Quentin Tarantino', 2009, 8.3);

insert into film(sifra, naziv, redatelj, godina, ocjena)
values
(null, 'The Wolf of Wall Street' , 'Martin Scoresese', 2013, 8.2);

insert into film(sifra, naziv, redatelj, godina, ocjena)
values
(null, 'The Dark Knight Rises' , 'Christopher Nolan', 2012, 8.4);

insert into film(sifra, naziv, redatelj, godina, ocjena)
values
(null, 'Guardian of the Galaxy' , 'James Gunn', 2014, 8);

insert into film(sifra, naziv, redatelj, godina, ocjena)
values
(null, 'The Departed' , 'Martin Scorsese', 2006, 8.5);

select * from projekcija;

insert into projekcija(sifra, film, datum)
values
(null, 1, '2020-01-22');

insert into projekcija(sifra, film, datum)
values
(null, 2, '2020-01-19');

insert into projekcija(sifra, film, datum)
values
(null, 3, '2020-01-09');

insert into projekcija(sifra, film, datum)
values
(null, 4, '2020-01-11');

insert into projekcija(sifra, film, datum)
values
(null, 5, '2020-01-24');

insert into projekcija(sifra, film, datum)
values
(null, 6, '2020-01-08');

insert into projekcija(sifra, film, datum)
values
(null, 7, '2020-02-02');

insert into projekcija(sifra, film, datum)
values
(null, 8, '2020-02-08');

insert into projekcija(sifra, film, datum)
values
(null, 9, '2020-02-12');

insert into projekcija(sifra, film, datum)
values
(null, 10, '2020-02-25');

insert into projekcija(sifra, film, datum)
values
(null, 1, '2020-01-22');


select * from kupac;

insert into kupac(sifra , spol , dob , ime , prezime )
values
(null, 'm', 17, 'Pero', 'Peric');

insert into kupac(sifra , spol , dob , ime , prezime )
values
(null, 'z', 20, 'Suzana', 'Suzic');

insert into kupac(sifra , spol , dob , ime , prezime )
values
(null, 'm', 22, 'Mujo', 'Mujic');

insert into kupac(sifra , spol , dob , ime , prezime )
values
(null, 'z', 14, 'Ana', 'Anic');

insert into kupac(sifra , spol , dob , ime , prezime )
values
(null, 'm', 35, 'Haso', 'Hasic');

insert into kupac(sifra , spol , dob , ime , prezime )
values
(null, 'z', 40, 'Nada', 'Nadic');

insert into kupac(sifra , spol , dob , ime , prezime )
values
(null, 'm', 33, 'Marko', 'Markic');

insert into kupac(sifra , spol , dob , ime , prezime )
values
(null, 'z', 15, 'Nika', 'Nikic');

insert into kupac(sifra , spol , dob , ime , prezime )
values
(null, 'm', 38, 'Mate', 'Matic');

insert into kupac(sifra , spol , dob , ime , prezime )
values
(null, 'z', 27, 'Ljuba', 'Ljubic');

insert into kupac(sifra , spol , dob , ime , prezime )
values
(null, 'm', 17, 'Pero', 'Peric');

insert into kupac(sifra , spol , dob , ime , prezime )
values
(null, 'm', 17, 'Pero', 'Peric');

insert into kupac(sifra , spol , dob , ime , prezime )
values
(null, 'm', 17, 'Pero', 'Peric');

insert into kupac(sifra , spol , dob , ime , prezime )
values
(null, 'm', 17, 'Pero', 'Peric');

insert into kupac(sifra , spol , dob , ime , prezime )
values
(null, 'm', 17, 'Pero', 'Peric');

insert into kupac(sifra , spol , dob , ime , prezime )
values
(null, 'm', 17, 'Pero', 'Peric');

insert into kupac(sifra , spol , dob , ime , prezime )
values
(null, 'm', 17, 'Pero', 'Peric');

insert into kupac(sifra , spol , dob , ime , prezime )
values
(null, 'm', 17, 'Pero', 'Peric');

insert into kupac(sifra , spol , dob , ime , prezime )
values
(null, 'm', 17, 'Pero', 'Peric');

insert into kupac(sifra , spol , dob , ime , prezime )
values
(null, 'm', 17, 'Pero', 'Peric');