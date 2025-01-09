<?php 
include 'include/connect_sjcr.inc.php'; // Include your database connection
include 'header.php';
$search_term = '';
$results = [];

// Fetch the school year from the school_year table
$stmt = $con->prepare("SELECT school_year FROM school_year LIMIT 1");
$stmt->execute();
$current_school_year = $stmt->fetchColumn();  // Fetch the school year

// Handle search form submission
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $search_term = $_POST['search_term'];

    // Prepare the SQL query to search in enrollment_db based on the school year
    $stmt = $con->prepare("SELECT * FROM enrollment_db WHERE (student_id LIKE :search_term OR fullname LIKE :search_term) AND school_year = :current_school_year");
    $search_param = "%" . $search_term . "%";
    $stmt->bindParam(':search_term', $search_param);
    $stmt->bindParam(':current_school_year', $current_school_year);
    $stmt->execute();
    $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
} else {
    // If no search term, display all data for the current school year
    $stmt = $con->prepare("SELECT * FROM enrollment_db WHERE school_year = :current_school_year");
    $stmt->bindParam(':current_school_year', $current_school_year);
    $stmt->execute();
    $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
}
// Fetch the school year from the school_year table
$stmt = $con->prepare("SELECT school_year FROM school_year LIMIT 1");
$stmt->execute();
$set_school_year = $stmt->fetchColumn();  // Fetch the school year


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enrollment Data</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.css">
    <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.js"></script>
    <style>
        .table-typo {
          font-size: 12px;
        }
    </style>
</head>
<body>
<div id="main-content">
<div class="pb-2">

<div class="pb-5">
  <div class="card shadow">
    <div class="card-header text-white" 
         style="background-image: linear-gradient(#360005, #0f0000); display: flex; align-items: center;">
      <button onclick="toggleSidebar()" style="color: white; background-color: transparent; border: none;">☰</button>
      <h5 class="mb-0">Enrollment Data</h5>
      <div style="margin-left: auto; color: white;">
        <?php echo "School Year: " . htmlspecialchars($set_school_year); ?>
      </div>
    </div>
    <div class="card-body">
    <form method="POST" class="mb-4">
        <div class="mb-3">
            <label for="search_term" class="form-label">Search by Student ID or Name:</label>
            <input type="text" class="form-control" name="search_term" id="search_term" value="<?php echo htmlspecialchars($search_term); ?>">
        </div>
        <button type="submit" class="btn btn-primary">Search</button>
    </form>

    <?php if (!empty($results)): ?>
      <div class="table-responsive">
        <table class="table table-hover table-bordered">
            <thead>
                <tr class="table-typo">
                    <th>No.</th>
                    <th>StudentID</th>
                    <th>Full Name</th>
                    <th>School Year</th>
                    <th>Level</th>
                    <th>Strand</th>
                    <th>Course</th>
                    <th>Date of Enrollment</th>
                    <th>Status</th>
                    <th>Gender</th>
                    <th>Contact No.</th>
                    <th>Requirements</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
            <?php foreach ($results as $row): ?>
            <tr style="font-size: 11px;">
            <td><?php echo htmlspecialchars($row['id']); ?></td>
            <td><?php echo htmlspecialchars($row['student_id']); ?></td>
            <td><?php echo htmlspecialchars($row['fullname']); ?></td>
            <td><?php echo htmlspecialchars($row['school_year']); ?></td>
            <td><?php echo htmlspecialchars($row['level']); ?></td>
            <td><?php echo htmlspecialchars($row['strand']); ?></td>
            <td><?php echo htmlspecialchars($row['course']); ?></td>
            <td><?php echo htmlspecialchars($row['date_of_enrollment']); ?></td>
            <td><?php echo htmlspecialchars($row['status']); ?></td>
            <td><?php echo htmlspecialchars($row['gender']); ?></td>
            <td><?php echo htmlspecialchars($row['contact']); ?></td>
            <td>
                <!-- View Button -->
            <a href="#" 
              class="btn btn-sm"
              data-bs-toggle="tooltip" 
              data-bs-html="true" 
              data-bs-placement="top" 
              title="Birth Certificate: <?php echo $row['bcert'] ? '<i class=\'bi bi-check-circle-fill text-success\'></i>' : '<i class=\'bi bi-x-circle-fill text-danger\'></i>'; ?><br>
              ID Picture: <?php echo $row['idpic'] ? '<i class=\'bi bi-check-circle-fill text-success\'></i>' : '<i class=\'bi bi-x-circle-fill text-danger\'></i>'; ?><br>
              Report Card: <?php echo $row['report_card'] ? '<i class=\'bi bi-check-circle-fill text-success\'></i>' : '<i class=\'bi bi-x-circle-fill text-danger\'></i>'; ?><br>
              Baptismal: <?php echo $row['baptismal'] ? '<i class=\'bi bi-check-circle-fill text-success\'></i>' : '<i class=\'bi bi-x-circle-fill text-danger\'></i>'; ?><br>
              Form 137: <?php echo $row['form137'] ? '<i class=\'bi bi-check-circle-fill text-success\'></i>' : '<i class=\'bi bi-x-circle-fill text-danger\'></i>'; ?><br>
              Good Moral: <?php echo $row['good_moral'] ? '<i class=\'bi bi-check-circle-fill text-success\'></i>' : '<i class=\'bi bi-x-circle-fill text-danger\'></i>'; ?>">
              <i class="bi bi-eye"></i> View
            </a>
                <!-- Edit Button -->
            <a href="#" 
              class="btn btn-warning btn-sm"
              data-bs-toggle="modal" 
              data-bs-target="#editRequirementsModal" 
              data-id="<?php echo htmlspecialchars($row['student_id']); ?>"
              data-bcert="<?php echo $row['bcert']; ?>"
              data-idpic="<?php echo $row['idpic']; ?>"
              data-report-card="<?php echo $row['report_card']; ?>"
              data-baptismal="<?php echo $row['baptismal']; ?>"
              data-form137="<?php echo $row['form137']; ?>"
              data-good-moral="<?php echo $row['good_moral']; ?>">
              <i class="bi bi-pencil-square"></i> Edit
            </a>
            </td>
            <td>
              <a href="print_coe.php?id=<?php echo urlencode($row['id']); ?>&student_id=<?php echo urlencode($row['student_id']); ?>" class="btn btn-secondary btn-sm">Print COE</a>
            </td>
            </tr>
              <?php endforeach; ?>
            </tbody>
          </table>
            </div>
</div>
</div>
</div>
    <?php elseif ($_SERVER['REQUEST_METHOD'] === 'POST'): ?>
        <div class="alert alert-warning">No results found for "<strong><?php echo htmlspecialchars($search_term); ?></strong>"</div>
    <?php endif; ?>
</div>

<!-- Modal for Editing Requirements -->
<div class="modal fade" id="editRequirementsModal" tabindex="-1" aria-labelledby="editRequirementsLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <form id="editRequirementsForm" method="POST" action="update_requirements.php">
        <div class="modal-header">
          <h5 class="modal-title" id="editRequirementsLabel">Edit Requirements</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <input type="hidden" id="student_id" name="student_id">
          <div class="mb-3">
            <label class="form-label">Birth Certificate</label>
            <select class="form-control" id="bcert" name="bcert">
              <option value="1">Submitted</option>
              <option value="0">Not Submitted</option>
            </select>
          </div>
          <div class="mb-3">
            <label class="form-label">ID Picture</label>
            <select class="form-control" id="idpic" name="idpic">
              <option value="1">Submitted</option>
              <option value="0">Not Submitted</option>
            </select>
          </div>
          <div class="mb-3">
            <label class="form-label">Report Card</label>
            <select class="form-control" id="report_card" name="report_card">
              <option value="1">Submitted</option>
              <option value="0">Not Submitted</option>
            </select>
          </div>
          <div class="mb-3">
            <label class="form-label">Baptismal</label>
            <select class="form-control" id="baptismal" name="baptismal">
              <option value="1">Submitted</option>
              <option value="0">Not Submitted</option>
            </select>
          </div>
          <div class="mb-3">
            <label class="form-label">Form 137</label>
            <select class="form-control" id="form137" name="form137">
              <option value="1">Submitted</option>
              <option value="0">Not Submitted</option>
            </select>
          </div>
          <div class="mb-3">
            <label class="form-label">Good Moral</label>
            <select class="form-control" id="good_moral" name="good_moral">
              <option value="1">Submitted</option>
              <option value="0">Not Submitted</option>
            </select>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Save Changes</button>
        </div>
      </form>
    </div>
  </div>
</div>
<script>
// Handle modal data population for editing
$('#editRequirementsModal').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget); // Button that triggered the modal
  var studentId = button.data('id');
  var bcert = button.data('bcert');
  var idpic = button.data('idpic');
  var reportCard = button.data('report-card');
  var baptismal = button.data('baptismal');
  var form137 = button.data('form137');
  var goodMoral = button.data('good-moral');

  // Populate the modal fields with the data
  $('#student_id').val(studentId);
  $('#bcert').val(bcert);
  $('#idpic').val(idpic);
  $('#report_card').val(reportCard);
  $('#baptismal').val(baptismal);
  $('#form137').val(form137);
  $('#good_moral').val(goodMoral);
});
</script>
<script>
    // Initialize Bootstrap tooltips
    document.addEventListener('DOMContentLoaded', function () {
        var tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]');
        tooltipTriggerList.forEach(function (tooltipTriggerEl) {
            new bootstrap.Tooltip(tooltipTriggerEl);
        });
    });
</script>
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
