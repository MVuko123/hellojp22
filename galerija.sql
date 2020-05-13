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

alter table izlozba add foreign key(djelo) references djelo(sifra);
alter table izlozba add foreign key(kustos) references kustos(sifra);
alter table izlozba add foreign key(sponzor) references sponzor(sifra);

show tables;

select * from djelo;

insert into djelo (sifra, naziv, autor, godina)
values
(null, 'Mona Lisa', 'Leonardo Da Vinci', 1503);

insert into djelo (sifra, naziv, autor, godina)
values
(null, 'Zvjezdana Noc', 'Vincent Van Gogh', 1889);

insert into djelo (sifra, naziv, autor, godina)
values
(null, 'Posljednja Vecera', 'Leonardo Da Vinci', 1498);

select * from kustos;

insert into kustos(sifra, ime, prezime, oib, email, placa)
values
(null, 'Pero', 'Peric', '74629463721', 'pero.peric@gmail.com', 6000);

insert into kustos(sifra, ime, prezime, oib, email, placa)
values
(null, 'Duro', 'Duric', '73540285641', 'duro.duric@gmail.com', 5700);

insert into kustos(sifra, ime, prezime, oib, email, placa)
values
(null, 'Mujo', 'Mujic', '36491825740', 'mujo.mujic@gmail.com', 6350);

select * from sponzor;

insert into sponzor(sifra, ime, prezime)
values
(null, 'Ana', 'Anic');

insert into sponzor(sifra, ime, prezime)
values
(null, 'Milan', 'Milic');

insert into sponzor(sifra, ime, prezime)
values
(null, 'Zoran', 'Zoric');

select * from izlozba;

insert into izlozba(sifra, djelo ,kustos, sponzor)
values
(null, 1, 1, 1);

insert into izlozba(sifra, djelo, kustos, sponzor)
values
(null, 2, 2, 2);

insert into izlozba(sifra, djelo, kustos , sponzor )
values
(null, 3, 3, 3);


