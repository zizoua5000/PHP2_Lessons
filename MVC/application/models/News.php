<?php

class News {
    /**
     * Returns single news item with speified id
     * @param integer $id
     */
    public static function getNewsItemById($id){
       //запрос к БД
        $id = intval($id);
        
        if ($id) {
            /*$host = 'localhost';
            $dbname = 'mvc_site';
            $user = 'root';
            $password = '';
            $db = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);*/
            
            $db = Db::getConnection();
            
            $result = $db->query('Select * from news Where id=' . $id);
            $result->setFetchMode(PDO::FETCH_ASSOC);
            
            $newsItem = $result->fetch();
            
            return $newsItem;
        }
        
    }
    
    /**
     * Returns an array of news items
     */
    public static function getNewsList() {
  
        $db = Db::getConnection();
        
        $newsList = array();
        
        $result = $db->query('Select id, title, date, short_content FROM news Order By date DESC Limit 10');
        
        $i = 0;
        
        while($row = $result->fetch()) {
            $newsList[$i]['id'] = $row['id'];
            $newsList[$i]['title'] = $row['title'];
            $newsList[$i]['date'] = $row['date'];
            $newsList[$i]['short_content'] = $row['short_content'];
            $i++;
        }
        return $newsList;
    }
    
}
