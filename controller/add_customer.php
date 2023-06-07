<?php

    $customer = ucwords(htmlspecialchars(stripslashes($_POST['customer'])));
    $phone = htmlspecialchars(stripslashes($_POST['phone_number']));
    $address = ucwords(htmlspecialchars(stripslashes(($_POST['address']))));
    $email = htmlspecialchars(stripslashes(($_POST['email'])));

    // instantiate class
    include "../classes/dbh.php";
    include "../classes/inserts.php";

    $add_room = new add_customer($customer, $phone, $email, $address);
    $add_room->add_customer();