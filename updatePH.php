<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');

require_once("connect.php");

$student_id = $_POST['student_id'];


$proposal_date = $_POST['proposal_date'];
// Validate and format the date
$date = DateTime::createFromFormat('m/d/Y', $proposal_date);
if ($date) {
    $proposal_date = $date->format('Y-m-d'); // Convert to YYYY-MM-DD format
} else {
    die("Invalid date format. Please use mm/dd/yyyy.");
}

$defence_date = $_POST['defence_date'];
// Validate and format the date
$date = DateTime::createFromFormat('m/d/Y', $defence_date);
if ($date) {
    $defence_date = $date->format('Y-m-d'); // Convert to YYYY-MM-DD format
} else {
    die("Invalid date format. Please use mm/dd/yyyy.");
}


if ($major_adv == 'etc'){
    $major_adv = $_POST['MajorAdvisorETC'];}
else{ $major_adv = $_POST['MajorAdvisorSelect'];
}

if ($co_adv == 'etc'){
    $co_adv = $_POST['CoAdvisor1ETC'];}
else{ $co_adv = $_POST['coAdvisorSelect1'];
}

if ($co_adv2 == 'etc'){
    $co_adv2 = $_POST['CoAdvisor2ETC'];}
else{ $co_adv2 = $_POST['coAdvisorSelect2'];
}

if ($co_adv3 == 'etc'){
    $co_adv3 = $_POST['CoAdvisor3ETC'];}
else{ $co_adv3 = $_POST['coAdvisorSelect3'];
}

$committee_1 = $_POST['committee_1'];
$committee_2 = $_POST['committee_2'];


$sql = "UPDATE cmu_account SET major_adv='$major_adv',
                                co_adv='$co_adv', 
                                co_adv2='$co_adv2', 
                                co_adv3='$co_adv3', 
                                committee_1='$committee_1',
                                committee_2='$committee_2',
                                proposal_date='$proposal_date',
                                defence_date = '$defence_date'
                                
                            WHERE student_id = '$student_id'";
echo $sql;
if ($conn->query($sql) === TRUE) {
//   echo "Record updated successfully";
  header('Location: demo_index.php');
} else {
  echo "Error updating record: " . $conn->error;
}

$conn->close();
?>