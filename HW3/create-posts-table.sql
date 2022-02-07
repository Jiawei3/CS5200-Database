USE db_design;
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`(
	`id` INT NOT NULL AUTO_INCREMENT,
	`title` VARCHAR(100) NULL,
    `post` VARCHAR(1000) NULL, 
    `blog_id` INT NULL,
    `created` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
    `updated` DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY(`id`),
    INDEX`posts_to_blog_idx`(`blog_id`ASC),
	CONSTRAINT `posts_to_blog`
    FOREIGN KEY(`blog_id`)
    REFERENCES `db_design`.`blogs`(`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);