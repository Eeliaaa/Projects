<?php

require_once("db.php");
$login = $_POST['login'];
$email = $_POST['email'];
$password = $_POST['password'];
$repeatpass = $_POST['passrepeat'];

if(empty($login) || empty($email) || empty($password) || empty($repeatpass)) {
  echo "Заполните все поля!";
} else {
  if ($password != $repeatpass) {
    echo "Пароли не совпадают";
  } else {
    $sql = "INSERT INTO `Users` (login_user, email_user, password_user) VALUES ('$login', '$email', '$password')";
    if($database -> query($sql) === TRUE) {
      header("Location: /index.php");
      exit();
      echo "Вы успешно зарегистрировались!";
    } else {
      echo "Ошибка: " . $database -> error;
    }
  }
}

$database -> close();

?>