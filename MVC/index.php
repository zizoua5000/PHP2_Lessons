<?php
// Front Controller

//1. общие настройки. Например включаем отображение всех ошибок на время разработки.
ini_set('display_errors',1);
error_reporting(E_ALL);

//2. Подключение файлов системы. на будующее нужен автолоадер
define('ROOT', dirname(__FILE__));
require_once(ROOT.'/framework/core/Router.php');


// 3. Установка соединения с БД




// 4. Вызов Router

$router = new Router();
$router-> run();