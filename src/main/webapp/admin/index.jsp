<%@ page import="entity.Order" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="header.jsp"%>

			<section class="header_text sub">
				<h4><u>Все заказы</u></h4>
			</section>
			<section class="main-content">
				
				<div class="row">						
					<div class="span9">								
						<table class="table">
                                      <thead>
                                        <tr>
                                            <th>Покупатель</th>
                                            <th>Продукты/Товары</th>
                                            <th>Время заказа</th>
                                           <%-- <th>Общая сумма</th>--%>
                                            <th>Оплачено/Доставлено</th>
                                        </tr>
                                      </thead>
                                   
                                        <tbody>
                                        <% List<Order> orders = (List<Order>) session.getAttribute("all_orders");
                                            for (int i = 0; i < orders.size(); i++) {
                                        %>
                                            <tr>
                                              <td><%= orders.get(i).getBuyer().getName() %></td>
                                              <td><a href="/Kupon/admin/order/details?order_id=<%= orders.get(i).getId() %>">Подробнее</a></td>
                                              <td>
                                                  <% SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss");
                                                      String date =  format.format(orders.get(i).getCreate_time());
                                                  %>
                                                  <%= date %>
                                              </td>
                                              <%--<td>
                                                $$$
                                              </td>--%>
                                              <% if(orders.get(i).getPaid()==1){ %>
                                                <td><input type="checkbox" checked></td>
                                              <% } else { %>
                                                <td><input type="checkbox" ></td>
                                              <% } %>
                                            </tr>
                                        <% } %>
                                        </tbody>
                                          
                                  
                                      
                                    </table>		

					</div>
					<div class="span3 col">
					    <%@include file="left_menu.jsp"%>
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
				<span styl="">ВСЕ ПРАВА ЗАЩИЩЕНЫ 2014.</span>
			</section>
		</div>
    </body>
</html>