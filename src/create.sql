-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema accommodations
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema accommodations
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `accommodations` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `accommodations` ;

-- -----------------------------------------------------
-- Table `accommodations`.`distritos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `accommodations`.`distritos` (
  `distrito` VARCHAR(45) NOT NULL,
  `latitud` VARCHAR(45) NULL,
  `longitud` VARCHAR(45) NULL,
  PRIMARY KEY (`distrito`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `accommodations`.`Air_B&B`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `accommodations`.`Air_B&B` (
  `name` VARCHAR(100) NULL,
  `price` INT NULL,
  `web` VARCHAR(45) NULL,
  `distrito` VARCHAR(45) NULL,
  INDEX `fk_Air B&B_distritos_idx` (`distrito` ASC) VISIBLE,
  CONSTRAINT `fk_Air B&B_distritos`
    FOREIGN KEY (`distrito`)
    REFERENCES `accommodations`.`distritos` (`distrito`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `accommodations`.`Booking`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `accommodations`.`Booking` (
  `name` VARCHAR(100) NULL,
  `price` INT NULL,
  `web` VARCHAR(45) NULL,
  `distrito` VARCHAR(45) NULL,
  INDEX `fk_Booking_distritos1_idx` (`distrito` ASC) VISIBLE,
  CONSTRAINT `fk_Booking_distritos1`
    FOREIGN KEY (`distrito`)
    REFERENCES `accommodations`.`distritos` (`distrito`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
