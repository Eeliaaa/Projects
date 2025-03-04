<?php
require_once("db.php");

$login = $_POST['login'];
$email = $_POST['email'];
$password = $_POST['password'];

if(empty($login) || empty($email) || empty($password)) {
  echo "Заполните все поля!";
} else {
  $sql = "SELECT * FROM `Users` WHERE login_user = '$login' AND email_user = '$email' AND password_user = '$password'";
  $result = $database -> query($sql);
  
  if($result -> num_rows > 0) {
    while($row = $result -> fetch_assoc()) {
      echo "Добро пожаловать, " .$row['login_user'] . "!";
      header("Location: /index.php");
      exit();
    }
  } else {
    echo "Такого пользователя не существует!" . "<br/>";
    echo "Проверьте правильность введённых данных или зарегистрируйтесь!";
  }
}


?>