<?php
require_once("db.php");

$email = $_POST["email__contacts"];

if(empty($email)) {
  echo "Заполните все поля!";
} else {
  $sql = "INSERT INTO `Users_join` (email_joinUser) VALUES ('$email')";
  if($database -> query($sql) === TRUE) {
    echo "Вы успешно подали заявку!" . "</br>";
    echo "Спасибо!";
  } else {
    echo "Ошибка: " . $database -> error;
  }
} 


?>