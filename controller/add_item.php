<?php

    $department = htmlspecialchars(stripslashes($_POST['department']));
    $category = htmlspecialchars(stripslashes($_POST['item_category']));
    $item = ucwords(htmlspecialchars(stripslashes(($_POST['item']))));
    $barcode = htmlspecialchars(stripslashes(($_POST['barcode'])));

    // instantiate class
    include "../classes/dbh.php";
    include "../classes/inserts.php";

    $add_room = new add_items($department, $category, $item, $barcode, 10);
    $add_room->create_item();