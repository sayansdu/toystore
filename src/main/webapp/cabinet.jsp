<%@ page import="entity.User" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Корзина - Игрушечный магазин</title>
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

                            <% if(session.getAttribute("current_user")!=null) { %>
                            <li><a href="cabinet.jsp">Личный кабинет</a></li>
                            <li><a href="cart.jsp">Корзина</a></li>
                            <li><a href="/Kupon/Logout">Выход</a></li>
                            <% } else {%>
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
							<li><a href="main.jsp">Главная</a></li>
							<li><a href="products.jsp">Новое поступление</a></li>
							<li><a href="products.jsp">Для мальчиков</a></li>
							<li><a href="products.jsp">Для девочек</a></li>
							<li><a href="products.jsp">Распродажа</a></li>
							<li><a href="products.jsp">Акции</a></li>
						</ul>
					</nav>
				</div>
			</section>

						<section class="header_text sub">
			
				<span style="float:left;"><u><a href="main.jsp">Главная</a></u> > Корзина</span>
			</section>
			<section class="main-content">
				
				<div class="row">						
					<div class="span9">								
						<h5>Ваши заказы
                        "<%
                            User user = (User) session.getAttribute("current_user");
                            out.println(user.getName());
                        %>"</h5>
						<table class="table">
                                      <thead>
                                        <tr>
                                          <th>Номер заказа</th>
                                          <th>ID</th>
                                          <th>Наименование игрушки</th>
                                          <th>Цена</th>
                                          <th>Кол.</th>
                                          <th>Общая сумма</th>
                                          
                                        </tr>
                                      </thead>
                                   
                                        <tbody>
                                            <tr>
                                              <td>1</td>
                                              <td>2</td>
                                              <td>Bear</td>
                                              <td>2000</td>
                                              <td>5</td>
                                              <td>10 000</td>
                                            </tr>
                                        </tbody>
                                                
                                    </table>
					</div>
					<div class="span3 col">
						<div class="block">
							<ul class="nav nav-list">
							Корзина сюда
							</ul>
						</div>
						<div class="block">	
							<ul class="nav nav-list">
								<li class="nav-header"><u>Категории</u></li>
								<li><a href="products.jsp">Куклы и аксессуары для кукол</a></li>
								<li><a href="products.jsp">Транспортные средства</a></li>
								<li><a href="products.jsp">Интерактивные игрушки</a></li>
								<li><a href="products.jsp">Фигурки героев</a></li>
								<li><a href="products.jsp">Оружие и наборы для стрельбы</a></li>
								<li><a href="products.jsp">Игрушки для мальчиков</a></li>
								<li><a href="products.jsp">Игровые наборы с популярными персонажами</a></li>
								<li><a href="products.jsp">Мягкая игрушка</a></li>
								<li><a href="products.jsp">Конструкторы</a></li>
								<li><a href="products.jsp">Игрушки для девочек</a></li>
							</ul>
							<br/>
							<ul class="nav nav-list below">
								<li class="nav-header"><u>Интересное</u></li>
								<li><a href="products.jsp">Новое поступление</a></li>
								<li><a href="products.jsp">Для мальчиков</a></li>
								<li><a href="products.jsp">Для девочек</a></li>
								<li><a href="products.jsp">Распродажа</a></li>
								<li><a href="products.jsp">Акции</a></li>
							</ul>
						</div>
						<div class="block">
							<h4 class="title">
								<span class="pull-left"><span class="text">Разное</span></span>
								<span class="pull-right">
									<a class="left button" href="#myCarousel" data-slide="prev"></a><a class="right button" href="#myCarousel" data-slide="next"></a>
								</span>
							</h4>
							<div id="myCarousel" class="carousel slide">
								<div class="carousel-inner">
									<div class="active item">
										<ul class="thumbnails listing-products">
											<li class="span3">
												<div class="product-box">
													<a href="product_detail.jsp"><img alt="" src="images/toys/toy.jpg"></a><br/>
													<a href="product_detail.jsp" class="title">Имя</a><br/>
													Количество <input type="number" name="book_qty" value="1"  class="input-small">
													<p class="price">Цена</p>
													<button type="button" class="btn btn-default">В корзину</button>
												</div>
											</li>
										</ul>
									</div>
									<div class="item">
										<ul class="thumbnails listing-products">
											<li class="span3">
												<div class="product-box">												
													<a href="product_detail.jsp"><img alt="" src="images/toys/toy.jpg"></a><br/>
													<a href="product_detail.jsp" class="title">Имя</a><br/>
													Количество <input type="number" name="book_qty" value="1"  class="input-small">
													<p class="price">Цена</p>
													<button type="button" class="btn btn-default">В корзину</button>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>

				</div>
			</section>

<%@include file="footer.jsp"%>