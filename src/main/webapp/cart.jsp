<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="header.jsp"%>

			<section class="header_text sub">
			
				<span style="float:left;"><u><a href="main.jsp">Главная</a></u> > Корзина</span>
			</section>
			<section class="main-content">
				
				<div class="row">						
					<div class="span9">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>Категория</th>
                                <th>Наименование игрушки</th>
                                <th>Цена</th>
                                <th>Кол.</th>
                                <th>Общая сумма</th>

                            </tr>
                            </thead>

                            <tbody>
                            <tr>
                                <td>blah</td>
                                <td>blah</td>
                                <td>blah</td>
                                <td>blah</td>
                                <td>10 000</td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="row" id="cart_do_order">
                                <form class="form-inline" action="/Kupon/order/before/get" method="get">
                                    <button class="btn btn-inverse" type="submit">Оформить заказ</button>
                                </form>
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