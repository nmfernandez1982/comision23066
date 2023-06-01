SELECT * FROM com23047.clientes;

select * from clientes where nombre like '_a%' and apellido like 'Adorni';

select * from clientes where nombre like '_a%' and apellido like 'A%';

select * from clientes where nombre like '_a%' and id_provincia=2;

select * from clientes where nombre like 'a%' or id_provincia=2;

select * from clientes where id_cliente	in (99,301,82,3,21);

select * from clientes where fecha_alta between '2019-01-01' and '2020-12-31';

select * from clientes where fecha_alta between '2021-01-01' and now();

select * from clientes where id_cliente between 100 and 200;

select * from clientes where id_cliente not between 100 and 200;

select * from clientes where fecha_alta not between '2021-01-01' and now();

select * from clientes where id_cliente not	in (10,21,36,12,5);

select * from provincias;




select * from clientes where year(fecha_alta)=2019;

select * from clientes where month(fecha_alta)=5;



select * from clientes where day(fecha_alta)=1;


select distinct(nombre)  from clientes;

select nombre,apellido,id_provincia,provincias.descripcion from clientes
inner join provincias on clientes.id_provincia=provincias.id 

where provincias.id=4 and clientes.id_cliente in (33,12,22,333);

select * from clientes;

/*
join  -->todos los elementos que coincidan en ambas tablas
left join  -->todos los elementos que coincidan y lo que no tambien en la tabla A
right join -->todos los elementos que coincidan y lo que no tambien en la tabla B


*/

select nombre,apellido,id_provincia,provincias.descripcion from clientes
left join provincias on clientes.id_provincia=provincias.id ;

select nombre,apellido,id_provincia,provincias.descripcion from clientes
right join provincias on clientes.id_provincia=provincias.id ;

select * from clientes;

select count(*) from clientes;

select max(id_cliente) from clientes;

select min(id_cliente) from clientes;


select * from clientes where id_cliente=(select max(id_cliente) from clientes);


