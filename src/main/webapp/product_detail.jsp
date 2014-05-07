<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="header.jsp"%>

			<section class="header_text sub">
			
				<span style="float:left;"><u><a href="main.jsp">Главная</a></u> > <u><a href="">Название категории</a></u> > Имя игрушки</span>
			</section>
			<section class="main-content">
				
				<div class="row">						
					<div class="span9">
						<div class="row">
							<div class="span4">
								<a href="images/toys/toy.jpg" class="thumbnail" data-fancybox-group="group1" title="Описание 1"><img alt="" src="images/toys/toy.jpg"></a>												
								<ul class="thumbnails small">								
									<li class="span1">
										<a href="images/toys/toy.jpg" class="thumbnail" data-fancybox-group="group1" title="Описание 2"><img src="images/toys/toy.jpg" alt=""></a>
									</li>								
									<li class="span1">
										<a href="images/toys/toy.jpg" class="thumbnail" data-fancybox-group="group1" title="Описание 3"><img src="images/toys/toy.jpg" alt=""></a>
									</li>													
									
								</ul>
							</div>
							<div class="span5">
								<address>
									<strong>Производитель:</strong> <span>Тед</span><br>
									<strong>Артикул:</strong> <span>45623</span><br>
									<strong>Категория:</strong> <span>имя категории</span><br>								
								</address>				
								<h4><strong>Название игрушки</strong></h4>					
								<h4><strong>Цена: 5000 тг</strong></h4>
							</div>
							<div class="span5">
								<form class="form-inline">
									
									<label>Количество:</label>
									<input type="text" class="span1" placeholder="1">
									<button class="btn btn-inverse" type="submit">В корзину</button>
								</form>
							</div>							
						</div>
						<div class="row">
							<div class="span9">
								<ul class="nav nav-tabs" id="myTab">
									<li class="active"><a href="#home">Описание</a></li>
									<li class=""><a href="#profile">Дополнительная информация</a></li>
								</ul>							 
								<div class="tab-content">
									<div class="tab-pane active" id="home">
										Этот пупс Ненуко нуждается в вашей заботе. Смените малышке подгузники, используйте детскую присыпку, поиграйте с пупсом, напоите кукольного ребенка и дайте ему соску. Пупс Ненуко с аксессуарами по уходу – отличный подарок для девочки, которая любит играть в «дочки-матери».

Теперь игра стала еще интереснее и удобнее. Вы можете отправиться со своим пупсом в гости или на прогулку и продолжать заботиться о нем. Ведь все многочисленные аксессуары помещаются в удобный и красивый голубой рюкзачок.

В коробке вы найдете: пупса Ненуко в топике с розовой отделкой, рюкзачок для девочки, пачку подгузников, игрушечного медвежонка, соску, присыпку, крем, детскую бутылочку и другие аксессуары.
									</div>
									<div class="tab-pane" id="profile">
										<table class="table table-striped shop_attributes">	
											<tbody>
												<tr class="">
													<th>Размеры:</th>
													<td>80 см, 120 см, 150 см</td>
												</tr>		
												<tr class="alt">
													<th>Цвета:</th>
													<td>Белый, Серый</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>							
							</div>						
							<div class="span9">	
								<br>
								<h4 class="title">
									<span class="pull-left"><span class="text"><strong>Похожие</strong> Игрушки</span></span>
									<span class="pull-right">
										<a class="left button" href="#myCarousel-1" data-slide="prev"></a><a class="right button" href="#myCarousel-1" data-slide="next"></a>
									</span>
								</h4>
								<div id="myCarousel-1" class="carousel slide">
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
												<li class="span3">
													<div class="product-box">
														<a href="product_detail.jsp"><img alt="" src="images/toys/toy.jpg"></a><br/>
														<a href="product_detail.jsp" class="title">Имя</a><br/>
														Количество <input type="number" name="book_qty" value="1"  class="input-small">
														<p class="price">Цена</p>
														<button type="button" class="btn btn-default">В корзину</button>
													</div>
												</li>       
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