CREATE DATABASE Sema;

CREATE TABLE `sema`.`galeria` (
  `idgaleria` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `ruta` VARCHAR(200) NULL,
  PRIMARY KEY (`idgaleria`));
  
INSERT INTO `sema`.`galeria` (`nombre`, `ruta`) VALUES ('Camisa', 'https://gloimg.zafcdn.com/zaful/pdm-product-pic/Clothing/2017/09/28/thumb-img/1506558379988662829.jpg');
INSERT INTO `sema`.`galeria` (`nombre`, `ruta`) VALUES ('Pantalon', 'https://www.guantexindustrial.com.ar/809-large_default/pantalon-jeans-talle-60.jpg');
INSERT INTO `sema`.`galeria` (`nombre`, `ruta`) VALUES ('Bicicleta', 'https://idv.com.co/images/cotizacionvehiculo/spark-gt-cotizador.png');
INSERT INTO `sema`.`galeria` (`nombre`, `ruta`) VALUES ('Avión', 'https://motos.honda.com.co/sites/default/files/motos/cb-1000-r-cc-menu-honda.png');
INSERT INTO `sema`.`galeria` (`nombre`, `ruta`) VALUES ('Barco', 'http://grupo3bus.com/wp-content/uploads/2017/01/bus_nuevo.png');

CREATE TABLE `sema`.`slider` (
  `idslider` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `ruta` VARCHAR(200) NULL,
  PRIMARY KEY (`idslider`));

INSERT INTO `sema`.`slider` (`nombre`, `ruta`) VALUES ('img10', 'F:\\WebApplication1\\web\\imagenes\\slider\\img10.jpg');
INSERT INTO `sema`.`slider` (`nombre`, `ruta`) VALUES ('img11', 'F:\\WebApplication1\\web\\imagenes\\slider\\img11.png');
INSERT INTO `sema`.`slider` (`nombre`, `ruta`) VALUES ('img12', 'F:\\WebApplication1\\web\\imagenes\\slider\\img12.jpg');
INSERT INTO `sema`.`slider` (`nombre`, `ruta`) VALUES ('img13', 'F:\\WebApplication1\\web\\imagenes\\slider\\img13');

UPDATE `sema`.`slider` SET `ruta`='F:\\WebApplication1\\web\\imagenes\\slider\\img13.jpg' WHERE `idslider`='8';
UPDATE `sema`.`slider` SET `nombre`='Ropa', `ruta`='https://e.an.amtv.pe/util-e-interesante-se-lavar-ropa-nueva-antes-usarla-n268369-624x352-350731.jpg' WHERE `idslider`='1';
UPDATE `sema`.`slider` SET `nombre`='Electrodomesticos ', `ruta`='https://static.vix.com/es/sites/default/files/styles/large/public/imj/hogartotal/C/Consejos-para-cuidar-los-electrodmesticos.jpg?itok=GYRNCsxv' WHERE `idslider`='2';
UPDATE `sema`.`slider` SET `nombre`='Hardware', `ruta`='https://6469da.medialib.edu.glogster.com/8qDQm7rn1SOGnrnp0aE0/media/9e/9edc3a1525b14bf85606025da557d120f2b4a17c/perifericos.jpg' WHERE `idslider`='3';
UPDATE `sema`.`slider` SET `nombre`='Software', `ruta`='https://lomasbuscadoenlaweb.com/wp-content/uploads/2017/03/Una-lista-de-diferentes-tipos-de-Software-de-computadora-con-ejemplos.jpg' WHERE `idslider`='4';

CREATE TABLE `sema`.`imagenes` (
  `idimagenes` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `ruta` VARCHAR(200) NULL,
  PRIMARY KEY (`idimagenes`),
  UNIQUE INDEX `imagenescol_UNIQUE` (`ruta` ASC));

INSERT INTO `sema`.`imagenes` (`nombre`, `ruta`) VALUES ('?', '?');

CREATE TABLE `sema`.`producto` (
  `idproducto` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `ruta` VARCHAR(200) NULL,
  PRIMARY KEY (`idproducto`),
  UNIQUE INDEX `imagenescol_UNIQUE` (`ruta` ASC));
  
CREATE TABLE `sema`.`registrousuario` (
  `idRegistroUsuario` INT NOT NULL AUTO_INCREMENT,
  `usuario` VARCHAR(45) NULL,
  `contraseña` VARCHAR(45) NULL,
  PRIMARY KEY (`idRegistroUsuario`));
  ALTER TABLE `sema`.`registrousuario` 
ADD COLUMN `email` VARCHAR(45);