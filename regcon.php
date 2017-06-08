<?php
session_start();
require("connect.php");

$name = $_POST["name"];
$address = $_POST["address"];
$number = $_POST["number"];
$mail = $_POST["mail"];
$pwd = $_POST["pwd"];

if(isset($name) && isset($address) && isset($number) && isset($mail) && isset($pwd)) {
	$query = "INSERT INTO registration(name,address,number,mail,pwd) VALUES ('$name','$address','$number','$mail','$pwd')";
	$result = mysql_query($query);
	if($result) {
		header("Location: log.html");
		mysql_close();
	}
} else {
	echo "sorry";
}
?>