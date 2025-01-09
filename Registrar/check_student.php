<?php
include 'include/connect_sjcr.inc.php';

if (isset($_POST['student_id'])) {
    $student_id = $_POST['student_id'];
    $stmt = $con->prepare("SELECT CONCAT(lname, ' ', fname) as fullname FROM student_db WHERE student_id = :student_id");
    $stmt->bindParam(':student_id', $student_id);
    $stmt->execute();
    
    if ($stmt->rowCount() > 0) {
        $student = $stmt->fetch(PDO::FETCH_ASSOC);
        echo json_encode(['exists' => true, 'fullname' => $student['fullname']]);
    } else {
        echo json_encode(['exists' => false]);
    }
}
?>
