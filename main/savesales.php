<?php
session_start();
include('../connect.php');
$a = $_POST['invoice'];
$b = $_POST['cashier'];
$c = $_POST['date'];
$d = $_POST['ptype'];
$e = $_POST['amount'];
$z = $_POST['profit'];
$cname = $_POST['cname'];
$category = trim($_POST['category']);
// $bal = 0
// if($d=='credit') {
// $f = $_POST['due'];
// $sql = "INSERT INTO sales (invoice_number,cashier,date,type,amount,profit,due_date,name, balance) VALUES (:a,:b,:c,:d,:e,:z,:f,:cname, :balance)";
// $q = $db->prepare($sql);
// $q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':e'=>$e,':z'=>$z,':f'=>$f,':cname'=>$cname, ':balance'=>$balance));
// header("location: preview.php?invoice=$a");
// exit();
// }
if($d=='cash') {
$f = $_POST['cash'];
$sql = "INSERT INTO sales (invoice_number,cashier,date,type,amount,profit,due_date,name, category) VALUES (:a,:b,:c,:d,:e,:z,:f,:cname,:category)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':e'=>$e,':z'=>$z,':f'=>$f,':cname'=>$cname, ':category'=>$category));
header("location: preview.php?invoice=$a");
exit();
}
// header("location: preview.php?invoice=$a");
// query



?>
