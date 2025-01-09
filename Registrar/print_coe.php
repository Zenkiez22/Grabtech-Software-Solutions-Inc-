<?php 
ob_start(); // Start output buffering

require('TCPDF-main/tcpdf.php'); // Include the TCPDF library
include 'include/connect_sjcr.inc.php'; // Include your database connection

function getOrdinalSuffix($day) {
    if (!in_array(($day % 100), [11, 12, 13])) {
        switch ($day % 10) {
            case 1: return 'st';
            case 2: return 'nd';
            case 3: return 'rd';
        }
    }
    return 'th';
}

// Check if required parameters are passed
if (!isset($_GET['id']) || !isset($_GET['student_id'])) {
    echo "Invalid request. 'id' or 'student_id' parameter is missing in the URL.";
    exit;
}

$id = $_GET['id'];
$student_id = $_GET['student_id'];

try {
    // Fetch enrollment details for the student
    $stmt = $con->prepare("SELECT * FROM enrollment_db WHERE id = :id AND student_id = :student_id");
    $stmt->bindParam(':id', $id, PDO::PARAM_INT);
    $stmt->bindParam(':student_id', $student_id, PDO::PARAM_STR);
    $stmt->execute();
    $enrollment = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($enrollment) {
        // Create a new PDF document
        $pdf = new TCPDF();
        $pdf->setPrintHeader(false);
        $pdf->AddPage();

        // Set PDF title and header
        $pdf->SetTitle('Certificate of Enrollment');

        // Add watermark logo at the center
        $pdf->SetAlpha(0.1); // Set transparency for watermark
        $pdf->Image('images/watermark.png', 30, 50, 150, 150, '', '', '', false, 300, '', false, false, 0, false, false, false);
        $pdf->SetAlpha(1); // Reset transparency for other content

        // Add header logo at the top
        $image_file = 'images/logo.png'; // Path to your logo image
        $pdf->Image($image_file, 30, 5, 20, 20, '', '', '', false, 300, '', false, false, 0, false, false, false);

        $pdf->SetFont('times', 'B', 17);
        $pdf->Cell(0, 8, "St. Joseph's College of Rodriguez, Inc.", 0, 1, 'C');
        $pdf->SetFont('times', '', 9);
        $pdf->Cell(0, 4, '498 M.H. del Pilar Street, San Rafael, Rodriguez Rizal', 0, 1, 'C');
        $pdf->Cell(0, 4, 'Email: sjcr.rodriguez@gmail.com', 0, 1, 'C');
        $pdf->Cell(0, 4, 'Tel. No. 714-88891', 0, 1, 'C');
        $pdf->Line(10, 35, 200, 35);

        // Title and body
        $pdf->SetFont('times', 'B', 25);
        $pdf->Cell(0, 40, 'CERTIFICATE OF ENROLLMENT', 0, 1, 'C');

        // Reset fill color to white before using MultiCell
        $pdf->SetFillColor(255, 255, 255); // Set fill color to white
        $pdf->SetFont('times', '', 14);
        $pdf->Ln(10);

        // Indentation settings
        $indent = 20; // Indentation size

        // Construct the level-strand string
        $level_strand = htmlspecialchars($enrollment['level']); // Start with the level
        if (!empty($enrollment['strand']) && strtolower($enrollment['strand']) !== 'none') {
            $level_strand .= ' - ' . htmlspecialchars($enrollment['strand']); // Append strand if it's not "NONE"           
}

        // First paragraph with first-line indent
        $pdf->SetX($indent); // Set X position for indentation
        $text1 = '       This is to certify that ' . htmlspecialchars($enrollment['fullname']) . 
                 " is officially enrolled as " . $level_strand . 
                 " at St. Joseph's College of Rodriguez Inc. for School Year " . 
                 htmlspecialchars($enrollment['school_year']) . ".";
        $pdf->MultiCell(0, 30, $text1, 0, 'J'); // MultiCell handles wrapping

        // Additional details with first-line indent
        $pdf->SetX($indent); // Set X position for indentation
        $text2 = '   This certification is issued upon the request of the aforementioned person';
        $pdf->MultiCell(0, 0, $text2, 0, 'J');
        $pdf->SetX($indent); // Set X position for indentation
        $pdf->Cell(0, 7, 'for whatever purpose it may serve.', 0, 'J');

        // Date with first-line indent
        $pdf->Cell(0, 20, '', 0, 'J');
        $pdf->SetX($indent); // Set X position for indentation

        $day = date('j'); // Numeric day without leading zeros
        $ordinal = getOrdinalSuffix($day);
        $month_year = date('F, Y'); // Full month and year
        
        $text3 = "Issued on this {$day}{$ordinal} day of {$month_year} at St. Joseph's College of";
        $pdf->MultiCell(0, 0, $text3, 0, 'J');
        $pdf->SetX($indent); // Set X position for indentation
        $pdf->Cell(0, 7, 'Rodriguez Inc. San Rafael, Rodriguez, Rizal, Philippines.', 0, 'J');

        ob_end_clean(); // Clear the buffer before outputting the PDF
        $pdf->Cell(0, 40, '', 0, 'J');

        // Add Registrar information at the bottom right
        $pdf->SetX(160); // Set X position for right alignment (adjust as necessary)
        $pdf->SetFont('times', 'U', 14); // Underlined font
        $pdf->Cell(0, 4, 'GENEROSE Y. NAVAJA, LPT', 0, 1, 'R'); // Name
        $pdf->SetFont('times', '', 14); // Regular font
        $pdf->Cell(0, 4, 'Registrar                 ', 0, 1, 'R'); // Designation

        $pdf->SetX($indent);
        $pdf->SetFont('times', 'I', 7); // Regular font
        $pdf->Cell(0, 60, 'Not valid without school seal', 0, 'J');

        // Close and output PDF document
        $pdf->Output('coe-' . htmlspecialchars($student_id) . '.pdf', 'D'); // 'D' for download
    } else {
        echo "Enrollment not found.";
    }
} catch (Exception $e) {
    echo "Error: " . $e->getMessage();
}
?>
