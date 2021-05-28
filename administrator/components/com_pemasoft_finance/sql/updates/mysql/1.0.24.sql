ALTER TABLE `#__pms_finance_stock_marked` ADD `1day` DOUBLE NOT NULL AFTER `active`, ADD `7days` DOUBLE NOT NULL AFTER `1day`, ADD `30days` DOUBLE NOT NULL AFTER `7days`, ADD `365days` DOUBLE NOT NULL AFTER `30days`;
ALTER TABLE `#__pms_finance_limits` ADD UNIQUE `user_ordertyp_wkn` (`ordertyp`, `wkn`, `userid`);
ALTER TABLE `pms_pms_finance_limits` DROP INDEX `orderid_datetime`;