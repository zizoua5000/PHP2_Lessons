<?php


class ProductController {
    public function actionView($id) {
        
        $categories = array();
        $categories = Category::getCategoriesList();
        
        $product = Product::getProductById($id);
        
        require_once(ROOT . '/application/views/product/view.php');
//        echo $id;
        return true;
    }
}