<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Админ - Игрушечный магазин</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <link rel="icon" href="images/icon.png" type="image/x-icon">
    <!-- bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">

    <link href="css/bootstrappage.css" rel="stylesheet"/>

    <!-- мой стиль -->
    <link href="css/flexslider.css" rel="stylesheet"/>
    <link href="css/main.css" rel="stylesheet"/>

    <!-- скрипты -->
    <script src="js/jquery-1.7.2.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/superfish.js"></script>
    <script src="js/jquery.scrolltotop.js"></script>

</head>
<body>

<div id="wrapper" class="container">
    <section class="navbar main-menu">
        <div class="navbar-inner main-menu">
            <a href="index.jsp" class="logo pull-left"><img src="images/logo.png" class="site_logo" alt=""></a>
            <nav id="menu" class="pull-right">
                <ul>
                    <li><a href="index.jsp">Заказы</a></li>
                    <li><a href="/Kupon/admin/goods/all">Игрушки</a></li>
                    <li><a href="/Kupon/admin/add_product.jsp">Добавить</a></li>
                    <li><a href="/Kupon/Logout">Выход</a></li>
                </ul>
            </nav>
        </div>
    </section>