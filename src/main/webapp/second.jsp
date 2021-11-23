<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 22.11.2021
  Time: 12:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        #main{
            display:grid;
            grid-template-columns: repeat(4, 1fr);
            grid-auto-rows: 25px;
            border: 2px solid black;


            margin-top:15%;
            margin-bottom:15%;
            margin-left:30% ;
            margin-right:30%;

        }

        #second{
            grid-row-start:5;
            grid-row-end:17;
            border: 1px solid black;
            background: #ECBCED;

            grid-column-start:1;
            grid-column-end:2;

        }
        #third{
            grid-column-start:2;
            grid-column-end:5;
            border: 1px solid black;
            grid-row-start:5;
            grid-row-end:6;

            background:#BCCFF0;

        }
        #fourth{
            grid-row-start:6;
            grid-row-end:17;
            border: 1px solid black;
            grid-column-start:2;
            grid-column-end:4;
            background:#E8EEF9;




        }


        #fifth{
            grid-row-start:6;
            grid-row-end:17;
            border: 1px solid black;
            grid-column-start:4;
            grid-column-end:5;
            background:#ECBCED;
        }
        #sixth{
            grid-row-start:17;
            grid-row-end:21;
            border: 1px solid black;
            grid-column-start:1;
            grid-column-end:5;
            background:#C1E7EB;

            display:grid;
            grid-template-columns: repeat(20, 1fr);
            grid-auto-rows: 20px;
        }
        #first{
            grid-column-start: 1;
            grid-column-end: 5;

            grid-row-start:1;
            grid-row-end:5;

            background:#C1E7EB;
            border: 1px solid black;

            display:grid;
            grid-template-columns: repeat(20, 1fr);
            grid-auto-rows: 20px;

            /*white-space: nowrap; */

        }
        #first #f2{
            border: 1px solid black;

            grid-row-start:3;
            grid-row-end:4;

            grid-column-start: 2;
            grid-column-end: 6;
            background:white;

            font-weight:bold

        }
        #sixth #s2{
            border: 1px solid black;

            grid-row-start:3;
            grid-row-end:4;

            grid-column-start: 16;
            grid-column-end: 20;
            background:white;

            font-weight:bold
        }
        #sixth #s1{

            text-align: left;
            grid-column-start: 1;
            grid-column-end: 20;

            grid-row-start:3;
            grid-row-end:4;
        }
        #first #f1{

            grid-column-start: 15;
            grid-column-end: 21;


        }
        #second div{

            margin-top: 40%;

            text-align: center;

        }

        #third div{
            text-align: right;
        }
        #fifth div{
            margin-top:40%;
        }
        #fourth img{
            width: 20%;
            margin-left: 10%;
        }

        /* Собственно сам слайдер */
        .slider{
            max-width: 90%;
            position: relative;
            margin: auto;
            height: 300px;
            margin-bottom: 15px;
        }
        /* Картинка мастабируется по отношению к родительскому элементу */
        .slider .item {
            object-fit: cover;
            width: 100%;
            height: 300px;
            border: none !important;
            box-shadow: none !important;
        }
        /* Кнопки вперед и назад */
        .slider .prev, .slider .next {
            cursor: pointer;
            position: absolute;
            top: 0;
            top: 40%;
            width: auto;
            margin-top: -22px;
            padding: 16px;
            color: white;
            font-weight: bold;
            font-size: 18px;
            transition: 0.6s ease;
            border-radius: 0 3px 3px 0;
        }
        .item{
            ${image}
        }
        .slider .next {
            right: 0;
            border-radius: 3px 0 0 3px;
        }
        /* При наведении на кнопки добавляем фон кнопок */
        .slider .prev:hover,
        .slider .next:hover {
            background-color: rgba(0, 0, 0, 0.8);
        }
        /* Заголовок слайда */
        .slideText {
            position: absolute;
            color: #fff;
            font-size: 35px;
            /* Выравнивание текста по горизонтали и по вертикали*/
            left: 50%;
            top: 40%;
            transform: translate(-50%, -50%);
            /* Тень*/
            text-shadow: 1px 1px 1px #000, 0 0 1em #000;
        }
    </style>
</head>
<body onload='showSlides(1)'>
<script>
    /* Индекс слайда по умолчанию */
    var slideIndex = 1;
    showSlides(slideIndex);

    /* Функция увеличивает индекс на 1, показывает следующй слайд*/
    function plusSlide() {
        showSlides(slideIndex += 1);
    }

    /* Функция уменьшяет индекс на 1, показывает предыдущий слайд*/
    function minusSlide() {
        showSlides(slideIndex -= 1);
    }

    /* Устанавливает текущий слайд */
    function currentSlide(n) {
        showSlides(slideIndex = n);
    }

    /* Основная функция слайдера */
    function showSlides(n) {
        var i;
        var slides = document.getElementsByClassName("item");
        var dots = document.getElementsByClassName("slider-dots_item");
        if (n > slides.length) {
            slideIndex = 1
        }
        if (n < 1) {
            slideIndex = slides.length
        }
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
    }

</script>
<div id="main">
    <div id="first">
        <div id="f1">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</div>
        <div id="f2">some text</div>
    </div>
    <div id="second">
        <div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</div>
    </div>
    <div id="third">
        <div>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</div>
    </div>
    <div id="fourth">

        <form name="first"  action="ParamServlet" method="post">
            <input name="text" value="" style="margin-left: 4%; margin-top: 4%;"> text
            <input name="count" value="" style="margin-left: 4%"> count
            <input name="image" value="" style="margin-left: 4%"> image link
            <button name="change" type="submit" <%--onclick="changeInfo()"--%>>submit</button>
        </form>

        <div class="slider" id="slider">
            <%--<div class="item">
                <div class="slideText"></div>
            </div>--%>
            ${res}
            <a class="prev" onclick="minusSlide()">&#10094;</a>
            <a class="next" onclick="plusSlide()">&#10095;</a>
        </div>


    </div>
    <div id="fifth">
        <div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</div>
    </div>
    <div id="sixth">
        <div id="s1">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</div>
        <div id="s2"> another text</div>
    </div>

</div>
</body>
</html>