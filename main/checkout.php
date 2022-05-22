<html>
<head>
<title>Checkout</title>
<script src="js/jquery-1.9.1.min.js"></script>
<!-- <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.js"></script> -->
<link href="lib/select2.min.css" rel="stylesheet" media="screen">
<script src="lib/select2.min.js"></script>
<script>
	$(function() {
    $('.js-example-basic-single').select2();

		$('.js-example-basic-single').select2({
     width: 'element',
    minimumResultsForSearch: Infinity
  });
});
});

function suggest(inputString){
		if(inputString.length == 0) {
			$('#suggestions').fadeOut();
		} else {
		$('#country').addClass('load');
			$.post("autosuggestname.php", {queryString: ""+inputString+""}, function(data){
				if(data.length >0) {
					$('#suggestions').fadeIn();
					$('#suggestionsList').html(data);
					$('#country').removeClass('load');
				}
			});
		}
	}

	function fill(thisValue) {
		$('#country').val(thisValue);
		setTimeout("$('#suggestions').fadeOut();", 600);
	}

</script>

<style>
#result {
	height:20px;
	font-size:16px;
	font-family:Arial, Helvetica, sans-serif;
	color:#333;
	padding:5px;
	margin-bottom:10px;
	background-color:#FFFF99;
}
#country{
	border: 1px solid #999;
	background: #EEEEEE;
	padding: 5px 10px;
	box-shadow:0 1px 2px #ddd;
    -moz-box-shadow:0 1px 2px #ddd;
    -webkit-box-shadow:0 1px 2px #ddd;
}
.suggestionsBox {
	position: absolute;
	left: 10px;
	margin: 0;
	width: 268px;
	top: 40px;
	padding:0px;
	background-color: #000;
	color: #fff;
}
.suggestionList {
	margin: 0px;
	padding: 0px;
}
.suggestionList ul li {
	list-style:none;
	margin: 0px;
	padding: 6px;
	border-bottom:1px dotted #666;
	cursor: pointer;
}
.suggestionList ul li:hover {
	background-color: #FC3;
	color:#000;
}
ul {
	font-family:Arial, Helvetica, sans-serif;
	font-size:11px;
	color:#FFF;
	padding:0;
	margin:0;
}

.load{
background-image:url(loader.gif);
background-position:right;
background-repeat:no-repeat;
}

#suggest {
	position:relative;
}
.combopopup{
	padding:3px;
	width:268px;
	border:1px #CCC solid;
}

</style>
</head>
<body onLoad="document.getElementById('country').focus();">
<form action="savesales.php" method="post">
<div id="ac">
<center><h4><i class="icon icon-money icon-large"></i> Cash</h4></center><hr>
<input type="hidden" name="date" value="<?php echo date("m/d/y"); ?>" />
<input type="hidden" name="invoice" value="<?php echo $_GET['invoice']; ?>" />
<input type="hidden" name="amount" value="<?php echo $_GET['total']; ?>" />
<input type="hidden" name="ptype" value="<?php echo $_GET['pt']; ?>" />
<input type="hidden" name="cashier" value="<?php echo $_GET['cashier']; ?>" />
<input type="hidden" name="profit" value="<?php echo $_GET['totalprof']; ?>" />
<input type="hidden" name="category" value="<?php
		include('../connect.php');
		$sdsd = $_GET['invoice'];
		$resulta = $db->prepare("SELECT gen_name FROM sales_order WHERE invoice= :b");
		$resulta->bindParam(':b', $sdsd);
		$resulta->execute();
		echo trim($resulta->fetch()[0]);
		// for($i=0; $qwe = $resulta->fetch(); $i++){
		// $asd=$qwe['gen_name'];
		// echo trim($asd);
		// }
		?>" />
<center>
<div>
	<select name="cname" class=""  style="width:179px; height: 38" required >
	<option>Select Customer</option>
		<?php
		include('../connect.php');
		$result = $db->prepare("SELECT * FROM customer ORDER BY customer_id DESC");
			$result->execute();
			for($i=0; $row = $result->fetch(); $i++){
		?>
			<option value="<?php echo $row['customer_name'];?>"><?php echo $row['customer_name']; ?> </option>
		<?php
					}
				?>
	</select>
	<button type="button" style="width:84px; margin-left: 12px; margin-bottom: 8px" ><a href="customer.php" style="font-size: 13px; color: #4e4040;">+ customer</a></button>
	<p><small style="font-size: 14px;" >Add new customer if customer does not exist</small></p>
<div>

<!-- <input type="text" size="25" value="" name="cname" id="country" onkeyup="suggest(this.value);" onblur="fill();" class="" autocomplete="off" placeholder="Enter Customer Name" style="width: 268px; height:30px;" />

      <div class="suggestionsBox" id="suggestions" style="display: none;">
        <div class="suggestionList" id="suggestionsList"> &nbsp; </div>
      </div> -->
<?php
$asas=$_GET['pt'];
if($asas=='credit') {
?>Due Date: <input type="date" name="due" placeholder="Due Date" style="width: 268px; height:30px; margin-bottom: 15px;" /><br>
<?php
}
if($asas=='cash') {
?>

<input type="number" name="cash" placeholder="Cash" style="width: 268px; height:30px;  margin-bottom: 15px;"  required/><br>
<?php
}
?><button type="submit" class="btn btn-success btn-block btn-large" style="width:267px;"><i class="icon icon-save icon-large"></i> Save</button>
</center>
</div>
</form>
</body>
</html>
