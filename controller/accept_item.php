<?php
    session_start();
    if(isset($_SESSION['user_id'])){
        $accepted = $_SESSION['user_id'];
        $store = $_SESSION['store_id'];
        if(isset($_GET['transfer_id'])){
            $id = $_GET['transfer_id'];
        }
        $trans_type = "accept";
    
    //instantiate classes
    include "../classes/dbh.php";
    include "../classes/inserts.php";
    include "../classes/update.php";
    include "../classes/select.php";

    //get items
    $get_item = new selects();
    $the_items = $get_item->fetch_details_cond('transfers', 'transfer_id', $id);
    foreach($the_items as $the_item){
        $item = $the_item->item;
        $quantity = $the_item->quantity;
        $expiration = $the_item->expiration;
    }
    //get item details 
    $get_item_det = new selects();
    $itemss = $get_item_det->fetch_details_cond('items', 'item_id', $item);
    foreach($itemss as $items){
        $cost_price = $items->cost_price;
        // $sales_price = $items->sales_price;
        $name = $items->item_name;
        $reorder_level = $items->reorder_level;
    }
    // get item previous quantity in inventory;
    $get_prev_qty = new selects();
    $prev_qtys = $get_prev_qty->fetch_details_2cond('inventory', 'item', 'store', $item, $store);
    if(gettype($prev_qtys) === 'array'){
        foreach($prev_qtys as $prev_qty){
            $inv_qty = $prev_qty->quantity;
        }
    }
    if(gettype($prev_qtys) == "string"){
        $inv_qty = 0;
    }
    //insert into audit trail
    $inser_trail = new audit_trail($item, $trans_type, $inv_qty, $quantity, $accepted, $store);
    $inser_trail->audit_trail();
    //check if item is in store inventory
    if(gettype($prev_qtys) === 'array'){
        //update current quantity in inventory
        $new_qty = $inv_qty + $quantity;
        $update_inventory = new Update_table();
        $update_inventory->update2Cond('inventory', 'quantity', 'store', 'item', $new_qty, $store, $item);
        //update expiration
        $update_exp = new Update_table();
        $update_exp->update2cond('inventory', 'expiration_date', 'store', 'item', $expiration, $store, $item);
    }
    //add to inventory if not found
    if(gettype($prev_qtys) == "string"){
        $insert_item = new add_inventory($item, $quantity, $cost_price, $expiration, $store, $reorder_level);
        $insert_item->insert_inventory();
    }
    //update transfer item
    $update_transfer = new Update_table();
    $update_transfer->update_double('transfers', 'transfer_status', 2, 'accept_by', $accepted, 'transfer_id', $id);

    if($update_transfer){
        echo "<div class='notify' style='padding:4px!important'><p style='color:#fff!important'><span>$quantity $name</span> accepted into inventory</p>";
    }
?>
    <!-- display transfers for this invoice number -->
    
<?php
        }
  
?>