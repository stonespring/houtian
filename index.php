<?php
if (!is_file('./data/install.lock')) {
    header('Location: ./install.php');
    exit;
}
require("./data/config/version.php");

define('APP_NAME', 'app');
define('APP_PATH', './app/');
define('HT_DATA_PATH', './data/');
define('EXTEND_PATH',	APP_PATH . 'Extend/');
define('CONF_PATH',		HT_DATA_PATH . 'config/');
define('RUNTIME_PATH',	HT_DATA_PATH . 'runtime/');
define('HTML_PATH',		HT_DATA_PATH . 'html/');

define('APP_DEBUG', false);
require("./thinkphp/setup.php");