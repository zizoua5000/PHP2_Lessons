<?php

include_once ROOT.'/application/models/News.php';

class NewsController {
    public function actionIndex(){
        $newsList = array();
        $newsList = News::getNewsList();
        echo '<pre>'; 
        print_r($newsList);
        echo '</pre>';
        return true;
    }
    
    public function actionView( $id) {
        $news = News::getNewsItemById($id);
        print_r($news);
        return true;
    }
}