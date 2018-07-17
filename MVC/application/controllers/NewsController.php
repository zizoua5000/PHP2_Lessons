<?php

class NewsController {
    public function actionIndex(){
        echo "action list";
        return true;
    }
    
    public function actionView($category, $id) {
        echo $category;
        echo $id;
        return true;
    }
}