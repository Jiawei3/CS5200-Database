USE db_design;
DROP TABLE IF EXISTS `task_assignments`;
CREATE TABLE `task_assignments`(
	`id` INT NOT NULL AUTO_INCREMENT,
    `employee` VARCHAR(200) NOT NULL,
    `task` VARCHAR(200) NOT NULL,
    `project_role` VARCHAR(200) NOT NULL,
    `employee_id` INT NULL,
    `task_id` INT NULL,
    `role_id` VARCHAR(100) NULL,
    PRIMARY KEY(`id`),
    INDEX `assignment_2_employee_idx`(`employee_id` ASC),
    INDEX `assignment_2_task_idx`(`task_id` ASC),
    INDEX `assignment_2_role_idx`(`role_id` ASC),
    CONSTRAINT `assignment_2_employee`
		FOREIGN KEY(`employee_id`)
        REFERENCES `db_design`.`employees`(`id`)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
        
	CONSTRAINT `assignment_2_task`
		FOREIGN KEY(`task_id`)
        REFERENCES `db_design`.`tasks`(`id`)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
        
	CONSTRAINT `assignment_2_role`
		FOREIGN KEY(`role_id`)
        REFERENCES `db_design`.`project_roles`(`role`)
        ON DELETE CASCADE
        ON UPDATE CASCADE);