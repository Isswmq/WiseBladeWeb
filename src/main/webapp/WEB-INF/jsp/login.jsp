<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ru">

<head>
    <title>Вход</title>
    <meta charset="UTF-8">
    <meta name="format-detection" content="telephone=no">
    <!-- <style>body{opacity: 0;}</style> -->
    <link rel="stylesheet" href="../../front/css/style.min.css?_v=20230910201050">
    <link rel="shortcut icon" href="../../front/favicon.ico">
    <!-- <meta name="robots" content="noindex, nofollow"> -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body class="registr">
<div class="wrapper">
    <header class="header">
        <div class="header__container">
            <div class="header__column header__column--logo">
                <a href="../../front/home.html" class="header__logo">WiseBlade</a>
            </div>
            <div class="header__column header__column--menu">
                <div class="header__menu menu">
                    <button type="button" class="menu__icon icon-menu"><span></span></button>
                    <nav class="menu__body">
                        <ul class="menu__list">
                            <li class="menu__item"><a target="_blank" href="https://vk.com/id212566646" class="menu__link">Поддержка</a></li>
                            <li class="menu__item"><a target="_blank" href="https://vk.com/id212566646?z=photo212566646_457245723%2Fphotos212566646" class="menu__link">Отзывы</a></li>
                            <li class="menu__item"><a href="/buypage.html" class="menu__link">Купить</a></li>
                            <li class="menu__item"><a href="/login" class="menu__link">Войти</a></li>
                            <li class="menu__item"><a href="/registration" class="menu__link">Зарегистрироваться</a></li>
                        </ul>
                    </nav>
                </div>
            </div>

        </div>
    </header>
    <div data-fullscreen class="registration">
        <div class="registration__container registration__container_narrow">
            <div class="registration__body">

                <form class="registration__form-singin" action="/login" method="post">
                    <label class="registration__label" for="email">Email:</label>
                    <input autocomplete="off" class="registration__input" type="email" id="email" name="email" value="${param.email}" required>

                    <label class="registration__label" for="password">Пароль:</label>
                    <input autocomplete="off" class="registration__input" type="password" id="password" name="password" required>

                    <button class="registration__button" type="submit">Войти</button>
                    <c:if test="${param.error != null}">
                        <div>
                            <span class="error-message">Email or password is not correct</span>
                        </div>
                    </c:if>
                    <style>
                        .error-message {
                            position: absolute;
                            top: 41%;
                            left: 50%;
                            transform: translate(-50%, -50%);
                            color: #8e56be;
                        }
                    </style>
                </form>
            </div>
        </div>
    </div>
</div>
<script src="../../front/js/app.min.js?_v=20230910201050"></script>
</body>

</html>

