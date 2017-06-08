<?php
session_start();
if(isset ($_POST["mail"]) && isset($_POST["pwd"])){
$mail = $_POST["mail"];
$pwd = $_POST["pwd"];
require("connect.php");
$query = sprintf("SELECT pwd FROM LOGIN WHERE mail = '%s'",$mail);
$result = mysql_query($query);
while($row = mysql_fetch_assoc($result)){
$tmp = $row["pwd"];
}
if(!strcmp($pwd,$tmp)){
$log = sprintf("SELECT mail FROM LOGIN WHERE mail = '%s'",$mail);
$rs = mysql_query($log);
$r1 = mysql_fetch_assoc($rs);
$uid = $r1["mail"];
$n1 = sprintf("SELECT name FROM REGISTRATION WHERE name = %d",$name);
$n2 = mysql_query($n1);
$row = mysql_fetch_assoc($n2);
$mail = $row["mail"];
$_SESSION["mail"] = $mail;
$_SESSION["name"] = $name;
header("Location: index.html");
}
else{
echo "Wrong Password";
}
}
else{
echo "Worng.";
}
?>