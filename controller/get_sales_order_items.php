<?php
    $item = htmlspecialchars(stripslashes($_POST['item']));
    // instantiate class
    include "../classes/dbh.php";
    include "../classes/select.php";

    $get_item = new selects();
    $rows = $get_item->fetch_details_like2Cond('items', 'item_name', 'barcode', $item);
     if(gettype($rows) == 'array'){
        foreach($rows as $row):
        
    ?>
    <option onclick="addSalesOrder('<?php echo $row->item_id?>')">
        <?php echo $row->item_name." (Price => ₦".$row->sales_price.", Quantity => ".$row->quantity.")"?>
    </option>
    
<?php
    endforeach;
     }else{
        echo "No resullt found";
     }
?>