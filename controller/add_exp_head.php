<?php

    $exp_head = ucwords(htmlspecialchars(stripslashes($_POST['exp_head'])));

    //instantiate class
    
    include "../classes/dbh.php";
    include "../classes/inserts.php";
    $data = array(
        'expense_head' => $exp_head,
    );
    $add_item = new add_data('expense_heads', $data);
    $add_item->create_data();