-- MySQL Script generated by MySQL Workbench
-- 04/28/17 23:08:25
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema hoanglong_web
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema hoanglong_web
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `hoanglong_web` DEFAULT CHARACTER SET utf8 ;
USE `hoanglong_web` ;

-- -----------------------------------------------------
-- Table `hoanglong_web`.`about_us`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hoanglong_web`.`about_us` (
  `idabout_us` INT NOT NULL AUTO_INCREMENT,
  `summary` TEXT NULL,
  `content` TEXT NULL,
  `image` TEXT NULL,
  PRIMARY KEY (`idabout_us`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hoanglong_web`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hoanglong_web`.`category` (
  `idcategory` INT NOT NULL AUTO_INCREMENT,
  `name` TEXT NULL,
  PRIMARY KEY (`idcategory`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hoanglong_web`.`news`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hoanglong_web`.`news` (
  `idnews` INT NOT NULL AUTO_INCREMENT,
  `images` TEXT NULL,
  `summary` TEXT NULL,
  `content` TEXT NULL,
  `category_idcategory` INT NOT NULL,
  PRIMARY KEY (`idnews`, `category_idcategory`),
  INDEX `fk_news_category_idx` (`category_idcategory` ASC),
  CONSTRAINT `fk_news_category`
    FOREIGN KEY (`category_idcategory`)
    REFERENCES `hoanglong_web`.`category` (`idcategory`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hoanglong_web`.`gallery`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hoanglong_web`.`gallery` (
  `idgallery` INT NOT NULL AUTO_INCREMENT,
  `name` TEXT NULL,
  `url` TEXT NULL,
  PRIMARY KEY (`idgallery`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hoanglong_web`.`feed_back`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hoanglong_web`.`feed_back` (
  `idfeed_back` INT NOT NULL AUTO_INCREMENT,
  `name_customer` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  `avatar` TEXT NULL DEFAULT 'avatar.jpg',
  `content` TEXT NULL,
  PRIMARY KEY (`idfeed_back`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hoanglong_web`.`schedule`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hoanglong_web`.`schedule` (
  `idschedule` INT NOT NULL AUTO_INCREMENT,
  `fullname` VARCHAR(45) NULL,
  `age` INT NULL,
  `time` VARCHAR(10) NULL,
  `date` VARCHAR(10) NULL,
  `description` TEXT NULL,
  PRIMARY KEY (`idschedule`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hoanglong_web`.`specialist`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hoanglong_web`.`specialist` (
  `idspecialist` INT NOT NULL AUTO_INCREMENT,
  `name` TEXT NULL,
  PRIMARY KEY (`idspecialist`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hoanglong_web`.`doctor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hoanglong_web`.`doctor` (
  `iddoctor` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `degree` TEXT NULL,
  `summary` TEXT NULL,
  `content` TEXT NULL,
  `specialist_idspecialist` INT NOT NULL,
  PRIMARY KEY (`iddoctor`, `specialist_idspecialist`),
  INDEX `fk_doctor_specialist1_idx` (`specialist_idspecialist` ASC),
  CONSTRAINT `fk_doctor_specialist1`
    FOREIGN KEY (`specialist_idspecialist`)
    REFERENCES `hoanglong_web`.`specialist` (`idspecialist`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
