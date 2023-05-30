<?php
    session_start();  
    $trans_type = "remove";  
    $removed_by = $_SESSION['user_id'];
    // if(isset($_POST['change_prize'])){
        $item = htmlspecialchars(stripslashes($_POST['item_id']));
        $quantity = htmlspecialchars(stripslashes($_POST['quantity']));
        $reason = ucwords(htmlspecialchars(stripslashes($_POST['remove_reason'])));

        // instantiate classes
        include "../classes/dbh.php";
        include "../classes/update.php";
        include "../classes/select.php";
        include "../classes/inserts.php";

        //get item details
        $get_name = new selects();
        $rows = $get_name->fetch_details_cond('items', 'item_id', $item);
        foreach($rows as $row){
            $item_name = $row->item_name;
            $prev_qty = $row->quantity;
        }
        if($quantity > $prev_qty){
            echo "<script>alert('Error! You cannot remove more than available quantity');
            </script>";
        }else{
        //insert into audit trail
        $inser_trail = new audit_trail($item, $trans_type, $prev_qty, $quantity, $removed_by);
        $inser_trail->audit_trail();
        //update quantity
        $new_qty = $prev_qty - $quantity;
        $change_qty = new Update_table();
        $change_qty->update('items', 'quantity', 'item_id', $new_qty, $item);
        if($change_qty){
            //insert into remove item table
            $remove_qty = new remove_qty($item, $quantity, $reason, $removed_by, $prev_qty);
            $remove_qty->remove();
             echo "<div class='success'><p>$quantity $item_name removed from inventory successfully! <i class='fas fa-thumbs-up'></i></p></div>";
        }else{
            echo "<p style='background:red; color:#fff; padding:5px'>Failed to remove quantity <i class='fas fa-thumbs-down'></i></p>";
        }
    }