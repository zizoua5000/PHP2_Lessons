<?php

class Router {
    private $routes;
    
    public function __construct(){
        $routesPath = ROOT.'/application/config/routes.php';
        $this -> routes = include($routesPath);
        
    }
    
    public function run(){
        // Получить строку запроса
        
        // проверить наличие такого запроса в роутер.пхп
        
        // если есть совпадение определить какой контроллер и акшинобрабатывают запрос
        
        // Подключить файл класса контроллера
        
        // Создать объект и вызвать метод(т.е. акшин)
        
        
    }
    
    
}