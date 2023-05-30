<?php
    session_start();
    $company = $_SESSION['company_id'];
    $store = ucwords(htmlspecialchars(stripslashes($_POST['store'])));
    $store_address = htmlspecialchars(stripslashes($_POST['store_address']));
    $phone = htmlspecialchars(stripslashes(($_POST['phone'])));

    // instantiate class
    include "../classes/dbh.php";
    include "../classes/inserts.php";

    $add_store = new add_store($company, $store, $store_address, $phone);
    $add_store->create_store();