USE db_design;
DROP TABLE IF EXISTS `projects`;
CREATE TABLE `projects`(
	`id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(200) NULL,
    `start_date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
    `end_date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
    `budget` FLOAT(3) NOT NULL,
    `manager` VARCHAR(200) NOT NULL,
    `manager_id` INT NOT NULL,
    PRIMARY KEY(`id`),
    INDEX `project_2_employee_idx`(`manager_id` ASC),
    CONSTRAINT `project_2_employee`
		FOREIGN KEY(`manager_id`)
        REFERENCES `db_design`.`employees`(`id`)
        ON DELETE CASCADE
        ON UPDATE CASCADE);