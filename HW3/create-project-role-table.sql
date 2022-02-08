USE db_design;
DROP TABLE IF EXISTS `project_roles`;
CREATE TABLE `project_roles`(
	`role` VARCHAR(100) NOT NULL,
    PRIMARY KEY(`role`));
    

INSERT INTO `project_roles` (`role`) VALUES ('ENGINEER');
INSERT INTO `project_roles` (`role`) VALUES ('QUALITY ASSURANCE');
INSERT INTO `project_roles` (`role`) VALUES ('MANAGER');
INSERT INTO `project_roles` (`role`) VALUES ('OWNER');
INSERT INTO `project_roles` (`role`) VALUES ('BUSINESS ANALYST');
INSERT INTO `project_roles` (`role`) VALUES ('ARCHITECT');