<?php
include 'include/connect_sjcr.inc.php'; // Include your database connection

// Check if form is submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Get the posted data from the form
    $student_id = $_POST['student_id'];
    $bcert = $_POST['bcert'];
    $idpic = $_POST['idpic'];
    $report_card = $_POST['report_card'];
    $baptismal = $_POST['baptismal'];
    $form137 = $_POST['form137'];
    $good_moral = $_POST['good_moral'];

    // Prepare the SQL query to update the student's requirements
    $sql = "UPDATE enrollment_db SET 
            bcert = :bcert, 
            idpic = :idpic, 
            report_card = :report_card, 
            baptismal = :baptismal, 
            form137 = :form137, 
            good_moral = :good_moral 
            WHERE student_id = :student_id";

    // Prepare the statement
    $stmt = $con->prepare($sql);

    // Bind the parameters
    $stmt->bindParam(':student_id', $student_id);
    $stmt->bindParam(':bcert', $bcert);
    $stmt->bindParam(':idpic', $idpic);
    $stmt->bindParam(':report_card', $report_card);
    $stmt->bindParam(':baptismal', $baptismal);
    $stmt->bindParam(':form137', $form137);
    $stmt->bindParam(':good_moral', $good_moral);

    // Execute the query
    if ($stmt->execute()) {
        // Redirect to the page where the user can see the updated data (for example, back to the main page)
        header('Location: enrollment_data.php');
        exit();
    } else {
        // If update failed, show an error message
        echo "Error updating record.";
    }
} else {
    // If the request is not a POST, redirect or show an error
    echo "Invalid request.";
}
?>