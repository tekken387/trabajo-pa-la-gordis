CREATE TABLE Peliculas (
  idPelicula INT primary key NOT NULL ,
   Nombre VARCHAR2(30),
  Precio FLOAT,
  Stock INT DEFAULT 0);
  
CREATE TABLE Socios (
  idSocio INT NOT NULL primary key,
  CodSocio VARCHAR2(30) NOT NULL,
  Nombre VARCHAR2(30),
  Dni VARCHAR2(30));

CREATE TABLE Sucursales (
  idSucursal INT NOT NULL primary key,
  Direccion VARCHAR2(30));
  
CREATE TABLE Empleados(
   idEmpleado  INT NOT NULL primary key,
   idSucursal  INT NOT NULL,
   Nombre  VARCHAR2(30),
  CONSTRAINT  fkemp_suc FOREIGN KEY (idSucursal) REFERENCES Sucursales(idSucursal));
  
CREATE TABLE Compras_pelicula(
   idCompra_pelicula  INT NOT NULL primary key,
   idEmpleado  INT NOT NULL,
   Fecha_compra  DATE,
  CONSTRAINT  fkcomp_emp FOREIGN KEY (idEmpleado) REFERENCES Empleados(idEmpleado));
  
CREATE TABLE Ventas_pelicula (
   idVenta  INT NOT NULL primary key,
   idCliente  INT NOT NULL,
   idEmpleado  INT NOT NULL,
   Fecha_venta  DATE,
  CONSTRAINT fkventp_soc FOREIGN KEY (idCliente) REFERENCES Socios(idSocio),
  CONSTRAINT fkventp_emp FOREIGN KEY (idEmpleado) REFERENCES Empleados(idEmpleado));
  
CREATE TABLE Alquileres_pelicula (
   idAlquilere  INT NOT NULL primary key,
   idCliente  INT NOT NULL,
   idEmpleado  INT NOT NULL,
   Fecha_alquiler  DATE,
  CONSTRAINT fkalqp_soc FOREIGN KEY (idCliente) REFERENCES Socios(idSocio),
  CONSTRAINT fkalqp_emp FOREIGN KEY (idEmpleado) REFERENCES Empleados(idEmpleado));
  
CREATE TABLE Detalles_venta_pelicula (
   idDetalle_venta_pelicula  INT NOT NULL primary key,
   idVenta_pelicula  INT NOT NULL,
   idPelicula  INT NOT NULL,
   Cantidad  INT DEFAULT 1,
  CONSTRAINT fkdvp_vp FOREIGN KEY (idVenta_pelicula) REFERENCES Ventas_pelicula(idVenta),
  CONSTRAINT fkdvp_pe FOREIGN KEY (idPelicula) REFERENCES Peliculas(idPelicula));

CREATE TABLE Detalles_alquiler_pelicula (
   idDetalle_alquiler_pelicula  INT NOT NULL primary key,
   idPelicula  INT NOT NULL,
   idAlquiler_pelicula  INT NOT NULL,
   Cantidad  INT DEFAULT 1,
  CONSTRAINT fkdap_pe FOREIGN KEY (idPelicula) REFERENCES Peliculas(idPelicula),
  CONSTRAINT fkdap_alqp  FOREIGN KEY (idAlquiler_pelicula) REFERENCES Alquileres_pelicula(idAlquilere));
  
CREATE TABLE Detalles_compra_pelicula (
   idDetalle_compra_pelicula  INT NOT NULL primary key,
   idPelicula  INT NOT NULL,
   idCompra_pelicula  INT NOT NULL,
   Cantidad  INT DEFAULT 1,
  CONSTRAINT fkdcp_pe FOREIGN KEY (idPelicula) REFERENCES Peliculas(idPelicula),
  CONSTRAINT fkdcp_comp FOREIGN KEY (idCompra_pelicula) REFERENCES Compras_pelicula(idCompra_pelicula));
  
  
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

insert into empleados values(seq_empleados.NEXTVAL,8,'Juana Rosales Lopez');
insert into empleados values(seq_empleados.NEXTVAL,9,'Pedro Espinoza Gutierrez');
insert into empleados values(seq_empleados.NEXTVAL,10,'Marco Aurelio Gonzales');

insert into compras_pelicula values(seq_compras.NEXTVAL,2,sysdate);
insert into compras_pelicula values(seq_compras.NEXTVAL,3,'15/11/14');
insert into compras_pelicula values(seq_compras.NEXTVAL,4,sysdate);
insert into compras_pelicula values(seq_compras.NEXTVAL,2,'21/07/14');
insert into compras_pelicula values(seq_compras.NEXTVAL,3,'16/05/14');
insert into compras_pelicula values(seq_compras.NEXTVAL,4,sysdate);




 