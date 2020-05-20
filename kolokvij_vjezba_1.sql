drop database if exists kolokvij_vjezba_1;
create database kolokvij_vjezba_1;
use kolokvij_vjezba_1;


create table becar(
   sifra int not null primary key auto_increment,
   drugiputa datetime not null,
   carape varchar(36),
   bojaociju varchar(46),
   haljina varchar(32)
);

create table sestra(
   sifra int not null primary key auto_increment,
   jmbag char(11),
   hlace varchar(42) not null,
   vesta varchar(41),
   prviputa datetime not null,
   modelnaocala varchar(33),
   becar int
);

create table ostavljena(
   sifra int not null primary key auto_increment,
   jmbag char(11),
   bojaociju varchar(49), 
   suknja varchar(31) not null,
   bojakose varchar(45) not null,
   priputa datetime,
   carape varchar(41) not null
);
