<?php
include '../include/connect_sjcr.inc.php';
include('../sessions.php');
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://fonts.googleapis.com/css?family=Source Sans Pro' rel='stylesheet'>
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/bootstrap.css" crossorigin="anonymous">
    <link rel="stylesheet" href="../bootstrap-theme.css" crossorigin="anonymous">
    <link rel="stylesheet" href="../index.css" crossorigin="anonymous">
    <link rel="icon" href="logo.png" type="image/x-icon">
</head>
<body>
    


<nav class="navbar fixed-top navbar-expand-lg navbar-light bg-warning p-3">
  <img src="logo.png" alt="Logo" style="width: 50px; height: auto; margin-right: 10px;"> <!-- Adjust size as needed -->
  <a class="navbar-brand pl-2" href="index.php">St. Joseph's College of Rodriguez Inc.</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse d-flex justify-content-end" id="navbarText">
    <ul class="navbar-nav me-3">
      <li class="nav-item active">
        <a class="nav-link font-weight-normal me-3" href="../index.php">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link font-weight-normal me-3" href="../search.php">Registered Database</a>
      </li>
      <li class="nav-item">
        <a class="nav-link font-weight-normal me-3" href="../register.php">Register</a>
      </li>
      <li class="nav-item">
        <a class="nav-link font-weight-normal me-3" href="../enrollment.php">Enroll</a>
      </li>
      <li class="nav-item">
        <a class="nav-link font-weight-normal me-3" href="../enrollment_data.php">Enrollment Database</a>
      </li>
      <li class="nav-item">
        <a class="nav-link font-weight-normal me-3" href="../Logout.php">Logout</a>
      </li>
    </ul>
  </div>
</nav>




<script src="../js/sjcr_js.js"></script>
<script src="../js/bootstrap.min.js"></script>
</body>
</html>