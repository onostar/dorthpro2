<?php
    session_start();
    if(isset($_GET['item'])){
        $item = $_GET['item'];
    }
    $from = $_SESSION['fromDate'];
    $to = $_SESSION['toDate'];
    // instantiate classes
    include "../classes/dbh.php";
    include "../classes/select.php";
    //get item name
    $get_name = new selects();
    $names = $get_name->fetch_details_group('items', 'item_name', 'item_id', $item);
    $name = $names->item_name;
    //get purchase history
    $get_purchase = new selects();
    $details = $get_purchase->fetch_details_2dateCon('purchases', 'item', 'date(post_date)', $from, $to, $item);
    $n = 1;  
?>
<div class="search">
    <input type="search" id="searchPurchase" placeholder="Enter keyword" onkeyup="searchData(this.value)">
    <a class="download_excel" href="javascript:void(0)" onclick="convertToExcel('data_table', 'Purchase report for <?php echo $name?>')"title="Download to excel"><i class="fas fa-file-excel"></i></a>
</div>
<h3 style="background:red; text-align:center; color:#fff; padding:10px;">Purchase Register for <?php echo strtoupper($name)?> between '<?php echo date("jS M, Y", strtotime($from)) . "' and '" . date("jS M, Y", strtotime($to))?>'</h3>
    
    <table id="data_table" class="searchTable">
        <thead>
        <tr style="background:var(--primaryColor)">
                <td>S/N</td>
                <td>Invoice</td>
                <td>Vendor</td>
                <td>Quantity</td>
                <td>Cost</td>
                <td>Total</td>
                <td>Date</td>
                <td>Received by</td>
            </tr>
        </thead>
        <tbody>
<?php
    if(gettype($details) === 'array'){
    foreach($details as $detail){

?>
            <tr>
                <td style="text-align:center; color:red;"><?php echo $n?></td>
                <td><?php echo $detail->invoice?></td>
                <td>
                    <?php
                        $get_guest = new selects();
                        $rows = $get_guest->fetch_details_group('vendors', 'vendor', 'vendor_id', $detail->vendor);
                        echo $rows->vendor;
                    ?>
                </td>
                
                <td style="text-align:center; color:green;"><?php echo $detail->quantity;?></td>
                <td><?php echo "₦".number_format($detail->cost_price, 2)?></td>
                <td>
                    <?php
                        $total_cost = $detail->quantity * $detail->cost_price; 
                        echo "₦".number_format($total_cost, 2)
                    ?>
                </td>
                <td style="color:var(--moreColor)"><?php echo date("jS M, Y", strtotime($detail->post_date));?></td>
                <td>
                    <?php
                        //get posted by
                        $get_posted_by = new selects();
                        $posted_by = $get_posted_by->fetch_details_group('users', 'full_name', 'user_id', $detail->posted_by);
                        echo $posted_by->full_name;
                    ?>
                </td>
                
            </tr>
            <?php $n++; }}?>
        </tbody>
    </table>
<?php
    if(gettype($details) == "string"){
        echo "<p class='no_result'>'$details'</p>";
    }
    // get sum
    $get_total = new selects();
    $amounts = $get_total->fetch_sum_2col2date1con('purchases', 'cost_price', 'quantity', 'date(post_date)', $from, $to, 'item', $item);
    foreach($amounts as $amount){
        echo "<p class='total_amount' style='color:green; text-align:center'>Total: ₦".number_format($amount->total, 2)."</p>";
    }
    
?>
