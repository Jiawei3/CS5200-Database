USE db_design;
DROP TABLE IF EXISTS `ratings`;
CREATE TABLE `ratings`(
	`id` INT NOT NULL AUTO_INCREMENT,
    `likes` BOOLEAN,
    `score` INT NULL,
    `comment` VARCHAR(100) NULL,
    `user_id` INT NULL,
    `post_id` INT NULL,
    `created` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
	`updated` DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY(`id`),
    INDEX `ratings_to_users_idx` (`user_id` ASC),
    INDEX `ratings_to_posts_idx` (`post_id` ASC),
    CONSTRAINT `ratings_to_users_idx`
		FOREIGN KEY(`user_id`)
        REFERENCES `db_design`.`users`(`id`)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
	CONSTRAINT `ratings_to_posts`
		FOREIGN KEY(`post_id`)
        REFERENCES `db_design`.`posts`(`id`)
        ON DELETE CASCADE
        ON UPDATE CASCADE);