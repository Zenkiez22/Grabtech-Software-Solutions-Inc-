<?php
require('TCPDF-main/tcpdf.php');
if (isset($_POST['pre_enroll'])) {
    $student_id = $_GET['id'];
    $grade_level = $_POST['level'];

    // Fetch student data
    $stmt = $con->prepare("SELECT * FROM student_db WHERE student_id = :student_id");
    $stmt->bindParam(':student_id', $student_id);
    $stmt->execute();
    $student = $stmt->fetch(PDO::FETCH_ASSOC);

    // Generate PDF
    $pdf = new TCPDF();
    $pdf->AddPage();
    $pdf->SetFont('helvetica', '', 12);
    $pdf->Cell(0, 10, "Pre-Enrollment Form", 0, 1, 'C');
    $pdf->Cell(0, 10, "Student Name: " . $student['fname'] . " " . $student['lname'], 0, 1);
    $pdf->Cell(0, 10, "Grade Level: " . $grade_level, 0, 1);
    $pdf->Output('pre_enroll_' . $student['student_id'] . '.pdf', 'I');
}
