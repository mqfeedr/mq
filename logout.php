<?php
	require("connect.php");
	mysql_close();
    session_start();
    session_unset();
    session_destroy();
    session_write_close();
    session_regenerate_id(true);
	header("Location: index.php");
?>