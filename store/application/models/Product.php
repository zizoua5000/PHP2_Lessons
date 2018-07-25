<?php

class Product {
    
    const SHOW_BY_DEFAULT = 10;
    
    public static function getLatestProducts($count = self::SHOW_BY_DEFAULT) {
        $count = intval($count);
        
        $db = Db::getConnection();
        
        $productList = array();
        
        $result = $db->query('SELECT id, name, price, image, is_new FROM product Where status = "1" Order By id DESC Limit '.  $count);
        
        $i=0;
        
        while($row = $result->fetch()) {
            $productsList[$i]['id'] = $row['id'];
            $productsList[$i]['name'] = $row['name'];
            $productsList[$i]['image'] = $row['image'];
            $productsList[$i]['price'] = $row['price'];
            $productsList[$i]['is_new'] = $row['is_new'];
            $i++;
        }
        return $productsList;
        
    }
    
    public static function getProductsListByCategory($categoryId){
         $categoryId = intval($categoryId);
        
        $db = Db::getConnection();
        
        $productList = array();
        
        $result = $db->query("SELECT id, name, price, image, is_new FROM product Where status = 1 AND category_id = $categoryId Order By id DESC");
        
        $i=0;
        
        while($row = $result->fetch()) {
            $productsList[$i]['id'] = $row['id'];
            $productsList[$i]['name'] = $row['name'];
            $productsList[$i]['image'] = $row['image'];
            $productsList[$i]['price'] = $row['price'];
            $productsList[$i]['is_new'] = $row['is_new'];
            $i++;
        }
        return $productsList;
        
    }
    
    
    public static function getProductById($productId){
        $productId = intval($productId);
        
        $db = Db::getConnection();
        
        $result = $db->query("SELECT id, name, price, image, is_new, code, availability, brand, description FROM product Where id = $productId ");
        return ($result->fetch());
    }
    
    
}