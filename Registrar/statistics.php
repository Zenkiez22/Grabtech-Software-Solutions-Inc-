<?php
// Start output buffering at the beginning
ob_start();

// Include database connection and TCPDF
include 'header.php';
include 'TCPDF-main/tcpdf.php';  // Adjust the path as necessary

// Assuming $con is the database connection
$school_years = [];
$gender_data_processed = [];
$level_data_processed = [];
$enrollment_data = [];

// Fetch the current school year from the school_year table
$query = "SELECT school_year FROM school_year LIMIT 1";
$stmt = $con->prepare($query);
$stmt->execute();
$current_school_year = $stmt->fetchColumn();  // Get the current school year

// Fetch school year and gender data
$query = "SELECT school_year, gender, COUNT(*) AS count FROM enrollment_db GROUP BY school_year, gender";
$stmt = $con->prepare($query);
$stmt->execute();

// Process data into structured arrays
while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    $school_years[] = $row['school_year'];

    // Normalize gender to be consistent (e.g., capitalize the first letter)
    $gender = ucfirst(strtolower($row['gender'])); // Converts 'male' or 'Male' to 'Male'

    // Gender Data
    if (!isset($gender_data_processed[$row['school_year']])) {
        $gender_data_processed[$row['school_year']] = ['Male' => 0, 'Female' => 0];
    }
    $gender_data_processed[$row['school_year']][$gender] += $row['count']; // Use += to accumulate counts

    // Enrollment Data
    if (!isset($enrollment_data[$row['school_year']])) {
        $enrollment_data[$row['school_year']] = 0;
    }
    $enrollment_data[$row['school_year']] += $row['count'];  // Total enrollment count
}

// Prepare datasets for the gender chart
$gender_datasets = [
    'Male' => [
        'label' => 'Male',
        'data' => [],
        'borderColor' => 'rgba(54, 162, 235, 1)',
        'backgroundColor' => 'rgba(54, 162, 235, 0.2)',
        'fill' => true,
        'tension' => 0.1,
        'borderWidth' => 2
    ],
    'Female' => [
        'label' => 'Female',
        'data' => [],
        'borderColor' => 'rgba(255, 99, 132, 1)',
        'backgroundColor' => 'rgba(255, 99, 132, 0.2)',
        'fill' => true,
        'tension' => 0.1,
        'borderWidth' => 2
    ]
];

// Fill gender data for each school year
foreach ($school_years as $school_year) {
    $gender_datasets['Male']['data'][] = $gender_data_processed[$school_year]['Male'] ?? 0;
    $gender_datasets['Female']['data'][] = $gender_data_processed[$school_year]['Female'] ?? 0;
}

// Prepare datasets for the level gender distribution chart
$level_gender_datasets = [
    'Male' => [
        'label' => 'Male',
        'data' => [],
        'backgroundColor' => 'rgba(54, 162, 235, 1)',
        'borderColor' => 'rgba(54, 162, 235, 1)',
        'borderWidth' => 1
    ],
    'Female' => [
        'label' => 'Female',
        'data' => [],
        'backgroundColor' => 'rgba(255, 99, 132, 1)',
        'borderColor' => 'rgba(255, 99, 132, 1)',
        'borderWidth' => 1
    ]
];

// Fetch level and gender distribution data for the current school year
$query = "SELECT level, gender, COUNT(*) AS count FROM enrollment_db WHERE school_year = :current_school_year GROUP BY level, gender";
$stmt = $con->prepare($query);
$stmt->bindParam(':current_school_year', $current_school_year);
$stmt->execute();

// Process level and gender data
$levels = [];
while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    // Collect levels
    if (!in_array($row['level'], $levels)) {
        $levels[] = $row['level'];
    }

    // Assign count to corresponding gender and level
    $gender = ucfirst(strtolower($row['gender']));
    $level_gender_datasets[$gender]['data'][] = $row['count'];
}

// If a level doesn't have a count for Male or Female, set it to 0
foreach ($levels as $key => $level) {
    if (count($level_gender_datasets['Male']['data']) <= $key) {
        $level_gender_datasets['Male']['data'][] = 0;
    }
    if (count($level_gender_datasets['Female']['data']) <= $key) {
        $level_gender_datasets['Female']['data'][] = 0;
    }
}

// Prepare the enrollment data chart
$enrollment_dataset = [
    'label' => 'Total Enrollments',
    'data' => [],
    'borderColor' => 'rgba(75, 192, 192, 1)',
    'backgroundColor' => 'rgba(75, 192, 192, 0.2)',
    'fill' => true,
    'tension' => 0.1,
    'borderWidth' => 2
];

// Fill total enrollment data for each school year
foreach ($school_years as $school_year) {
    $enrollment_dataset['data'][] = $enrollment_data[$school_year] ?? 0;
}

// Fetch Non-Current School Year Data (for the previous year or years)
$non_current_years = array_filter($school_years, function($year) use ($current_school_year) {
    return $year !== $current_school_year;
});

$non_current_year_data = [];
foreach ($non_current_years as $year) {
    $query = "SELECT gender, COUNT(*) AS count FROM enrollment_db WHERE school_year = :year GROUP BY gender";
    $stmt = $con->prepare($query);
    $stmt->bindParam(':year', $year);
    $stmt->execute();
    
    $male_count = 0;
    $female_count = 0;

    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        if (strtolower($row['gender']) == 'male') {
            $male_count = $row['count'];
        } elseif (strtolower($row['gender']) == 'female') {
            $female_count = $row['count'];
        }
    }

    $total_count = $male_count + $female_count;
    $male_percentage = $total_count > 0 ? ($male_count / $total_count) * 100 : 0;
    $female_percentage = $total_count > 0 ? ($female_count / $total_count) * 100 : 0;

    $non_current_year_data[] = [
        'school_year' => $year,
        'male_count' => $male_count,
        'female_count' => $female_count,
        'total_count' => $total_count,
        'male_percentage' => number_format($male_percentage, 2),
        'female_percentage' => number_format($female_percentage, 2)
    ];
}

// Generate PDF when requested
if (isset($_POST['generate_pdf'])) {
    // Prevent further output (clear the buffer to avoid header issues)
    ob_end_clean();

    // Create a new TCPDF object
    $pdf = new TCPDF();
    $pdf->AddPage();
    $pdf->SetFont('helvetica', '', 12);
    
    // Get today's date in the format you want (e.g., 'Y-m-d')
$current_date = date('F j, Y');  // Example: December 10, 2024

// Add the title with the current date
$pdf->Cell(0, 10, "St. Joseph's College of Rodriguez, Inc.", 0, 1, 'C');
$pdf->Cell(0, 10, "Office of the Registrar", 0, 1, 'C');
$pdf->Cell(0, 10, "Enrollment Statistics Report", 0, 1, 'C');
$pdf->Cell(0, 6, 'As of ' . $current_date, 0, 1, 'C');
$pdf->Ln(10); // Add a larger line break

    // Table for current school year data
    $pdf->Cell(0, 10, "Current School Year: " . $current_school_year, 0, 1, 'C');
    $pdf->Cell(30, 10, 'Level', 1);
    $pdf->Cell(30, 10, 'Male', 1);
    $pdf->Cell(30, 10, 'Female', 1);
    $pdf->Cell(30, 10, 'Total', 1);
    $pdf->Cell(30, 10, 'Male %', 1);
    $pdf->Cell(30, 10, 'Female %', 1);
    $pdf->Ln();

    foreach ($levels as $index => $level) {
        $male_count = $level_gender_datasets['Male']['data'][$index] ?? 0;
        $female_count = $level_gender_datasets['Female']['data'][$index] ?? 0;
        $total_count = $male_count + $female_count;

        // Calculate percentages
        $male_percentage = $total_count > 0 ? ($male_count / $total_count) * 100 : 0;
        $female_percentage = $total_count > 0 ? ($female_count / $total_count) * 100 : 0;

        // Add row to the table
        $pdf->Cell(30, 10, $level, 1);
        $pdf->Cell(30, 10, $male_count, 1);
        $pdf->Cell(30, 10, $female_count, 1);
        $pdf->Cell(30, 10, $total_count, 1);
        $pdf->Cell(30, 10, number_format($male_percentage, 2) . '%', 1);
        $pdf->Cell(30, 10, number_format($female_percentage, 2) . '%', 1);
        $pdf->Ln();
    }

    // Add a summary row for total male, female, and overall percentages for current year
    $total_male = array_sum($level_gender_datasets['Male']['data']);
    $total_female = array_sum($level_gender_datasets['Female']['data']);
    $grand_total = $total_male + $total_female;

    $male_percentage_total = $grand_total > 0 ? ($total_male / $grand_total) * 100 : 0;
    $female_percentage_total = $grand_total > 0 ? ($total_female / $grand_total) * 100 : 0;

    $pdf->Cell(30, 10, 'Total', 1);
    $pdf->Cell(30, 10, $total_male, 1);
    $pdf->Cell(30, 10, $total_female, 1);
    $pdf->Cell(30, 10, $grand_total, 1);
    $pdf->Cell(30, 10, number_format($male_percentage_total, 2) . '%', 1);
    $pdf->Cell(30, 10, number_format($female_percentage_total, 2) . '%', 1);
    $pdf->Ln(25);

    // Table for non-current year data
    $pdf->Cell(0, 10, "Previous School Year/s", 0, 1, 'C');
    $pdf->Cell(30, 10, 'School Year', 1);
    $pdf->Cell(30, 10, 'Male', 1);
    $pdf->Cell(30, 10, 'Female', 1);
    $pdf->Cell(30, 10, 'Total', 1);
    $pdf->Cell(30, 10, 'Male %', 1);
    $pdf->Cell(30, 10, 'Female %', 1);
    $pdf->Ln();

    foreach ($non_current_year_data as $data) {
        $pdf->Cell(30, 10, $data['school_year'], 1);
        $pdf->Cell(30, 10, $data['male_count'], 1);
        $pdf->Cell(30, 10, $data['female_count'], 1);
        $pdf->Cell(30, 10, $data['total_count'], 1);
        $pdf->Cell(30, 10, $data['male_percentage'] . '%', 1);
        $pdf->Cell(30, 10, $data['female_percentage'] . '%', 1);
        $pdf->Ln();
    }

    // Output the PDF
    $pdf->Output('enrollment_statistics_report.pdf', 'I');
    exit; // Terminate script after generating the PDF
}
?>

<!-- Frontend HTML code -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enrollment Statistics</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<!-- Main Content -->
<div id="main-content">
    <div class="pb-2">
        <div class="pb-5">
            <div class="card shadow">
                <div class="card-header text-white" 
                     style="background-image: linear-gradient(#360005, #0f0000); display: flex; align-items: center;">
                    <button onclick="toggleSidebar()" style="color: white; background-color: transparent; border: none;">☰</button>
                    <h5 class="mb-0">Statistics</h5>
                </div>

                <div class="card-body">
                    <h3>Enrollment Data</h3>
                    <canvas id="enrollmentChart" width="400" height="200"></canvas>
                    <!-- Gender Line Chart --><br>
                    <h3>Gender per School Year</h3>
                    <canvas id="genderChart" width="400" height="200"></canvas>
                    <!-- Level Gender Distribution Chart (Bar Chart) -->
                    <h3>Students per Level (<?php echo $current_school_year; ?>)</h3>
                    <canvas id="levelGenderChart" width="400" height="200"></canvas>

                    <!-- Generate PDF Button -->
                    <form method="POST" action="" target="_blank">
                        <button type="submit" name="generate_pdf" class="btn btn-primary btn-lg">Generate PDF Report</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script>
        // Enrollment Chart
        const ctx1 = document.getElementById('enrollmentChart').getContext('2d');
        new Chart(ctx1, {
            type: 'line',
            data: {
                labels: <?php echo json_encode($school_years); ?>,
                datasets: [<?php echo json_encode($enrollment_dataset); ?>]
            },
            options: {
                scales: {
                    y: { beginAtZero: true }
                }
            }
        });

        // Gender Distribution Chart
        const ctx2 = document.getElementById('genderChart').getContext('2d');
        new Chart(ctx2, {
            type: 'line',
            data: {
                labels: <?php echo json_encode($school_years); ?>,
                datasets: [
                    <?php echo json_encode($gender_datasets['Male']); ?>,
                    <?php echo json_encode($gender_datasets['Female']); ?>
                ]
            },
            options: {
                scales: {
                    y: { beginAtZero: true }
                }
            }
        });

        // Level Gender Distribution Bar Chart for the current school year
        const ctx3 = document.getElementById('levelGenderChart').getContext('2d');
        new Chart(ctx3, {
            type: 'bar',
            data: {
                labels: <?php echo json_encode($levels); ?>,
                datasets: [
                    <?php echo json_encode($level_gender_datasets['Male']); ?>,
                    <?php echo json_encode($level_gender_datasets['Female']); ?>
                ]
            },
            options: {
                scales: {
                    y: { beginAtZero: true }
                }
            }
        });
    </script>
</body>
</html>
