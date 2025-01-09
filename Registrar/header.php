<?php
include 'include/connect_sjcr.inc.php';
include('sessions.php');
include('footer.php');
$inactive = 1200; // 20 minutes

if (isset($_SESSION['timeout'])) {
    $session_life = time() - $_SESSION['timeout'];
    if ($session_life > $inactive) {
        session_unset();
        session_destroy();
        header("Location: login.php");
        exit();
    }
}
$_SESSION['timeout'] = time();


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="icon" href="images/logo.png" type="image">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://fonts.googleapis.com/css?family=Source Sans Pro' rel='stylesheet'>
    <link rel="stylesheet" href="css/bootstrap.css" crossorigin="anonymous">
    <link rel="stylesheet" href="css/index.css" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"> <!-- Font Awesome -->
    <style>
        /* Body */
body {
    background-color: #dedede !important;
    display: flex;
    margin: 0;
    height: 100vh;
    overflow: hidden;
}

/* Sidebar styles */
#sidebar {
    width: 240px;
    position: fixed;
    top: 0;
    left: 0;
    height: 85%;
    background-image: linear-gradient(#360005, #0f0000);
    color: #fff;
    padding-top: 20px;
    overflow-y: auto;
    margin-top: 20px;
    margin-left: 10px;
    margin-right: 10px;
    border-radius: 10px;
    overflow: hidden;
}

#sidebar img {
    width: 50px;
    height: auto;
    margin-bottom: 10px;
}

#sidebar h4 {
    font-size: 18px;
}

/* Navigation links */
#sidebar .nav-link {
    color: #fff;
    padding: 7px 15px;
    text-decoration: none;
    display: block;
    transition: background-color 0.3s, color 0.3s, transform 0.3s;
}

/* Hover effect on nav links */
#sidebar .nav-link:hover {
    background-color: #75000b;
    border-radius: 4px;
    color: #ffc107;

    transform: translateX(5px); /* Slight shift to the right */
}

/* Logout icon */
.logout-icon {
    font-size: 20px;
    margin: 10px 15px;
    cursor: pointer;
    transition: color 0.3s, transform 0.3s;
}

/* Hover effect on logout icon */
.logout-icon:hover {
    color: #ff6961;
    transform: scale(1.2); /* Slight zoom effect */
}

/* Main content styles */
#main-content {
    margin-left: 240px;
    padding: 20px;
    flex-grow: 1;
    overflow-y: auto;
}

/* Collapsible sidebar styles */
#sidebar.collapsed {
    margin-left: -250px;
    transition: margin 0.3s ease-in-out;
}

#main-content.collapsed {
    margin-left: 0;
    transition: margin 0.3s ease-in-out;
}

/* Subtle hover effect for the entire sidebar */
#sidebar:hover {
    box-shadow: 2px 0 5px rgba(0, 0, 0, 0.2); /* Adds a shadow when hovered */
}

    </style>
    <script>
        function confirmLogout(event) {
            event.preventDefault();
            const userConfirmed = confirm("Are you sure you want to logout?");
            if (userConfirmed) {
                window.location.href = 'logout.php';
            }
        }

        function toggleSidebar() {
            const sidebar = document.getElementById("sidebar");
            const mainContent = document.getElementById("main-content");
            sidebar.classList.toggle("collapsed");
            mainContent.classList.toggle("collapsed");
        }
    </script>
</head>
<body>
    <!-- Sidebar -->
    <div id="sidebar">
        <div class="text-center">
            <img src="images/logo.png" alt="Logo">
            <h4>St. Joseph's College of Rodriguez, Inc.<br><br><p style="font-family: Arial; color: #fff406; font-size: 14px;" class="py-1">Registrar Department</p></h4>
        </div>
        <ul class="nav flex-column">
    <li class="nav-item">
        <a class="nav-link" href="index.php"><i class="fa-solid fa-house"></i> Home</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="register.php"><i class="fa-solid fa-pen"></i> Registration</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="enrollment.php"><i class="fa-solid fa-user-check"></i> Enrollment</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="search.php"><i class="fa-solid fa-database"></i> Student Information</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="enrollment_data.php"><i class="fa-solid fa-list"></i> Enrolled Student</a>
    </li>
    <li class="nav-item">
    <a class="nav-link" href="statistics.php"><i class="fa-solid fa-chart-bar" style="font-size: 1.2rem; margin-right: 8px;"></i>Statistics</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="logout.php"><i class="fa-solid fa-right-from-bracket"></i> Logout</a>
    </li>
</ul>
    </div>


    <script src="js/timeout.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
