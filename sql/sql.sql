
CREATE TABLE `course` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `credit` tinyint(3) unsigned NOT NULL,
  `teacher` varchar(64) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `course` (`id`, `name`, `credit`, `teacher`, `create_time`, `modify_time`)
VALUES
	(2,'数学',4,'王老师','2024-05-14 19:50:32','2024-05-14 19:50:32');

CREATE TABLE `schedule` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` bigint(20) unsigned NOT NULL,
  `course_id` bigint(20) unsigned NOT NULL,
  `grade` tinyint(3) unsigned NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_course_id` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `schedule` (`id`, `student_id`, `course_id`, `grade`, `create_time`, `modify_time`)
VALUES
	(2,4,2,100,'2024-05-14 19:50:45','2024-05-14 19:52:25');

CREATE TABLE `student_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `age` tinyint(3) unsigned NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `student_info` (`id`, `name`, `age`, `sex`, `create_time`, `modify_time`)
VALUES
	(4,'Test',20,1,'2024-05-14 19:44:58','2024-05-14 19:44:58');
