CREATE TABLE `Uber_db.user` (
	`uid(user_id)` int(11) NOT NULL AUTO_INCREMENT,
	`fname(First_name)` varchar(15) NOT NULL UNIQUE,
	`lname(Last_name)` varchar(15) NOT NULL UNIQUE,
	`email` varchar(80) NOT NULL UNIQUE,
	`phone` int(10) NOT NULL,
	`age` int(5) NOT NULL,
	`card_info` varchar(15) NOT NULL,
	`signup_date` DATETIME NOT NULL DEFAULT 'Current_timestamp',
	`status` varchar(10) NOT NULL,
	`city` varchar(80) NOT NULL,
	PRIMARY KEY (`uid(user_id)`)
);

CREATE TABLE `Uber_db.driver` (
	`driver_id` int(11) NOT NULL AUTO_INCREMENT,
	`fname` varchar(25) NOT NULL UNIQUE,
	`lname` varchar(25) NOT NULL UNIQUE,
	`license` varchar(10) NOT NULL UNIQUE,
	`avg_rating` DECIMAL(8,2) NOT NULL,
	`phone` varchar(10) NOT NULL,
	PRIMARY KEY (`driver_id`)
);

CREATE TABLE `Uber_db.trip_info` (
	`trip_id` int(11) NOT NULL AUTO_INCREMENT,
	`destination` varchar(80) NOT NULL,
	`pick_up` varchar(80) NOT NULL,
	`driver_id` int(11) NOT NULL,
	`price` FLOAT(11) NOT NULL,
	`total_time` TIME NOT NULL,
	`total_distance` int(11) NOT NULL,
	`uid` int(11) NOT NULL,
	`trip_date` DATETIME NOT NULL,
	 PRIMARY KEY (`trip_id`)
);

ALTER TABLE `Uber_db.trip_info` ADD CONSTRAINT `Uber_db.trip_info_fk0` FOREIGN KEY (`driver_id`) REFERENCES `Uber_db.driver`(`driver_id`);

ALTER TABLE `Uber_db.trip_info` ADD CONSTRAINT `Uber_db.trip_info_fk1` FOREIGN KEY (`uid`) REFERENCES `Uber_db.user`(`uid(user_id)`);


