CREATE TABLE Peliculas (
  idPelicula integer primary key NOT NULL ,
  Nombre VARCHAR2(30),
  Precio FLOAT,
  Stock INT DEFAULT 0);
  
CREATE TABLE Socios (
  idSocio integer NOT NULL primary key,
  CodSocio VARCHAR2(30) NOT NULL,
  Nombre VARCHAR2(30),
  Dni VARCHAR2(30));

CREATE TABLE Sucursales(
  idSucursal integer NOT NULL primary key,
  Direccion VARCHAR2(30));
  
CREATE TABLE Empleados(
   idEmpleado  integer NOT NULL primary key,
   idSucursal  integer NOT NULL,
   Nombre  VARCHAR2(30),
  CONSTRAINT  fkemp_suc FOREIGN KEY (idSucursal) REFERENCES Sucursales(idSucursal));
  
CREATE TABLE Compras_pelicula(
   idCompra  integer NOT NULL primary key,
   idEmpleado  integer NOT NULL,
   Fecha_compra  DATE,
  CONSTRAINT  fkcomp_emp FOREIGN KEY (idEmpleado) REFERENCES Empleados(idEmpleado));
  
CREATE TABLE Ventas_pelicula (
   idVenta  integer NOT NULL primary key,
   idSocio  integer NOT NULL,
   idEmpleado  integer NOT NULL,
   Fecha_venta  DATE,
  CONSTRAINT fkventp_soc FOREIGN KEY (idSocio) REFERENCES Socios(idSocio),
  CONSTRAINT fkventp_emp FOREIGN KEY (idEmpleado) REFERENCES Empleados(idEmpleado));
  
CREATE TABLE Alquileres_pelicula (
   idAlquiler  integer NOT NULL primary key,
   idSocio  integer NOT NULL,
   idEmpleado  integer NOT NULL,
   Fecha_alquiler  DATE,
  CONSTRAINT fkalqp_soc FOREIGN KEY (idSocio) REFERENCES Socios(idSocio),
  CONSTRAINT fkalqp_emp FOREIGN KEY (idEmpleado) REFERENCES Empleados(idEmpleado));
  
CREATE TABLE Detalles_venta_pelicula (
   idDetalle_venta_pelicula  integer NOT NULL primary key,
   idVenta  integer NOT NULL,
   idPelicula  integer NOT NULL,
   Cantidad  integer DEFAULT 1,
  CONSTRAINT fkdvp_vp FOREIGN KEY (idVenta) REFERENCES Ventas_pelicula(idVenta),
  CONSTRAINT fkdvp_pe FOREIGN KEY (idPelicula) REFERENCES Peliculas(idPelicula));

CREATE TABLE Detalles_alquiler_pelicula (
   idDetalle_alquiler_pelicula  integer NOT NULL primary key,
   idAlquiler  integer NOT NULL,
   idPelicula  integer NOT NULL,
   Cantidad  integer DEFAULT 1,
  CONSTRAINT fkdap_pe FOREIGN KEY (idPelicula) REFERENCES Peliculas(idPelicula),
  CONSTRAINT fkdap_alqp  FOREIGN KEY (idAlquiler) REFERENCES Alquileres_pelicula(idAlquiler));
  
CREATE TABLE Detalles_compra_pelicula (
   idDetalle_compra_pelicula  integer NOT NULL primary key,
   idCompra  integer NOT NULL,
   idPelicula  integer NOT NULL,
   Cantidad  integer DEFAULT 1,
  CONSTRAINT fkdcp_pe FOREIGN KEY (idPelicula) REFERENCES Peliculas(idPelicula),
  CONSTRAINT fkdcp_comp FOREIGN KEY (idCompra) REFERENCES Compras_pelicula(idCompra));
  
  
create sequence seq_peliculas
increment by 1
start with 1;

create sequence seq_socios
increment by 1
start with 1;

create sequence seq_sucursales
increment by 1
start with 1;

create sequence seq_empleados
increment by 1
start with 1;

create sequence seq_compras
increment by 1
start with 1;

create sequence seq_ventas
increment by 1
start with 1;

create sequence seq_alquileres
increment by 1
start with 1;

create sequence seq_det_venta
increment by 1
start with 1;

create sequence seq_det_alquiler
increment by 1
start with 1;

create sequence seq_det_compra
increment by 1
start with 1;


insert into peliculas values(seq_peliculas.NEXTVAL,'SAW',25.50,5);
insert into peliculas values(seq_peliculas.NEXTVAL,'Dracula',30.00,5);
insert into peliculas values(seq_peliculas.NEXTVAL,'Lord of the rings',15.50,5);
insert into peliculas values(seq_peliculas.NEXTVAL,'Anabelle',50.00,5);
insert into peliculas values(seq_peliculas.NEXTVAL,'Interestelar',20.00,5);

insert into socios values(seq_socios.NEXTVAL,'35X468D','David Parra Calle','73382519');
insert into socios values(seq_socios.NEXTVAL,'5WRR98','Manuel Huerto Viza','58451524');
insert into socios values(seq_socios.NEXTVAL,'684QWE','Rafael Requena Troncos','68521478');
insert into socios values(seq_socios.NEXTVAL,'KYT35J','Pedro Perez Peña','95812453');
insert into socios values(seq_socios.NEXTVAL,'VWER54','Juan Chong Shing','02655478');

insert into sucursales values(seq_sucursales.NEXTVAL,'Jr. Lima 458');
insert into sucursales values(seq_sucursales.NEXTVAL,'Av. Junin 123');
insert into sucursales values(seq_sucursales.NEXTVAL,'Av. Larco 588');

insert into empleados values(seq_empleados.NEXTVAL,1,'Juana Rosales Lopez');
insert into empleados values(seq_empleados.NEXTVAL,2,'Pedro Espinoza Gutierrez');
insert into empleados values(seq_empleados.NEXTVAL,3,'Marco Aurelio Gonzales');
insert into empleados values(seq_empleados.NEXTVAL,1,'Miguel Soto');

insert into compras_pelicula values(seq_compras.NEXTVAL,21,sysdate);
insert into compras_pelicula values(seq_compras.NEXTVAL,21,'15/11/14');
insert into compras_pelicula values(seq_compras.NEXTVAL,21,sysdate);
insert into compras_pelicula values(seq_compras.NEXTVAL,21,'21/07/14');
insert into compras_pelicula values(seq_compras.NEXTVAL,21,'16/05/14');
insert into compras_pelicula values(seq_compras.NEXTVAL,21,sysdate);

insert into ventas_pelicula values(seq_ventas.NEXTVAL,1,1,sysdate);
insert into ventas_pelicula values(seq_ventas.NEXTVAL,2,2,'10/07/14');
insert into ventas_pelicula values(seq_ventas.NEXTVAL,3,3,'14/10/14');
insert into ventas_pelicula values(seq_ventas.NEXTVAL,4,21,sysdate);
insert into ventas_pelicula values(seq_ventas.NEXTVAL,5,1,'08/09/14');
insert into ventas_pelicula values(seq_ventas.NEXTVAL,2,2,sysdate);

insert into alquileres_pelicula values(seq_alquileres.NEXTVAL,1,21,'15/01/14');
insert into alquileres_pelicula values(seq_alquileres.NEXTVAL,2,2,'10/02/14');
insert into alquileres_pelicula values(seq_alquileres.NEXTVAL,3,3,'01/12/14');
insert into alquileres_pelicula values(seq_alquileres.NEXTVAL,4,21,sysdate);
insert into alquileres_pelicula values(seq_alquileres.NEXTVAL,5,2,'27/06/14');
insert into alquileres_pelicula values(seq_alquileres.NEXTVAL,2,1,sysdate);

insert into detalles_venta_pelicula values(seq_det_venta.NEXTVAL,1,1,1);
insert into detalles_venta_pelicula values(seq_det_venta.NEXTVAL,2,2,1);
insert into detalles_venta_pelicula values(seq_det_venta.NEXTVAL,3,3,1);
insert into detalles_venta_pelicula values(seq_det_venta.NEXTVAL,4,4,1);
insert into detalles_venta_pelicula values(seq_det_venta.NEXTVAL,5,5,1);
insert into detalles_venta_pelicula values(seq_det_venta.NEXTVAL,6,3,1);

insert into detalles_alquiler_pelicula values(seq_det_alquiler.NEXTVAL,1,1,1);
insert into detalles_alquiler_pelicula values(seq_det_alquiler.NEXTVAL,2,2,1);
insert into detalles_alquiler_pelicula values(seq_det_alquiler.NEXTVAL,3,3,1);
insert into detalles_alquiler_pelicula values(seq_det_alquiler.NEXTVAL,4,4,1);
insert into detalles_alquiler_pelicula values(seq_det_alquiler.NEXTVAL,5,5,1);
insert into detalles_alquiler_pelicula values(seq_det_alquiler.NEXTVAL,6,2,1);

insert into detalles_compra_pelicula values(seq_det_compra.NEXTVAL,1,1,5);
insert into detalles_compra_pelicula values(seq_det_compra.NEXTVAL,2,2,5);
insert into detalles_compra_pelicula values(seq_det_compra.NEXTVAL,3,3,5);
insert into detalles_compra_pelicula values(seq_det_compra.NEXTVAL,4,4,5);
insert into detalles_compra_pelicula values(seq_det_compra.NEXTVAL,5,5,5);
insert into detalles_compra_pelicula values(seq_det_compra.NEXTVAL,6,4,5);

create user empleado1
identified by emp1;

create user empleado2
identified by emp2;

create user empleado3
identified by emp3;

create user admi
identified by administrador;

create role administrador;

grant all privileges
to administrador;

grant administrador to admi;

create role empleado;

grant select, update
on peliculas,socios,alquileres_pelicula,ventas_pelicula,detalles_alquiler_pelicula,detalles_venta_pelicula
to empleado;

grant empleado to empleado1;
grant empleado to empleado2;
grant empleado to empleado3;

create or replace trigger ActualizaStock_Venta
after insert or delete or update 
on detalles_venta_pelicula
for each row
begin
 if inserting then
  update peliculas set stock=stock-:new.cantidad
  where idpelicula=:new.idpelicula;
 end if;
  
 if updating then
  update peliculas set stock=stock+:new.cantidad
  where idpelicula=:new.idpelicula;
  
  update peliculas set stock=stock-:old.cantidad
  where idpelicula=:old.idpelicula;
 end if;
 
 if deleting then
  update peliculas set stock=stock+:old.cantidad
  where idpelicula=:old.idpelicula;
 end if;
 
end ActualizaStock_Venta;  


create or replace trigger ActualizaStock_Alquiler
after insert or delete or update 
on detalles_alquiler_pelicula
for each row
begin
 if inserting then
  update peliculas set stock=stock-:new.cantidad
  where idpelicula=:new.idpelicula;
 end if;
  
 if updating then
  update peliculas set stock=stock+:new.cantidad
  where idpelicula=:new.idpelicula;
  
  update peliculas set stock=stock-:old.cantidad
  where idpelicula=:old.idpelicula;
 end if;
 
 if deleting then
  update peliculas set stock=stock+:old.cantidad
  where idpelicula=:old.idpelicula;
 end if;
end ActualizaStock_Alquiler;  

create or replace trigger ActualizaStock_Compra
after insert or delete or update 
on detalles_compra_pelicula
for each row
begin
 if inserting then
  update peliculas set stock=stock-:new.cantidad
  where idpelicula=:new.idpelicula;
 end if;
  
 if updating then
  update peliculas set stock=stock+:new.cantidad
  where idpelicula=:new.idpelicula;
  
  update peliculas set stock=stock-:old.cantidad
  where idpelicula=:old.idpelicula;
 end if;
 
 if deleting then
  update peliculas set stock=stock+:old.cantidad
  where idpelicula=:old.idpelicula;
 end if;
end ActualizaStock_Compra;

create or replace trigger AvisoStock
before insert or delete or update 
on detalles_compra_pelicula
for each row
begin
 if inserting then
  update peliculas set stock=stock-:new.cantidad
  where idpelicula=:new.idpelicula;
 end if;
  
 if updating then
  update peliculas set stock=stock+:new.cantidad
  where idpelicula=:new.idpelicula;
  
  update peliculas set stock=stock-:old.cantidad
  where idpelicula=:old.idpelicula;
 end if;
 
 if deleting then
  update peliculas set stock=stock+:old.cantidad
  where idpelicula=:old.idpelicula;
 end if;
end AvisoStock;


--pelicula q mas ejemplares se ha vendido
create view masEjmplares
as
select p.idpelicula,sum(d.cantidad) as cantidad
from peliculas p, detalles_venta_pelicula d
where d.idpelicula=p.idpelicula
group by p.idpelicula
having sum(d.cantidad)=(select max(sum(d.cantidad))
                  from peliculas p, detalles_venta_pelicula d
                  where d.idpelicula=p.idpelicula
                  group by p.idpelicula);
                  
                  
--pelicula mas vendida
create view masVendida
as
select p.idpelicula,count(*) as cantidad
from peliculas p, detalles_venta_pelicula d
where d.idpelicula=p.idpelicula
group by p.idpelicula
having count(*)=(select max(count(*))
                  from peliculas p, detalles_venta_pelicula d
                  where d.idpelicula=p.idpelicula
                  group by p.idpelicula);
                  








