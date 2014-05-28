<%@ page import="entity.Category" %>
<%@ page import="entity.Goods" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="header.jsp"%>

			<section class="main-content">
				
				<div class="row">						
					<div class="span9">
						<div class="row">
							<div class="span4">
                                <% Goods current_good = (Goods) session.getAttribute("current_good"); %>
								<a href="#" class="thumbnail" data-fancybox-group="group1" title="Описание 1">
                                    <% if(current_good.getImage()!=null) {%>
                                        <img alt="" src="getImage.jsp?img_id=<%= current_good.getId() %>">
                                    <% } else {%>
                                        <img alt="" src="<%= current_good.getFoto_dir() %>">
                                    <% } %>
                                </a>
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
									<strong>Производитель:</strong> <span><%=(current_good.getProducer()) %></span><br>
									<strong>Категория:</strong> <span><%=(current_good.getCategory().getValue()) %></span><br>
								</address>				
								<h4><strong><%=(current_good.getName()) %></strong></h4>
								<h4><strong>Цена: <%=(current_good.getPrice()) %> тг</strong></h4>
							</div>
							<div class="span5">
								<form class="form-inline" action="/Kupon/order/before/get" method="get">
									
									<label>Количество:</label>
									<input type="text" class="span1" placeholder="1" name="selected_order_good_count" value="1">
                                    <input type="hidden" name="selected_order_good_id" value="<%=(current_good.getId()) %>">
									<button class="btn btn-inverse" type="submit" onclick="add_to_bucket()">В корзину</button>
								</form>
							</div>							
						</div>
						<div class="row">
							<div class="span9">
								<ul class="nav nav-tabs" id="myTab">
									<li class="active"><a href="#home">Описание</a></li>
								</ul>
								<div class="tab-content">
									<div class="tab-pane active" id="home">
										<p><%=(current_good.getDescription()) %></p>
                                        <table class="table table-striped shop_attributes">
                                            <tbody>
                                            <tr class="">
                                                <th>Размеры:</th>
                                                <td><%=(current_good.getVolume()) %></td>
                                            </tr>
                                            <tr class="alt">
                                                <th>Цвета:</th>
                                                <td><%=(current_good.getColor()) %></td>
                                            </tr>
                                            </tbody>
                                        </table>
									</div>
								</div>							
							</div>						

						</div>
					</div>
					<div class="span3 col">

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
                    </div>
			</section>

<%@include file="footer.jsp"%>