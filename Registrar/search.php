<?php
ob_start();
include_once 'header.php';

$searchErr = '';
$student_details = [];
$search = '';

// Check if a search query exists in either POST or GET
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['save'])) {
    if (!empty($_POST['search'])) {
        $search = $_POST['search'];
        
        // Redirect with search query in the URL to apply PRG pattern
        header("Location: " . $_SERVER['PHP_SELF'] . "?search=" . urlencode($search));
        exit();
    } else {
        $searchErr = "Please enter the information";
    }
}

// Fetch results based on the search query in the URL
if (isset($_GET['search']) && !empty($_GET['search'])) {
    $search = $_GET['search'];
    $stmt = $con->prepare("SELECT * FROM student_db WHERE lname LIKE :search OR fname LIKE :search OR student_id LIKE :search");
    $stmt->execute(['search' => '%' . $search . '%']);
    $student_details = $stmt->fetchAll(PDO::FETCH_ASSOC);
} else {
    // Load all records by default if no search query is provided
    $stmt = $con->prepare("SELECT * FROM student_db");
    $stmt->execute();
    $student_details = $stmt->fetchAll(PDO::FETCH_ASSOC);
}
ob_end_flush();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Information</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.js"></script>
</head>


<!-- Main Content -->
<div id="main-content">

<div class="pb-2">

<div class="pb-5">
  <div class="card shadow">
    <div class="card-header text-white" 
         style="background-image: linear-gradient(#360005, #0f0000); display: flex; align-items: center;">
      <button onclick="toggleSidebar()" style="color: white; background-color: transparent; border: none;">☰</button>
      <h5 class="mb-0">Student Information</h5>
</div>

        <div class="card-body">
            <!-- Search Form -->
            <form class="form-horizontal mb-4" action="#" method="post">
                <div class="form-row">
                    <div class="col-md-9">
                        <input type="text" style="text-transform:uppercase" class="form-control" name="search" 
                               placeholder="Search here (lastname, firstname, or student ID)" 
                               value="<?php echo isset($search) ? htmlspecialchars($search) : ''; ?>">
                    </div>
                    <div class="col-md-3">
                        <button type="submit" name="save" class="btn btn-block text-white" style="background-color: #8a0000;">Find</button>
                    </div>
                </div>
                <span class="text-danger mt-2 d-block"><?php echo $searchErr; ?></span>
            </form>

            <!-- Data Table -->
            <div class="table-responsive">
                <table class="table table-bordered table-hover">
                    <thead class="text-danger">
                    <tr>
                        <th>#</th>
                        <th>Action</th>
                        <th>Student_ID</th>
                        <th>Last Name</th>
                        <th>First Name</th>
                        <th>Middle Name</th>
                        <th>Age</th>
                        <th>Birthdate</th>
                        <th>Birth Place</th>
                        <th>Gender</th>
                        <th>Nationality</th>
                        <th>Address</th>
                        <th>Contact#</th>
                        <th>LRN</th>
                        <th>Mother</th>
                        <th>Father</th>
                        <th>Health Concern</th>
                        <th>Email</th>
                        <th>Date Registered</th>
                        <th>Registration Mode</th>
                        <th>Religion</th>
                        <th>ESC</th>
                        <th>School Last Attended</th>
                        <th>Grade Level</th>
                        <th>Exam Schedule</th>
                        <th>Interview Schedule</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php
                    if (empty($student_details)) {
                        echo '<tr><td colspan="25" class="text-center">No data found</td></tr>';
                    } else {
                        foreach ($student_details as $key => $value) {
                            echo '<tr style="font-size: 11px;">';
                            echo '<td>' . ($key + 1) . '</td>';
                            echo '<td><a href="edit.php?id=' . $value['student_id'] . '" class="btn btn-sm btn-dark">Edit</a></td>';
                            echo '<td>' . $value['student_id'] . '</td>';
                            echo '<td>' . $value['lname'] . '</td>';
                            echo '<td>' . $value['fname'] . '</td>';
                            echo '<td>' . $value['mname'] . '</td>';
                            echo '<td>' . $value['age'] . '</td>';
                            echo '<td>' . $value['bdate'] . '</td>';
                            echo '<td>' . $value['bplace'] . '</td>';
                            echo '<td>' . $value['gender'] . '</td>';
                            echo '<td>' . $value['nationality'] . '</td>';
                            echo '<td>' . $value['address'] . '</td>';
                            echo '<td>' . $value['contact_no'] . '</td>';
                            echo '<td>' . $value['lrn'] . '</td>';
                            echo '<td>' . $value['mother_name'] . '</td>';
                            echo '<td>' . $value['father_name'] . '</td>';
                            echo '<td>' . $value['health_concern'] . '</td>';
                            echo '<td>' . $value['email_add'] . '</td>';
                            echo '<td>' . $value['date_registered'] . '</td>';
                            echo '<td>' . $value['reg_mode'] . '</td>';
                            echo '<td>' . $value['religion'] . '</td>';
                            echo '<td>' . $value['esc_no'] . '</td>';
                            echo '<td>' . $value['school_last_attended'] . '</td>';
                            echo '<td>' . $value['grade_level'] . '</td>';
                            echo '<td>' . $value['sched_exam'] . '</td>';
                            echo '<td>' . $value['sched_interview'] . '</td>';
                            echo '</tr>';
                        }
                    }
                    ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</div>
<script>
    $(document).ready(function() {
        $('.table').DataTable({
            "paging": true,
            "searching": false,
            "ordering": true,
            "info": true
        });
    });
</script>

</body>
</html>
