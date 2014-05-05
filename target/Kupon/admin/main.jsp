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
                            out.println("admin "+user.getEmail());
                        %>
                            <span class="style2"></span><span class="dark"> </span></h1>

                        <div class="post">

                            <ul>
                                <li><a href="goods.jsp">All goods</a></li>
                                <li><a href="">All orders</a></li>
                                <li><a href="">Orders on process</a></li>
                            </ul>
                        </div>
                        <!-- End Post -->
                        <!-- Start Post -->

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
