<?php

class Router {
    private $routes;
    
    public function __construct(){
        $routesPath = ROOT.'/application/config/routes.php';
        $this -> routes = include($routesPath);
        
    }
    
    public function run(){
        echo" im router";
        print_r ($this->routes);
    }
    
    
}