<?php 
error_reporting(E_ALL);
ini_set('display_errors', 1);

include 'include/connect_sjcr.inc.php'; // Database connection
include 'header.php';

$student_id = '';
$error = '';
$success = '';
$student = null;
$school_years = [];
$search_results = [];

// Fetch school years
$stmt = $con->query("SELECT `school_year`, `year_id` FROM `school_year`");
$school_years = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Handle form submission
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['enroll'])) {
    $student_id = trim($_POST['student_id']);
    $school_year = $_POST['school_year'];
    $level = $_POST['level'];
    $fullname = $_POST['fullname'];
    $course = $_POST['course'];
    $date_of_enrollment = date('Y-m-d H:i:s');
    $status = 'ENROLLED';
    $strand = isset($_POST['strand']) ? $_POST['strand'] : '';
    
    // Fetch gender and other details of the student
    $stmt = $con->prepare("SELECT fname, lname, mname, gender, contact_no FROM student_db WHERE student_id = :student_id");
    $stmt->bindParam(':student_id', $student_id);
    $stmt->execute();
    $student = $stmt->fetch(PDO::FETCH_ASSOC);
    $gender = $student ? $student['gender'] : '';
    $contact_no = $student ? $student['contact_no'] : '';

    $bcert = isset($_POST['bcert']) ? 1 : 0;
    $idpic = isset($_POST['idpic']) ? 1 : 0;
    $report_card = isset($_POST['report_card']) ? 1 : 0;
    $baptismal = isset($_POST['baptismal']) ? 1 : 0;
    $form137 = isset($_POST['form137']) ? 1 : 0;
    $good_moral = isset($_POST['good_moral']) ? 1 : 0;

    // Validation checks
    if (empty($student_id)) {
        $error = "Student ID cannot be empty.";
    } elseif ($stmt->rowCount() === 0) {
        $error = "Student does not exist.";
    } else {
        // Check if the student is already enrolled in the current school year
        $stmt = $con->prepare("SELECT * FROM enrollment_db WHERE student_id = :student_id AND school_year = :school_year");
        $stmt->bindParam(':student_id', $student_id);
        $stmt->bindParam(':school_year', $school_year);
        $stmt->execute();
        if ($stmt->rowCount() > 0) {
            $error = "Student is already enrolled for the current school year.";
        } elseif (($level === 'GRADE 11' || $level === 'GRADE 12') && empty($strand)) {
            $error = "Strand is required for Grade 11 and Grade 12.";
        } else {
            // Insert the enrollment data
            $stmt = $con->prepare("
                INSERT INTO enrollment_db 
                (school_year, student_id, fullname, level, course, date_of_enrollment, status, strand, gender, contact, bcert, idpic, report_card, baptismal, form137, good_moral) 
                VALUES 
                (:school_year, :student_id, :fullname, :level, :course, :date_of_enrollment, :status, :strand, :gender, :contact_no, :bcert, :idpic, :report_card, :baptismal, :form137, :good_moral)
            ");
            $stmt->bindParam(':school_year', $school_year);
            $stmt->bindParam(':student_id', $student_id);
            $stmt->bindParam(':fullname', $fullname);
            $stmt->bindParam(':level', $level);
            $stmt->bindParam(':course', $course);
            $stmt->bindParam(':date_of_enrollment', $date_of_enrollment);
            $stmt->bindParam(':status', $status);
            $stmt->bindParam(':strand', $strand);
            $stmt->bindParam(':gender', $gender);
            $stmt->bindParam(':contact_no', $contact_no);
            $stmt->bindParam(':bcert', $bcert);
            $stmt->bindParam(':idpic', $idpic);
            $stmt->bindParam(':report_card', $report_card);
            $stmt->bindParam(':baptismal', $baptismal);
            $stmt->bindParam(':form137', $form137);
            $stmt->bindParam(':good_moral', $good_moral);

            if ($stmt->execute()) {
                $success = "Enrollment successful!";
                $student_id = $school_year = $level = $fullname = $course = $strand = '';
                $bcert = $idpic = $report_card = $baptismal = $form137 = $good_moral = 0;
            } else {
                $errorInfo = $stmt->errorInfo();
                $error = "Failed to enroll student: " . $errorInfo[2];
            }
        }
    }
}

// Handle student search
if (!empty($_POST['search_name'])) {
    $search_name = trim($_POST['search_name']);
    $stmt = $con->prepare("SELECT student_id, lname, fname, mname FROM student_db WHERE CONCAT(lname, ', ', fname, ' ', mname) LIKE :search_name");
    $search_term = "%$search_name%";
    $stmt->bindParam(':search_name', $search_term);
    $stmt->execute();
    $search_results = $stmt->fetchAll(PDO::FETCH_ASSOC);
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enrollment Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<div id="main-content">
    <div class="container py-4">
        <div class="card shadow">
            <div class="card-header text-white bg-dark" style="background-image: linear-gradient(#360005, #0f0000); display: flex; align-items: center;">
            <button onclick="toggleSidebar()" style="color: white; background-color: transparent; border: none;">☰</button>
                <h5 class="mb-0">Enrollment Form</h5>
            </div>
            <div class="card-body">
                <?php if ($error): ?>
                    <div class="alert alert-danger"><?php echo $error; ?></div>
                <?php endif; ?>

                <?php if ($success): ?>
                    <div class="alert alert-success"><?php echo $success; ?></div>
                <?php endif; ?>

                <!-- Student Search -->
                <form method="POST">
                    <div class="mb-3">
                        <label for="search_name" class="form-label">Search Student by Name:</label>
                        <input type="text" class="form-control" name="search_name" id="search_name">
                    </div>
                    <button type="submit" class="btn btn-success">Search</button>
                </form>

                <!-- Search Results -->
                <ul class="list-group mb-3" id="search-results">
                    <?php foreach ($search_results as $result): ?>
                        <li class="list-group-item student-item" data-id="<?php echo $result['student_id']; ?>" data-fullname="<?php echo htmlspecialchars($result['lname'] . ', ' . $result['fname'] . ' ' . substr($result['mname'], 0, 1) . '.'); ?>">
                            <?php echo htmlspecialchars($result['lname'] . ', ' . $result['fname'] . ' ' . $result['mname']); ?>
                        </li>
                    <?php endforeach; ?>
                </ul>

                <!-- Enrollment Form -->
                <form method="POST">
                    <div class="mb-3">
                        <label for="student_id" class="form-label">Student ID:</label>
                        <input type="text" class="form-control" name="student_id" id="student_id" value="<?php echo htmlspecialchars($student_id); ?>" required readonly>
                    </div>

                    <div class="mb-3">
                        <label for="school_year" class="form-label">School Year:</label>
                        <select class="form-control" name="school_year" required>
                            <?php foreach ($school_years as $year): ?>
                                <option value="<?php echo $year['school_year']; ?>"><?php echo $year['school_year']; ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>

                    <div class="mb-3">
                        <label for="fullname" class="form-label">Full Name:</label>
                        <input type="text" class="form-control" name="fullname" id="fullname" 
                               value="<?php echo isset($student) ? htmlspecialchars($student['lname'] . ', ' . $student['fname'] . ' ' . substr($student['mname'], 0, 1) . '.') : ''; ?>" 
                               readonly>
                    </div>

                    <div class="mb-3">
                        <label for="level" class="form-label">Grade Level:</label>
                        <select class="form-control" name="level" id="level" required>
                            <option value="PRE-KINDER">PRE-KINDER</option>
                            <option value="KINDER">KINDER</option>
                            <option value="GRADE 1">GRADE 1</option>
                            <option value="GRADE 2">GRADE 2</option>
                            <option value="GRADE 3">GRADE 3</option>
                            <option value="GRADE 4">GRADE 4</option>
                            <option value="GRADE 5">GRADE 5</option>
                            <option value="GRADE 6">GRADE 6</option>
                            <option value="GRADE 7">GRADE 7</option>
                            <option value="GRADE 8">GRADE 8</option>
                            <option value="GRADE 9">GRADE 9</option>
                            <option value="GRADE 10">GRADE 10</option>
                            <option value="GRADE 11">GRADE 11</option>
                            <option value="GRADE 12">GRADE 12</option>
                            <!-- Add other grade options here -->
                        </select>
                    </div>

                    <div class="mb-3" id="strand-container" style="display: none;">
                        <label for="strand" class="form-label">Strand:</label>
                        <select class="form-control" name="strand" id="strand">
                            
                            <option value="STEM">STEM</option>
                            <option value="HUMSS">HUMSS</option>
                            <option value="ABM">ABM</option>
                        </select>
                    </div>

                    <div class="mb-3">
                        <label for="course" class="form-label">Course:</label>
                        <input type="text" class="form-control" name="course" id="course">
                    </div>

                    <!-- Requirements -->
                    <div class="mb-3">
                        <h5>Requirements:</h5>
                        <div>
                            <input type="checkbox" name="bcert" id="bcert" value="1">
                            <label for="bcert">Birth Certificate</label>
                        </div>

        <div class="mb-1 px-4">
            <input type="checkbox" name="idpic" id="idpic" value="1">
            <label for="idpic" class="form-label">ID Picture:</label>
        </div>

        <div class="mb-1 px-4">
            <input type="checkbox" name="report_card" id="report_card" value="1">
            <label for="report_card" class="form-label">Report Card</label>
        </div>
        <div class="mb-1 px-4">
            <input type="checkbox" name="baptismal" id="baptismal" value="1">
            <label for="baptismal" class="form-label">Baptismal</label>
        </div>
        <div class="mb-1 px-4">
            <input type="checkbox" name="form137" id="form137" value="1">
            <label for="form137" class="form-label">Form137</label>
        </div>
        <div class="mb-1 px-4">
            <input type="checkbox" name="good_moral" id="good_moral" value="1">
            <label for="good_moral" class="form-label">Good Moral</label>
        </div>
        <div class="span3 px-4 pt-5">
            <p><button type="submit" name="enroll" class="btn btn-primary" style="padding: 10px 30px 10px 30px; font-size: 16px;">Enroll</button></p>
        </div>
    </form>
    <br><br><br>
</div>
</div>
</div>
<script>
$(document).ready(function() {
    // Handle student search click
    $('.student-item').on('click', function() {
        var studentId = $(this).data('id');
        $('#student_id').val(studentId);
        $('#fullname').val($(this).data('fullname'));
    });

    // Toggle strand visibility based on level selection
    $('#level').change(function() {
        var selectedLevel = $(this).val();
        if (selectedLevel === 'GRADE 11' || selectedLevel === 'GRADE 12') {
            $('#strand-container').show();
        } else {
            $('#strand-container').hide();
            $('#strand').val(''); // Clear strand input when hiding
        }
    });

    // Clear form fields if enrollment is successful
    <?php if ($success): ?>
        $('#student_id').val('');
        $('#school_year').val('');
        $('#level').val('PRE-KINDER'); // Reset to default or first option
        $('#fullname').val('');
        $('#course').val('');
        $('#strand').val(''); // Clear strand input
        $('#bcert').prop('checked', false);
        $('#idpic').prop('checked', false);
        $('#report_card').prop('checked', false);
        $('#baptismal').prop('checked', false);
        $('#form137').prop('checked', false);
        $('#good_moral').prop('checked', false);
    <?php endif; ?>
});
</script>

</body>
</html>
