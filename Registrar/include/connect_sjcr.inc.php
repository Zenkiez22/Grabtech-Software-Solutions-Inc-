<?php
$servername='localhost';
$username="";
$password="";

try
{
	$con=new PDO("mysql:host=$servername;dbname=u512486824_sjcr",$username,$password);
	$con->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
	//echo 'connected';
}
catch(PDOException $e)
{
	echo '<br>'.$e->getMessage();
}
	
?>