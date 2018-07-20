<?php

/*
$string = '21-11-2015';

$pattern = '/([0-9]{2})-([0-9]{2})-([0-9]{4})/';

$replace = 'Month: $2, Day: $1, Year: $3';

echo preg_replace($pattern, $replace, $string);


die;
*/

// Front Controller

//1. общие настройки. Например включаем отображение всех ошибок на время разработки.
ini_set('display_errors',1);
error_reporting(E_ALL);

//2. Подключение файлов системы. на будующее нужен автолоадер
define('ROOT', dirname(__FILE__));
require_once(ROOT.'/framework/core/Router.php');
//require_once(ROOT.'/framework/database/Db.php');

// 3. Установка соединения с БД




// 4. Вызов Router

$router = new Router();
$router-> run();