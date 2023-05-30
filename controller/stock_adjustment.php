<?php
    session_start();
    $trans_type = "adjust";  
    $adjusted_by = $_SESSION['user_id'];
    // if(isset($_POST['change_prize'])){
        $item = htmlspecialchars(stripslashes($_POST['item_id']));
        $quantity = ucwords(htmlspecialchars(stripslashes($_POST['quantity'])));

        // instantiate classes
        include "../classes/dbh.php";
        include "../classes/update.php";
        include "../classes/select.php";
        include "../classes/inserts.php";
        //get item quantity in inventory;
        $get_inv = new selects();
        $inv_qty = $get_inv->fetch_details_group('items', 'quantity', 'item_id', $item);
        //insert into audit trail
        $inser_trail = new audit_trail($item, $trans_type, $inv_qty->quantity, $quantity, $adjusted_by);
        $inser_trail->audit_trail();
        //get item details
        $get_name = new selects();
        $rows = $get_name->fetch_details_cond('items', 'item_id', $item);
        foreach($rows as $row){
            $item_name = $row->item_name;
            $prev_qty = $row->quantity;
        }
        //update quantity
        $change_qty = new Update_table();
        $change_qty->update('items', 'quantity', 'item_id', $quantity, $item);
        if($change_qty){
            //insert into adjustments table
            $adjust_qty = new stock_adjustment($item, $adjusted_by, $prev_qty, $quantity);
            $adjust_qty->adjust();
             echo "<div class='success'><p>$item_name quantity adjusted successfully! <i class='fas fa-thumbs-up'></i></p></div>";
        }else{
            echo "<p style='background:red; color:#fff; padding:5px'>Failed to modify quantity <i class='fas fa-thumbs-down'></i></p>";
        }
    // }