<?php

class Category {
    
    /**
     * Returns an arrray of categories
     */
    public static function getCategoriesList(){
        $db= Db::getConnection();
        
        $categoryList = array();
        $result = $db->query('SELECT id, name, From category ORDER By sort_order ASC');
        
        $i=0;
        while($row=$result->fetch()) {
            $categoryList[$i]['id'] = $row['id'];
            $categoryList[$i]['name'] = $row['name'];
            $i++;
        }
        return $categoryList;
    }
}