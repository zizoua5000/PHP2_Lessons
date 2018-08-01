<?php



class CatalogController {
    
    
    public function actionIndex(){
        
        $userId = User::checkLogged();
        
        $user = User::getUserById($userId);
        
        include (ROOT . '/application/views/cabinet/index.php');
        
       
        return true;
    }
    
    public function actionEdit(){
        
        $userId = User::checkLogged();
        
        $user = User::getUserById($userId);
        
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
        
        include (ROOT . '/application/views/cabinet/edit.php');
        
       
        return true;
    }
}