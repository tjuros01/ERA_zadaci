# izvođenje
# Ova datoteka se nalazi na X:\
/*

c:\xampp\mysql\bin\mysql -uedunova -pedunova --default_character_set=utf8 < "X:\Odvjetnik.sql"

*/


drop database if exists Odvjetnik;
create database Odvjetnik default character set utf8;
use Odvjetnik;

create table odvjetnik(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
oib char(11),
polog decimal(18,2)
);

create table klijent(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null
);

create table suradnik(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
zvanje varchar(50),
polog decimal(18,2)
);

create table obrana(
sifra int not null primary key auto_increment,
odvjetnik int not null,
klijent int not null
);

create table suradnikobrana(
suradnik int not null,
obrana int not null
);




alter table obrana add foreign key (odvjetnik) references odvjetnik(sifra);
alter table obrana add foreign key (klijent) references klijent(sifra);

alter table suradnikobrana add foreign key (obrana) references obrana(sifra);
alter table suradnikobrana add foreign key (suradnik) references suradnik(sifra);


select 'Gotov';


