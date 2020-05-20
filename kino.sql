drop database if exists kino;
create database kino;
use kino;

create table karta(
   sifra int not null primary key auto_increment,
   cijena int not null,
   sjedalo int not null,
   red char(1) not null
);

create table film(
   sifra int not null primary key auto_increment,
   ime varchar(50) not null,
   redatelj varchar(50) not null,
   godina int not null,
   ocjena int not null
);

create table hrana(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    cijena int not null,
    kolicina int not null
);

create table pice(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    cijena int not null,
    kolicina int not null
);

create table djelatnici(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    dob int not null,
    spol char(1) not null
);

create table kupac(
   sifra int not null primary key auto_increment,
   spol char(1) not null,
   dob int not null,
   nacinplacanja varchar(50) not null,
   rezervacija char(2) not null,
   karta int not null,
   film int not null,
   hrana int not null,
   pice int not null,
   djelatnica int not null
);


