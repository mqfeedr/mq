<?php
session_start();
require("connect.php");
if(isset($_POST["name"])&&isset($_POST["address"])&&isset($_POST["number"])&&isset($_POST["mail"])&&isset($_POST["pwd"]))
{
echo "Hi";
	$name = $_POST["name"];
	$address = $_POST["address"];
	$number = $_POST["number"];
	$mail = $_POST["mail"];
	$pwd = $_POST["pwd"];
	$query = sprintf("INSERT INTO LOGIN (mail,pwd) VALUES ('%s','%s')",$mail,$pwd);
	mysql_query($query);
	$query1 = sprintf("SELECT name FROM LOGIN WHERE UNAME = '%s'",$mail);
	$tmp = mysql_query($query1);
	$row = mysql_fetch_assoc($tmp);
	$name = $row["name"];
	$_SESSION["name"]=$name;
	$query2 = sprintf("INSERT INTO REGISTRATION(name,address,number,mail,pwd) VALUES ('%s','%s','%s','%s','%s')",$name,$address,$number,$mail,$pwd);
	mysql_query($query2) or die(mysql_error());
	$_SESSION["cid"]=$name;
	header("Location: index.html");
	mysql_close();
}
else
{
echo "sorry";
}
?>