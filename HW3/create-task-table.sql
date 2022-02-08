USE db_design;
DROP TABLE IF EXISTS `tasks`;
CREATE TABLE `tasks`(
	`id` INT NOT NULL AUTO_INCREMENT,
    `start_date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
    `end_date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
    `status` VARCHAR(50) NOT NULL,
    `project_id` INT NOT NULL,
    `status_id` VARCHAR(50) NOT NULL,
    PRIMARY KEY(`id`),
    INDEX `task_to_projects`(`project_id` ASC),
    CONSTRAINT `task_2_project`
		FOREIGN KEY(`project_id`)
        REFERENCES `db_design`.`projects`(`id`)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
	INDEX `task_to_status`(`status_id` ASC),
    CONSTRAINT `task_to_status`
		FOREIGN KEY(`status_id`)
        REFERENCES `db_design`.`task_status`(`status`)
);