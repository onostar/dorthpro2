<?php

    if(isset($_GET['user_id'])){
        $user = $_GET['user_id'];

        // instantiate class
        include "../classes/dbh.php";
        include "../classes/update.php";

        $activate_user = new Update_table();
        $activate_user->update('users', 'user_password', 'user_id', 123, $user);
        if($activate_user){
            echo "<div class='success'><p>Password reset Successfully! <i class='fas fa-thumbs-up'></i></p></div>";
        }
    }