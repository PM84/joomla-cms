CREATE TABLE `#__pms_finance_alerts`
( 
`id` INT NOT NULL AUTO_INCREMENT , 
`wkn` VARCHAR (100) NOT NULL , 
`timediff` INT NOT NULL , 
`pricediff` DOUBLE NOT NULL , 
PRIMARY KEY (`id`)
) ENGINE = InnoDB;

INSERT INTO `#__pms_finance_alerts` (`wkn`, `timediff`, `pricediff`) VALUES 
('846900', '7', '0.1'), 
('846900', '14', '0.2'),
('969420', '7', '0.1'), 
('969420', '14', '0.2'), 
('969427', '7', '0.1'), 
('969427', '14', '0.2')