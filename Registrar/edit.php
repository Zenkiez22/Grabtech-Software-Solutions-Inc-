<?php
ob_start();
// Include session file for authentication
include 'header.php';

// Initialize variables
$error = '';
$success = '';

// Check if student ID is provided via GET
if (isset($_GET['id'])) {
    $student_id = $_GET['id'];

    // Fetch student details from the database
    $stmt = $con->prepare("SELECT * FROM student_db WHERE student_id = :student_id");
    $stmt->bindParam(':student_id', $student_id);
    $stmt->execute();
    $student = $stmt->fetch(PDO::FETCH_ASSOC);

    // Check if the student exists
    if (!$student) {
        $error = "Student not found!";
    }
} else {
    $error = "No student ID provided!";
}

// Handle form submission for updates
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $student_id = $_POST['student_id'];
    $lname = $_POST['lname'];
    $fname = $_POST['fname'];
    $mname = $_POST['mname'];
    $age = $_POST['age'];
    $bdate = $_POST['bdate'];
    $bplace = $_POST['bplace'];
    $gender = $_POST['gender'];
    $nationality = $_POST['nationality'];
    $address = $_POST['address'];
    $contact_no = $_POST['contact_no'];
    $religion = $_POST['religion'];
    $mother_name = $_POST['mother_name'];
    $father_name = $_POST['father_name'];
    $health_concern = $_POST['health_concern'];
    $email_add = $_POST['email_add'];
    $date_registered = $_POST['date_registered'];
    $reg_mode = $_POST['reg_mode'];
    $lrn = $_POST['lrn'];
    $esc_no = $_POST['esc_no'];
    $school_last_attended = $_POST['school_last_attended'];
    $grade_level = $_POST['grade_level'];
    $sched_exam = $_POST['sched_exam'];
    $sched_interview = $_POST['sched_interview'];
    $guardian = $_POST['guardian'];

    // Update student record in student_db
    $stmt = $con->prepare("
        UPDATE student_db 
        SET 
            lname = :lname,
            fname = :fname,
            mname = :mname,
            age = :age,
            bdate = :bdate,
            bplace = :bplace,
            gender = :gender,
            nationality = :nationality,
            address = :address,
            contact_no = :contact_no,
            religion = :religion,
            mother_name = :mother_name,
            father_name = :father_name,
            health_concern = :health_concern,
            email_add = :email_add,
            date_registered = :date_registered,
            reg_mode = :reg_mode,
            lrn = :lrn,
            esc_no = :esc_no,
            school_last_attended = :school_last_attended,
            grade_level = :grade_level,
            sched_exam = :sched_exam,
            sched_interview = :sched_interview,
            guardian = :guardian
        WHERE student_id = :student_id
    ");

    $stmt->bindParam(':student_id', $student_id);
    $stmt->bindParam(':lname', $lname);
    $stmt->bindParam(':fname', $fname);
    $stmt->bindParam(':mname', $mname);
    $stmt->bindParam(':age', $age);
    $stmt->bindParam(':bdate', $bdate);
    $stmt->bindParam(':bplace', $bplace);
    $stmt->bindParam(':gender', $gender);
    $stmt->bindParam(':nationality', $nationality);
    $stmt->bindParam(':address', $address);
    $stmt->bindParam(':contact_no', $contact_no);
    $stmt->bindParam(':religion', $religion);
    $stmt->bindParam(':mother_name', $mother_name);
    $stmt->bindParam(':father_name', $father_name);
    $stmt->bindParam(':health_concern', $health_concern);
    $stmt->bindParam(':email_add', $email_add);
    $stmt->bindParam(':date_registered', $date_registered);
    $stmt->bindParam(':reg_mode', $reg_mode);
    $stmt->bindParam(':lrn', $lrn);
    $stmt->bindParam(':esc_no', $esc_no);
    $stmt->bindParam(':school_last_attended', $school_last_attended);
    $stmt->bindParam(':grade_level', $grade_level);
    $stmt->bindParam(':sched_exam', $sched_exam);
    $stmt->bindParam(':sched_interview', $sched_interview);
    $stmt->bindParam(':guardian', $guardian);

    if ($stmt->execute()) {
        // Format full name for enrollment_db
        $middle_initial = $mname ? substr($mname, 0, 1) . '.' : ''; // Use the first letter of middle name with a period
        $fullname = strtoupper("$lname, $fname $middle_initial");

        // Update fullname in enrollment_db
        $enrollStmt = $con->prepare("
            UPDATE enrollment_db 
            SET fullname = :fullname 
            WHERE student_id = :student_id
        ");
        $enrollStmt->bindParam(':fullname', $fullname);
        $enrollStmt->bindParam(':student_id', $student_id);

        if ($enrollStmt->execute()) {
            $success = "Student details and enrollment full name updated successfully!";
            header("Location: search.php");
            exit();
        } else {
            $error = "Failed to update full name in enrollment_db!";
        }
    } else {
        $error = "Failed to update student details!";
    }
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Student Information</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
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
      <h5 class="mb-0">Edit Student Information</h5>
    </div>
    <div class="card-body">

    <?php if ($error): ?>
        <div class="alert alert-danger"><?php echo $error; ?></div>
    <?php endif; ?>

    <?php if ($success): ?>
        <div class="alert alert-success"><?php echo $success; ?></div>
    <?php endif; ?>

    <form action="edit.php?id=<?php echo $student['student_id']; ?>" method="POST" class="row g-3">
        <div class="col-md-6">
            <label for="student_id" class="form-label">Student ID:</label>
            <input type="text" class="form-control" name="student_id" value="<?php echo $student['student_id']; ?>" required>
        </div>

        <div class="col-md-6">
            <label for="lname" class="form-label">Last Name:</label>
            <input type="text" class="form-control" name="lname" value="<?php echo $student['lname']; ?>" required>
        </div>

        <div class="col-md-6">
            <label for="fname" class="form-label">First Name:</label>
            <input type="text" class="form-control" name="fname" value="<?php echo $student['fname']; ?>" required>
        </div>

        <div class="col-md-6">
            <label for="mname" class="form-label">Middle Name:</label>
            <input type="text" class="form-control" name="mname" value="<?php echo $student['mname']; ?>">
        </div>

        <div class="col-md-3">
            <label for="age" class="form-label">Age:</label>
            <input type="number" class="form-control" name="age" id="age" value="<?php echo isset($student['age']) ? $student['age'] : ''; ?>" readonly>
        </div>

        <div class="col-md-3">
            <label for="bdate" class="form-label">Birth Date:</label>
            <input type="date" class="form-control" name="bdate" id="bdate" value="<?php echo isset($student['bdate']) ? $student['bdate'] : ''; ?>" required>
        </div>

        <div class="col-md-6">
            <label for="bplace" class="form-label">Birth Place:</label>
            <input type="text" class="form-control" name="bplace" value="<?php echo $student['bplace']; ?>" required>
        </div>

        <div class="col-md-6">
            <label for="gender" class="form-label">Gender:</label>
            <select class="form-control" name="gender" required>
            <option value="MALE" <?php echo ($student['gender'] == 'MALE') ? 'selected' : ''; ?>>MALE</option>
            <option value="FEMALE" <?php echo ($student['gender'] == 'FEMALE') ? 'selected' : ''; ?>>FEMALE</option>
            </select>
        </div>

        <div class="col-md-6">
            <label for="nationality" class="form-label">Nationality:</label>
            <input type="text" class="form-control" name="nationality" value="<?php echo $student['nationality']; ?>" required>
        </div>

        <div class="col-md-12">
            <label for="address" class="form-label">Address:</label>
            <input type="text" class="form-control" name="address" value="<?php echo $student['address']; ?>" required>
        </div>

        <div class="col-md-6">
            <label for="contact_no" class="form-label">Contact Number:</label>
            <input type="text" class="form-control" name="contact_no" value="<?php echo $student['contact_no']; ?>" required>
        </div>

        <div class="col-md-6">
            <label for="religion" class="form-label">Religion:</label>
            <input type="text" class="form-control" name="religion" value="<?php echo $student['religion']; ?>">
        </div>

        <div class="col-md-6">
            <label for="mother_name" class="form-label">Mother's Name:</label>
            <input type="text" class="form-control" name="mother_name" value="<?php echo $student['mother_name']; ?>" required>
        </div>

        <div class="col-md-6">
            <label for="father_name" class="form-label">Father's Name:</label>
            <input type="text" class="form-control" name="father_name" value="<?php echo $student['father_name']; ?>" required>
        </div>

        <div class="col-md-12">
            <label for="health_concern" class="form-label">Health Concerns:</label>
            <input type="text" class="form-control" name="health_concern" value="<?php echo $student['health_concern']; ?>">
        </div>

        <div class="col-md-12">
            <label for="email_add" class="form-label">Email Address:</label>
            <input type="email" class="form-control" name="email_add" value="<?php echo $student['email_add']; ?>">
        </div>

        <div class="col-md-6">
            <label for="date_registered" class="form-label">Date Registered:</label>
            <input type="date" class="form-control" name="date_registered" value="<?php echo $student['date_registered']; ?>" required>
        </div>

        <div class="col-md-6">
            <label for="reg_mode" class="form-label">Registration Mode:</label>
            <input type="text" class="form-control" name="reg_mode" value="<?php echo $student['reg_mode']; ?>" required>
        </div>

        <div class="col-md-6">
            <label for="lrn" class="form-label">LRN:</label>
            <input type="text" class="form-control" name="lrn" value="<?php echo $student['lrn']; ?>">
        </div>

        <div class="col-md-6">
            <label for="esc_no" class="form-label">ESC Number:</label>
            <input type="text" class="form-control" name="esc_no" value="<?php echo $student['esc_no']; ?>">
        </div>

        <div class="col-md-6">
            <label for="school_last_attended" class="form-label">School Last Attended:</label>
            <input type="text" class="form-control" name="school_last_attended" value="<?php echo $student['school_last_attended']; ?>">
        </div>

        <div class="col-md-6">
            <label for="grade_level" class="form-label">Grade Level:</label>
            <input type="text" class="form-control" name="grade_level" value="<?php echo $student['grade_level']; ?>">
        </div>

        <div class="col-md-6">
            <label for="sched_exam" class="form-label">Scheduled Exam:</label>
            <input type="date" class="form-control" name="sched_exam" value="<?php echo $student['sched_exam']; ?>">
        </div>

        <div class="col-md-6">
            <label for="sched_interview" class="form-label">Scheduled Interview:</label>
            <input type="date" class="form-control" name="sched_interview" value="<?php echo $student['sched_interview']; ?>">
        </div>

        <div class="col-md-12">
            <label for="guardian" class="form-label">Guardian:</label>
            <input type="text" class="form-control" name="guardian" value="<?php echo $student['guardian']; ?>">
        </div>

        <div class="col-12 text-center mt-4">
            <button type="submit" class="btn btn-primary">Update Student</button>
        <a href="generate_pdf.php?id=<?php echo $student['student_id']; ?>" class="btn btn-success" target="_blank">Print Information</a>
        </div>

            </form>
        </div>
    </div>
</div>

    </div>
    </div>

    </form>

    <br><br><br><br>
</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script>
    document.getElementById('bdate').addEventListener('change', function() {
        const birthDate = new Date(this.value);
        const today = new Date();
        let age = today.getFullYear() - birthDate.getFullYear();
        const monthDifference = today.getMonth() - birthDate.getMonth();

        // Adjust age if birthday has not occurred yet this year
        if (monthDifference < 0 || (monthDifference === 0 && today.getDate() < birthDate.getDate())) {
            age--;
        }

        // Prevent setting age if birthdate is in the future
        if (age < 0) {
            document.getElementById('age').value = '';
            alert("Birthdate cannot be in the future.");
        } else {
            document.getElementById('age').value = age;
        }
    });
</script>
</body>
</html>
