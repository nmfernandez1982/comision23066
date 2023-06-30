use base23066;
drop table clientes;
drop table provincias;



create table socios
(
id_socio int not null auto_increment ,
nombre varchar(30),
apellido varchar(30),
dni int not null unique,
mail varchar(30) not null unique,
estado boolean ,
fecha_alta date,
primary key(id_socio)
);

insert into socios values (1,'Nicolas','Fernandez',29031734,'nicolas@gmail.com',true,now());

insert into socios values (2,'Julieta','Gomez',28031734,'julieta@gmail.com',true,now());
insert into socios values (3,'Camila','Lopez',27031734,'camila@gmail.com',true,now());
insert into socios values (4,'Pedro','Gutierrez',26031734,'pedro@gmail.com',true,now());
insert into socios values (5,'Pablo','Perez',25031734,'pablo@gmail.com',true,now());

select * from socios;



