<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');

require_once("connect.php");

$student_id = $_POST['student_id'];
$proposal_date = $_POST['proposal_date'];


$sql = "UPDATE cmu_account SET proposal_date='$proposal_date' WHERE student_id = '$student_id'";
echo $sql;
if ($conn->query($sql) === TRUE) {
//   echo "Record updated successfully";
  header('Location: demo_index.php');
} else {
  echo "Error updating record: " . $conn->error;
}

$conn->close();
?>