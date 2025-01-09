<?php
require_once('TCPDF-main/tcpdf.php'); // Adjust path as necessary
include 'include/connect_sjcr.inc.php'; // Adjust to your DB connection file
if (isset($_GET['id'])) {
    // Connect to your database


    $student_id = $_GET['id'];

    // Fetch student details
    $stmt = $con->prepare("SELECT * FROM student_db WHERE student_id = :student_id");
    $stmt->bindParam(':student_id', $student_id);
    $stmt->execute();
    $student = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($student) {
        // Create new PDF document
        $pdf = new TCPDF();

        // Set document information
        $pdf->SetCreator(PDF_CREATOR);
        $pdf->SetAuthor('Your Name');
        $pdf->SetTitle('Student Information');
        $pdf->SetSubject('Student PDF');

        // Add a page
        $pdf->AddPage();

        // Set font
        $pdf->SetFont('helvetica', '', 12);

        // Create HTML content
        $html = '<h1>Student Information</h1>';
        foreach ($student as $key => $value) {
            $html .= "<strong>$key:</strong> $value<br />";
        }

        // Output the HTML content
        $pdf->writeHTML($html, true, false, true, false, '');

        // Close and output PDF document
        $pdf->Output('student_info.pdf', 'I'); // 'I' for inline view
        exit();
    } else {
        echo "Student not found!";
    }
} else {
    echo "No student ID provided!";
}
?>