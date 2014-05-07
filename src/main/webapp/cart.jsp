<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="header.jsp"%>

			<section class="header_text sub">
			
				<span style="float:left;"><u><a href="main.jsp">Главная</a></u> > Корзина</span>
			</section>
			<section class="main-content">
				
				<div class="row">						
					<div class="span9">								
						<ul class="thumbnails listing-products">
										<form method="get" action="buy_process.php">
										<ul>
							            <div class="product-box">
							            <span class="remove-itm" style="float:right;padding-right:10px;">&times</a></span>
										<h4 style="padding-top:5px;">Имя</h4> 
							            <div class="p-qty">Количество: х шт</div>
										<div class="p-price">Цена: хххх тг</div>
										<button class="btn btn-inverse" id="submit" >Купить</button>&nbsp;
										</div>
										</ul>
										</form> 
										<form method="get" action="buy_process.php">
										<ul>
							            <div class="product-box">
							            <span class="remove-itm" style="float:right;padding-right:10px;">&times</a></span>
										<h4 style="padding-top:5px;">Имя</h4> 
							            <div class="p-qty">Количество: х шт</div>
										<div class="p-price">Цена: хххх тг</div>
										<button class="btn btn-inverse" id="submit" >Купить</button>&nbsp;
										</div>
										</ul>
										</form> 
							
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