USE db_design;
DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees`(
	`id` INT NOT NULL AUTO_INCREMENT,
    `first_name` VARCHAR(45) NOT NULL,
    `last_name` VARCHAR(45) NOT NULL,
    `dob` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(`id`)
    );