<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Главная - Игрушечный магазин</title>
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
							<%--<li><a href="faq.html">FAQ</a></li>--%>
							<li><a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
							<li><a href="login-register.jsp">Вход/Регистрация</a></li>
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
					<a href="index.jsp" class="logo pull-left"><img src="images/logo.png" class="site_logo" alt=""></a>
					<nav id="menu" class="pull-right">
						<ul>
							<li class="active"><a href="index.jsp">Главная</a></li>
							<li><a href="products.html">Новое поступление</a></li>			
							<li><a href="products.html">Для мальчиков</a></li>
							<li><a href="products.html">Для девочек</a></li>
							<li><a href="products.html">Распродажа</a></li>
							<li><a href="products.html">Акции</a></li>
						</ul>
					</nav>
				</div>
			</section>
			<section  class="homepage-slider" id="home-slider">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<img src="images/carousel/banner-1.jpg" alt="" />
							<div class="intro">
								<h1>Акция</h1>
								<p><span>Скидка -50%</span></p>
								<p><span>На мишки Тедди</span></p>
							</div>
						</li>
						<li>
							<img src="images/carousel/banner-2.jpg" alt="" />
							<div class="intro">
								<h1>Наслаждайся покупками</h1>
								<p><span>Только у нас </span></p>
								<p><span>Подарок каждому покупателю!</span></p>
							</div>
						</li>
					</ul>
				</div>			
			</section>
						<section class="header_text sub">
			
				<h4><u>Последние добавленные товары</u></h4>
			</section>
			<section class="main-content">
				
				<div class="row">						
					<div class="span9">								
						<ul class="thumbnails listing-products">
							<li class="span2">
								<div class="product-box">
									<a href="product_detail.html"><img alt="" src="images/toys/toy.jpg"></a><br/>
									<a href="product_detail.html" class="title">Имя</a><br/>
									Количество <input type="number" name="book_qty" value="1"  class="input-small">
									<p class="price">Цена</p>

									<button type="button" class="btn btn-default">В корзину</button>
								</div>
							</li>       
							<li class="span2">
								<div class="product-box">
									<a href="product_detail.html"><img alt="" src="images/toys/toy.jpg"></a><br/>
									<a href="product_detail.html" class="title">Имя</a><br/>
									Количество <input type="number" name="book_qty" value="1"  class="input-small">
									<p class="price">Цена</p>

									<button type="button" class="btn btn-default">В корзину</button>
								</div>
							</li>
							<li class="span2">
								<div class="product-box">
									<a href="product_detail.html"><img alt="" src="images/toys/toy.jpg"></a><br/>
									<a href="product_detail.html" class="title">Имя</a><br/>
									Количество <input type="number" name="book_qty" value="1"  class="input-small">
									<p class="price">Цена</p>

									<button type="button" class="btn btn-default">В корзину</button>
								</div>
							</li>
							<li class="span2">
								<div class="product-box">
									<a href="product_detail.html"><img alt="" src="images/toys/toy.jpg"></a><br/>
									<a href="product_detail.html" class="title">Имя</a><br/>
									Количество <input type="number" name="book_qty" value="1"  class="input-small">
									<p class="price">Цена</p>

									<button type="button" class="btn btn-default">В корзину</button>
								</div>
							</li>
							<li class="span2">
								<div class="product-box">
									<a href="product_detail.html"><img alt="" src="images/toys/toy.jpg"></a><br/>
									<a href="product_detail.html" class="title">Имя</a><br/>
									Количество <input type="number" name="book_qty" value="1"  class="input-small">
									<p class="price">Цена</p>

									<button type="button" class="btn btn-default">В корзину</button>
								</div>
							</li>

						</ul>								
						<hr>
						<div class="pagination pagination-small pagination-centered">
							<ul>
								<li><a href="#">Пред</a></li>
								<li class="active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">След</a></li>
							</ul>
						</div>

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
								<li><a href="products.html">Куклы и аксессуары для кукол</a></li>
								<li><a href="products.html">Транспортные средства</a></li>
								<li><a href="products.html">Интерактивные игрушки</a></li>
								<li><a href="products.html">Фигурки героев</a></li>
								<li><a href="products.html">Оружие и наборы для стрельбы</a></li>
								<li><a href="products.html">Игрушки для мальчиков</a></li>
								<li><a href="products.html">Игровые наборы с популярными персонажами</a></li>
								<li><a href="products.html">Мягкая игрушка</a></li>
								<li><a href="products.html">Конструкторы</a></li>
								<li><a href="products.html">Игрушки для девочек</a></li>
							</ul>
							<br/>
							<ul class="nav nav-list below">
								<li class="nav-header"><u>Интересное</u></li>
								<li><a href="products.html">Новое поступление</a></li>			
								<li><a href="products.html">Для мальчиков</a></li>
								<li><a href="products.html">Для девочек</a></li>
								<li><a href="products.html">Распродажа</a></li>
								<li><a href="products.html">Акции</a></li>
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
													<a href="product_detail.html"><img alt="" src="images/toys/toy.jpg"></a><br/>
													<a href="product_detail.html" class="title">Имя</a><br/>
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
													<a href="product_detail.html"><img alt="" src="images/toys/toy.jpg"></a><br/>
													<a href="product_detail.html" class="title">Имя</a><br/>
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
			<section >
			<h4 class="title"><span class="text">Почему мы?</span></h4>		
			<div class="row feature_box">
								
							<div class="span4">
								<div class="service">
									<div class="responsive">	
										<img src="images/feature_img_2.png" alt="" />
										<h4>ВСЕГДА <strong>ЛУЧШЕЕ</strong></h4>
																		
									</div>
								</div>
							</div>
							<div class="span4">	
								<div class="service">
									<div class="customize">			
										<img src="images/feature_img_1.png" alt="" />
										<h4>БЕСПЛАТНАЯ <strong>ДОСТАВКА</strong></h4>
									</div>
								</div>
							</div>
							<div class="span4">
								<div class="service">
									<div class="support">	
										<img src="images/feature_img_3.png" alt="" />
										<h4>РАБОТАЕМ <strong>КРУГЛОСУТОЧНО</strong></h4>
									</div>
								</div>
							</div>	
						</div>
			</section>
			<section class="our_client">
				<h4 class="title"><span class="text">Партнеры</span></h4>
				<div class="row">					
					<div class="span2">
						<a href="#"><img alt="" src="images/partners/14.png"></a>
					</div>
					<div class="span2">
						<a href="#"><img alt="" src="images/partners/35.png"></a>
					</div>
					<div class="span2">
						<a href="#"><img alt="" src="images/partners/1.png"></a>
					</div>
					<div class="span2">
						<a href="#"><img alt="" src="images/partners/2.png"></a>
					</div>
					<div class="span2">
						<a href="#"><img alt="" src="images/partners/3.png"></a>
					</div>
					<div class="span2">
						<a href="#"><img alt="" src="images/partners/4.png"></a>
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