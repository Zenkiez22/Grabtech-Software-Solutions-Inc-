<?php
include("include/config.php");
session_start();
$error = '';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // username and password sent from form 
    $myusername = mysqli_real_escape_string($db, $_POST['username']);
    $mypassword = mysqli_real_escape_string($db, $_POST['password']); 

    // Update the query to select role as well
    $sql = "SELECT * FROM administration WHERE username = '$myusername' AND password = '$mypassword'";
    $result = mysqli_query($db, $sql);      
    $row = mysqli_num_rows($result);

    if ($row == 1) {
        $user = mysqli_fetch_assoc($result);

        // Check if the role is ADMIN or REGISTRAR
        if ($user['role'] === 'ADMIN' || $user['role'] === 'REGISTRAR') {
            $_SESSION['user'] = $myusername;
            $_SESSION['user_role'] = $user['role']; // Store the role in the session
            header("location: index.php");
        } else {
            $error = "Access denied. You do not have permission to access this system.";
        }
    } else {
        $error = "Your Login Name or Password is invalid.";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SJCR - Registrar - Login</title>
    <link href='https://fonts.googleapis.com/css?family=Source Sans Pro' rel='stylesheet'>
    <link rel="stylesheet" href="css/sjcr-font.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/bootstrap.css" crossorigin="anonymous">
    <link rel="stylesheet" href="bootstrap-theme.css" crossorigin="anonymous">
    <link rel="stylesheet" href="index.css" crossorigin="anonymous">

    <script type="text/javascript" language="javascript">
        function checkQuote() {
            if(event.keyCode == 39) {
                event.keyCode = 0;
                return false;
            }
        }
    </script>
</head>
<body style="background-color: #ffb200;">
    <br>
        <!-- Home Button -->
    <div class="home-button">
        <a href="../" class="btn btn-warning btn-sm">Home</a>
    </div>
    <section class="pt-4">
        <div align="center">
            <img src="images/logo.png" class="center-image"><br>
            <div style="width:300px; align: left; background-color: white; padding-bottom:10px; border-radius: 15px; box-shadow: 5px 4px 10px 4px #ca8c00;">
                <div style="background-color:#4a0000; color:#FFFFFF; padding:5px; border-radius: 15px 15px 0px 0px;"><b>Registrar Login</b></div>
                <div style="margin:30px"><br>
                    <form action="" method="post">
                        <input class="primary-font" type="text" name="username" placeholder="Username..." class="box"/><br /><br />
                        <input class="primary-font" type="password" name="password" placeholder="Password..." class="box"/><br/><br />
                        <input style="height: 35px; width: 200px; background-color: #4a0000; color: white; border-radius: 15px; box-shadow: 3px 3px 10px 1px #737373;" type="submit" value=" Log in " class="hover-zoom btn-md btn-block"/><b
                    </form>
                    <div style="font-size:11px; color:#cc0000; margin-top:10px"><?php echo $error; ?></div>
                </div>
            </div>
            <br><br>
            ©2024 | Developed by: Lovimen B. Decena 
        </div>
    </section>
</body>
</html>
