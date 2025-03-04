<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/normalize.css">
  <link rel="stylesheet" href="css/forms.css">
  <title>Вход</title>
</head>
<body>
  <div class="container">
    <h1 class="title">С возвращением!</h1>
    <form action="login.php" method="post" class="form-register">
      <input type="text" placeholder="Введите логин:" name="login" class="form-register__input">
      <input type="email" placeholder="Введите почту:" name="email" class="form-register__input">
      <input type="password" placeholder="Введите пароль:" name="password" class="form-register__input">
      <button type="submit" class="form-register__button">Войти</button>
    </form>
    <a href="registerUser.php" class="link-register">Нет аккаунта? Зарегистрироваться</a>
  </div>
</body>
</html>