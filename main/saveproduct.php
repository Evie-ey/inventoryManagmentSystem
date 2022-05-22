<?php
session_start();
include('../connect.php');

$a = $_POST['code'];
$b = $_POST['name'];
$c = $_POST['gen_name'];
$d = $_POST['expiry_date'];
$e = $_POST['price'];
$f = $_POST['supplier'];
$g = $_POST['qty'];
$h = $_POST['o_price'];
$i = $_POST['profit'];
$j = $_POST['date_arrival'];
// $k = $_POST['qty_sold'];
// query
$sql = "INSERT INTO products (product_code,product_name,gen_name,expiry_date,price,supplier,qty,o_price,profit,date_arrival) VALUES (:a,:b,:c,:d,:e,:f,:g,:h,:i,:j)";
$q = $db->prepare($sql);

$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':e'=>$e,':f'=>$f,':g'=>$g,':h'=>$h,':i'=>$i,':j'=>$j));
header("location: products.php");


?>
