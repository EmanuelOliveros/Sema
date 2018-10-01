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
  PRIMARY KEY (`idimagenes`));

INSERT INTO `sema`.`imagenes` (`nombre`, `ruta`) VALUES ('?', '?');

CREATE TABLE `sema`.`producto` (
  `idproducto` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `ruta` VARCHAR(200) NULL,
  PRIMARY KEY (`idproducto`));
  
CREATE TABLE `sema`.`registrousuario` (
  `idRegistroUsuario` INT NOT NULL AUTO_INCREMENT,
  `usuario` VARCHAR(45) NULL,
  `contraseña` VARCHAR(45) NULL,
  PRIMARY KEY (`idRegistroUsuario`));
  ALTER TABLE `sema`.`registrousuario` 
ADD COLUMN `email` VARCHAR(45) ;

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
