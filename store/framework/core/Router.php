<?php

class Router {
    private $routes;
    
    
    public function __construct(){
        $routesPath = ROOT.'/application/config/routes.php';
        $this -> routes = include($routesPath);
        
    }
    
    /*
    * Returns request string
    *    
    */    
    private function getURI(){
        $request_uri = $_SERVER['REQUEST_URI'];
        $home_uri = '/PHP2_Lessons/store/';
        if (!empty($request_uri)){
            if (preg_match("~$home_uri~", $request_uri)){
                $request_uri = str_replace($home_uri, '', $request_uri);
            }
            return trim($request_uri, '/');
        }
    }
        
    
    public function run(){
        // Получить строку запроса
        
            $uri = $this->getURI();
               
        
      
        // проверить наличие такого запроса в роутер.пхп
        foreach ($this->routes as $uripattern => $path) {
            
            // $uripattern and $uri comparison
            if (preg_match("~$uripattern~", $uri)) {
                // Get internal path based on external rule
                $internalRoute = preg_replace("~$uripattern~", $path, $uri);
/*                echo '<br>'. $uri.'<br>'; 
                echo $path;*/
     
        
        
                //
                // если есть совпадение определить какой контроллер и акшинобрабатывают запрос
                $segments = explode('/', $internalRoute);
                $controllerName = array_shift($segments).'Controller';
                $controllerName = ucfirst($controllerName);
                
                $actionName = 'action'.ucfirst(array_shift($segments));

/*                echo '<br>'. $controllerName ;
                echo '<br>' .$actionName;*/
                $parameters=$segments;
                /*echo '<pre>';
                print_r($parameters);
                */
                $controllerFile = ROOT . '/application/controllers/' . $controllerName . '.php';
                
                
                if (file_exists($controllerFile)) {
                    include_once($controllerFile);
                }



                // Создать объект и вызвать метод(т.е. акшин)
                $controllerObject = new $controllerName;
                
//                $result=1;
//                $controllerObject -> $actionName();
                echo $actionName;
                $result = call_user_func_array(array($controllerObject, $actionName), $parameters);
//               var_dump($result);
                if ($result != null) {
                    break;
                }
        
            }
    
        }
    }
    
}