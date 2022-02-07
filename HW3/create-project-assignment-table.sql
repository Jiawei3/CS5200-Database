USE db_design;
DROP TABLE IF EXISTS `project_assignments`;
CREATE TABLE `project_assignments`(
	`id` INT NOT NULL AUTO_INCREMENT,
    `employee` VARCHAR(200) NULL,
    `project` VARCHAR(100) NULL,
    `role` VARCHAR(100) NULL,
    `employee_id` INT NULL,
    `project_id` INT NULL,
    PRIMARY KEY(`id`),
    INDEX `project_assignment_2_employee_idx`(`employee_id` ASC),
    INDEX `project_assignment_2_task_idx`(`task_id` ASC),
    CONSTRAINT `project_assignment_2_employee`
		FOREIGN KEY(`employee_id`)
        REFERENCES `db_design`.`employees`(`id`)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT `project_assignment_2_project`
		FOREIGN KEY(`project_id`)
        REFERENCES `db_design`.`projects`(`id`)
        ON DELETE CASCADE
        ON UPDATE CASCADE);