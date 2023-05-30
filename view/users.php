<?php
    session_start();

    include "../classes/dbh.php";
    include "../classes/select.php";

    if(isset($_SESSION['user'])){
        $username = $_SESSION['user'];
        // instantiate classes
        $fetch_user = new selects();
        $users = $fetch_user->fetch_details_cond('users', 'username', $username);
        foreach($users as $user){
            $fullname = $user->full_name;
            $role = $user->user_role;
            $user_id = $user->user_id;
        }
        $_SESSION['user_id'] = $user_id;

        /* get company */
        $fetch_comp = new selects();
        $comps = $fetch_comp->fetch_details('companies');
        foreach($comps as $com){
            $company = $com->company;
            $comp_id = $com->company_id;
        }
        $_SESSION['company_id'] = $comp_id;
        $_SESSION['company'] = $company;
    
        /* get store */
        $get_store = new selects();
        $strs = $get_store->fetch_details('stores');
        foreach($strs as $str){
            $store = $str->store;
            $store_id = $str->store_id;
            $store_address = $str->store_address;
            $phone = $str->phone_number;
        }
        $_SESSION['store_id'] = $store_id;
        $_SESSION['store'] = $store;
        $_SESSION['address'] = $store_address;
        $_SESSION['phone'] = $phone;
        // }
    // echo $menus;
        
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="keywords" content="Inventory system, point of sales, inventory and sales management, retail, supermarket software, sales application">
    <meta name="description" content="An online/offline inventory and sales management software for retail and wholesale stores and pharmacies, stock register, etc">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sales & Inventory Management</title>
    <link rel="icon" type="image/png" size="32x32" href="../images/icon.png">
    <link rel="stylesheet" href="../fontawesome-free-6.0.0-web/css/all.css">
    <link rel="stylesheet" href="../fontawesome-free-6.0.0-web/css/all.min.css">
    <link rel="stylesheet" href="../fontawesome-free-5.15.1-web/css/all.min.css">
    <link rel="stylesheet" href="../style.css">
</head>
<body>
    <main>
        <header>
            <div class="menu_icon" id="menu_icon">
                <a href="javascript:void(0)"><i class="fas fa-bars"></i></a>
            </div>
            <h1 class="logo">
                <a href="users.php" title="Logistics">
                    <img src="../images/logo.png" alt="Logo" class="img-fluid">
                </a>
            </h1>
            <h2><?php echo $company?></h2>
            <!-- <div class="other_menu">
                <a href="#" title="Our Gallery"><?php echo ucwords($role);?></a>
            </div> -->
            <a href="#" title="my role" class="other_menu"><?php echo ucwords($store);?></a>

            <div class="login">
                
                <button id="loginDiv"><i class="far fa-user"></i> <?php echo ucwords($fullname);?> <i class="fas fa-chevron-down"></i><br><p><?php echo ucwords($role);?></p></button>
                
                <div class="login_option">
                    <div>
                        <a class="password_link page_navs" href="javascript:void(0)" data-page="update_password" onclick="showPage('update_password.php')">Change password <i class="fas fa-key"></i></a>
                        <button id="loginBtn"><a href="../controller/logout.php">Log out <i class="fas fa-power-off"></i></a></button>
                    </div>
                </div>
            </div>
            
        </header>
        <div class="admin_main">
            
            <!-- side menu -->
            <?php include "side_menu.php"?>
            <!-- main contents -->
            <section id="contents">
                <!-- quick links -->
                <div id="quickLinks">
                    <div class="quick_links">
                        <!-- check if sales right exist -->
                        <?php 
                            $get_rights = new selects();
                            $row = $get_rights->fetch_count_2cond('rights', 'user', $user_id, 'sub_menu', "12");
                            if($row > 0 || $role == "Admin"){
                        ?>
                        <div class="links page_navs" onclick="showPage('direct_sales.php')" title="Make Direct retail sales">
                            <i class="fas fa-pen-alt"></i>
                            <!-- <p>Direct sales</p> -->
                        </div>
                        <?php }?>
                        <?php 
                            $get_rights = new selects();
                            $row = $get_rights->fetch_count_2cond('rights', 'user', $user_id, 'sub_menu', "13");
                            if($row > 0){
                        ?>
                        <div class="links page_navs" onclick="showPage('sales_order.php')" title="Make a sales order">
                            <i class="fas fa-pen-alt"></i>
                            <!-- <p>Direct sales</p> -->
                        </div>
                        <?php }?>
                        <div class="links page_navs" onclick="showPage('expire_soon.php')" title="Soon to expire">
                            <i class="fas fa-chart-line" style="color:green"></i>
                            <p>
                                <?php
                                    $get_soon_expired = new selects();
                                    $soon_expired = $get_soon_expired->fetch_expire_soon('items', 'expiration_date', 'quantity');
                                    echo $soon_expired;
                                ?>
                            </p>
                        </div>
                        <div class="links page_navs" onclick="showPage('expired_items.php')" title="Expired items">
                            <i class="fas fa-list" style="color:red"></i>
                            <p style="color:red">
                                <?php
                                    $get_expired = new selects();
                                    $expired = $get_expired->fetch_expired('items', 'expiration_date', 'quantity');
                                    echo $expired;
                                ?>
                            </p>
                        </div>
                        <div class="links page_navs" onclick="showPage('reached_reorder.php')" title="Reached reorder level">
                            <i class="fas fa-door-open"></i>
                            <p>
                                <?php
                                    $get_level = new selects();
                                    $levels = $get_level->fetch_lesser('items', 'quantity', 'reorder_level');
                                    echo $levels;
                                ?>
                            </p>
                        </div>
                        <div class="links page_navs" onclick="showPage('out_of_stock.php')" title="Out of stock">
                            <i class="fas fa-drum" style="color:red"></i>
                            <p style="color:red">
                                <?php
                                    $out_stock = new selects();
                                    $stock = $out_stock->fetch_count_cond('items', 'quantity', 0);
                                    echo $stock;
                                ?>
                            </p>
                        </div>
                    </div>
                </div>
                <!-- <div class="quick_links">

                </div> -->

                <div class="contents">

                    <?php
                        if(isset($_SESSION['success'])){
                            echo "<div class='success'>".
                                $_SESSION['success'].
                            "</div>";
                            unset($_SESSION['success']);
                        }
                    ?>
                    <?php
                        if(isset($_SESSION['error'])){
                            echo "<div class='error'>".
                                $_SESSION['error'].
                            "</div>";
                            unset($_SESSION['error']);
                        }
                    ?>
                    <!-- dashboard -->
                    <?php include "dashboard.php"?>
                </div>
            </section>
        </div>
    </main>
    
    <script src="../jquery.js"></script>
    <script src="../jquery.table2excel.js"></script>
    <script src="../script.js"></script>
    <script>
        
            setTimeout(function(){
                $(".success").hide();
            }, 4000);
            setTimeout(function(){
                $(".error").hide();
            }, 4000);

            /* let today = new Date();
            alert(today.toLocaleDateString()); */
            //toggle mobile menu
            
    </script>
</body>
</html>


<?php
    }else{
        header("Location: ../index.php");
    }

?>