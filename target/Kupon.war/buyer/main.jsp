<%@ page import="entity.User" %>
<%@ page import="entity.Goods" %>
<%@ page import="java.util.List" %>
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
                            List<Goods> goods = (List<Goods>) session.getAttribute("goods");
                            out.println("buyer "+user.getEmail());
                        %>
                            <span class="style2"></span><span class="dark"> </span></h1>
                        <ul>
                            <li><a href="/Kupon/buyer">Все товары</a></li>
                            <li><a href="">Мой заказы</a></li>
                            <li><a href="">Не доставленные заказы</a></li>

                        </ul>

                        <% for (int i = 0; i < goods.size(); i++) { %>
                        <div class="post">
                            <form method="post" action="">
                                <ul class="admin-goods-list">
                                    <h4>Название: <% out.print(goods.get(i).getName()); %>,
                                        Категория: <% out.print(goods.get(i).getCategory()); %>,
                                        Цена: <% out.print(goods.get(i).getPrice()); %> тг. </h4>
                                    <%--<p><% out.print(goods.get(i).getCategory()); %></p>--%>
                                    <%--<p><% out.print(goods.get(i).getDescription()); %></p>--%>
                                </ul>
                            </form>
                        </div>
                        <% } %>
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
