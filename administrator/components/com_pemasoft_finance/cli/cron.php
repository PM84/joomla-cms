<?php

/**
 * @package    Joomla.Cli
 *
 * @copyright  2020 PeMaSoft - Peter Mayer, All rights reserved.
 * @license    GNU General Public License version 2 or later; see LICENSE.txt
 */

/**
 * This is a CRON script to import historical stock data which should be called from the command-line, not the
 * web. For example something like:
 * /usr/bin/php path_to_site/www/joomla/administrator/components/com_pemasoft_finance/cli/import_historical_data.php
 */

// Initialize Joomla framework
const _JEXEC = 1;

use Joomla\CMS\Factory;

define('JPATH_BASE', realpath(dirname(__FILE__) . '/../../../../'));

require_once JPATH_BASE . '/includes/defines.php';
require_once JPATH_BASE . '/includes/framework.php';
require_once JPATH_BASE . '/administrator/components/com_pemasoft_finance/helpers/helper.php';
require_once JPATH_BASE . '/administrator/components/com_pemasoft_finance/cli/import_recent_data.php';

/**
 * Cron for PeMaSoft Finance.
 *
 * @since  3.9.0
 */
class PeMaSoftCron
{


}