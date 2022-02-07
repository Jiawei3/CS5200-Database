USE db_design;
DROP TABLE IF EXISTS `task_status`;
CREATE TABLE `task_status`(
	`status` VARCHAR(100) NOT NULL,
    PRIMARY KEY(`status`));
    


INSERT INTO `task_status` (`status`) VALUES (`COMPLETED`);
INSERT INTO `task_status` (`status`) VALUES (`IN PROHRESS`);
INSERT INTO `task_status` (`status`) VALUES (`CLOSED`);