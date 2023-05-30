/*
numericos

enteros
-------
tinyint -128/127   --->no puedo guarda un 365
smallint -32768/32767   
mediumint 
int   -2.147.483.648 to 2.147.483.647
bigint  -9223372036854775808 to 9.223.372.036.854.775.807

Decimales
-------
decimal
double
float

date
----
date
datetime
time
timespam
year

caracterer
----------
char    maximo(255)
varchar maximo(255)

tinytext maximo (255)
smalltext 
mediumtext maximo(16,777,215)
text 
longtext (4,294,967,295)


otros tipos
-----------
blob
boolean
enum
set

*/


create database base23066;
use base23066;


create table clientes
(
id int not null auto_increment,
nombre varchar(40),
apellido varchar(40),
dni int,
mail varchar(40) unique,
fecha_alta date,
estado boolean,
primary key(id)
);

create table provincias(
id int not null auto_increment,
descripcion varchar(40),
primary key(id)
);

insert into provincias values (1,'Salta');
insert into provincias values (2,'Cordoba');
insert into provincias values (3,'Mendoza');
insert into provincias values (4,'Santa Cruz');

select * from provincias;

