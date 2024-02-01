create database lab0

use lab0

create table clientes (
dni varchar (9) constraint clientes_cedula_pk
primary key not null,
nombre varchar (20) not null,
dir varchar (30) not null

)

create table sucursales (
nsuc varchar (4) constraint sucursales_nsuc_pk primary key not null,
ciudad varchar(30) not null

)

create table cuentas (
cod varchar (4) constraint cuentas_cod_pk PRIMARY KEY NOT NULL,
dni varchar (9)
Constraint clientes_cedula_fk_ foreign key(DNI) references 
clientes(dni) not null, 
nsuc varchar(4)
constraint sucursales_nosucursal_fk foreign key(nsuc)
references sucursales(nsuc) not null,
saldo money


)


alter table clientes add pais varchar(10);

alter table clientes alter column pais varchar(20)

alter table clientes add salario money NOT NULL


insert into clientes ("dni", "nombre", "dir", "pais", "salario")
values ('890356', 'Juan', 'Arraijan', 'Panama', '700')

select * from clientes

insert into clientes ("dni", "nombre", "dir", "pais", "salario")
values ('89765', 'Marcos', 'Colon', 'Panama', '900')


insert into clientes ("dni", "nombre", "dir", "pais", "salario")
values ('52345', 'Luis', 'Chorrera', 'Panama', '600')

select * from clientes


insert into sucursales ("nsuc", "ciudad")
values('325', 'Panama')

insert into sucursales ("nsuc", "ciudad")
values('465', 'Panama')

insert into sucursales ("nsuc", "ciudad")
values('500', 'Panama')

select * from sucursales

select * from clientes


insert into cuentas ("cod", "dni", "nsuc", "saldo")
values('346', '52345', '325', '500')

insert into cuentas ("cod", "dni", "nsuc", "saldo")
values('200', '890356', '465', '900')

select * from sucursales

select * from clientes

insert into cuentas ("cod", "dni", "nsuc", "saldo")
values('180', '89765', '500', '1000')

select * from cuentas


alter table clientes drop column pais

select * from clientes
