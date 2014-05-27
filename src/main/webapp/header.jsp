<%@ page import="java.util.List" %>
<%@ page import="entity.Section" %>
<%@ page import="entity.User" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="head.jsp"%>

<body>

<div id="top-bar" class="container">
    <div class="row">
        <div class="span4">
            <form method="POST" class="search_form">
                <input type="text" class="input-block-level search-query" placeholder="Поиск">
            </form>

        </div>
        <div class="span8">
            <div class="account pull-right">
                <ul class="user-menu">
                    <li><a href="contact.jsp">Контакты</a></li>
                    <li><a href="delivery.jsp">Доставка</a></li>
                    <li><a href="payment.jsp">Оплата</a></li>
                    <li><a href="faq.jsp">FAQ</a></li>
                    <li><a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                    <% if(session.getAttribute("current_user")!=null) {
                        User cur_user = (User) session.getAttribute("current_user");
                        if(cur_user.getStatus().equals("buyer")){
                    %>
                    <li><a href="/Kupon/buyer">Личный кабинет</a></li>
                    <li><a href="cart.jsp">Корзина</a></li>
                    <li><a href="/Kupon/Logout">Выход</a></li>
                    <% } else{ %>
                    <li><a href="/Kupon/Logout">Выход</a></li>
                    <% } %>
                    <%} else {%>
                    <li><a href="/Kupon/order/before/get">Корзина</a></li>
                    <li><a href="login-register.jsp">Вход/Регистрация</a></li>
                    <% } %>

                </ul>
            </div>
        </div>
    </div>
</div>
<div id="wrapper" class="container">
    <section class="navbar main-menu">
        <div class="navbar-inner main-menu">
            <a href="main.jsp" class="logo pull-left"><img src="images/logo.png" class="site_logo" alt=""></a>
            <nav id="menu" class="pull-right">
                <ul>
                    <li class="active"><a href="main.jsp">Главная</a></li>
                    <%  List<Section> sections = (List<Section>) session.getAttribute("sections");
                        for (int i = 0; i < sections.size(); i++) {
                    %>
                    <li><a href="products.jsp"><%= (sections.get(i).getValue()) %></a></li>
                    <% } %>
                </ul>
            </nav>
        </div>
    </section>