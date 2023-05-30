<div id="remove_item">
<?php

    include "../classes/dbh.php";
    include "../classes/select.php";
    
    if(isset($_SESSION['success'])){
        echo $_SESSION['success'];
    }

    
?>

    <div class="info"></div>
    <div class="displays allResults" style="width:70%; margin:0 0 0 50px!important">
        <h2>Remove item quantity from inventory</h2>
        <hr>
        <div class="search">
            <input type="search" id="searchGuestPayment" placeholder="Enter keyword" onkeyup="searchData(this.value)">
            <a class="download_excel" href="javascript:void(0)" onclick="convertToExcel('data_table', 'Removed item')"title="Download to excel"><i class="fas fa-file-excel"></i></a>
        </div>
        <table id="data_table" class="searchTable">
            <thead>
                <tr style="background:var(--otherColor)">
                    <td>S/N</td>
                    <td>Item code</td>
                    <td>item</td>
                    <td>Quantity</td>
                    <td>Cost price</td>
                    <td></td>
                </tr>
            </thead>

            <?php
                $n = 1;
                $select_cat = new selects();
                $rows = $select_cat->fetch_details_negCond1('items', 'quantity', 0);
                if(gettype($rows) == "array"){
                foreach($rows as $row):
            ?>
            <tbody>
                <tr>
                    <td style="text-align:center;"><?php echo $n?></td>
                    
                    <td>
                        <?php 
                            echo "00".$row->item_id;
                        ?>
                    </td>
                    <td><?php echo $row->item_name?></td>
                    <td style="text-align:center">
                        <?php echo $row->quantity;?>
                    </td>
                    <td>
                        <?php echo "₦ ". number_format($row->cost_price);?>
                    </td>
                    <td class="prices">
                        <a style="background:var(--moreColor)!important; color:#fff!important; padding:8px; border-radius:5px;" href="javascript:void(0)" data-form="check<?php echo $row->item_id?>" class="each_prices" onclick="displayRemovalForm('<?php echo $row->item_id?>');">Remove <i class="fas fa-eject"></i></a>
                    </td>
                </tr>
            </tbody>

            <?php $n++; endforeach; }?>
        </table>
        
        <?php
            if(gettype($rows) == "string"){
                echo "<p class='no_result'>'$rows'</p>";
            }
        ?>
    </div>
</div>