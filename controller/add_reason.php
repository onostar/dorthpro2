<?php

    $reason = ucwords(htmlspecialchars(stripslashes($_POST['reason'])));

    //instantiate class
    
    include "../classes/dbh.php";
    include "../classes/inserts.php";

    $add_item = new add_single_item('remove_reasons', 'reason', $reason);
    $add_item->create_single_item();