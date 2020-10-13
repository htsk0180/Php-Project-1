<?php
	header("content-type:text/html;charset=utf8");
	session_start();
	
	$db = @mysql_connect("localhost", "root", "12345") or die("Veritabanına bağlantı sağlanamadı!");
	mysql_select_db("veritabanim", $db);
	mysql_set_charset("utf8", $db);
?>