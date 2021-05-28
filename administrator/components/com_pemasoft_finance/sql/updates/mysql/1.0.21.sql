ALTER TABLE `#__pms_finance_data` ADD INDEX `wkn` (`wkn`);
ALTER TABLE `#__pms_finance_data` ADD INDEX `datetime` (`datetime`);
ALTER TABLE `#__pms_finance_data` CHANGE `value` `value` DOUBLE NOT NULL DEFAULT '0', CHANGE `low` `low` DOUBLE NOT NULL DEFAULT '0', CHANGE `open` `open` DOUBLE NOT NULL DEFAULT '0', CHANGE `close` `close` DOUBLE NOT NULL DEFAULT '0';