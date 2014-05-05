<%@ page import="entity.User" %>
<%@ page import="java.util.List" %>
<%@ page import="entity.Goods" %>
<%--
  Created by IntelliJ IDEA.
  User: sayan
  Date: 4/20/14
  Time: 5:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Goods</title>
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
<br>
<div id="content">
    <div id="header" class="width"> <img src="../images/2.jpg" alt="Your logo goes here" style="width:300px;" />

    </div>
    <div class="floatRight width25 lightBlueBg horzPad">

        <h3>Добро пожаловать <span class="dark"></span></h3>
        <ul class="submenu2">
            <li><a href="/Kupon/Logout">Выйти</a></li>
        </ul>
    </div>

    <div id="page">
        <div id="columns" class="widthPad">
            <div class="floatLeft">
                <h1><%
                    User user = (User) session.getAttribute("currentUser");
                    List<Goods> goods = (List<Goods>) session.getAttribute("goods");
                    out.println("admin "+user.getEmail());
                %>
                    <span class="style2"></span><span class="dark"> </span></h1>
                <ul>
                    <li><a href="goods.jsp">Все товары</a></li>
                    <li><a href="">Все заказы</a></li>
                    <li><a href="">Новые заказы</a></li>
                    <li><a href="">Не доставленные заказы</a></li>
                    <li><a href="add.jsp">Добавить товар</a></li>

                </ul>

                <% for (int i = 0; i < goods.size(); i++) { %>
                <div class="post">
                    <ul class="admin-goods-list">
                       <p>Название: <% out.print(goods.get(i).getName()); %>, цена: <% out.print(goods.get(i).getPrice()); %> тг. </p>
                        <%--<p><% out.print(goods.get(i).getCategory()); %></p>--%>
                        <%--<p><% out.print(goods.get(i).getDescription()); %></p>--%>
                        <li>
                            <form action="/Kupon/admin/delete" method="post">
                                <input type="hidden" name="delete_id" value="<% out.print(goods.get(i).getId()); %>"/>
                                <input type="submit" value="Delete">
                            </form>
                        </li>
                        <li>
                            <form action="/Kupon/admin/update" method="post">
                                <input type="hidden" name="update_id" value="<% out.print(goods.get(i).getId()); %>"/>
                                <input type="submit" value="Update">
                            </form>
                        </li>
                    </ul>

                </div>
                <% } %>

            </div>
        </div>

    </div>
</div>
</body>
</html>