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
                                            <th>Игрушки</th>
                                            <th>Время заказа</th>
                                           <%-- <th>Общая сумма</th>--%>
                                            <th>Способ оплаты</th>
                                            <th>Оплачено</th>
                                            <th>Способ доставки</th>
                                            <th>Доставлено</th>
                                            <th>Курьер</th>
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
                                                  <% SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
                                                      String date =  format.format(orders.get(i).getCreate_time());
                                                  %>
                                                  <%= date %>
                                              </td>
                                              <%--<td>
                                                $$$
                                              </td>--%>
                                              <% if(orders.get(i).getPayment_type().equals("cash")){ %>
                                                    <td>Наличными</td>
                                              <% } else { %>
                                                    <td>Онлайн</td>
                                              <% } if(orders.get(i).getPaid()==1){ %>
                                                    <td><input type="checkbox" checked></td>
                                              <% } else { %>
                                                    <td><input type="checkbox" ></td>
                                              <% } if(orders.get(i).getDelivery().equals("courier")) {%>
                                                    <td>Курьером</td>
                                              <% } else { %>
                                                    <td>Самовывоз</td>
                                              <% } if(orders.get(i).getDelivery().equals("courier")) {
                                                       if(orders.get(i).getDelivered()==0){
                                              %>
                                                    <td><input type="checkbox"></td>
                                                      <%} else {%>
                                                     <td><input type="checkbox" checked></td>
                                              <%       }
                                                 } else { %>
                                                    <td><input type="checkbox" disabled></td>
                                              <% } if(orders.get(i).getDelivery().equals("courier")){
                                                       if(orders.get(i).getCourier()!=null){
                                              %>
                                                    <td><%= orders.get(i).getCourier().getName() %></td>
                                                    <%} else {%>
                                                    <td><a href="/Kupon/admin/order/set_courier?order_id=<%= orders.get(i).getId() %>">Назначить</a></td>
                                              <%    }
                                                  } else { %>
                                                    <td>Не нуждается</td>
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