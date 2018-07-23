<?php

class ProductController {
    public function actionView($id) {
        
        require_once(ROOT . '/application/views/product/view.php');
//        echo $id;
        return true;
    }
}