use base23066;


create database base23066;

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

create table provincias
(
id int not null auto_increment,
descripcion varchar(40),
primary key(id)
);


alter table clientes
add column provincia_id int not null after estado;

select * from clientes;

/*
DDL
create
drop
add
alter
truncate


DML
select
delete
update
insert
*/

select * from provincias;

insert into provincias values (5,'Entre Rios');
insert into provincias values (6,'Misiones');
insert into provincias values (7,'Chaco');
insert into provincias values (8,'Formosa');
insert into provincias values (24,'Ciudad de Buenos Aires');


select * from clientes;

insert into clientes values (1,'Nicolas','Fernandez',29031734,'nm@gmail.com',now(),true,2);
insert into clientes values (2,'jorge','Perez',29031733,'nm2323@gmail.com',now(),true,10);
insert into clientes values (3,'Camila','Hernandez',29031731,'nm232311@gmail.com',now(),true,7);
insert into clientes values (4,'Eugenia','Brando',290317333,'nm111@gmail.com',now(),true,8);

insert into clientes values (5,'Leon','Juare<',290317332,'nm1121@gmail.com',now(),true,24);


alter table clientes
add foreign key(provincia_id)
references provincias(id);

alter table clientes
drop foreign key clientes_ibfk_1;


select * from clientes;

update clientes set provincia_id=24 where id=5; 

update clientes set provincia_id=8 where id=2; 

select * from provincias;

delete from provincias where id=8; 


/*
SET FOREIGN_KEY_CHECKS=0;
SET FOREIGN_KEY_CHECKS=1;
*/

select nombre as 'Nombre' ,apellido as 'Apellido',mail as 'E-Mail' from clientes limit 3,5;


select * from clientes where provincia_id=8;

select * from clientes where apellido like 'Fernandez';


select * from clientes where apellido like '%nandez';

/*
% --> reemplaza un conjunto de caracteres
_ --> reemplaza un caracter
*/

update clientes set apellido='Fernondez' where id=5;

select * from clientes where apellido like 'Fern_ndez';









