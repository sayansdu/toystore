<%@ page import="entity.User" %>
<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page contentType="text/html; charset=UTF-8"%>
<html>
    <head>
        <title></title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" type="text/css" href="../css/layout.css" media="screen, projection, tv " />
        <link rel="stylesheet" type="text/css" href="../css/html.css" media="screen, projection, tv " />
        <style type="text/css">
            <!--
            .style2 {color: #627E9A}
            .style3 {color: #62CC3C}
            .style6 {color: #5C8096}
            .style7 {color: #888888}
            -->
        </style>

    </head>
    <body>

        <br><div id="content">

            <div id="header" class="width"> <img src="../images/2.jpg" alt="Your logo goes here" style="width:300px;" />

            </div>

            <div class="floatRight width25 lightBlueBg horzPad">

                <h3>Впервые на Chococupon.me? <span class="dark"></span></h3>
                <ul class="submenu2">

                    <li><a href="main.jsp">Главная</a></li>
                    <li><a href="cart.jsp">Купоны ChocoCupon.kz </a></li>
                    <li><a href="/Kupon/Logout">Выйти</a></li>


                </ul>
            </div>

            <div id="page">

                <div id="columns" class="widthPad">

                    <div class="floatLeft">
                        <h1><%
                            User user = (User) session.getAttribute("currentUser");
                            out.println("courier "+user.getEmail());
                        %>
                            <span class="style2"></span><span class="dark"> </span></h1>

                        <div class="post">

                            <p> Только с 19 по 20 ноября 
                            </p>
                            <p><span class="title"><br>INESSTYLE</span></p>
                            <p> Шерстяные и трикотажные кофты, велюровые костюмы, майки и многое другое от сети магазинов «INESSTYLE». Скидка 50%
                                <img src="../.images/4.jpg" alt="samples" class="alignBottom"/>
                            <p><span class="title"><a href="/Kupon/AddCart?kname=INESSTYLE" class="link-button">купить</a></span></p>
                            </p>
                        </div>
                        <!-- End Post -->
                        <!-- Start Post -->


                        <div class="post">
                            <div class="date"> <span class="month">DECEMBER</span> <span class="day">12</span> </div>
                            <p> <span class="title"><br>«D&G», «Prada», «Ray Ban», «Vogue»</span> Медицинские оправы от «D&G», «Prada», «Ray Ban», «Vogue» и других брендов + бесплатная диагностика зрения в салонах элитной оптики  <img src="images/5.jpg" alt="samples" class="alignBottom"/> <a href="#">More...</a> </p>
                            <p><span class="title"><a href="/Kupon/AddCart?kname=D&G" class="link-button">купить</a></span></p>
                        </div>

                        <div class="post">
                            <div class="date"> <span class="month">DECEMBER</span> <span class="day">11</span> </div>
                            <p> <span class="title"><br>«Lady Claire». </span> <a href="#"><img src="images/6.jpg" alt="firefox" class="floatRight border"/></a> Наборы из 3, 5 или 7 легинсов от магазина «Lady Claire». Скидка 45% </p>
                            <p><img src="images/5.jpg" alt="samples" class="alignBottom"/> <a href="#">More...</a> </p>
                            <p><span class="title"><a href="/Kupon/AddCart?kname=LadyClaire" class="link-button">купить</a></span></p>
                        </div>

                    </div>

                    <div class="post">
                        <div class="date"> <span class="month">DECEMBER</span> <span class="day">10</span> </div>
                        <p> <span class="title"><br>«Школу активных продаж с нуля» </span> <a href="#"><img src="images/7.jpg" alt="firefox" class="floatRight border"/></a> Пройдите «Школу активных продаж с нуля» + трудоустройство. Скидка 80% </p>
                            <p><span class="title"><a href="/Kupon/AddCart?kname=School" class="link-button">купить</a></span></p>
                    </div>

                </div>



            </div>

        </div>

    </div>

    <div id="footer">

        <div id="bg" class="width">
            <ul>

                <li><a rel="nofollow" target="_blank" href="" class="last">Мы в социальных сетях!</a></li>

            </ul>
        </div>

    </div>







</body>
</html>
