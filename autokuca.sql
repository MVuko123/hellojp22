drop database if exists autokuca;
create database autokuca;
use autokuca;

create table auto(
    sifra int not null primary key auto_increment,
    marka varchar(50) not null,
    cijena int not null,
    boja varchar(50) not null,
    brojvrata int not null
);

create table kupac(
   sifra int not null primary key auto_increment,
   auto int not null,
   ime varchar(50) not null,
   prezime varchar(50) not null,   
   spol char(1) not null,
   dob int not null
);

create table prodavac(
   sifra int not null primary key auto_increment,
   auto int not null,
   kupac int not null,
   ime varchar(50) not null,
   prezime varchar(50) not null,
   spol char(1) not null,
   dob int not null,
   godinerada int not null
);

create table rasprodaja(
      sifra int not null primary key auto_increment,
      auto int not null,
      kupac int not null,
      prodavac int not null
);

alter table rasprodaja add foreign key (auto) references auto(sifra);
alter table rasprodaja add foreign key (kupac) references kupac(sifra);
alter table rasprodaja add foreign key (prodavac) references prodavac(sifra);


show tables;

select * from auto;

insert into auto(sifra, marka, cijena, boja, brojvrata)
values
(null, 'audi', 120000,'crna', 4 );

insert into auto(sifra, marka, cijena, boja, brojvrata)
values
(null, 'bmw', 100000,'bijela', 2 );

insert into auto(sifra, marka, cijena, boja, brojvrata)
values
(null, 'mercedes', 110000,'siva', 4 );


select * from kupac;

insert into kupac(sifra,auto, ime, prezime, spol, dob)
values
(null,1, 'Pero', 'Peric', 'm', 33);

insert into kupac(sifra,auto, ime, prezime, spol, dob)
values
(null,2, 'Ana', 'Anic', 'z', 36);

insert into kupac(sifra,auto, ime, prezime, spol, dob)
values
(null,3, 'Mujo', 'Mujic', 'm', 45);


select * from prodavac;

insert into prodavac(sifra,auto, kupac, ime, prezime, spol, dob, godinerada)
values
(null,1,1, 'Mislav', 'Milic', 'm', 44, 20);

insert into prodavac(sifra,auto, kupac, ime, prezime, spol, dob, godinerada)
values
(null,2, 2, 'Ena', 'Enic', 'z', 35, 12);

insert into prodavac(sifra,auto, kupac, ime, prezime, spol, dob, godinerada)
values
(null, 3, 3,'Duro', 'Duric', 'm', 55, 33);

select * from rasprodaja;

insert into rasprodaja(sifra, auto, kupac, prodavac)
values
(null, 1, 1, 1);

insert into rasprodaja(sifra, auto, kupac, prodavac)
values
(null, 2, 2, 2);

insert into rasprodaja(sifra, auto, kupac, prodavac)
values
(null, 3, 3, 3);

update auto set boja = 'crna' where sifra = 3;

update kupac set dob = 54 where sifra = 1;

update prodavac set godinerada = 10 where sifra = 2;

delete from rasprodaja where sifra = 2;

delete from prodavac where sifra = 2;

delete from kupac where sifra = 2;

delete from auto where sifra = 2;

select * from auto
where boja = 'crna';

select * from prodavac
where spol = 'm';