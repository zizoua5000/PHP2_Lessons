<?php

class UserController {
    
    public function actionRegister() {
        $name = '';
        $email = '';
        $password = '';
        $result = false;
        
        if (isset($_POST['submit'])) {
            $name = $_POST['name'];
            $email = $_POST['email'];
            $password = $_POST['password'];    
            
            $errors = false;
            
            if (!User::checkName($name)) {
                $errors[] = 'Name shorter than 2 symbols';
            }
            
            if (!User::checkEmail($email)) {
                $errors[] = 'Incorrect Email';
            }
            
            if (!User::checkPassword($password)) {
                $errors[] = 'Password shorter than 6 symbols';
            }
            
            if (User::checkEmailExists($email)) {
                $errors[] = 'Such Email is in use already';
            }
            
            if ($errors == false) {
                $result = User::register($name, $email, $password);
            }
            
        }
        
        
        require_once(ROOT . '/application/views/user/register.php');
        
        return true;
    }
    
    public function actionLogin(){
        $email = '';
        $password = '';
        $result = false;
        
        if (isset($_POST['submit'])) {
            $email = $_POST['email'];
            $password = $_POST['password'];    
            
            $errors = false;
            
            
            if (!User::checkEmail($email)) {
                $errors[] = 'Incorrect Email';
            }
            
            if (!User::checkPassword($password)) {
                $errors[] = 'Password shorter than 6 symbols';
            }
            
            $userId = User::checkUserData($email,$password) 
               
            if ($userId == false) {
                $errors[] = 'Incorrect authentication data';
            } else {
                User::auth($userId);
                header("Location: /cabinet/");
            }
            
            if ($errors == false) {
                $result = User::register($name, $email, $password);
            }
            
        }
          require_once(ROOT . '/application/views/user/register.php');
        
        return true;
    }
    
    public function actionLogin(){
        session_start();
        unset($_SESSION['user']);
        header("Location: /");
    }
    
}