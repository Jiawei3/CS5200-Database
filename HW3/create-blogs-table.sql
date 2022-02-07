USE db_design;
DROP TABLE IF EXISTS `blogs`;
CREATE TABLE `blogs`(
	`id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(45) NULL,
    `topic` VARCHAR(45) NULL,
    `user_id` INT NULL,
    `created` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
    `updated` DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY(`id`),
    INDEX`blogs_to_user_idx`(`user_id` ASC),
    CONSTRAINT `blog_to_user`
    FOREIGN KEY(`user_id`)
    REFERENCES `db_design`.`users`(`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);