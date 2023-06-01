<?php
    session_start();
    $trans_type = "adjust";  
    $adjusted_by = $_SESSION['user_id'];
    $store = $_SESSION['store_id'];
    // if(isset($_POST['change_prize'])){
        $item = htmlspecialchars(stripslashes($_POST['item_id']));
        $quantity = htmlspecialchars(stripslashes($_POST['quantity']));

        // instantiate classes
        include "../classes/dbh.php";
        include "../classes/update.php";
        include "../classes/select.php";
        include "../classes/inserts.php";
        //get item quantity in inventory;
        $get_inv = new selects();
        $inv_qtys = $get_inv->fetch_details_2cond('inventory', 'item', 'store', $item, $store);
        foreach($inv_qtys as $inv_qty){
            $prev_qty = $inv_qty->quantity;
        }
        //insert into audit trail
        $inser_trail = new audit_trail($item, $trans_type, $prev_qty, $quantity, $adjusted_by, $store);
        $inser_trail->audit_trail();
        //get item details
        $get_name = new selects();
        $rows = $get_name->fetch_details_cond('items', 'item_id', $item);
        foreach($rows as $row){
            $item_name = $row->item_name;
        }
        //update quantity in inventory
        $change_qty = new Update_table();
        $change_qty->update2cond('inventory', 'quantity', 'item', 'store', $quantity, $item, $store);
        if($change_qty){
            //insert into adjustments table
            $adjust_qty = new stock_adjustment($item, $adjusted_by, $prev_qty, $quantity, $store);
            $adjust_qty->adjust();
             echo "<div class='success'><p>$item_name quantity adjusted successfully! <i class='fas fa-thumbs-up'></i></p></div>";
        }else{
            echo "<p style='background:red; color:#fff; padding:5px'>Failed to modify quantity <i class='fas fa-thumbs-down'></i></p>";
        }
    // }