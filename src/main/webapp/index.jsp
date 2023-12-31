<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ru">

<head>
    <title>Главная</title>
    <meta charset="UTF-8">
    <meta name="format-detection" content="telephone=no">
    <!-- <style>body{opacity: 0;}</style> -->
    <link rel="stylesheet" href="front/css/style.min.css?_v=20230910201050">
    <link rel="shortcut icon" href="front/favicon.ico">
    <!-- <meta name="robots" content="noindex, nofollow"> -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>
<div class="wrapper">
    <header class="header">
        <div class="header__container">
            <div class="header__column header__column--logo">
                <a href="/" class="header__logo">WiseBlade</a>
            </div>
            <div class="header__column header__column--menu">
                <div class="header__menu menu">
                    <button type="button" class="menu__icon icon-menu"><span></span></button>
                    <nav class="menu__body">
                        <ul class="menu__list">
                            <c:choose>
                                <c:when test="${empty sessionScope.user}">
                                    <li class="menu__item"><a target="_blank" href="https://vk.com/id212566646" class="menu__link">Поддержка</a></li>
                                    <li class="menu__item"><a target="_blank" href="https://vk.com/id212566646?z=photo212566646_457245723%2Fphotos212566646" class="menu__link">Отзывы</a></li>
                                    <li class="menu__item"><a href="/buypage" class="menu__link">Купить</a></li>
                                    <li class="menu__item"><a href="/login" class="menu__link">Войти</a></li>
                                    <li class="menu__item"><a href="/registration" class="menu__link">Зарегистрироваться</a></li>
                                </c:when>
                                <c:otherwise>
                                    <li class="menu__item"><a target="_blank" href="https://vk.com/id212566646" class="menu__link">Поддержка</a></li>
                                    <li class="menu__item"><a target="_blank" href="https://vk.com/id212566646?z=photo212566646_457245723%2Fphotos212566646" class="menu__link">Отзывы</a></li>
                                    <li class="menu__item"><a href="/buypage" class="menu__link">Купить</a></li>
                                    <li class="menu__item"><a href="/profile" class="menu__link">Личный Кабинет</a></li>
                                </c:otherwise>
                            </c:choose>
                        </ul>
                    </nav>
                </div>
            </div>

        </div>
    </header>
    <main class="mainpage">
        <div data-fullscreen class="possibilities">
            <div class="possibilities__container">
                <div class="possibilities__items">
                    <div class="possibilities__item">
                        <h2 class="possibilities__title">Широкие возможности <span>WiseBlade</span></h2>
                        <div class="possibilities__text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos inventore quae, explicabo delectus earum ipsa, blanditiis esse officiis perspiciatis excepturi consequuntur nulla quisquam eius molestias illum magnam eligendi porro harum?</div>
                    </div>
                    <div class="possibilities__item">
<%--                        <picture><source srcset="front/img/hoodcheat.webp" type="image/webp"><img src="front/img/hoodcheat.webp" alt=""></picture>--%>
                    </div>
                </div>
                <a href="front/buypage.html" class="possibilities__buy-button">Купить</a>
            </div>

        </div>
        <div class="mainpage__advantages advantages-page">
            <div class="advantages-page__container">

                <div class="advantages-page__titles advantages-titles">
                    <h2 class="advantages-titles__title">Наши приемущества</h2>
                    <div class="advantages-titles__subtitle">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi dolore vero soluta amet magnam nisi.</div>
                </div>

                <div class="advantages-page__slider">
                    <div class="advantages-page__swiper">
                        <div class="advantages-page__slide slide-advantages-page">
                            <div class="slide-advantages-page__content">
                                <div class="slide-advantages-page__text">
                                    <h2>Lorem ipsum dolor sit.</h2>
                                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia, minus! Quos, reprehenderit facere. Iure natus numquam maxime magni fugiat quisquam illo illum minus incidunt ducimus, laboriosam aspernatur sequi optio itaque? Lorem ipsum dolor sit amet consectetur adipisicing elit. Facilis eligendi aspernatur voluptates distinctio dignissimos mollitia, atque impedit expedita aliquam a pariatur. Nihil enim ea doloribus laborum maiores harum voluptates. Sunt.</p>
                                </div>
                            </div>
                            <a href="#" class="slide-advantages-page__image-ibg">
                                <picture><source data-srcset="front/img/code.webp" srcset="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII=" type="image/webp"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="  class="swiper-lazy" data-src="front/img/code.jpeg" alt="Image"></picture>
                            </a>
                        </div>
                        <div class="advantages-page__slide slide-advantages-page">
                            <div class="slide-advantages-page__content">
                                <div class="slide-advantages-page__text">
                                    <h2>Lorem ipsum dolor sit.</h2>
                                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia, minus! Quos, reprehenderit facere. Iure natus numquam maxime magni fugiat quisquam illo illum minus incidunt ducimus, laboriosam aspernatur sequi optio itaque? Lorem ipsum dolor sit amet consectetur adipisicing elit. Facilis eligendi aspernatur voluptates distinctio dignissimos mollitia, atque impedit expedita aliquam a pariatur. Nihil enim ea doloribus laborum maiores harum voluptates. Sunt. Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus, ut, soluta delectus nemo quidem quasi dolorem doloribus obcaecati, sunt esse porro itaque quod. Maxime qui delectus perferendis quaerat possimus quasi.</p>
                                </div>
                            </div>
                            <a href="#" class="slide-advantages-page__image-ibg">
                                <picture><source data-srcset="front/img/cover.webp" srcset="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII=" type="image/webp"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="  class="swiper-lazy" data-src="front/img/cover.jpg" alt="Image"></picture>
                            </a>
                        </div>
                        <div class="advantages-page__slide slide-advantages-page">
                            <div class="slide-advantages-page__content">
                                <div class="slide-advantages-page__text">
                                    <h2>Lorem ipsum dolor sit.</h2>
                                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia, minus! Quos, reprehenderit facere. Iure natus numquam maxime magni fugiat quisquam illo illum minus incidunt ducimus, laboriosam aspernatur sequi optio itaque? Lorem ipsum dolor sit amet consectetur adipisicing elit. Facilis eligendi aspernatur voluptates distinctio dignissimos mollitia, atque impedit expedita aliquam a pariatur. Nihil enim ea doloribus laborum maiores harum voluptates. Sunt.</p>
                                </div>
                            </div>
                            <a href="#" class="slide-advantages-page__image-ibg">
                                <picture><source data-srcset="front/img/hack.webp" srcset="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII=" type="image/webp"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="  class="swiper-lazy" data-src="front/img/hack.jpg" alt="Image"></picture>
                            </a>
                        </div>
                    </div>
                    <div class="advantages-page__controll"></div>
                </div>

            </div>
        </div>




        <div class="gameplay-example">
            <div class="gameplay-example__container">
                <div class="gameplay-example__title">Gameplay with <span>WiseBlade</span></div>
                <div class="gameplay-example__subtitle">Тут можно увидеть наш клиент в деле <span></span></div>
                <div class="gameplay-example__video">
                    <iframe class="gameplay-example__frame" src="https://www.youtube.com/embed/73lV5nZIPYg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                </div>
            </div>
        </div>
</div>
</main>
<footer class="footer">
    <div class="footer__container">
        <div class="company">
            Dev. by <span>DevMasters INC.</span> 2023
        </div>
    </div>
</footer>

</div>
<!--
<div id="popup" aria-hidden="true" class="popup">
<div class="popup__wrapper">
    <div class="popup__content">
        <button data-close type="button" class="popup__close">Закрыть</button>
        <div class="popup__text">
        </div>
    </div>
</div>
</div>
-->

<script src="front/js/app.min.js?_v=20230910201050"></script>
</body>

</html>