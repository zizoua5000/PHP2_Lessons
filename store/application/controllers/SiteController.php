<?php


class SiteController {
    
    
    public function actionIndex(){
        
        $categories = array();
        $categories = Category::getCategoriesList();
      
        $latestProducts = array();
        $latestProducts = Product::getLatestProducts();
        
        include (ROOT . '/application/views/site/index.php');
        echo 'ssss0';
       
        return true;
    }
}