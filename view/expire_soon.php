<?php

    include "../classes/dbh.php";
    include "../classes/select.php";


?>
    <div class="info"></div>
<div class="displays allResults" id="bar_items">
    <h2>Items to expire in less than 3 months</h2>
    <hr>
    <div class="search">
        <input type="search" id="searchRoom" placeholder="Enter keyword" onkeyup="searchData(this.value)">
        <a class="download_excel" href="javascript:void(0)" onclick="convertToExcel('data_table', 'Soon to expire items')"title="Download to excel"><i class="fas fa-file-excel"></i></a>
    </div>
    <table id="data_table" class="searchTable">
        <thead>
            <tr style="background:var(--moreColor)">
                <td>S/N</td>
                <td>Category</td>
                <td>Item name</td>
                <td>Quantity</td>
                <td>Unit cost</td>
                <td>Total cost</td>
                <td>Expiry date</td>
            </tr>
        </thead>
        <tbody>
            <?php
                $n = 1;
                $get_items = new selects();
                $details = $get_items->fetch_expire_soon_det('items', 'expiration_date', 'quantity');
                if(gettype($details) === 'array'){
                foreach($details as $detail):
            ?>
            <tr>
                <td style="text-align:center; color:red;"><?php echo $n?></td>
                <td style="color:var(--moreClor);">
                    <?php
                        //get category name
                        $get_cat_name = new selects();
                        $cat_name = $get_cat_name->fetch_details_group('categories', 'category', 'category_id', $detail->category);
                        echo $cat_name->category;
                    ?>
                </td>
                <td><?php echo $detail->item_name?></td>
                <td style="text-align:center"><?php echo $detail->quantity?></td>
                <td>
                    <?php 
                        echo "₦".number_format($detail->cost_price, 2);
                    ?>
                </td>
                <td>
                    <?php 
                        $total_cost = $detail->cost_price * $detail->quantity;
                        echo "₦".number_format($total_cost, 2);
                    ?>
                </td>
                <td>
                    <?php
                        
                        echo date("jS M, Y", strtotime($detail->expiration_date));
                    ?>
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
        $amounts = $get_total->fetch_expire_soonSum('items', 'expiration_date', 'cost_price', 'quantity');
        foreach($amounts as $amount){
            $total_amount = $amount->total;
        }
        // $total_worth = $total_amount * $total_qty;
        echo "<p class='total_amount' style='color:#fff; background:var(--primaryColor); float:right; padding:10px; text-decoration:none;'>Total Worth: ₦".number_format($total_amount, 2)."</p>";
    ?>
</div>