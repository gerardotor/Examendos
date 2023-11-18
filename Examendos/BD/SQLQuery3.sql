create database examendos
go

use examendos
go

--MANTENIMIENTO TABLA EQUIPOS---------------
create table Equipos(
idequipos int primary key,
tipoequipo varchar (50) NOT NULL,
modelo varchar (50) not null,
idusuario int,
)

--insertar equipos
insert into Equipos(idequipos, tipoequipo, modelo, idusuario) 
values (1,'alicate', 'irazu', 123), 
(2,'cortadora', 'black', 1234), (3,'desatornillador', 'acero', 12345)

--consultar equipos
select * from Equipos
select * from Equipos where idequipos = 2
select * from Equipos where idusuario = 12345
select modelo from Equipos

--borrar equipos
delete from Equipos where idequipos = 1

--modificar equipos
update Equipos set idequipos = 1

--MANTENIMIENTO TABLA USUARIOS----------------
create table Usuarios(
idusuarios int primary key,
nombre varchar (50) NOT NULL,
correo varchar (50) not null,
telefono varchar (15),
)

--insertar usuarios
insert into Usuarios (nombre, correo, telefono) 
values ('Gerardo', 'gerardotorres@gmail.com', 65754356), 
('Megan', 'meganelena@upi.com', 22087656), 
('Carlos', 'querudo@hotmail.com', 89765432)

--consultar usuarios
select * from Usuarios
select * from Usuarios where correo = 'gerardotorres@gmail.com'
select * from Usuarios where nombre = 'Carlos'
select correo from Usuarios

--borrar usuarios
delete from Usuarios where nombre = 'Gerardo'

--modificar usuarios
update Usuarios set telefono = 89765432

--MANTENIMIENTO TABLA TECNICOS----------------
create table tecnicos(
idtecnicos int primary key,
nombretec varchar (50) NOT NULL,
especialidad varchar (70) NOT NULL,
)

--insertar tecnicos
insert into tecnicos(nombretec, especialidad) 
values ('Mario', 'electrónica'), 
('Maria', 'ferreteria'), 
('Ernesto', 'almacenaje')

--consultar tecnicos
select * from tecnicos
select * from tecnicos where nombretec = 'mario'
select * from tecnicos where especialidad = 'ferreteria'
select especialidad from tecnicos

--borrar tecnicos
delete from tecnicos where nombretec = 'Maria'

--modificar tecnicos
update tecnicos set especialidad = 'almacenaje'

Create table reparaciones(
idreparaciones int primary key,
idequipos int,
fechasolicitud datetime,
)

create table asignaciones(
idasignaciones int identity primary key,
idreparaciones int,
idtecnicos int,
fechaasignacion datetime,
)

create table detallesreparacion(
iddetalle int identity primary key,
idreparaciones int,
descripcion varchar (50),
fechainicio datetime,
fechafin datetime,
)

