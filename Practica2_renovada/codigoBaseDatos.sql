-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema tiendaCategorias
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `tiendaCategorias` ;

-- -----------------------------------------------------
-- Schema tiendaCategorias
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `tiendaCategorias` DEFAULT CHARACTER SET utf8 ;
USE `tiendaCategorias` ;

-- -----------------------------------------------------
-- Table `tiendaCategorias`.`Categoria`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tiendaCategorias`.`Categoria` ;

CREATE TABLE IF NOT EXISTS `tiendaCategorias`.`Categoria` (
  `idCategoria` INT(10) NOT NULL,
  `nombrecategoria` VARCHAR(50) NULL,
  `descripcioncategoria` VARCHAR(250) NULL,
  PRIMARY KEY (`idCategoria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tiendaCategorias`.`Producto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tiendaCategorias`.`Producto` ;

CREATE TABLE IF NOT EXISTS `tiendaCategorias`.`Producto` (
  `idProducto` INT NOT NULL,
  `nombreProducto` VARCHAR(50) NULL,
  `descripcionProducto` VARCHAR(50) NULL,
  `precio` FLOAT(8) NULL,
  `existencia` INT(4) NULL,
  `Productocol` VARCHAR(45) NULL,
  `FK_idCategoria` INT(11) NULL,
  PRIMARY KEY (`idProducto`),
  INDEX `FK_idCategoria_idx` (`FK_idCategoria` ASC) VISIBLE,
  CONSTRAINT `FK_idCategoria`
    FOREIGN KEY (`FK_idCategoria`)
    REFERENCES `tiendaCategorias`.`Categoria` (`idCategoria`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tiendaCategorias`.`Usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tiendaCategorias`.`Usuario` ;

CREATE TABLE IF NOT EXISTS `tiendaCategorias`.`Usuario` (
  `idUsuario` INT NOT NULL,
  `nombre` VARCHAR(50) NULL,
  `paterno` VARCHAR(50) NULL,
  `materno` VARCHAR(50) NULL,
  `email` VARCHAR(50) NULL,
  `nombreUsuario` VARCHAR(20) NULL,
  `calveUsuario` VARCHAR(20) NULL,
  PRIMARY KEY (`idUsuario`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
