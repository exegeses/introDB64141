-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema introDB64141
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema introDB64141
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `introDB64141` DEFAULT CHARACTER SET utf8 ;
USE `introDB64141` ;

-- -----------------------------------------------------
-- Table `introDB64141`.`marcas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introDB64141`.`marcas` (
  `idMarca` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `mkNombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idMarca`),
  UNIQUE INDEX `mkNombre_UNIQUE` (`mkNombre` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `introDB64141`.`categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introDB64141`.`categorias` (
  `idCategoria` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `catNombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCategoria`),
  UNIQUE INDEX `catNombre_UNIQUE` (`catNombre` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `introDB64141`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introDB64141`.`productos` (
  `idProducto` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `prdNombre` VARCHAR(45) NOT NULL,
  `prdPrecio` FLOAT(8,2) UNSIGNED NOT NULL,
  `idMarca` TINYINT UNSIGNED NOT NULL,
  `idCategoria` TINYINT UNSIGNED NOT NULL,
  `prdDescripcion` VARCHAR(1000) NOT NULL,
  `prdImagen` VARCHAR(45) NOT NULL,
  `prdActivo` TINYINT(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`idProducto`),
  UNIQUE INDEX `prdNombre_UNIQUE` (`prdNombre` ASC) VISIBLE,
  INDEX `fk_productos_marcas_idx` (`idMarca` ASC) VISIBLE,
  INDEX `fk_productos_categorias1_idx` (`idCategoria` ASC) VISIBLE,
  CONSTRAINT `fk_productos_marcas`
    FOREIGN KEY (`idMarca`)
    REFERENCES `introDB64141`.`marcas` (`idMarca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_productos_categorias1`
    FOREIGN KEY (`idCategoria`)
    REFERENCES `introDB64141`.`categorias` (`idCategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
