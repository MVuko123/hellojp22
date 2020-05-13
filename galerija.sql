drop database if exists galerija;
create database galerija;
use galerija;

create table djelo(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    autor varchar(50) not null,
    godina int not null
);

create table kustos(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    oib char(11),
    email varchar(50) not null,
    placa int
);

create table sponzor(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null
);

create table izlozba(
    sifra int not null primary key auto_increment,
    djelo int not null,
    kustos int not null,
    sponzor int not null
);
