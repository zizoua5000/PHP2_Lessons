<?php



class CatalogController {
    
    
    public function actionIndex(){
        

        
        include (ROOT . '/application/views/cabinet/index.php');
        
       
        return true;
    }
}