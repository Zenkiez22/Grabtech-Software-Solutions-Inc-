<?php
   // Start the session
   session_start();

   if(!isset($_SESSION['user'])){
      header("location: login.php");
      die();
   }
   $login_session = $_SESSION['user'];
?>