<?php

include ROOT . '/application/models/Category.php';
include ROOT . '/application/models/Product.php';
include ROOT . '/framework/core/Pagination.php';

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
    
    public function actionCategory($categoryId, $page = 1) {
            
        $categories = array();
        $categories = Category::getCategoriesList();
        
        $latestProducts = array();
        $latestProducts = Product::getProductsListByCategory($categoryId, $page);
        
        $total = Product:getTotalProductsInCategory($categoryId);
        
        $pagination = new Pagination($total, $page, Product::SHOW_BY_DEFAULT, 'page-');

        include (ROOT . '/application/views/catalog/category.php');
        return true;
        
    }
}