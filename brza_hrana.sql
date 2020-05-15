drop database if exists brza_hrana;
create database brza_hrana;
use brza_hrana;

create table jela(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    cijena int not null
);

create table kupci(
     sifra int not null primary key auto_increment,
     spol char(1) not null,
     dob int not null,
     jela int not null
);

create table djelatnici(
     sifra int not null primary key auto_increment,
     ime varchar(50) not null,
     prezime varchar(50) not null,
     email varchar(50) not null,
     oib char(11) not null,
     spol char(1) not null,
     dob int not null,
     jela int not null,
     kupci int not null
);

create table prodaja(
    sifra int not null primary key auto_increment,
    jela int not null,
    kupci int not null,
    djelatnici int not null
);


alter table prodaja add foreign key (jela) references jela(sifra);
alter table prodaja add foreign key (kupci) references kupci(sifra);
alter table prodaja add foreign key (djelatnici) references djelatnici(sifra);

show tables;

select * from jela;

insert into jela(sifra, naziv, cijena)
values
(null, 'Kebab', 25);

insert into jela(sifra, naziv, cijena)
values
(null, 'Pizza', 32);

insert into jela(sifra, naziv, cijena)
values
(null, 'Pomfrit', 8);


select * from kupci;

insert into kupci(sifra, spol, dob, jela)
values
(null, 'm', 18, 1);

insert into kupci(sifra, spol, dob, jela)
values
(null, 'z', 24, 3);

insert into kupci(sifra, spol, dob, jela)
values
(null, 'm', 44, 2);

select * from djelatnici;

insert into djelatnici(sifra, ime, prezime, email, oib, spol, dob, jela ,kupci)
values
(null, 'Pero', 'Peric', 'pero.peric@gmail.com','23456723455', 'm', 33, 1, 1);

insert into djelatnici(sifra, ime, prezime, email, oib, spol, dob, jela ,kupci)
values
(null, 'Ana', 'Anic', 'ana.anic@gmail.com','65826493628', 'z', 38, 2, 2);

insert into djelatnici(sifra, ime, prezime, email, oib, spol, dob, jela ,kupci)
values
(null, 'Mujo', 'Mujic', 'mujo.mujic@gmail.com','85640274825', 'm', 44, 3, 3);

select * from prodaja;

insert into prodaja(sifra, jela, kupci, djelatnici)
values
(null, 1, 1, 1);

insert into prodaja(sifra, jela, kupci, djelatnici)
values
(null, 2, 2, 2);

insert into prodaja(sifra, jela, kupci, djelatnici)
values
(null, 3, 3, 3);


update jela set cijena = 38 where sifra = 2;

update kupci set spol = 'z' where sifra = 1;

update djelatnici set prezime = 'Jujic' where sifra = 3;

delete from prodaja where sifra = 3;

delete from djelatnici where sifra = 3;

delete from kupci where sifra = 3;

delete from jela where sifra = 3;