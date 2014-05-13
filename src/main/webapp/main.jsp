<%@ page import="java.util.List" %>
<%@ page import="entity.Goods" %>
<%@ page import="entity.Category" %>
<%@ page import="entity.Section" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="header.jsp"%>
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
                            <%  List<Goods> goods = (List<Goods>) session.getAttribute("goods");
                                for (int i = 0; i < goods.size(); i++) {
                            %>
                            <li class="span2">
                                <div class="product-box" onclick="">
                                    <a href="/Kupon/good/get?id=<% out.print(goods.get(i).getId()); %>"><img alt="" src="images/toys/toy.jpg"></a><br/>
                                    <a href="/Kupon/good/get?id=<% out.print(goods.get(i).getId()); %>" class="title"><% out.println(goods.get(i).getName()); %></a><br/>
                                    Количество <input type="number" name="book_qty" value="1"  class="input-small">
                                    <p class="price">Цена: <% out.print(goods.get(i).getPrice()); %></p>

                                    <button type="button" class="btn btn-default" onclick="add_to_bucket(<% out.print(goods.get(i).getId()); %>, <% out.print(i); %>)">В корзину</button>
                                </div>
                            </li>
                            <% } %>

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
                                <a href="korzina.jsp">Корзина</a>
							</ul>
						</div>
						<div class="block">	
							<ul class="nav nav-list">
                                <li class="nav-header"><u>Категории</u></li>

                                <%  List<Category> categories = (List<Category>) session.getAttribute("categories");
                                    for (int i = 0; i < categories.size(); i++) {
                                %>
								<li><a href="products.jsp"><% out.println(categories.get(i).getValue()); %></a></li>
                                <% } %>
							</ul>
							<br/>
							<ul class="nav nav-list below">
								<li class="nav-header"><u>Интересное</u></li>
                                <%
                                    for (int i = 0; i < sections.size(); i++) {
                                %>
                                <li><a href="products.jsp"><% out.println(sections.get(i).getValue()); %></a></li>
                                <% } %>
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
													<button type="button" class="btn btn-default" onclick="bucket()">В корзину</button>
												</div>
											</li>
										</ul>
									</div>
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

<%@include file="footer.jsp"%>