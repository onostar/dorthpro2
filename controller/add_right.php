<?php

    $menu = htmlspecialchars(stripslashes($_POST['menu']));
    $sub_menu = htmlspecialchars(stripslashes($_POST['sub_menu']));
    $user = htmlspecialchars(stripslashes($_POST['user']));
    // instantiate class
    include "../classes/dbh.php";
    include "../classes/select.php";
    include "../classes/inserts.php";
    //get sub menu name
    $get_sub = new selects();
    $menu_name = $get_sub->fetch_details_group('sub_menus', 'sub_menu', 'sub_menu_id', $sub_menu);
     $right = $menu_name->sub_menu;

     //add rights to user
    $add_right = new add_rights($user, $menu, $sub_menu);
    $add_right->add_right();

    if($add_right){
        echo "<p>'$right' added to user!</p>";
    }
    
?>
