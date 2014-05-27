<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="header.jsp"%>

			<section class="header_text sub">
				<span style="float:left;"><u><a href="main.jsp">Главная</a></u> > Название категории</span>
			</section>
			<section class="main-content">
				
				<div class="row">						
					<div class="span9">								
						<ul class="thumbnails listing-products">
							<li class="span2">
								<div class="product-box">
									<a href="product_detail.jsp"><img alt="" src="images/toys/toy.jpg"></a><br/>
									<a href="product_detail.jsp" class="title">Имя</a><br/>
									Количество <input type="number" name="book_qty" value="1"  class="input-small">
									<p class="price">Цена</p>

									<button type="button" class="btn btn-default">В корзину</button>
								</div>
							</li>       
							<li class="span2">
								<div class="product-box">
									<a href="product_detail.jsp"><img alt="" src="images/toys/toy.jpg"></a><br/>
									<a href="product_detail.jsp" class="title">Имя</a><br/>
									Количество <input type="number" name="book_qty" value="1"  class="input-small">
									<p class="price">Цена</p>

									<button type="button" class="btn btn-default">В корзину</button>
								</div>
							</li>
							<li class="span2">
								<div class="product-box">
									<a href="product_detail.jsp"><img alt="" src="images/toys/toy.jpg"></a><br/>
									<a href="product_detail.jsp" class="title">Имя</a><br/>
									Количество <input type="number" name="book_qty" value="1"  class="input-small">
									<p class="price">Цена</p>

									<button type="button" class="btn btn-default">В корзину</button>
								</div>
							</li>
							<li class="span2">
								<div class="product-box">
									<a href="product_detail.jsp"><img alt="" src="images/toys/toy.jpg"></a><br/>
									<a href="product_detail.jsp" class="title">Имя</a><br/>
									Количество <input type="number" name="book_qty" value="1"  class="input-small">
									<p class="price">Цена</p>

									<button type="button" class="btn btn-default">В корзину</button>
								</div>
							</li>
							<li class="span2">
								<div class="product-box">
									<a href="product_detail.jsp"><img alt="" src="images/toys/toy.jpg"></a><br/>
									<a href="product_detail.jsp" class="title">Имя</a><br/>
									Количество <input type="number" name="book_qty" value="1"  class="input-small">
									<p class="price">Цена</p>

									<button type="button" class="btn btn-default">В корзину</button>
								</div>
							</li>
							
						</ul>								
						<hr>
						<%--<div class="pagination pagination-small pagination-centered">
							<ul>
								<li><a href="#">Пред</a></li>
								<li class="active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">След</a></li>
							</ul>
						</div>--%>

					</div>
					<div class="span3 col">
						<%--<div class="block">
							<ul class="nav nav-list">
							Корзина сюда
							</ul>
						</div>--%>
						<div class="block">	
							<%@include file="right_menu.jsp"%>
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