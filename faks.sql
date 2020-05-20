#d:\xampp\mysql\bin\mysql -uedunova -pedunova < d:\jp22\fakultet.sql
drop database if exists fakultet;
create database fakultet;
use fakultet;

create table student(
     sifra int not null primary key auto_increment,
     ime varchar(50) not null,
     prezime varchar(50) not null,
     email varchar(50) not null,
     dob int not null,
     spol char(1) not null,
     godinastudija int not null
);

create table rok(
    sifra int not null primary key auto_increment,
    vrsta varchar(50) not null,
    student int not null 
);

create table kolegij(
    sifra int not null primary key auto_increment,
    rok int not null,
    student int not null
);

alter table kolegij add foreign key (rok) references rok (sifra);
alter table kolegij add foreign key (student) references student(sifra);

#select * from student;

insert into student(sifra, ime, prezime, email, dob, spol, godinastudija)
values
(null, 'Pero', 'Peric', 'pero.peric@gmail.com', 21, 'm', 2);

insert into student(sifra, ime, prezime, email, dob, spol, godinastudija)
values
(null, 'Ana', 'Anic', 'ana.anic@gmail.com', 19, 'z', 1);

insert into student(sifra, ime, prezime, email, dob, spol, godinastudija)
values
(null, 'Maja', 'Majic', 'maja.majic@gmail.com', 24, 'z', 5)

#select * from rok;

insert into rok(sifra, vrsta, student)
values
(null, 'zimski', 1);

insert into rok(sifra, vrsta, student)
values
(null, 'ljetni', 2);

insert into rok(sifra, vrsta, student)
values
(null, 'jesenski', 3);

#select * from kolegij;

insert into kolegij(sifra, rok, student)
values
(null, 1, 1);

insert into kolegij(sifra, rok, student)
values
(null, 2, 2);

insert into kolegij(sifra, rok, student)
values
(null, 3, 3);

update student set prezime = 'Maric' where sifra = 3;

update rok set vrsta = 'ljetni' where sifra = 1;

update kolegij set rok = 1 where sifra = 2;

delete from kolegij where sifra = 3;

delete from rok where sifra = 3;

delete from student where sifra = 3;

select a.ime, a.prezime
from student a
inner join kolegij b on a.sifra = b.student;