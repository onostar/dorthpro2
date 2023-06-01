<?php

    $trans_type ="transfer";    
    $posted = htmlspecialchars(stripslashes($_POST['posted_by']));
    $store_from = htmlspecialchars(stripslashes($_POST['store_from']));
    $store_to = htmlspecialchars(stripslashes($_POST['store_to']));
    $item = htmlspecialchars(stripslashes($_POST['item_id']));
    $invoice = htmlspecialchars(stripslashes($_POST['invoice']));
    $quantity = htmlspecialchars(stripslashes($_POST['quantity']));
    //instantiate classes
    include "../classes/dbh.php";
    include "../classes/inserts.php";
    include "../classes/update.php";
    include "../classes/select.php";
    //get item details 
    $get_item_det = new selects();
    $items = $get_item_det->fetch_details_cond('items', 'item_id', $item);
    foreach($items as $item){
        $cost_price = $item->cost_price;
        $sales_price = $item->sales_price;
    }
    // get item previous quantity in inventory;
    $get_prev_qty = new selects();
    $prev_qtys = $get_prev_qty->fetch_details_2cond('inventory', 'item', 'store', $item, $store_from);
    if(gettype($prev_qtys) === 'array'){
        foreach($prev_qtys as $prev_qty){
            $inv_qty = $prev_qty->quantity;
        }
    }
    //insert into audit trail
    $inser_trail = new audit_trail($item, $trans_type, $inv_qty, $quantity, $posted, $store_from);
    $inser_trail->audit_trail();
    //check if item is in store inventory
    $check_item = new selects();
    if(gettype($prev_qtys) === 'array'){
        //update current quantity in inventory
        $new_qty = $inv_qty - $quantity;
        $update_inventory = new Update_table();
        $update_inventory->update2Cond('inventory', 'quantity', 'store', 'item', $new_qty, $store_from, $item);
    }
    
    //transfer item
    $transfer = new transfers($item, $invoice, $quantity, $posted, $store_from, $store_to);

    $transfer->transfer();
    
    if($transfer){
        
?>
    <!-- display stockins for this invoice number -->
<div class="displays allResults" id="stocked_items">
    <h2>Items to be transferred with invoice <?php echo $invoice?></h2>
    <table id="stock_items_table" class="searchTable">
        <thead>
            <tr style="background:var(--moreColor)">
                <td>S/N</td>
                <td>Item name</td>
                <td>Quantity</td>
                <td>Unit cost</td>
                <td>Unit sales</td>
                <td></td>
            </tr>
        </thead>
        <tbody>
            <?php
                $n = 1;
                $get_items = new selects();
                $details = $get_items->fetch_details_2cond('transfers', 'store_from', 'invoice', $store_from, $invoice);
                if(gettype($details) === 'array'){
                foreach($details as $detail):
            ?>
            <tr>
                <td style="text-align:center; color:red;"><?php echo $n?></td>
                <td style="color:var(--moreClor);">
                    <?php
                        //get category name
                        $get_item_name = new selects();
                        $item_name = $get_item_name->fetch_details_group('items', 'item_name', 'item_id', $detail->item);
                        echo $item_name->item_name;
                    ?>
                </td>
                <td style="text-align:center"><?php echo $detail->quantity?></td>
                <td>
                    <?php 
                        echo "₦".number_format($cost_price, 2);
                    ?>
                </td>
                <td>
                    <?php 
                        echo "₦".number_format($sales_price, 2);
                    ?>
                </td>
                    <a style="color:red; font-size:1rem" href="javascript:void(0) "title="delete purchase" onclick="deleteTransfer('<?php echo $detail->transfer_id?>', <?php echo $detail->item?>)"><i class="fas fa-trash"></i></a>
                </td>
                
            </tr>
            
            <?php $n++; endforeach;}?>
        </tbody>
    </table>

    
    <?php
        if(gettype($details) == "string"){
            echo "<p class='no_result'>'$details'</p>";
        }

        // get sum
        $get_total = new selects();
        $amounts = $get_total->fetch_sum_2con('inventory', 'cost_price', 'quantity', 'item', 'store', $item, $store_from);
        foreach($amounts as $amount){
            $total_amount = $amount->total;
        }
        // $total_worth = $total_amount * $total_qty;
        echo "<p class='total_amount' style='color:red'>Total Cost: ₦".number_format($total_amount, 2)."</p>";
    ?>
    <div class="close_stockin">
        <button onclick="postTransfer('<?php echo $invoice?>')" style="background:red; padding:8px; border-radius:5px;">Post transfer <i class="fas fa-power-off"></i></button>
    </div>
</div>
<?php
        }
    

?>