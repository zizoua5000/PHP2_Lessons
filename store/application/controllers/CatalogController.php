<?php

include ROOT . '/application/models/Category.php';
include ROOT . '/application/models/Product.php';

class CatalogController {
    
    
    public function actionIndex(){
        
        $categories = array();
        $categories = Category::getCategoriesList();
      
        $latestProducts = array();
        $latestProducts = Product::getLatestProducts();
        
        include (ROOT . '/application/views/catalog/index.php');
        echo 'ssss1';
       
        return true;
    }
    
    public function actionCategory($categoryId) {
        $categories = array();
        $categories = Category::getCategoriesList();
        
        $latestProducts = array();
        $latestProducts = Product::getProductsListByCategory($categoryId);

        include (ROOT . '/application/views/catalog/category.php');
        return true;
        
    }
}