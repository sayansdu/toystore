<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Вход|Регистрация - Игрушечный магазин</title>
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
						    <li><a href="contact.html">Контакты</a></li>				
							<li><a href="delivery.html">Доставка</a></li>
							<li><a href="payment.html">Оплата</a></li>
							<li><a href="faq.html">FAQ</a></li>
							<li><a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
							<li class="active"><a href="login-register.jsp">Вход/Регистрация</a></li>
							<li><a href="cabinet.html">Личный кабинет</a></li>
							<li><a href="cart.html">Корзина</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div id="wrapper" class="container">
			<section class="navbar main-menu">
				<div class="navbar-inner main-menu">				
					<a href="index.html" class="logo pull-left"><img src="images/logo.png" class="site_logo" alt=""></a>
					<nav id="menu" class="pull-right">
						<ul>
							<li><a href="index.html">Главная</a></li>															
							<li><a href="products.html">Новое поступление</a></li>			
							<li><a href="products.html">Для мальчиков</a></li>
							<li><a href="products.html">Для девочек</a></li>
							<li><a href="products.html">Распродажа</a></li>
							<li><a href="products.html">Акции</a></li>
						</ul>
					</nav>
				</div>
			</section>
			<section class="header_text sub">
			<img class="pageBanner" src="images/pageBanner.jpg" >
			</section>
			<section class="main-content">				
				<div class="row">
					<div class="span5">					
						<h4 class="title"><span class="text"><strong>Вход</strong></span></h4>
						<form action="/Kupon/Login" method="post">
							<input type="hidden" name="next" value="/">
							<fieldset>
								<div class="control-group">
									<label class="control-label">Email:</label>
									<div class="controls">
										<input type="text" placeholder="Email" class="input-xlarge" name="email">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Пароль:</label>
									<div class="controls">
										<input type="password" placeholder="Пароль" class="input-xlarge" name="password">
									</div>
								</div>
                                <div class="control-group">
                                    <%
                                        String login_error = (String) session.getAttribute("login");
                                        if(login_error!=null){
                                            out.println("<br/>");
                                            out.println("<p style='color:red;'>"+login_error+"</p>");
                                        }
                                    %>
                                </div>
								<hr>
								<div class="actions"><input tabindex="9" class="btn btn-inverse large" type="submit" value="Войти"></div>
							</fieldset>
						</form>				
					</div>
					<div class="span7">					
						<h4 class="title"><span class="text"><strong>Регистрация</strong></span></h4>
						<form action="/Kupon/Registration" method="post" class="form-stacked">
							<fieldset>
								<div class="control-group">
									<label class="control-label">Имя:</label>
									<div class="controls">
										<input type="text" placeholder="Имя" class="input-xlarge" name="name">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Email:</label>
									<div class="controls">
										<input type="email" placeholder="Email" class="input-xlarge" name="email">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Телефон:</label>
									<div class="controls">
										<input type="text" placeholder="Телефон" class="input-xlarge" name="telephone">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Адрес:</label>
									<div class="controls">
										<input type="text" placeholder="Адрес" class="input-xlarge" name="address">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Пароль:</label>
									<div class="controls">
										<input type="password" placeholder="Пароль" class="input-xlarge" name="password">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Подтвердите пароль:</label>
									<div class="controls">
										<input type="password" placeholder="Подтвердите пароль" class="input-xlarge" name="passwordc">
									</div>
								</div>								                            
								<hr>
								<div class="actions"><input tabindex="9" class="btn btn-inverse large" type="submit" value="Зарегистрироваться"></div>
							</fieldset>
						</form>					
					</div>				
				</div>
			</section>			
			<section id="footer-bar">
			</section>
			<section id="copyright">
				<span styl="">ВСЕ ПРАВА ЗАЩИЩЕНЫ 2014. <u><a href="about.html">О Компании</a></u>&nbsp;<u><a href="contact-us.html">Обратная связь</a></u></span>
			</section>
		</div>
		<script src="js/common.js"></script>
		<script src="js/jquery.flexslider-min.js"></script>
		<script type="text/javascript">
			$(function() {
				$(document).ready(function() {
					$('.flexslider').flexslider({
						animation: "fade",
						slideshowSpeed: 4000,
						animationSpeed: 600,
						controlNav: false,
						directionNav: true,
						controlsContainer: ".flex-container" // the container that holds the flexslider
					});
				});
			});
		</script>
    </body>
</html>