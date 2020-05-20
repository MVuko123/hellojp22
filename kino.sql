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
    sifra int not null,
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
    sjedalo int not null,
    red char(1) not null, 
    kupac int not null,
    projekcija int not null
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
alter table karta add foreign key (projekcija) references projekcija(sfira);

alter table pojeo_popio add foreign key (karta) references karta(sifra);
alter table pojeo_popio add foreign key (hrana_pice) references hrana_pice(sifra);