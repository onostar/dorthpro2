<?php
    session_start();
    $store = $_SESSION['store_id'];
    include "../classes/dbh.php";
    include "../classes/select.php";
    if(isset($_SESSION['user_id'])){
        $user_id = $_SESSION['user_id'];
        // echo $user_id;

?>
<div id="direct_sales">
<div id="sales_form" class="displays all_details">
    <?php
        //generate receipt invoice
        //get current date
        $todays_date = date("dmyh");
        $random_num = random_int(10000, 99999);
        $invoice = "RT".$todays_date.$user_id.$random_num.$store;
        $_SESSION['invoice'] = $invoice;
    ?>
    
    <div class="add_user_form" style="width:50%; margin:10px 0; box-shadow:none">
        <h3 style="background:var(--primaryColor); color:#ff; text-align:left!important;" >Sales order <?php echo $invoice?></h3>
        
            <!-- search forms -->
        <!-- <form method="POST" id="addUserForm"> -->
            <section class="addUserForm">
                <div class="inputs">
                    <!-- bar items form -->
                    <div class="data" id="bar_items" style="width:100%; margin:2px 0">
                        <label for="item"> Search Items</label>
                        <input type="hidden" name="sales_invoice" id="sales_invoice" value="<?php echo $invoice?>">
                        <input type="hidden" name="staff" id="staff" value="<?php echo $staff?>">
                        <input type="text" name="item" id="item" required placeholder="Input item name or barcode" onkeyup="getItems(this.value)">
                        <div id="sales_item">
                            
                        </div>
                    </div>
                    
                </div>
            </section>
            
        </div>
    </div>

</div>
<!-- for editing item quantitiy and price -->
<div class="show_more"></div>
<!-- showing all items in the sales order -->
<div class="sales_order"></div>
<?php
    }else{
        header("Location: ../index.php");
    }
?>
</div>