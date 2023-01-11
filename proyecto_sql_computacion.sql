-- COMERCIO COMPUTACION - proyectoFinal 2.0
/* ===================== 
	CREACION DE TABLAS 
  =====================*/
CREATE DATABASE IF NOT EXISTS proyecto_computacion_2;
USE proyecto_computacion_2;
-- 1 - Sucursal
CREATE TABLE IF NOT EXISTS sucursal(
	idSucursal INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    localidad VARCHAR(50) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    cantidad_empleados INT(2)
);
-- 2 - Cliente
CREATE TABLE IF NOT EXISTS cliente(
	idCliente INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    mail VARCHAR(254),
    telefono VARCHAR(25) 
);
-- 3 - Puesto
CREATE TABLE IF NOT EXISTS puesto(
	idPuesto INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    nombre VARCHAR(50) NOT NULL
);
-- 4 - Categoria
CREATE TABLE IF NOT EXISTS categoria(
	idCategoria INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    nombre VARCHAR(50) NOT NULL
);
-- 5 - Empleado
CREATE TABLE IF NOT EXISTS empleado(
	idEmpleado INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    mail VARCHAR(254),
    direccion VARCHAR(100),
    edad INT(2),
    sueldo FLOAT,
    idPuesto int,
    FOREIGN KEY(idPuesto) REFERENCES puesto(idPuesto)
);
-- 6 - Factura
CREATE TABLE IF NOT EXISTS factura(
	idFactura INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    fecha datetime NOT NULL,
    idCliente int,
    FOREIGN KEY(idCliente) REFERENCES cliente(idCliente),
    idEmpleado int,
    FOREIGN KEY(idEmpleado) REFERENCES empleado(idEmpleado),
	idSucursal int,
    FOREIGN KEY(idSucursal) REFERENCES sucursal(idSucursal)
);
-- 7 - Proveedor
CREATE TABLE IF NOT EXISTS proveedor(
	idProveedor INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    nombre VARCHAR(50) NOT NULL,
    email VARCHAR(254) NOT NULL,
	idCategoria int,
    FOREIGN KEY(idCategoria) REFERENCES categoria(idCategoria),
	idSucursal int,
    FOREIGN KEY(idSucursal) REFERENCES sucursal(idSucursal)
);
-- 8 - Articulo
-- MODIFICACIÓN DE NOMBRE DE TABLA
ALTER TABLE articulo RENAME COLUMN garantia TO garantia_extendida;
CREATE TABLE IF NOT EXISTS articulo(
	idArticulo INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    nombre VARCHAR(50) NOT NULL,
    stock int(3),
    garantia boolean,
    precioUnitario FLOAT NOT NULL,
    idCategoria int,
    FOREIGN KEY(idCategoria) REFERENCES categoria(idCategoria),
    idProveedor int,
    FOREIGN KEY(idProveedor) REFERENCES proveedor(idProveedor)
);

/* ===================== 
INSERCIÓN DE DATOS
  =====================*/
  -- cliente
INSERT INTO cliente (`idCliente`,`nombre`,`apellido`,`mail`,`telefono`) VALUES (1,'Thibaud','Culbard','tculbard0@nsw.gov.au','206-850-0666');
INSERT INTO cliente (`idCliente`,`nombre`,`apellido`,`mail`,`telefono`) VALUES (2,'Gelya','Gilliam','ggilliam1@indiegogo.com','643-650-4862');
INSERT INTO cliente (`idCliente`,`nombre`,`apellido`,`mail`,`telefono`) VALUES (3,'Ronni','Guitte','rguitte2@buzzfeed.com','526-311-6835');
INSERT INTO cliente (`idCliente`,`nombre`,`apellido`,`mail`,`telefono`) VALUES (4,'Ardene','Turvey','aturvey3@icq.com','431-925-5435');
INSERT INTO cliente (`idCliente`,`nombre`,`apellido`,`mail`,`telefono`) VALUES (5,'Marie-jeanne','Glowacki','mglowacki4@g.co','721-955-8384');
INSERT INTO cliente (`idCliente`,`nombre`,`apellido`,`mail`,`telefono`) VALUES (6,'Gilbert','Cashman','gcashman5@gov.uk','285-630-5209');
INSERT INTO cliente (`idCliente`,`nombre`,`apellido`,`mail`,`telefono`) VALUES (7,'Falito','Drowsfield','fdrowsfield6@hibu.com','126-282-5283');
INSERT INTO cliente (`idCliente`,`nombre`,`apellido`,`mail`,`telefono`) VALUES (8,'Van','MacCaffery','vmaccaffery7@live.com','218-667-9254');
INSERT INTO cliente (`idCliente`,`nombre`,`apellido`,`mail`,`telefono`) VALUES (9,'Reyna','Antunez','rantunez8@drupal.org','424-669-4207');
INSERT INTO cliente (`idCliente`,`nombre`,`apellido`,`mail`,`telefono`) VALUES (10,'Che','Arnaudin','carnaudin9@google.com','319-507-5520');
INSERT INTO cliente (`idCliente`,`nombre`,`apellido`,`mail`,`telefono`) VALUES (11,'Shurlocke','Glazer','sglazera@ovh.net','261-164-3421');
INSERT INTO cliente (`idCliente`,`nombre`,`apellido`,`mail`,`telefono`) VALUES (12,'Bobbe','Nieass','bnieassb@discuz.net','380-210-4166');
INSERT INTO cliente (`idCliente`,`nombre`,`apellido`,`mail`,`telefono`) VALUES (13,'Romain','Zottoli','rzottolic@github.com','168-214-8578');
INSERT INTO cliente (`idCliente`,`nombre`,`apellido`,`mail`,`telefono`) VALUES (14,'Livvyy','Huggard','lhuggardd@gnu.org','560-369-3366');
INSERT INTO cliente (`idCliente`,`nombre`,`apellido`,`mail`,`telefono`) VALUES (15,'Woodie','Smorfit','wsmorfite@webnode.com','112-435-6021');
INSERT INTO cliente (`idCliente`,`nombre`,`apellido`,`mail`,`telefono`) VALUES (16,'Trstram','Sheran','tsheranf@java.com','357-646-2585');
INSERT INTO cliente (`idCliente`,`nombre`,`apellido`,`mail`,`telefono`) VALUES (17,'Darcee','Bilsborrow','dbilsborrowg@washingtonpost.com','380-473-7842');
INSERT INTO cliente (`idCliente`,`nombre`,`apellido`,`mail`,`telefono`) VALUES (18,'Gregorius','Tudbald','gtudbaldh@mtv.com','279-783-1463');
INSERT INTO cliente (`idCliente`,`nombre`,`apellido`,`mail`,`telefono`) VALUES (19,'Rafaelita','Bosward','rboswardi@nifty.com','380-538-6720');
INSERT INTO cliente (`idCliente`,`nombre`,`apellido`,`mail`,`telefono`) VALUES (20,'Keene','Baitman','kbaitmanj@sphinn.com','285-799-8004');
  -- empleado
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (1,'Dael','Hardern','dhardern0@japanpost.jp','7 2nd Way',43,159114,4);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (2,'Lydon','Stranaghan','lstranaghan1@alibaba.com','49679 Melrose Drive',41,175277,3);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (3,'Aila','Delahunty','adelahunty2@purevolume.com','8373 Arkansas Junction',42,186916,1);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (4,'Wini','Poluzzi','wpoluzzi3@naver.com','11120 School Hill',48,98012.4,2);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (5,'Darcy','Gaize','dgaize4@reddit.com','38 Sutherland Hill',35,182621,4);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (6,'Reeta','Lias','rlias5@walmart.com','26904 Blue Bill Park Parkway',47,164487,4);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (7,'Sunny','Trime','strime6@opera.com','76905 Esch Alley',18,154474,1);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (8,'Grange','Ivankov','givankov7@google.co.uk','45 Sauthoff Drive',22,66049.4,1);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (9,'Melania','Mateescu','mmateescu8@disqus.com','16 Anzinger Parkway',64,175804,5);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (10,'Hugibert','Halwell','hhalwell9@paypal.com','2717 International Junction',49,88387.6,2);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (11,'Lincoln','Comazzo','lcomazzoa@deviantart.com','4 Sachs Terrace',42,128613,5);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (12,'Raeann','Ormiston','rormistonb@pinterest.com','03953 Grover Trail',46,168429,1);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (13,'Melvyn','Arran','marranc@cam.ac.uk','863 Mcbride Alley',54,86767.2,5);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (14,'Gilberto','Daniellot','gdaniellotd@facebook.com','9929 Scott Drive',63,152063,4);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (15,'Lynnette','Sima','lsimae@nydailynews.com','14266 Northport Park',46,91661.1,3);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (16,'Bealle','Cockhill','bcockhillf@businessweek.com','9 Lakewood Trail',22,77750.6,2);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (17,'Paddie','Merrett','pmerrettg@usgs.gov','50835 Marcy Parkway',43,154550,3);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (18,'Ignaz','Lownie','ilownieh@ocn.ne.jp','994 Ridgeview Circle',52,146037,5);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (19,'Chaim','Cleugher','ccleugheri@mysql.com','076 Donald Circle',57,60930.9,3);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (20,'Wit','Marzelli','wmarzellij@squarespace.com','9 Muir Drive',59,102231,3);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (21,'Delilah','Frarey','dfrareyk@unicef.org','8 Division Pass',34,72065.7,1);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (22,'Charmane','Mitkin','cmitkinl@sun.com','61512 Sunbrook Road',57,182193,5);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (23,'Kristo','Rampage','krampagem@statcounter.com','7765 Bunting Parkway',23,123060,2);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (24,'Rip','Tofts','rtoftsn@about.com','53047 Melvin Circle',20,149741,1);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (25,'Auroora','Iorillo','aiorilloo@seesaa.net','7436 Hintze Street',47,168049,5);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (26,'Fabe','Chaves','fchavesp@unc.edu','7125 Oriole Drive',64,124897,5);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (27,'Marissa','Bourthouloume','mbourthouloumeq@soup.io','51 Hooker Street',55,120564,1);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (28,'Flo','Pontain','fpontainr@adobe.com','53 Pankratz Terrace',44,149145,3);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (29,'Val','Valasek','vvalaseks@foxnews.com','58 Lukken Road',41,128384,1);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (30,'Chick','Speechley','cspeechleyt@mlb.com','940 Anthes Junction',47,103240,2);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (31,'Benjie','Nother','bnotheru@jalbum.net','60 Forster Lane',21,128922,5);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (32,'Gal','Gavrielli','ggavrielliv@fda.gov','961 Mccormick Road',24,111684,5);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (33,'Fedora','Revens','frevensw@elpais.com','9815 Brickson Park Road',53,95252.5,3);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (34,'Janeczka','O\'Hartnedy','johartnedyx@1und1.de','11376 Mifflin Court',43,62022.3,2);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (35,'Donni','Snyder','dsnydery@goo.ne.jp','851 Macpherson Avenue',26,62239.1,4);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (36,'Thomasine','Stanyan','tstanyanz@so-net.ne.jp','9526 Fisk Street',50,98585.6,3);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (37,'Antoine','Baumann','abaumann10@aol.com','344 Thompson Plaza',60,181692,4);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (38,'Binny','Tummond','btummond11@wufoo.com','0 Spenser Center',50,84988.4,2);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (39,'Mendel','Inglish','minglish12@army.mil','96900 Kedzie Pass',36,64066.9,1);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (40,'Akim','Scudamore','ascudamore13@cloudflare.com','53 Mccormick Alley',53,159061,5);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (41,'Kit','Jansen','kjansen14@rakuten.co.jp','4 Milwaukee Trail',47,77841.4,3);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (42,'Karla','Loggie','kloggie15@cbsnews.com','03 Sloan Center',27,103273,2);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (43,'Florrie','Riolfo','friolfo16@mozilla.com','248 Hermina Place',30,160998,3);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (44,'Kerrie','Pelzer','kpelzer17@shinystat.com','91702 Meadow Ridge Alley',26,136283,1);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (45,'Seward','Ipsly','sipsly18@whitehouse.gov','72 Sunbrook Circle',57,176532,3);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (46,'Amargo','Merle','amerle19@cisco.com','154 Burning Wood Park',44,138677,3);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (47,'Aryn','Ramet','aramet1a@walmart.com','7301 Center Avenue',37,96811.9,2);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (48,'Brooks','Peoples','bpeoples1b@google.ca','12255 Mccormick Lane',60,79714,1);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (49,'Teador','Cuncliffe','tcuncliffe1c@mac.com','5673 Glacier Hill Junction',60,132896,5);
INSERT INTO empleado (`idEmpleado`,`nombre`,`apellido`,`mail`,`direccion`,`edad`,`sueldo`,`idPuesto`) VALUES (50,'Gaylord','Kuschel','gkuschel1d@twitpic.com','091 Waxwing Lane',53,141496,1);
  -- factura
INSERT INTO factura (`idFactura`,`fecha`,`idCliente`,`idEmpleado`,`idSucursal`) VALUES (1,'2022-01-29 12:55:48',9,34,1);
INSERT INTO factura (`idFactura`,`fecha`,`idCliente`,`idEmpleado`,`idSucursal`) VALUES (2,'2022-04-07 17:10:50',11,25,2);
INSERT INTO factura (`idFactura`,`fecha`,`idCliente`,`idEmpleado`,`idSucursal`) VALUES (3,'2022-08-06 11:10:22',20,31,3);
INSERT INTO factura (`idFactura`,`fecha`,`idCliente`,`idEmpleado`,`idSucursal`) VALUES (4,'2022-04-23 16:59:37',14,31,4);
INSERT INTO factura (`idFactura`,`fecha`,`idCliente`,`idEmpleado`,`idSucursal`) VALUES (5,'2022-07-04 01:13:52',19,42,5);
INSERT INTO factura (`idFactura`,`fecha`,`idCliente`,`idEmpleado`,`idSucursal`) VALUES (6,'2022-08-29 05:37:10',8,42,1);
INSERT INTO factura (`idFactura`,`fecha`,`idCliente`,`idEmpleado`,`idSucursal`) VALUES (7,'2022-06-15 22:43:45',11,43,2);
INSERT INTO factura (`idFactura`,`fecha`,`idCliente`,`idEmpleado`,`idSucursal`) VALUES (8,'2022-08-05 12:36:21',6,13,3);
INSERT INTO factura (`idFactura`,`fecha`,`idCliente`,`idEmpleado`,`idSucursal`) VALUES (9,'2022-11-17 12:45:45',9,33,4);
INSERT INTO factura (`idFactura`,`fecha`,`idCliente`,`idEmpleado`,`idSucursal`) VALUES (10,'2022-05-16 23:08:10',14,49,5);
INSERT INTO factura (`idFactura`,`fecha`,`idCliente`,`idEmpleado`,`idSucursal`) VALUES (11,'2022-04-21 15:29:16',19,29,1);
INSERT INTO factura (`idFactura`,`fecha`,`idCliente`,`idEmpleado`,`idSucursal`) VALUES (12,'2022-04-19 08:28:44',4,30,2);
INSERT INTO factura (`idFactura`,`fecha`,`idCliente`,`idEmpleado`,`idSucursal`) VALUES (13,'2022-03-20 20:30:11',1,15,3);
INSERT INTO factura (`idFactura`,`fecha`,`idCliente`,`idEmpleado`,`idSucursal`) VALUES (14,'2022-08-24 18:55:28',2,50,4);
INSERT INTO factura (`idFactura`,`fecha`,`idCliente`,`idEmpleado`,`idSucursal`) VALUES (15,'2022-09-02 05:30:52',6,10,5);
INSERT INTO factura (`idFactura`,`fecha`,`idCliente`,`idEmpleado`,`idSucursal`) VALUES (16,'2022-08-06 05:01:09',2,41,1);
INSERT INTO factura (`idFactura`,`fecha`,`idCliente`,`idEmpleado`,`idSucursal`) VALUES (17,'2022-03-27 15:34:35',10,7,2);
INSERT INTO factura (`idFactura`,`fecha`,`idCliente`,`idEmpleado`,`idSucursal`) VALUES (18,'2022-07-22 18:08:46',13,46,3);
INSERT INTO factura (`idFactura`,`fecha`,`idCliente`,`idEmpleado`,`idSucursal`) VALUES (19,'2022-01-04 09:52:39',8,47,4);
INSERT INTO factura (`idFactura`,`fecha`,`idCliente`,`idEmpleado`,`idSucursal`) VALUES (20,'2022-06-30 09:26:24',11,25,5);
INSERT INTO factura (`idFactura`,`fecha`,`idCliente`,`idEmpleado`,`idSucursal`) VALUES (21,'2022-05-12 18:26:17',3,12,1);
INSERT INTO factura (`idFactura`,`fecha`,`idCliente`,`idEmpleado`,`idSucursal`) VALUES (22,'2022-07-13 14:10:37',18,3,2);
INSERT INTO factura (`idFactura`,`fecha`,`idCliente`,`idEmpleado`,`idSucursal`) VALUES (23,'2022-10-04 01:31:17',8,25,3);
INSERT INTO factura (`idFactura`,`fecha`,`idCliente`,`idEmpleado`,`idSucursal`) VALUES (24,'2022-11-18 00:42:07',12,8,4);
INSERT INTO factura (`idFactura`,`fecha`,`idCliente`,`idEmpleado`,`idSucursal`) VALUES (25,'2022-03-19 16:08:52',4,15,5);
INSERT INTO factura (`idFactura`,`fecha`,`idCliente`,`idEmpleado`,`idSucursal`) VALUES (26,'2022-05-05 04:24:53',8,23,1);
INSERT INTO factura (`idFactura`,`fecha`,`idCliente`,`idEmpleado`,`idSucursal`) VALUES (27,'2022-03-09 11:38:55',3,22,2);
INSERT INTO factura (`idFactura`,`fecha`,`idCliente`,`idEmpleado`,`idSucursal`) VALUES (28,'2022-09-18 17:56:21',13,14,3);
INSERT INTO factura (`idFactura`,`fecha`,`idCliente`,`idEmpleado`,`idSucursal`) VALUES (29,'2022-05-23 23:26:06',6,30,4);
INSERT INTO factura (`idFactura`,`fecha`,`idCliente`,`idEmpleado`,`idSucursal`) VALUES (30,'2022-10-22 06:33:46',14,48,5);
 -- proveedor
INSERT INTO proveedor (`idProveedor`,`nombre`,`email`,`idCategoria`,`idSucursal`) VALUES (1,'NogaNet','sabramin0@springer.com',4,1);
INSERT INTO proveedor (`idProveedor`,`nombre`,`email`,`idCategoria`,`idSucursal`) VALUES (2,'Corsair','mefford1@gravatar.com',8,4);
INSERT INTO proveedor (`idProveedor`,`nombre`,`email`,`idCategoria`,`idSucursal`) VALUES (3,'Genius','iskews2@arstechnica.com',4,5);
INSERT INTO proveedor (`idProveedor`,`nombre`,`email`,`idCategoria`,`idSucursal`) VALUES (4,'Intel','acordingly3@pagesperso-orange.fr',1,4);
INSERT INTO proveedor (`idProveedor`,`nombre`,`email`,`idCategoria`,`idSucursal`) VALUES (5,'AMD','nleyman4@about.com',1,5);
INSERT INTO proveedor (`idProveedor`,`nombre`,`email`,`idCategoria`,`idSucursal`) VALUES (6,'Nvidia','lcauldwell5@bbc.co.uk',3,4);
INSERT INTO proveedor (`idProveedor`,`nombre`,`email`,`idCategoria`,`idSucursal`) VALUES (7,'Kingston','dhugnot6@nymag.com',8,5);
INSERT INTO proveedor (`idProveedor`,`nombre`,`email`,`idCategoria`,`idSucursal`) VALUES (8,'Western Digital','cmuttitt7@icq.com',5,4);
INSERT INTO proveedor (`idProveedor`,`nombre`,`email`,`idCategoria`,`idSucursal`) VALUES (9,'Asus','screevy8@timesonline.co.uk',2,2);
INSERT INTO proveedor (`idProveedor`,`nombre`,`email`,`idCategoria`,`idSucursal`) VALUES (10,'Logitech','msandells9@un.org',4,1);
INSERT INTO proveedor (`idProveedor`,`nombre`,`email`,`idCategoria`,`idSucursal`) VALUES (11,'HyperX','nmcgonigala@altervista.org',4,4);
INSERT INTO proveedor (`idProveedor`,`nombre`,`email`,`idCategoria`,`idSucursal`) VALUES (12,'Sentey','dbrecknallb@unc.edu',7,5);
INSERT INTO proveedor (`idProveedor`,`nombre`,`email`,`idCategoria`,`idSucursal`) VALUES (13,'Adata','lretallickc@usatoday.com',5,2);
INSERT INTO proveedor (`idProveedor`,`nombre`,`email`,`idCategoria`,`idSucursal`) VALUES (14,'Gigabyte','vchiversd@twitter.com',8,5);
INSERT INTO proveedor (`idProveedor`,`nombre`,`email`,`idCategoria`,`idSucursal`) VALUES (15,'Markvision','mlangstrathe@gov.uk',5,1);
INSERT INTO proveedor (`idProveedor`,`nombre`,`email`,`idCategoria`,`idSucursal`) VALUES (16,'Samsung','esteelsf@ocn.ne.jp',6,4);
INSERT INTO proveedor (`idProveedor`,`nombre`,`email`,`idCategoria`,`idSucursal`) VALUES (17,'LG','palyoshing@npr.org',6,5);
INSERT INTO proveedor (`idProveedor`,`nombre`,`email`,`idCategoria`,`idSucursal`) VALUES (18,'RedDragon','ddudbridgeh@businesswire.com',4,5);
INSERT INTO proveedor (`idProveedor`,`nombre`,`email`,`idCategoria`,`idSucursal`) VALUES (19,'DS','hproppersi@imgur.com',8,5);
INSERT INTO proveedor (`idProveedor`,`nombre`,`email`,`idCategoria`,`idSucursal`) VALUES (20,'Generico','bcritchlowj@uol.com.br',8,5);
 --  articulo
INSERT INTO articulo (`idArticulo`,`nombre`,`stock`,`garantia_extendida`,`precioUnitario`,`idCategoria`,`idProveedor`) VALUES (1,'mouse M500',31,1,900.9,4,1);
INSERT INTO articulo (`idArticulo`,`nombre`,`stock`,`garantia_extendida`,`precioUnitario`,`idCategoria`,`idProveedor`) VALUES (2,'silla s200',36,0,67900.9,8,2);
INSERT INTO articulo (`idArticulo`,`nombre`,`stock`,`garantia_extendida`,`precioUnitario`,`idCategoria`,`idProveedor`) VALUES (3,'teclado t100',28,0,3500.5,4,3);
INSERT INTO articulo (`idArticulo`,`nombre`,`stock`,`garantia_extendida`,`precioUnitario`,`idCategoria`,`idProveedor`) VALUES (4,'CPU I3',56,0,29800.8,1,4);
INSERT INTO articulo (`idArticulo`,`nombre`,`stock`,`garantia_extendida`,`precioUnitario`,`idCategoria`,`idProveedor`) VALUES (5,'CPU Ryzen 3',94,0,34888.9,1,5);
INSERT INTO articulo (`idArticulo`,`nombre`,`stock`,`garantia_extendida`,`precioUnitario`,`idCategoria`,`idProveedor`) VALUES (6,'rX 580',10,0,115740,3,6);
INSERT INTO articulo (`idArticulo`,`nombre`,`stock`,`garantia_extendida`,`precioUnitario`,`idCategoria`,`idProveedor`) VALUES (7,'memoria Ram 8 GB',3,1,7900.9,8,7);
INSERT INTO articulo (`idArticulo`,`nombre`,`stock`,`garantia_extendida`,`precioUnitario`,`idCategoria`,`idProveedor`) VALUES (8,'1TB HDD',3,0,9800.5,5,8);
INSERT INTO articulo (`idArticulo`,`nombre`,`stock`,`garantia_extendida`,`precioUnitario`,`idCategoria`,`idProveedor`) VALUES (9,'a520m-a',80,0,17501,2,9);
INSERT INTO articulo (`idArticulo`,`nombre`,`stock`,`garantia_extendida`,`precioUnitario`,`idCategoria`,`idProveedor`) VALUES (10,'teclado t511',38,0,11500.5,4,10);
INSERT INTO articulo (`idArticulo`,`nombre`,`stock`,`garantia_extendida`,`precioUnitario`,`idCategoria`,`idProveedor`) VALUES (11,'headphone h900',20,0,6500.9,4,11);
INSERT INTO articulo (`idArticulo`,`nombre`,`stock`,`garantia_extendida`,`precioUnitario`,`idCategoria`,`idProveedor`) VALUES (12,'gabinete g666',61,1,9800.9,7,12);
INSERT INTO articulo (`idArticulo`,`nombre`,`stock`,`garantia_extendida`,`precioUnitario`,`idCategoria`,`idProveedor`) VALUES (13,'480 SSD',67,1,7500.99,5,13);
INSERT INTO articulo (`idArticulo`,`nombre`,`stock`,`garantia_extendida`,`precioUnitario`,`idCategoria`,`idProveedor`) VALUES (14,'Ga-b450m',60,0,21546.6,2,14);
INSERT INTO articulo (`idArticulo`,`nombre`,`stock`,`garantia_extendida`,`precioUnitario`,`idCategoria`,`idProveedor`) VALUES (15,'240gb SSD',3,0,4500.99,5,15);
INSERT INTO articulo (`idArticulo`,`nombre`,`stock`,`garantia_extendida`,`precioUnitario`,`idCategoria`,`idProveedor`) VALUES (16,'19\' HD',69,0,32500,6,16);
INSERT INTO articulo (`idArticulo`,`nombre`,`stock`,`garantia_extendida`,`precioUnitario`,`idCategoria`,`idProveedor`) VALUES (17,'23\' full HD',61,0,45000,6,17);
INSERT INTO articulo (`idArticulo`,`nombre`,`stock`,`garantia_extendida`,`precioUnitario`,`idCategoria`,`idProveedor`) VALUES (18,'teclado t989',38,0,11500,4,18);
INSERT INTO articulo (`idArticulo`,`nombre`,`stock`,`garantia_extendida`,`precioUnitario`,`idCategoria`,`idProveedor`) VALUES (19,'combo mouse teclado',54,0,11999,8,19);
INSERT INTO articulo (`idArticulo`,`nombre`,`stock`,`garantia_extendida`,`precioUnitario`,`idCategoria`,`idProveedor`) VALUES (20,'fuente f550',27,1,2900,7,20);
INSERT INTO articulo (`idArticulo`,`nombre`,`stock`,`garantia_extendida`,`precioUnitario`,`idCategoria`,`idProveedor`) VALUES (21,'480 SSD',6,0,9800.8,5,14);
INSERT INTO articulo (`idArticulo`,`nombre`,`stock`,`garantia_extendida`,`precioUnitario`,`idCategoria`,`idProveedor`) VALUES (22,'teclado t977',7,0,8500.9,4,19);
INSERT INTO articulo (`idArticulo`,`nombre`,`stock`,`garantia_extendida`,`precioUnitario`,`idCategoria`,`idProveedor`) VALUES (23,'gabinete generico gg88',69,0,9425.02,7,20);
INSERT INTO articulo (`idArticulo`,`nombre`,`stock`,`garantia_extendida`,`precioUnitario`,`idCategoria`,`idProveedor`) VALUES (24,'750 SSD',81,1,14406.5,5,7);
INSERT INTO articulo (`idArticulo`,`nombre`,`stock`,`garantia_extendida`,`precioUnitario`,`idCategoria`,`idProveedor`) VALUES (25,'750 SSD',40,1,15500.5,5,14);
INSERT INTO articulo (`idArticulo`,`nombre`,`stock`,`garantia_extendida`,`precioUnitario`,`idCategoria`,`idProveedor`) VALUES (26,'auricular a99',85,1,1500.5,4,20);
INSERT INTO articulo (`idArticulo`,`nombre`,`stock`,`garantia_extendida`,`precioUnitario`,`idCategoria`,`idProveedor`) VALUES (27,'auricular a88',16,0,3500.5,4,19);
INSERT INTO articulo (`idArticulo`,`nombre`,`stock`,`garantia_extendida`,`precioUnitario`,`idCategoria`,`idProveedor`) VALUES (28,'480 M2',3,1,9980.8,5,7);
INSERT INTO articulo (`idArticulo`,`nombre`,`stock`,`garantia_extendida`,`precioUnitario`,`idCategoria`,`idProveedor`) VALUES (29,'fuente ft550',10,1,13535.2,7,14);
INSERT INTO articulo (`idArticulo`,`nombre`,`stock`,`garantia_extendida`,`precioUnitario`,`idCategoria`,`idProveedor`) VALUES (30,'fuente fx580',45,1,11900.9,7,2);
-- Categoria
INSERT INTO categoria (`idCategoria`,`nombre`) VALUES (1,'CPU');
INSERT INTO categoria (`idCategoria`,`nombre`) VALUES (2,'Placa madre');
INSERT INTO categoria (`idCategoria`,`nombre`) VALUES (3,'Placa grafica');
INSERT INTO categoria (`idCategoria`,`nombre`) VALUES (4,'Perifericos');
INSERT INTO categoria (`idCategoria`,`nombre`) VALUES (5,'Disco Duro');
INSERT INTO categoria (`idCategoria`,`nombre`) VALUES (6,'Monitor');
INSERT INTO categoria (`idCategoria`,`nombre`) VALUES (7,'Gabinetes');
INSERT INTO categoria (`idCategoria`,`nombre`) VALUES (8,'Varios');
--  Sucursal
INSERT INTO sucursal (`idSucursal`,`localidad`,`direccion`,`cantidad_empleados`) VALUES (1,'Hurlingham','Av. Roca 500',15);
INSERT INTO sucursal (`idSucursal`,`localidad`,`direccion`,`cantidad_empleados`) VALUES (2,'San miguel','Av. Peron 500',15);
INSERT INTO sucursal (`idSucursal`,`localidad`,`direccion`,`cantidad_empleados`) VALUES (3,'Villa tesei','Av. Vergara 500',10);
INSERT INTO sucursal (`idSucursal`,`localidad`,`direccion`,`cantidad_empleados`) VALUES (4,'Moron','Av. Rivadavia 500',5);
INSERT INTO sucursal (`idSucursal`,`localidad`,`direccion`,`cantidad_empleados`) VALUES (5,'tres de febrero','Av. San martin 500',5); 
-- Puesto
INSERT INTO puesto (`idPuesto`,`nombre`) VALUES (1,'tecnico');
INSERT INTO puesto (`idPuesto`,`nombre`) VALUES (2,'administrativo');
INSERT INTO puesto (`idPuesto`,`nombre`) VALUES (3,'atencion publico');
INSERT INTO puesto (`idPuesto`,`nombre`) VALUES (4,'atencion online');
INSERT INTO puesto (`idPuesto`,`nombre`) VALUES (5,'deposito');
/* ===================== 
CREACION DE VISTAS 
  =====================*/
-- 1 VISTA GENERAL DE TODOS LOS ARTICULOS
CREATE OR REPLACE VIEW v_articulo
AS 
SELECT * FROM articulo;

SELECT * FROM v_articulo;

-- 2 VISTA DEL ID, NOMBRE Y PRECIO UNITARIO DE LOS PRODUCTOS

CREATE OR REPLACE VIEW v_costo_articulo
AS 
SELECT idArticulo,nombre,precioUnitario 
FROM articulo;

SELECT * FROM v_costo_articulo;

-- 3 VISTA DE PRODUCTOS CUYO STOCK ES MENOR A 10

CREATE OR REPLACE VIEW v_stock_articulos
AS 
SELECT idArticulo,nombre,precioUnitario,stock 
FROM articulo
WHERE stock < 10;

SELECT * FROM v_stock_articulos;

/* ===================== 
VISTAS - UNION DE TABLAS
  =====================*/

-- 4 EMPLEADOS Y SUS PUESTOS DONDE EL SUELDO SEA MAYOR A 100.000
ALTER TABLE puesto RENAME COLUMN nombre TO nombre_puesto;

CREATE OR REPLACE VIEW v_empleados_puestos AS
SELECT e.nombre, e.sueldo, p.nombre_puesto
FROM empleado as e
LEFT JOIN puesto as p
ON e.idEmpleado = p.idPuesto
WHERE e.sueldo > 100000
LIMIT 3;

SELECT * FROM v_empleados_puestos;

-- 5 CLIENTE Y FACTURA - NOMBRE, MAIL, FECHA DEL CLIENTE CON ID ENTRE 10 Y 15

CREATE OR REPLACE VIEW v_factura_cliente AS
SELECT f.fecha ,c.nombre, c.mail, c.idCliente AS 'id cliente'
FROM cliente as c
LEFT JOIN factura as f
ON c.idCliente = f.idFactura
WHERE c.idCliente = 10 || c.idCliente = 12  || c.idCliente = 15
ORDER BY c.idCliente;

SELECT * FROM v_factura_cliente;

/*===============
FUNCIONES
================*/
-- 1 SELECCIONAR EL NOMBRE, APELLIDO Y SUELDO DEL EMPLEADO SEGÚN ID
DELIMITER //
CREATE FUNCTION get_datos_empleado (id_empleado INT)
RETURNS VARCHAR(255)
READS SQL DATA
BEGIN
	DECLARE resultado VARCHAR(255);
    DECLARE empleado_nombre VARCHAR(255);
    DECLARE empleado_apellido VARCHAR(255);
    DECLARE empleado_sueldo FLOAT;
		SET empleado_nombre = (SELECT nombre  FROM empleado WHERE id_empleado = idempleado);
        SET empleado_apellido = (SELECT apellido  FROM empleado WHERE id_empleado = idempleado);
        SET empleado_sueldo = (SELECT sueldo  FROM empleado WHERE id_empleado = idempleado);
		SET resultado = CONCAT('Nombre: ', empleado_nombre,'| Apellido: ', empleado_apellido,'| Sueldo: ',empleado_sueldo);
		RETURN resultado;
END//

SELECT get_datos_empleado (5) as 'Datos';

-- 2 OBTENER EL SUELDO DEL EMPLEADO SEGÚN ID Y DARLE UN BONO EN BASE A UN PORCENTAJE

DELIMITER //
CREATE FUNCTION calcular_bono (id_empleado INT,bono_empleado INT)
RETURNS FLOAT
READS SQL DATA
BEGIN
	DECLARE resultado_bono FLOAT;
    DECLARE empleado_sueldo FLOAT;
        SET empleado_sueldo = (SELECT sueldo  FROM empleado WHERE id_empleado = idempleado);
        SET resultado_bono = empleado_sueldo + (empleado_sueldo * bono_empleado / 100);
		RETURN resultado_bono;
END//

SELECT get_datos_empleado(1) as 'Datos de empleado' , calcular_bono(1,10) as 'BONO + SUELDO';


/*===============
STORED PROCEDURE
================*/
-- 1  ORDENAR LA TABLA EMPLEADO SEGÚN EL CAMPO ESPECIFICADO

DELIMITER $$
CREATE PROCEDURE sp_ordenar_empleado_por_campo(IN campo CHAR(20))
BEGIN
	IF campo <> '' THEN
		SET @orden_empleado = concat('ORDER BY ', campo);
    ELSE
		SET @orden_empleado = '';
    END IF;
	SET @clausula = concat('SELECT * FROM empleado ', @orden_empleado); 

	PREPARE runSQL FROM @clausula;
	EXECUTE runSQL;  
	DEALLOCATE PREPARE runSQL;	
END $$
DELIMITER ;

SELECT * FROM EMPLEADO;

CALL sp_ordenar_empleado_por_campo('sueldo');
CALL sp_ordenar_empleado_por_campo('edad');
CALL sp_ordenar_empleado_por_campo('apellido');

-- 2 ORDENAR SEGUN TABLA, CAMPO Y ASC, DESC

DELIMITER $$
CREATE PROCEDURE sp_order_table(IN campo VARCHAR(255), IN tipo_ordenamiento ENUM('ASC','DESC',''), IN tabla VARCHAR(255))
BEGIN
	
	IF campo <> '' THEN
		SET @ordenar = CONCAT(' ORDER BY ', campo);
	ELSE 
		SET @ordenar = '';
	END IF;
	
	IF tipo_ordenamiento <> '' THEN
		SET @tipo = CONCAT(' ', tipo_ordenamiento);
	ELSE
		SET @tipo = '';
	END IF;
    
    SET @clausula = CONCAT('SELECT * FROM ',Tabla,@ordenar, @tipo);
    
    PREPARE ejecutarSQL FROM @clausula;
    EXECUTE ejecutarSQL;
    deallocate prepare ejecutarSQL;
END
$$
-- LLAMAMOS AL SP
SELECT * FROM empleado;
CALL sp_order_table('sueldo','ASC','empleado');

SELECT * FROM cliente;
CALL sp_order_table('apellido','ASC','cliente');

SELECT * FROM proveedor;
CALL sp_order_table('nombre','DESC','proveedor');

/*===============
TRIGGER
================*/
-- 1 HISTORICO CREACIÓN DE UN NUEVO CLIENTE

DROP TABLE cliente_historico;

CREATE TABLE IF NOT EXISTS cliente_historico(
	id INT, 
    nom VARCHAR(50),
    ape VARCHAR(50),
    fecha_hora datetime
);

DROP TRIGGER  trigger_cliente_historico;

DELIMITER //
CREATE TRIGGER trigger_cliente_historico
BEFORE INSERT ON cliente
FOR EACH ROW
BEGIN
    INSERT INTO cliente_historico (id,nom,ape,fecha_hora) 
    VALUES (NEW.idCliente, NEW.nombre, NEW.apellido, NOW());
END//

INSERT INTO cliente VALUES (null,'Lautaro','Fernandez','fernandez.lautaro@hotmail.com','11-6038-2014');

-- 2 HISTORICO DE ARTICULOS ELIMINADOS

CREATE TABLE IF NOT EXISTS articulo_historico(
	id INT, 
    nombre VARCHAR(50),
    precio FLOAT,
    fecha_hora datetime
);

DELIMITER //
CREATE TRIGGER trigger_articulo_historico
BEFORE INSERT ON articulo
FOR EACH ROW
BEGIN
    INSERT INTO articulo_historico (id,nombre,precio,fecha_hora) 
    VALUES (NEW.idArticulo, NEW.nombre, NEW.precioUnitario, NOW());
END//

INSERT INTO articulo VALUES (null,'NUEVO',45,1,11900.90,7,2);

