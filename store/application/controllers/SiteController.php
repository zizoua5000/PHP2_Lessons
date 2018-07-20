<?php

class SiteController {
    
    
    public function actionIndex(){
        
        require_once(ROOT . '/application/views/site/index.php');
        
        return true;
    }
}