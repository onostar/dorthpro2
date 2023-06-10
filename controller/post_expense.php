<?php

    $user = htmlspecialchars(stripslashes($_POST['posted']));
    $store = htmlspecialchars(stripslashes($_POST['store']));
    $date = htmlspecialchars(stripslashes($_POST['exp_date']));
    $head = htmlspecialchars(stripslashes(($_POST['exp_head'])));
    $amount = htmlspecialchars(stripslashes(($_POST['amount'])));
    $details = ucwords(htmlspecialchars(stripslashes(($_POST['details']))));

    // instantiate class
    include "../classes/dbh.php";
    include "../classes/inserts.php";

    $post_expense = new post_expense($user, $date, $head, $amount, $details, $store);
    $post_expense->add_expense();