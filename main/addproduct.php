<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<form action="saveproduct.php" method="post" id="product-form" class="guform">
	<!-- <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post"> -->

<center><h4><i class="icon-plus-sign icon-large"></i> Add Product</h4></center>
<hr>
<!-- <span class = "error">* required field </span> -->
<br><br>
<div id="ac">
<span>Item Code : </span><input type="text" style="width:265px; height:30px;" value="RBH-<?php
$prefix= md5(time()*rand(1, 2)); echo strip_tags(substr($prefix ,0,4));?>" name="code" Readonly Required ><br>
<div>
	<span>Item Name : </span><input type="text" style="width:265px; height:30px;" name="name" id="product-name" Required />
</div>
<span>Category : </span>
<select name="gen_name"  style="width:265px; height:30px; margin-left:-5px;" id="category"  Required>
<option></option>
	<?php
	include('../connect.php');
	$result = $db->prepare("SELECT * FROM category");
		// $result->bindParam(':userid', $res);
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option><?php echo $row['name']; ?></option>
	<?php
	}
	?>
</select><br>
<span>Date Arrival: </span><input type="date" style="width:265px; height:30px;" placeholder="09/13/2017" class="tcal tcalInput"  name="date_arrival"  id="arrival-date"></input><br>
<span>Expiry Date : </span><input type="date" style="width:265px; height:30px;" placeholder="09/13/2017" class="tcal tcalInput" name="expiry_date" id="expiry-date" ></input><br>
<span>Selling Price : </span><input type="text" id="txt1" style="width:265px; height:30px;" name="price" onkeyup="sum();"  id="price"><br>
<span>Original Price : </span><input type="text" id="txt2" style="width:265px; height:30px;" name="o_price" onkeyup="sum();" id="original-price"><br>
<span>Profit : </span><input type="text" id="txt3" style="width:265px; height:30px;" name="profit" id="profit" readonly><br>
<span>Supplier : </span>
<select name="supplier"  style="width:265px; height:30px; margin-left:-5px;" id="supplier" >
<option></option>
	<?php
	include('../connect.php');
	$result = $db->prepare("SELECT * FROM supliers");
		// $result->bindParam(':userid', $res);
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option><?php echo $row['suplier_name']; ?></option>
	<?php
	}
	?>
</select><br>
<span>Quantity : </span><input type="number" style="width:265px; height:30px;" min="0" id="txt11" onkeyup="sum();" name="qty" id="qty" ><br>
<!-- <span></span><input type="hidden" style="width:265px; height:30px;" id="txt22" name="qty_sold" Required ><br> -->
<div style="float:right; margin-right:10px;">
<button class="btn btn-success btn-block btn-large" style="width:267px;"><i class="icon icon-save icon-large"></i> Save</button>
</div>
</div>
</form>

<script src="lib/jquery.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/additional-methods.js"></script>

<script type="text/javascript">
// 		let formValid = false
// $( document ).ready(function() {
// 	$("#product-form").validate();
	// $('form[id="product-form"]').validate({
  // rules: {
  //   product_name: 'required',
  //   category: 'required',
	// 	expiry_date:'required'
  // },
  // messages: {
  //   product_name: 'This field is required',
  //   category: 'This field is required',
  //   expiry_date: 'Enter a valid email',
  // },
  // submitHandler: function(form) {
  //   form.submit();
  // }
// });
	// $("#product-form").submit(function(e){
	// 	let product_name = $('#product-name').val();
  //   let category = $('#category').val();
  //   let expiry_date = $('#expiry-date').val();
  //   let arrival_date = $('#arrival-date').val();

	// 	let price = $('#price').val();
  //   let original_price = $('#original-price').val();
  //   let profit = $('#profit').val();
  //   let supplier = $('#supplier').val();

	// 	if (product_name.length < 1) {
  //     $('#product-name').after('<span class="form-error">Product name is required</span>');
	// 		formValid +="product_name"

  //   }
  //   if (category.length < 1) {
  //     $('#category').after('<span class="form-error">This field is required</span>');
  //   }

	// 	if(!formValid) {
	// 		e.preventDefault();
	// 		return
	// 	}
	// })

// });
</script>


<!-- ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL); -->
