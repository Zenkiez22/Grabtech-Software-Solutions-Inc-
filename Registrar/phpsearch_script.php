<?php
include 'include/connect_sjcr.inc.php';
include('session.php');
$searchErr = '';
$student_details='';
if(isset($_POST['save']))
{
	if(!empty($_POST['search']))
	{
		$search = $_POST['search'];
		$stmt = $con->prepare("select * from student_db where student_id like '%$search%' or name like '%$search%'");
		$stmt->execute();
		$student_details = $stmt->fetchAll(PDO::FETCH_ASSOC);
		
	}
	else
	{
		$searchErr = "Please enter the information";
	}
   
}

?>