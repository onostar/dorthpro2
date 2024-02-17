<div id="add_bank" class="displays">
    <div class="info"></div>
    <div class="add_user_form" style="width:50%">
        <h3>Upload item quantity</h3>
        <form method="POST"  id="addCatForm" action="../controller/upload_quantity.php" enctype="multipart/form-data">
            <div class="inputs">
                <div class="data">
                    <label for="items">Upload Quantity</label>
                    <input type="file" name="items" id="items" style="background:var(--primaryColor); color:#fff">
                </div>
                
                <button type="submit">Upload <i class="fas fa-upload"></i></button>
            </div>
        </form>
    </div>
</div>
