<?php
require_once '../connect.php';
$stmt = $db->prepare('select amount, category from sales group by category');
$stmt->execute();
$results = $stmt->fetchAll(PDO::FETCH_OBJ);
echo json_encode($results);
?>
