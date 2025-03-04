<?php
$database = new mysqli("localhost", "root", "", "Tea");
$database->query("SET NAMES 'utf8'");

if(!$database) {
  die("Connection Fialed" . mysqli_connect_error());
} else {
  "Успех!";
}

?>