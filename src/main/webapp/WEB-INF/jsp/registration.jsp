<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ru">

<head>
  <title>Вход/Регистрация</title>
  <meta charset="UTF-8">
  <meta name="format-detection" content="telephone=no">
  <link rel="stylesheet" href="../../front/css/style.min.css?_v=20230827174710">
  <link rel="shortcut icon" href="../../front/favicon.ico">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body class="registr">
<div data-fullscreen class="registration">
  <div class="registration__container registration__container_narrow">
    <div class="registration__body">
      <div class="registration__button-block">
        <button class="registration__button-singin" type="button">Sing In</button>
        <button class="registration__button-singup" type="button">Sing Up</button>
      </div>
      <form class="registration__form-singin" action="/login" method="post">
        <label class="registration__label" for="email">Email:</label>
        <input autocomplete="off" class="registration__input" type="email" id="email" name="email" required>

        <label class="registration__label" for="password">Пароль:</label>
        <input autocomplete="off" class="registration__input" type="password" id="password" name="password" required>

        <button class="registration__button" type="submit">Войти</button>
      </form>


      <form class="registration__form-singup" action="/registration" method="post">
        <label class="registration__label" for="username">Имя пользователя:</label>
        <input autocomplete="off" class="registration__input" type="text" id="username" name="username" required>

        <label class="registration__label" for="email">Email:</label>
        <input autocomplete="off" class="registration__input" type="email" id="email" name="email" required>

        <label class="registration__label" for="password">Пароль:</label>
        <input autocomplete="off" class="registration__input" type="password" id="password" name="password" required>

        <button class="registration__button" type="submit">Зарегистрироваться</button>
      </form>
    </div>
  </div>
</div>
<script src="webapp/front/js/app.min.js?_v=20230827174710"></script>
</body>

</html>
