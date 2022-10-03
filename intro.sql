create table costumer (
  user_id serial PRIMARY KEY,
  user_doc_id NUMERIC (10) NOT NULL UNIQUE,
  nombre VARCHAR (255),
  apellido VARCHAR (255),
  email VARCHAR (255) NOT NULL UNIQUE,
  mobile NUMERIC (10) NOT NULL UNIQUE,
  create_on TIMESTAMP NOT null
);

insert into costumer (user_doc_id, nombre, apellido, email, mobile, create_on) values ('0917088015', 'Peter', 'Neville', 'neville.peter.2000@gmail.com', '0995293871', NOW());
insert into costumer (user_doc_id, nombre, apellido, email, mobile, create_on) values ('1709990848', 'Jose', 'Batallas', 'joselbatallas@gmail.com', '0984566817', NOW());
insert into costumer (user_doc_id, nombre, apellido, email, mobile, create_on) values ('1710255892', 'Eduardo', 'Vallejo', 'evb1710@yahoo.com', '0999743152', NOW());

select * from costumer;
select s.user_doc_id, s.nombre  from costumer s;
select s.nombre from costumer s where s.nombre like 'J%';
update costumer set nombre = 'José' where nombre  = 'Jose';
delete from costumer where email = 'evb1710@yahoo.com'