<%@ page import="entity.User" %>
<%@ page import="entity.Category" %>
<%@ page import="entity.Order" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="header.jsp"%>

			<section class="header_text sub">
				<span style="float:left;"><u><a href="main.jsp">Главная</a></u> > Заказы</span>
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
                                          <th>Продукты</th>
                                          <th>Покупатель</th>
                                          <th>Время заказа</th>
                                          <th>Оплачено/Доставлено</th>
                                        </tr>
                                      </thead>
                                   
                                        <tbody>
                                            <%
                                                List<Order> orders = (List<Order>) session.getAttribute("user_orders");
                                                for (int i = 0; i < orders.size(); i++) { %>
                                                    <tr>
                                                        <td><a href="/Kupon/order/details?order_id=<%= orders.get(i).getId() %>">Подробнее</a></td>
                                                        <td><%= orders.get(i).getBuyer().getName() %></td>
                                                        <td><% SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss");
                                                               String date =  format.format(orders.get(i).getCreate_time());
                                                            %>
                                                            <%= date %>
                                                        </td>
                                                        <% if(orders.get(i).getPaid()==1){ %>
                                                        <td><input type="checkbox" checked></td>
                                                         <% } else { %>
                                                        <td><input type="checkbox" ></td>
                                                         <% } %>
                                                    </tr>
                                            <%
                                                }
                                            %>

                                        </tbody>
                                                
                                    </table>
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