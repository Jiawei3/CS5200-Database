USE db_design;
DROP TABLE IF EXISTS `replies`;
CREATE TABLE `replies`(
	`id` INT NOT NULL AUTO_INCREMENT,
	`reply` VARCHAR(45) NULL,
	`user_id` INT NULL,
	`post_id` INT NULL,
	`created` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
	`updated` DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY(`id`),
	INDEX `replies_to_users_idx`(`user_id` ASC),
	INDEX `replies_to_posts_idx`(`post_id` ASC),
	CONSTRAINT `replies_to_users`
	FOREIGN KEY(`user_id`)
	REFERENCES `db_design`.`users`(`id`)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	FOREIGN KEY(`post_id`)
	REFERENCES `db_design`.`posts`(`id`)
	ON DELETE CASCADE
	ON UPDATE CASCADE);
	