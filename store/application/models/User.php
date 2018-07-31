<?php

class User {
    
    public static function register($name, $email, $password) {
        $db= Db::getConnection();
        
        $sql = 'INSERT INTO user (name, email, password) Values (:name, :email, :password)';
        
        $result = $db->prepare($sql);
        $result -> bindParam(':name', $name, PDO::PARAM_STR);
        $result -> bindParam(':email', $email, PDO::PARAM_STR);
        $result -> bindParam(':password', $password, PDO::PARAM_STR);
        
        return $result->execute();
    }
    
    public static function checkName($name) {
        if(strlen($name)>=2) {
            return true;
        }
        return false;
    }
    
    public static function checkPassword($password) {
        if(strlen($password)>=6) {
            return true;
        }
        return false;
    }
    
    public static function checkEmail($email) {
        if(filter_var($email, FILTER_VALIDATE_EMAIL)) {
            return true;
        }
        return false;
    }
    
    public static function checkEmailExists($email) {
        
        $db = Db::getConnection();
        
        $sql = 'Select Count(*) From user Where email = :email';
        
        $result = $db->prepare($sql);
        $result-> bindParam(':email', $email, PDO::PARAM_STR);
        $result->execute();
        
        if ($result->fetchColumn()) {
            return true;
        return false;
        }
        
    }
    
    public static function checkUserData($email, $password) {
        
        $db = Db::getConnection();
        
        $sql = 'Select * From user Where email = :email AND password = :password';
        
        $result = $db->prepare($sql);
        $result-> bindParam(':email', $email, PDO::PARAM_STR);
        $result -> bindParam(':password', $password, PDO::PARAM_STR);
        $result->execute();
        
        $user = $result ->fetch();
        if ($user) {
            return $user['id'];        
        }
        return false;
        
    }
    
    
}