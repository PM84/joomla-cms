INSERT INTO `#__pms_finance_stocks` (`id`, `wkn`, `symbol`, `praefix`, `name`, `url`, `type`, `lastupdate`) VALUES (NULL, 'A2H577', 'ANX.PA', '', 'Amundi Index Solutions - Amundi Nasdaq-100 ETF-C', 'https://www.finanzen.net/etf/amundi-index-solutions-amundi-nasdaq-100-etf-c-lu1681038243', 'etf', '0');

ALTER TABLE `#__pms_finance_orders` DROP `value`;
ALTER TABLE `#__pms_finance_orders` DROP `type`;
ALTER TABLE `#__pms_finance_orders` ADD `type` TINYTEXT NOT NULL AFTER `wkn`, ADD `value` DOUBLE NOT NULL AFTER `type`;
ALTER TABLE `#__pms_finance_orders` ADD `active` TINYINT NOT NULL AFTER `value`;

ALTER TABLE `#__pms_finance_data` ADD `200d` DOUBLE NOT NULL AFTER `close`;

CREATE TABLE `#__pms_finance_limits` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `datetime` int(11) NOT NULL,
  `wkn` varchar(50) NOT NULL,
  `ordertyp` varchar(10) NOT NULL,
  `trailinglimit` double NOT NULL,
  `stoplimit` double NOT NULL,
  `traded` tinyint(4) NOT NULL DEFAULT '0',
  `aktiv` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `#__pms_finance_limits` ADD PRIMARY KEY (`id`);
ALTER TABLE `#__pms_finance_limits` ADD UNIQUE KEY `orderid_datetime` (`orderid`,`datetime`);
ALTER TABLE `#__pms_finance_limits` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `#__pms_finance_stocks` CHANGE `wkn` `wkn` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL;
ALTER TABLE `#__pms_finance_orders` CHANGE `wkn` `wkn` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL;
ALTER TABLE `#__pms_finance_notification_settings` ADD `wkn` VARCHAR(50) NOT NULL AFTER `id`;
ALTER TABLE `#__pms_finance_notification_settings` ADD UNIQUE KEY `ordertyp_2` (`ordertyp`,`wkn`) USING BTREE;
