<style>
    .sales_receipt{
    padding:10px;
}
.sales_receipt h2, .sales_receipt p{
    text-align:center;
    font-size:.9rem;
    padding:0;
    margin:0;
}
.receipt_head{
    margin:5px;
}
.sales_receipt .receipt_head{
    display:flex;
    justify-content: center;
    gap:.5rem;
    margin:2px 0;
}
.sales_receipt .total_amount{
    text-align: right;
    font-size:.9rem;
    margin:5px 0;
}

.sales_receipt .sold_by{
    text-align: left;
    font-size:.9rem;

}
.sales_receipt table{
    width:100%!important;
    margin:10px auto!important;
    box-shadow:none;
    border:1px solid #222;
    border-collapse: collapse;
}
.sales_receipt table thead tr td{
    font-size:.9rem;
    padding:2px;

}
.sales_receipt table td{
    border:1px solid #222;
    padding:2px;
}
.item_categories{
    padding:20px;
}
</style>
<?php
// session_start();
// instantiate class
include "../classes/dbh.php";
include "../classes/select.php";
    session_start();
    if(isset($_GET['receipt'])){
        $user = $_SESSION['user_id'];
        $invoice = $_GET['receipt'];
        
                
?>
<div class="displays allResults sales_receipt">
    <?php include "receipt_header.php"?>
    <p><strong>ORDER TICKET</strong></p>
    </div>
    <table id="postsales_table" class="searchTable">
        <thead>
            <tr style="background:var(--moreColor)">
                <td style="text-align:center">Items</td>
                <td style="text-align:center">Amount</td>
            </tr>
        </thead>
        <tbody>
            <?php
                $n = 1;
                $get_items = new selects();
                $details = $get_items->fetch_count_cond('sales', 'invoice', $invoice);
            ?>
            <tr>
                <td style="text-align:center; color:red;"><?php echo $details?></td>
                
                <td>
                    <?php
                        $get_total = new selects(); 
                        $amounts = $get_total->fetch_sum_single('sales', 'total_amount', 'invoice', $invoice);
                        foreach($amounts as $amount){
                            echo "<p class='total_amount' style='color:green; text-align:center;'>Total Due: ₦".number_format($amount->total, 2)."</p>";
                        }
                    ?>
                </td>
                
                
            </tr>
            
        </tbody>
    </table>

    <?php
    
        //sold by
        $get_seller = new selects();
        $row = $get_seller->fetch_details_group('users', 'full_name', 'user_id', $user);
        echo ucwords("<p class='sold_by'>Sold by: <strong>$row->full_name</strong></p>");
    ?>
    
</div> 
   
<?php
    echo "<script>window.print();
    window.close();</script>";
                    // }
                }
            // }
        
    // }
?>