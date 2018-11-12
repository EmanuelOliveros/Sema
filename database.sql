CREATE DATABASE Sema;

CREATE TABLE `sema`.`galeria` (
  `idgaleria` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `ruta` VARCHAR(200) NULL,
  PRIMARY KEY (`idgaleria`));

CREATE TABLE `sema`.`slider` (
  `idslider` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `ruta` VARCHAR(200) NULL,
  PRIMARY KEY (`idslider`));

CREATE TABLE `sema`.`imagenes` (
  `idimagenes` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `ruta` VARCHAR(200) NULL,
  `tipo` int(11) DEFAULT 1 NULL,
  PRIMARY KEY (`idimagenes`));

INSERT INTO `sema`.`imagenes` (`nombre`, `ruta`) VALUES ('?', '?');

CREATE TABLE `sema`.`productos` (
  `idproductos` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) DEFAULT NULL,
  `precio` varchar(200) DEFAULT NULL,
  `tipo` int(11) DEFAULT 1 NULL,
  PRIMARY KEY (`idproductos`)
);

  
CREATE TABLE `sema`.`registros` (
  `idregistros` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(200)  DEFAULT NULL,
  `usuario` VARCHAR(200)  DEFAULT NULL,
  `contraseña` VARCHAR(200) NULL,
  PRIMARY KEY (`idregistros`));



INSERT INTO `sema`.`galeria` (`nombre`, `ruta`) VALUES ('img1', 'https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940');
INSERT INTO `sema`.`galeria` (`nombre`, `ruta`) VALUES ('img2', 'https://images.pexels.com/photos/163007/phone-old-year-built-1955-bakelite-163007.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940');
INSERT INTO `sema`.`galeria` (`nombre`, `ruta`) VALUES ('img3', 'https://images.pexels.com/photos/577585/pexels-photo-577585.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940');

CREATE TABLE `sema`.`compra` (
  `idcompra` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(70) NULL,
  `nombre` VARCHAR(45) NULL,
  `telefono` VARCHAR(45) NULL,
  `pais` VARCHAR(45) NULL,
  `ciudad` VARCHAR(45) NULL,
  `direccion` VARCHAR(45) NULL,
  `nombre_producto` VARCHAR(45) NULL,
  `especificacion_producto` VARCHAR(200) NULL,
  `cantidad` VARCHAR(45) NULL,
  `metodo_de_pago` VARCHAR(45) NULL,
  `costo` VARCHAR(45) NULL,
  PRIMARY KEY (`idcompra`));

CREATE TABLE `sema`.`tipo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));

INSERT INTO `sema`.`tipo` (`nombre`) VALUES ('Moda');
INSERT INTO `sema`.`tipo` (`nombre`) VALUES ('Calzado');
INSERT INTO `sema`.`tipo` (`nombre`) VALUES ('Tecnología');
INSERT INTO `sema`.`tipo` (`nombre`) VALUES ('Deportes');
INSERT INTO `sema`.`tipo` (`nombre`) VALUES ('Audio y Video');
INSERT INTO `sema`.`tipo` (`nombre`) VALUES ('Electrodomesticos');
INSERT INTO `sema`.`tipo` (`nombre`) VALUES ('Video Juegos');
INSERT INTO `sema`.`tipo` (`nombre`) VALUES ('Servicios');
INSERT INTO `sema`.`tipo` (`nombre`) VALUES ('Arte');
INSERT INTO `sema`.`tipo` (`nombre`) VALUES ('Herramientas');
INSERT INTO `sema`.`tipo` (`nombre`) VALUES ('Salud y Belleza');

CREATE TABLE `sema`.`categorias` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `categoria` VARCHAR(100) NULL,
  `ruta` VARCHAR(300) NULL,
  PRIMARY KEY (`id`));
  
  INSERT INTO `sema`.`categorias` (`categoria`,`ruta`) VALUES ('Moda','https://www.abc.es/media/economia/2017/01/16/moda-k7DB--620x349@abc.jpg');
INSERT INTO `sema`.`categorias` (`categoria`,`ruta`) VALUES ('Calzado','https://masvendidos.net/wp-content/uploads/2017/11/Calzado-Hombre.jpg');
INSERT INTO `sema`.`categorias` (`categoria`,`ruta`) VALUES ('Tecnología','https://www.eltelegrafo.com.ec/media/k2/items/cache/1d144043fb72e976488b5998589cd01f_XL.jpg');
INSERT INTO `sema`.`categorias` (`categoria`,`ruta`) VALUES ('Deportes','https://www.hostinet.com/formacion/wp-content/uploads/2016/01/pelotas-deportes.jpg');
INSERT INTO `sema`.`categorias` (`categoria`,`ruta`) VALUES ('Electrodomesticos','https://www.portaldetuciudad.com/imagenes/87/empresas/Img-648823-1_amp.jpg');
INSERT INTO `sema`.`categorias` (`categoria`,`ruta`) VALUES ('Video Juegos','https://i.kinja-img.com/gawker-media/image/upload/s--8dZ9a0Q9--/c_scale,f_auto,fl_progressive,q_80,w_800/p4tzlunaylmqewfhrqwm.png');
INSERT INTO `sema`.`categorias` (`categoria`,`ruta`) VALUES ('Servicios','http://hachi.co/hachin/wp-content/uploads/2016/10/gestin-de-servicios-1-287x300.png');
INSERT INTO `sema`.`categorias` (`categoria`,`ruta`) VALUES ('Arte','https://banner2.kisspng.com/20180312/dhe/kisspng-abstract-art-graphic-design-paint-splash-5aa66eac10d246.6647772515208567480689.jpg');
INSERT INTO `sema`.`categorias` (`categoria`,`ruta`) VALUES ('Herramientas','http://www.demaquinasyherramientas.com/wp-content/uploads/2016/06/Herramientas-de-Inoxidable.jpg');


