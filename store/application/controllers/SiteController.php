<?php

class SiteController {
    
    
    public function actionIndex(){
      
        include (ROOT . '/application/views/site/index.php');
        echo 'ssss0';
       
        return true;
    }
}