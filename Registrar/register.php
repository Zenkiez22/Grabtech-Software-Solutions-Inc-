<?php
// Include session file for authentication
include 'header.php';

// Initialize variables
$error = '';
$success = '';

// Handle form submission for registration
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

    // Check if the student ID already exists
    $stmt = $con->prepare("SELECT * FROM student_db WHERE student_id = :student_id");
    $stmt->bindParam(':student_id', $student_id);
    $stmt->execute();
    $existingStudent = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($existingStudent) {
        $error = "Student ID already in use!";
    } else {
        // Insert new student record into the database
        $stmt = $con->prepare("
            INSERT INTO student_db (student_id, lname, fname, mname, age, bdate, bplace, gender, nationality, address, 
            contact_no, religion, mother_name, father_name, health_concern, email_add, date_registered, reg_mode, lrn, 
            esc_no, school_last_attended, grade_level, sched_exam, sched_interview, guardian)
            VALUES (:student_id, :lname, :fname, :mname, :age, :bdate, :bplace, :gender, :nationality, :address, 
            :contact_no, :religion, :mother_name, :father_name, :health_concern, :email_add, :date_registered, 
            :reg_mode, :lrn, :esc_no, :school_last_attended, :grade_level, :sched_exam, :sched_interview, :guardian)
        ");

        // Bind parameters
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

        // Execute the query
        if ($stmt->execute()) {
            $success = "Student registered successfully!";
        } else {
            $error = "Failed to register student!";
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Student</title>
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
      <h5 class="mb-0">Student Registration Form</h5>
</div>
<div class="card-body">

    <?php if ($error): ?>
        <div class="alert alert-danger"><?php echo $error; ?></div>
    <?php endif; ?>

    <?php if ($success): ?>
        <div class="alert alert-success"><?php echo $success; ?></div>
    <?php endif; ?>

    <form action="register.php" method="POST" class="row g-3">
        <div class="col-md-6">
            <label for="student_id" class="form-label">Student ID:</label>
            <input type="text" class="form-control text-uppercase" name="student_id" required>
        </div>

        <div class="col-md-6">
            <label for="lname" class="form-label">Last Name:</label>
            <input type="text" class="form-control text-uppercase" name="lname" required>
        </div>

        <div class="col-md-6">
            <label for="fname" class="form-label">First Name:</label>
            <input type="text" class="form-control text-uppercase" name="fname" required>
        </div>

        <div class="col-md-6">
            <label for="mname" class="form-label">Middle Name:</label>
            <input type="text" class="form-control text-uppercase" name="mname">
        </div>

        <div class="col-md-3">
            <label for="bdate" class="form-label">Birth Date:</label>
            <input type="date" class="form-control" name="bdate" id="bdate" required>
        </div>

        <div class="col-md-3">
            <label for="age" class="form-label">Age:</label>
            <input type="number" class="form-control text-uppercase" name="age" id="age" readonly>
        </div>

        <div class="col-md-6">
            <label for="bplace" class="form-label">Birth Place:</label>
            <input type="text" class="form-control text-uppercase" name="bplace" required>
        </div>

        <div class="col-md-6">
            <label for="gender" class="form-label">Gender:</label>
            <select class="form-control" name="gender" required>
                <option value="MALE">MALE</option>
                <option value="FEMALE">FEMALE</option>
            </select>
        </div>

        <div class="col-md-6">
            <label for="nationality" class="form-label">Nationality:</label>
            <input type="text" class="form-control text-uppercase" name="nationality" required>
        </div>

        <div class="col-md-12">
            <label for="address" class="form-label">Address:</label>
            <textarea class="form-control text-uppercase" name="address" id="address" rows="3" style="resize: both;" required></textarea>
        </div>

        <div class="col-md-6">
            <label for="contact_no" class="form-label">Contact Number:</label>
            <input type="text" class="form-control text-uppercase" name="contact_no" required>
        </div>

        <div class="col-md-6">
            <label for="religion" class="form-label">Religion:</label>
            <input type="text" class="form-control text-uppercase" name="religion">
        </div>

        <div class="col-md-6">
            <label for="mother_name" class="form-label">Mother's Name:</label>
            <input type="text" class="form-control text-uppercase" name="mother_name" required>
        </div>

        <div class="col-md-6">
            <label for="father_name" class="form-label">Father's Name:</label>
            <input type="text" class="form-control text-uppercase" name="father_name" required>
        </div>

        <div class="col-md-12">
            <label for="health_concern" class="form-label">Health Concerns:</label>
            <input type="text" class="form-control text-uppercase" name="health_concern">
        </div>

        <div class="col-md-12">
            <label for="email_add" class="form-label">Email Address:</label>
            <input type="email" class="form-control" id="email_add" name="email_add">
            <small id="email_error" class="text-danger d-none">Please enter a valid email address.</small>
        </div>


        <div class="col-md-6">
            <label for="date_registered" class="form-label">Date Registered:</label>
            <input type="date" class="form-control text-uppercase" name="date_registered" required>
        </div>

        <div class="col-md-6">
            <label for="reg_mode" class="form-label">Registration Mode:</label>
            <input type="text" class="form-control text-uppercase" name="reg_mode" required>
        </div>

        <div class="col-md-6">
            <label for="lrn" class="form-label">LRN:</label>
            <input type="text" class="form-control text-uppercase" name="lrn">
        </div>

        <div class="col-md-6">
            <label for="esc_no" class="form-label">ESC Number:</label>
            <input type="text" class="form-control text-uppercase" name="esc_no">
        </div>

        <div class="col-md-6">
            <label for="school_last_attended" class="form-label">School Last Attended:</label>
            <input type="text" class="form-control text-uppercase" name="school_last_attended">
        </div>

        <div class="col-md-6">
            <label for="grade_level" class="form-label">Grade Level:</label>
            <input type="text" class="form-control text-uppercase" name="grade_level" required>
        </div>

        <div class="col-md-6">
            <label for="sched_exam" class="form-label">Scheduled Exam:</label>
            <input type="date" class="form-control text-uppercase" name="sched_exam">
        </div>

        <div class="col-md-6">
            <label for="sched_interview" class="form-label">Scheduled Interview:</label>
            <input type="date" class="form-control text-uppercase" name="sched_interview">
        </div>

        <div class="col-md-12">
            <label for="guardian" class="form-label">Guardian:</label>
            <input type="text" class="form-control text-uppercase" name="guardian">
        </div>

        <div class="col-12 text-center mt-4">
            <button type="submit" class="btn btn-primary">Register Student</button>
        </div>
    </form>

    
</div>
</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script>
    document.getElementById('bdate').addEventListener('change', function() {
    const birthDate = new Date(this.value);
    const today = new Date();

    if (birthDate > today) {
        alert("Birthdate cannot be in the future.");
        this.value = '';
        document.getElementById('age').value = '';
        return;
    }

    let age = today.getFullYear() - birthDate.getFullYear();
    const monthDifference = today.getMonth() - birthDate.getMonth();

    if (monthDifference < 0 || (monthDifference === 0 && today.getDate() < birthDate.getDate())) {
        age--;
    }

    document.getElementById('age').value = age;
});
</script>
<script>
    const emailField = document.getElementById('email_add');
    const errorField = document.getElementById('email_error');
    const emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;

    emailField.addEventListener('input', function () {
        if (!emailRegex.test(emailField.value) && emailField.value !== "") {
            errorField.classList.remove('d-none');
            errorField.textContent = "Please enter a valid email address.";
        } else {
            errorField.classList.add('d-none');
        }
    });
</script>

</body>
</html>
