<?php

/**
 * @package    Joomla.Cli
 *
 * @copyright  2020 PeMaSoft - Peter Mayer, All rights reserved.
 * @license    GNU General Public License version 2 or later; see LICENSE.txt
 */

/**
 * This is a CRON script that notifies users to buy or sell shares.
 * For example something like:
 * /usr/bin/php path_to_site/www/joomla/administrator/components/com_pemasoft_finance/cli/send_notification.php
 */

// Initialize Joomla framework
const _JEXEC = 1;

use Joomla\CMS\Factory;

define('JPATH_BASE', realpath(dirname(__FILE__) . '/../../../../'));
require_once JPATH_BASE . '/includes/defines.php';
require_once JPATH_BASE . '/includes/framework.php';
require_once JPATH_BASE . '/administrator/components/com_pemasoft_finance/helpers/helper.php';


PeMaSoftFinanceHelper::send_crash_alert();
