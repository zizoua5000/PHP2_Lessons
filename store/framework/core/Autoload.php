<?php
spl_autoload_register('Autoload::MyAutoloader');
class Autoload {
    
    public static function MyAutoloader($className) {
        $array_paths = array(
            '/application/models/',
            '/framework/core/',
            '/framework/database/',
        );
        
        foreach ($array_paths as $path) {
            $path = ROOT . $path . $className . '.php';
            if (is_file($path)) {
                include_once $path;
            }
        }
    }
}