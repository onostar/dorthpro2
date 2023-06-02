<?php
    // session_start();
    class inserts extends Dbh{
        //check user exists method
        protected function checkUser($username){
            $check_user = $this->connectdb()->prepare("SELECT * FROM users WHERE username = :username");
            $check_user->bindValue("username", $username);
            $check_user->execute();

            if($check_user->rowCount() > 0){
                echo "<p class='exist'><span>$username</span> already exists!</p>";
                die();
            }
        }

        //insert user into database
        protected function setUser($fullname, $username, $role, $store, $password){
            $set_user = $this->connectdb()->prepare("INSERT INTO users (full_name, username, user_role, store, user_password) VALUES (:full_name, :username, :user_role, :store, :user_password)");
            $set_user->bindValue("full_name", $fullname);
            $set_user->bindValue("username", $username);
            $set_user->bindValue("user_role", $role);
            $set_user->bindValue("store", $store);
            $set_user->bindValue("user_password", $password);
            $set_user->execute();
            if($set_user){
                echo "<p><span>$username</span> created successfully!</p>";
            }
        }

        //insert category

        
        //add single items
        protected function add_single($table, $column, $item){
            //check if exits exists
            $check_item = $this->connectdb()->prepare("SELECT * FROM $table WHERE $column = :$column");
            $check_item->bindValue("$column", $item);
            $check_item->execute();
            if(!$check_item->rowCount() > 0){
                $add_item = $this->connectdb()->prepare("INSERT INTO $table ($column) VALUES (:$column)");
                $add_item->bindValue("$column", $item);
                $add_item->bindValue("$column", $item);
                $add_item->execute();
                if($add_item){
                    echo "<p><span>$item</span> Created successfully!</p>";
                }else{
                    echo "<p class='exist'><span>$item</span> could not be createda!</p>";
                }
            }else{
                echo "<p class='exist'><span>$item</span> already exists!</p>";
            }
            
        }
        
        //add categeories
        protected function add_categories($value1, $value2){
            //check if item exists
            $check_item = $this->connectdb()->prepare("SELECT * FROM categories WHERE department = :department AND category = :category");
            $check_item->bindValue("department", $value1);
            $check_item->bindValue("category", $value2);
            $check_item->execute();
            if($check_item->rowCount() > 0){
                echo "<p class='exist'><span>$value2</span> already exists!</p>";
                die();
                
            }else{
                $add_item = $this->connectdb()->prepare("INSERT INTO categories (department, category) VALUES (:department, :category)");
                $add_item->bindValue("department", $value1);
                $add_item->bindValue("category", $value2);
                $add_item->execute();
                if($add_item){
                    echo "<p><span>$value2</span> added successfully!</p>";
                }else{
                    echo "<p class='exist'><span>$value2</span> could not be created!</p>";
                }
            }
            
        }
        //add rights to user
        protected function add_rights($user, $menu, $sub_menu){
            //check if rights exists for user
            $check_right = $this->connectdb()->prepare("SELECT * FROM rights WHERE user = :user AND sub_menu = :sub_menu");
            $check_right->bindValue("user", $user);
            $check_right->bindValue("sub_menu", $sub_menu);
            $check_right->execute();
            if($check_right->rowCount() > 0){
                echo "<p class='exist'>User already have this right!</p>";
                die();
                
            }else{
                $add_right = $this->connectdb()->prepare("INSERT INTO rights (user, menu, sub_menu) VALUES (:user, :menu, :sub_menu)");
                $add_right->bindValue("user", $user);
                $add_right->bindValue("menu", $menu);
                $add_right->bindValue("sub_menu", $sub_menu);
                $add_right->execute();
                
            }
            
        }
        //Insert into audit trail
        protected function audit($item, $trans, $prev_qty, $qty, $posted, $store){
            
            $audit = $this->connectdb()->prepare("INSERT INTO audit_trail (item, transaction, previous_qty, quantity, posted_by, store) VALUES (:item, :transaction, :previous_qty, :quantity, :posted_by, :store)");
            $audit->bindValue("item", $item);
            $audit->bindValue("transaction", $trans);
            $audit->bindValue("previous_qty", $prev_qty);
            $audit->bindValue("quantity", $qty);
            $audit->bindValue("posted_by", $posted);
            $audit->bindValue("store", $store);
            $audit->execute();
            
        
            
        }
        //add items
        protected function add_items($value1, $value2, $value3, $value4, $value5){
            //check if item exists
            $check_item = $this->connectdb()->prepare("SELECT * FROM items WHERE department = :department AND category = :category AND item_name = :item_name");
            $check_item->bindValue("department", $value1);
            $check_item->bindValue("category", $value2);
            $check_item->bindValue("item_name", $value3);
            $check_item->execute();
            if($check_item->rowCount() > 0){
                echo "<p class='exist'><span>$value3</span> already exists!</p>";
                die();
                
            }else{
                $add_item = $this->connectdb()->prepare("INSERT INTO items (department, category, item_name, barcode, reorder_level) VALUES (:department, :category, :item_name, :barcode, :reorder_level)");
                $add_item->bindValue("department", $value1);
                $add_item->bindValue("category", $value2);
                $add_item->bindValue("item_name", $value3);
                $add_item->bindValue("barcode", $value4);
                $add_item->bindValue("reorder_level", $value5);
                $add_item->execute();
                if($add_item){
                    echo "<p><span>$value3</span> added successfully!</p>";
                }else{
                    echo "<p class='exist'><span>$value3</span> could not be created!</p>";
                }
            }
            
        }
        //add stores
        protected function add_stores($value1, $value2, $value3, $value4){
            //check if item exists
            $check_item = $this->connectdb()->prepare("SELECT * FROM stores WHERE company = :company AND store = :store");
            $check_item->bindValue("company", $value1);
            $check_item->bindValue("store", $value2);
            $check_item->execute();
            if($check_item->rowCount() > 0){
                echo "<p class='exist'><span>$value2</span> already exists!</p>";
                die();
                
            }else{
                $add_item = $this->connectdb()->prepare("INSERT INTO stores (company, store, store_address, phone_number) VALUES (:company, :store, :store_address, :phone_number)");
                $add_item->bindValue("company", $value1);
                $add_item->bindValue("store", $value2);
                $add_item->bindValue("store_address", $value3);
                $add_item->bindValue("phone_number", $value4);
                $add_item->execute();
                if($add_item){
                    echo "<p><span>$value2</span> created successfully!</p>";
                }else{
                    echo "<p class='exist'><span>$value2</span> could not be created!</p>";
                }
            }
            
        }
        //add staffs
        protected function add_staffs($value1, $value2, $value3){
            //check if item exists
            $check_item = $this->connectdb()->prepare("SELECT * FROM staffs WHERE staff_name = :staff_name OR phone_number = :phone_number");
            $check_item->bindValue("staff_name", $value1);
            $check_item->bindValue("phone_number", $value2);
            $check_item->execute();
            if($check_item->rowCount() > 0){
                echo "<p class='exist'><span>$value1</span> already exists!</p>";
                die();
                
            }else{
                $add_item = $this->connectdb()->prepare("INSERT INTO staffs (staff_name, phone_number, home_address) VALUES (:staff_name, :phone_number, :home_address)");
                $add_item->bindValue("staff_name", $value1);
                $add_item->bindValue("phone_number", $value2);
                $add_item->bindValue("home_address", $value3);
                $add_item->execute();
                if($add_item){
                    echo "<p><span>$value1</span> added successfully!</p>";
                }else{
                    echo "<p class='exist'><span>$value1</span> could not be created!</p>";
                }
            }
            
        }
        //add vendors
        protected function add_vendors($value1, $value2, $value3, $value4){
            //check if item exists
            $check_item = $this->connectdb()->prepare("SELECT * FROM vendors WHERE vendor = :vendor");
            $check_item->bindValue("vendor", $value1);
            $check_item->execute();
            if($check_item->rowCount() > 0){
                echo "<p class='exist'><span>$value1</span> already exists!</p>";
                die();
                
            }else{
                $add_vendor = $this->connectdb()->prepare("INSERT INTO vendors (vendor, contact_person, phone, email_address) VALUES (:vendor, :contact_person, :phone, :email_address)");
                $add_vendor->bindValue("vendor", $value1);
                $add_vendor->bindValue("contact_person", $value2);
                $add_vendor->bindValue("phone", $value3);
                $add_vendor->bindValue("email_address", $value4);
                $add_vendor->execute();
                if($add_vendor){
                    echo "<p><span>$value1</span> created successfully!</p>";
                }else{
                    echo "<p class='exist'><span>$value1</span> could not be created!</p>";
                }
            }
            
        }
        //Post expense
        protected function post_expense($value1, $value2, $value3, $value4, $value5){
            
            $add_exp = $this->connectdb()->prepare("INSERT INTO expenses (posted_by, expense_date, expense_head, amount, details) VALUES (:posted_by, :expense_date, :expense_head, :amount, :details)");
            $add_exp->bindValue("posted_by", $value1);
            $add_exp->bindValue("expense_date", $value2);
            $add_exp->bindValue("expense_head", $value3);
            $add_exp->bindValue("amount", $value4);
            $add_exp->bindValue("details", $value5);
            $add_exp->execute();
            if($add_exp){
                echo "<p>Expense Posted successfully!</p>";
            }else{
                echo "<p class='exist'><span>$value1</span> could not be created!</p>";
            }
            
            
        }
        //Adjust quantity
        protected function adjust_qty($value1, $value2, $value3, $value4, $value5){
            
            $adjust = $this->connectdb()->prepare("INSERT INTO stock_adjustments (item, adjusted_by, previous_qty, new_qty, store) VALUES (:item, :adjusted_by, :previous_qty, :new_qty, :store)");
            $adjust->bindValue("item", $value1);
            $adjust->bindValue("adjusted_by", $value2);
            $adjust->bindValue("previous_qty", $value3);
            $adjust->bindValue("new_qty", $value4);
            $adjust->bindValue("store", $value5);
            $adjust->execute();
            
            
        }
        //Remove item quantity
        protected function remove_qty($value1, $value2, $value3, $value4, $value5, $value6){
            
            $remove = $this->connectdb()->prepare("INSERT INTO remove_items (item, quantity, reason, removed_by, previous_qty, store) VALUES (:item, :quantity, :reason, :removed_by, :previous_qty, :store)");
            $remove->bindValue("item", $value1);
            $remove->bindValue("quantity", $value2);
            $remove->bindValue("reason", $value3);
            $remove->bindValue("removed_by", $value4);
            $remove->bindValue("previous_qty", $value5);
            $remove->bindValue("store", $value6);
            $remove->execute();
            
            
        }
        //add banks
        protected function add_bank($value1, $value2){
            //check if item exists
            $check_item = $this->connectdb()->prepare("SELECT * FROM banks WHERE bank = :bank AND account_number = :account_number");
            $check_item->bindValue("bank", $value1);
            $check_item->bindValue("account_number", $value2);
            $check_item->execute();
            if($check_item->rowCount() > 0){
                echo "<p class='exist'>This <span>$value1 Account</span> already exists!</p>";
                die();
                
            }else{
                $add_item = $this->connectdb()->prepare("INSERT INTO banks (bank, account_number) VALUES (:bank, :account_number)");
                $add_item->bindValue("bank", $value1);
                $add_item->bindValue("account_number", $value2);
                $add_item->execute();
                if($add_item){
                    echo "<p><span>$value1</span> added successfully!</p>";
                }else{
                    echo "<p class='exist'><span>$value1</span> could not be created!</p>";
                }
            }
            
        }

        //insert multiple payment
        protected function multiple_pay($posted, $invoice, $cash, $pos, $transfer, $bank){
            $check_in = $this->connectdb()->prepare("INSERT INTO multiple_payments (posted_by, invoice, cash, pos, transfer, bank) VALUES (:posted_by, :invoice, :cash, :pos, :transfer, :bank)");
            $check_in->bindvalue("invoice", $invoice);
            $check_in->bindvalue("cash", $cash);
            $check_in->bindvalue("pos", $pos);
            $check_in->bindvalue("transfer", $transfer);
            $check_in->bindvalue("bank", $bank);
            
            $check_in->bindvalue("posted_by",$posted);
            $check_in->execute();
            
        }
        //post payment
        protected function post_payment($posted, $mode, $bank, $amount_due, $amount_paid, $discount, $invoice){
            
            $payment = $this->connectdb()->prepare("INSERT INTO payments (amount_due, amount_paid, discount, bank, payment_mode, posted_by, invoice) VALUES (:amount_due, :amount_paid, :discount, :bank, :payment_mode, :posted_by, :invoice)");
            $payment->bindValue("amount_due", $amount_due);
            $payment->bindValue("amount_paid", $amount_paid);
            $payment->bindValue("discount", $discount);
            $payment->bindValue("bank", $bank);
            $payment->bindValue("payment_mode", $mode);
            $payment->bindValue("posted_by", $posted);
            $payment->bindValue("invoice", $invoice);
            $payment->execute();
            
        }

        //stock in item quantity
        protected function stockin_item($posted, $store, $item, $vendor, $invoice, $quantity, $cost, $sales, $expiration){
            $stockin = $this->connectdb()->prepare("INSERT INTO purchases (item, invoice, vendor, cost_price, sales_price, quantity, expiration_date, posted_by, store) VALUES (:item, :invoice, :vendor, :cost_price, :sales_price, :quantity, :expiration_date, :posted_by, :store)");
            $stockin->bindvalue("item", $item);
            $stockin->bindvalue("invoice", $invoice);
            $stockin->bindvalue("vendor", $vendor);
            $stockin->bindvalue("cost_price", $cost);
            $stockin->bindvalue("sales_price", $sales);
            $stockin->bindvalue("quantity", $quantity);
            $stockin->bindvalue("expiration_date", $expiration);
            $stockin->bindvalue("posted_by", $posted);
            $stockin->bindvalue("store", $store);
            $stockin->execute();
        }
        //Transfer item to store
        protected function transfer_item($posted, $store_from, $store_to, $item, $invoice, $quantity, $cost, $expiration){
            $transfer = $this->connectdb()->prepare("INSERT INTO transfers (item, invoice, from_store, to_store, quantity, cost_price, posted_by, expiration) VALUES (:item, :invoice, :from_store, :to_store, :quantity, :cost_price, :posted_by, :expiration)");
            $transfer->bindvalue("item", $item);
            $transfer->bindvalue("invoice", $invoice);
            $transfer->bindvalue("quantity", $quantity);
            $transfer->bindvalue("cost_price", $cost);
            $transfer->bindvalue("posted_by", $posted);
            $transfer->bindvalue("from_store", $store_from);
            $transfer->bindvalue("to_store", $store_to);
            $transfer->bindvalue("expiration", $expiration);
            $transfer->execute();
        }
        //add item quantity to inventory
        protected function add_inventory($store, $item, $cost, $quantity, $expiration, $reorder){   
            $stockin = $this->connectdb()->prepare("INSERT INTO inventory (item, store, cost_price, quantity, expiration_date, reorder_level) VALUES (:item, :store, :cost_price, :quantity, :expiration_date, :reorder_level)");
            $stockin->bindvalue("item", $item);
            $stockin->bindvalue("cost_price", $cost);
            $stockin->bindvalue("quantity", $quantity);
            $stockin->bindvalue("expiration_date", $expiration);
            $stockin->bindvalue("store", $store);
            $stockin->bindvalue("reorder_level", $reorder);
            $stockin->execute();
        }
        //add item to sales
        protected function post_sales($posted, $item, $invoice, $quantity, $price, $amount, $cost){
            // check if item already exist
            $confirm_check  = $this->connectdb()->prepare("SELECT * FROM sales WHERE invoice = :invoice AND item = :item");
            $confirm_check->bindValue("invoice", $invoice);
            $confirm_check->bindValue("item", $item);
            $confirm_check->execute();
            if(!$confirm_check->rowCount() > 0){
                $add_sales = $this->connectdb()->prepare("INSERT INTO sales (item, invoice, price, total_amount, quantity, posted_by, cost) VALUES (:item, :invoice, :price, :total_amount, :quantity, :posted_by, :cost)");
                $add_sales->bindvalue("item", $item);
                $add_sales->bindvalue("invoice", $invoice);
                $add_sales->bindvalue("price", $price);
                $add_sales->bindvalue("total_amount", $amount);
                $add_sales->bindvalue("quantity", $quantity);
                $add_sales->bindvalue("posted_by", $posted);
                $add_sales->bindvalue("cost", $cost);
                $add_sales->execute();
            }else{
                echo "<div class='notify'><p>Item already exists in sales order</p></div>";
            }
        }
        //sales return
        protected function sales_return($value1, $value2, $value3, $value4, $value5, $value6){
            $return_sales = $this->connectdb()->prepare("INSERT INTO sales_returns (item, quantity, amount, reason, returned_by, invoice) VALUES (:item, :quantity, :amount, :reason, :returned_by, :invoice)");
            $return_sales->bindValue("item", $value1);
            $return_sales->bindValue("quantity", $value2);
            $return_sales->bindValue("amount", $value3);
            $return_sales->bindValue("reason", $value4);
            $return_sales->bindValue("returned_by", $value5);
            $return_sales->bindValue("invoice", $value6);
            $return_sales->execute();
        
            
        }
    }


    // add user controller
    class Add_userController extends inserts{
        private $fullname;
        private $username;
        private $role;
        private $store;
        private $password;

        public function __construct($fullname, $username, $role, $store, $password)
        {
            $this->fullname = $fullname;
            $this->username = $username;
            $this->role = $role;
            $this->store = $store;
            $this->password = $password;
        }

        public function create_user(){
            $this->checkUser($this->username);
            $this->setUser($this->fullname, $this->username, $this->role, $this->store, $this->password);
        }
    }

    

    //add single items controller
    class add_single_item extends inserts{
        private $table;
        private $column1;
        private $value1;

        public function __construct($table, $column1, $value1)
        {
            $this->table = $table;
            $this->column1 = $column1;
            $this->value1 = $value1;
        }
        public function create_single_item(){
            $this->add_single($this->table, $this->column1, $this->value1);
        }
    }
    //add categories controller
    class add_cats extends inserts{
        private $value1;
        private $value2;

        public function __construct($value1, $value2)
        {
            $this->value1 = $value1;
            $this->value2 = $value2;
        }
        public function create_category(){
            $this->add_categories($this->value1, $this->value2);
        }
    }
    //add user rights controller
    class add_rights extends inserts{
        private $user;
        private $menu;
        private $sub_menu;

        public function __construct($user, $menu, $sub_menu)
        {
            $this->user = $user;
            $this->menu = $menu;
            $this->sub_menu = $sub_menu;
        }
        public function add_right(){
            $this->add_rights($this->user, $this->menu, $this->sub_menu);
        }
    }
    //add audit trail controller
    class audit_trail extends inserts{
        private $item;
        private $trans;
        private $prev_qty;
        private $qty;
        private $posted;
        private $store;

        public function __construct($item, $trans, $prev_qty, $qty, $posted, $store)
        {
            $this->item = $item;
            $this->trans = $trans;
            $this->prev_qty = $prev_qty;
            $this->qty = $qty;
            $this->posted = $posted;
            $this->store = $store;
        }
        public function audit_trail(){
            $this->audit($this->item, $this->trans, $this->prev_qty, $this->qty, $this->posted, $this->store);
        }
    }
    //add bank controller
    class add_banks extends inserts{
        private $value1;
        private $value2;

        public function __construct($value1, $value2)
        {
            $this->value1 = $value1;
            $this->value2 = $value2;
        }
        public function create_bank(){
            $this->add_bank($this->value1, $this->value2);
        }
    }

    //controller for multiple payment
    class multiple_payment extends inserts{
        private $posted;
        private $invoice;
        private $cash;
        private $pos;
        private $transfer;
        private $bank;
        public function __construct($posted, $invoice, $cash, $pos, $transfer, $bank)
        {
            $this->posted = $posted;
            $this->invoice = $invoice;
            $this->cash = $cash;
            $this->pos = $pos;
            $this->transfer = $transfer;
            $this->bank = $bank;
        }

        public function multi_pay(){
            $this->multiple_pay($this->posted, $this->invoice, $this->cash, $this->pos, $this->transfer, $this->bank);
        }
    }

    //controller for payments
    class payments extends inserts{
        private $posted;
        private $mode;
        private $bank;
        private $amount_due;
        private $amount_paid;
        private $discount;
        private $invoice;

        public function __construct($posted, $mode, $bank, $amount_due, $amount_paid, $discount, $invoice)
        {
            $this->posted = $posted;
            $this->mode = $mode;
            $this->bank = $bank;
            $this->amount_due = $amount_due;
            $this->amount_paid = $amount_paid;
            $this->discount = $discount;
            $this->invoice = $invoice;
        }

        public function payment(){
            $this->post_payment($this->posted, $this->mode, $this->bank, $this->amount_due, $this->amount_paid, $this->discount, $this->invoice);
        }
    }

    // controller for adding new items
    class add_items extends inserts{
        private $value1;
        private $value2;
        private $value3;
        private $value4;
        private $value5;

        public function __construct($value1, $value2, $value3, $value4, $value5)
        {
            $this->value1 = $value1;
            $this->value2 = $value2;
            $this->value3 = $value3;
            $this->value4 = $value4;
            $this->value5 = $value5;
        }
        public function create_item(){
            $this->add_items($this->value1, $this->value2, $this->value3, $this->value4, $this->value5);
        }
    }
    // controller for adding new stores
    class add_store extends inserts{
        private $value1;
        private $value2;
        private $value3;
        private $value4;

        public function __construct($value1, $value2, $value3, $value4)
        {
            $this->value1 = $value1;
            $this->value2 = $value2;
            $this->value3 = $value3;
            $this->value4 = $value4;
        }
        public function create_store(){
            $this->add_stores($this->value1, $this->value2, $this->value3, $this->value4);
        }
    }
    // controller for adding staffs
    class add_staff extends inserts{
        private $value1;
        private $value2;
        private $value3;

        public function __construct($value1, $value2, $value3)
        {
            $this->value1 = $value1;
            $this->value2 = $value2;
            $this->value3 = $value3;
        }
        public function create_staff(){
            $this->add_staffs($this->value1, $this->value2, $this->value3);
        }
    }
    // controller for adding new supplier
    class add_suppliers extends inserts{
        private $value1;
        private $value2;
        private $value3;
        private $value4;

        public function __construct($value1, $value2, $value3, $value4)
        {
            $this->value1 = $value1;
            $this->value2 = $value2;
            $this->value3 = $value3;
            $this->value4 = $value4;
        }
        public function create_vendor(){
            $this->add_vendors($this->value1, $this->value2, $this->value3, $this->value4);
        }
    }
    // controller for posting expense
    class post_expense extends inserts{
        private $value1;
        private $value2;
        private $value3;
        private $value4;
        private $value5;

        public function __construct($value1, $value2, $value3, $value4, $value5)
        {
            $this->value1 = $value1;
            $this->value2 = $value2;
            $this->value3 = $value3;
            $this->value4 = $value4;
            $this->value5 = $value5;
        }
        public function add_expense(){
            $this->post_expense($this->value1, $this->value2, $this->value3, $this->value4, $this->value5);
        }
    }
    // controller for stock adjustment
    class stock_adjustment extends inserts{
        private $value1;
        private $value2;
        private $value3;
        private $value4;
        private $value5;

        public function __construct($value1, $value2, $value3, $value4, $value5)
        {
            $this->value1 = $value1;
            $this->value2 = $value2;
            $this->value3 = $value3;
            $this->value4 = $value4;
            $this->value5 = $value5;
        }
        public function adjust(){
            $this->adjust_qty($this->value1, $this->value2, $this->value3, $this->value4, $this->value5);
        }
    }
    // controller for remove item quantity
    class remove_qty extends inserts{
        private $value1;
        private $value2;
        private $value3;
        private $value4;
        private $value5;
        private $value6;

        public function __construct($value1, $value2, $value3, $value4, $value5, $value6)
        {
            $this->value1 = $value1;
            $this->value2 = $value2;
            $this->value3 = $value3;
            $this->value4 = $value4;
            $this->value5 = $value5;
            $this->value6 = $value6;
        }
        public function remove(){
            $this->remove_qty($this->value1, $this->value2, $this->value3, $this->value4, $this->value5, $this->value6);
        }
    }

    //controller for stocin of items
    class stockins extends inserts{
        private $item;
        private $vendor;
        private $invoice;
        private $quantity;
        private $cost;
        private $sales;
        private $expiration;
        private $posted;
        private $store;

        public function __construct($item, $vendor, $invoice, $quantity, $cost, $sales, $expiration, $posted, $store)
        {
            $this->item = $item;
            $this->vendor = $vendor;
            $this->invoice = $invoice;
            $this->quantity = $quantity;
            $this->cost = $cost;
            $this->sales = $sales;
            $this->expiration = $expiration;
            $this->posted = $posted;
            $this->store = $store;
        }

        public function stockin(){
            $this->stockin_item($this->posted, $this->store, $this->item, $this->vendor, $this->invoice, $this->quantity, $this->cost, $this->sales, $this->expiration);
        }
    }
    //controller for transfer of items
    class transfers extends inserts{
        private $item;
        private $invoice;
        private $quantity;
        private $posted;
        private $store_from;
        private $store_to;
        private $cost;
        private $expiration;

        public function __construct($item, $invoice, $quantity, $posted, $cost, $store_from, $store_to, $expiration)
        {
            $this->item = $item;
            $this->invoice = $invoice;
            $this->quantity = $quantity;
            $this->posted = $posted;
            $this->store_from = $store_from;
            $this->store_to = $store_to;
            $this->cost = $cost;
            $this->expiration = $expiration;
        }

        public function transfer(){
            $this->transfer_item($this->posted, $this->store_from, $this->store_to, $this->item, $this->invoice, $this->quantity, $this->cost, $this->expiration);
        }
    }
    //controller for adding items to inventory
    class add_inventory extends inserts{
        private $item;
        private $quantity;
        private $cost;
        private $expiration;
        private $store;
        private $reorder;

        public function __construct($item, $quantity, $cost, $expiration, $store, $reorder)
        {
            $this->item = $item;
            $this->quantity = $quantity;
            $this->cost = $cost;
            $this->expiration = $expiration;
            $this->store = $store;
            $this->reorder = $reorder;
        }

        public function insert_inventory(){
            $this->add_inventory($this->store, $this->item, $this->cost, $this->quantity, $this->expiration, $this->reorder);
        }
    }
    //controller for adding sales
    class post_sales extends inserts{
        private $item;
        // private $staff;
        private $invoice;
        private $quantity;
        private $price;
        private $amount;
        private $posted;
        private $cost;

        public function __construct($item, $invoice, $quantity, $price, $amount, $posted, $cost)
        {
            $this->item = $item;
            // $this->staff = $staff;
            $this->invoice = $invoice;
            $this->quantity = $quantity;
            $this->price = $price;
            $this->amount = $amount;
            $this->posted = $posted;
            $this->cost = $cost;
        }

        public function add_sales(){
            $this->post_sales($this->posted, $this->item, $this->invoice, $this->quantity, $this->price, $this->amount, $this->cost);
        }
    }

    // controller for sales return
    class sales_return extends inserts{
        private $value1;
        private $value2;
        private $value3;
        private $value4;
        private $value5;
        private $value6;

        public function __construct($value1, $value2, $value3, $value4, $value5, $value6)
        {
            $this->value1 = $value1;
            $this->value2 = $value2;
            $this->value3 = $value3;
            $this->value4 = $value4;
            $this->value5 = $value5;
            $this->value6 = $value6;
        }
        public function return_sales(){
            $this->sales_return($this->value1, $this->value2, $this->value3, $this->value4, $this->value5, $this->value6);
        }
    }
