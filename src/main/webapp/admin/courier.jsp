<%@ page import="java.util.List" %>
<%@ page import="entity.Order" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="util.VerSign" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Курьер - Игрушечный магазин</title>
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

        <script type="text/javascript">

            function printVer(cel){
                if(cel){
                    alert("Данные пользователя проверяны цифровой подпистью. Данные целы");
                }
                else {
                    alert("Данные пользователя были изменены. Будьте осторожны");
                }

            }
        </script>
	</head>
    <body>		
		
		<div id="wrapper" class="container">
			<section class="navbar main-menu">
				<div class="navbar-inner main-menu">				
					<a href="index.jsp" class="logo pull-left"><img src="images/logo.png" class="site_logo" alt=""></a>
					<nav id="menu" class="pull-right">
						<ul>
							<li class="active"><a href="courier.jsp">Заказы</a></li>
							
							<li><a href="/Kupon/Logout">Выход</a></li>
						</ul>
					</nav>
				</div>
			</section>
						<section class="header_text sub">
			
				<h4><u>Все заявки</u></h4>
			</section>
			<section class="main-content">
				
				<div class="row">						
					<div class="span12">								
						<table class="table">
                                      <thead>
                                        <tr>
                                            <th>Покупатель</th>
                                            <th>Телефон</th>
                                            <th>Адрес</th>
                                            <th>Игрушки</th>
                                            <th>Время заказа</th>
                                            <th>Проверка на целосность</th>
                                            <th>Способ оплаты</th>
                                            <th>Оплачено</th>
                                            <th>Доставлено</th>
                                            <th></th>
                                        </tr>
                                      </thead>
                                   
                                        <tbody>
                                        <% List<Order> orders = (List<Order>) session.getAttribute("courier_orders");
                                           if(orders!=null){
                                               for (int i = 0; i < orders.size(); i++) {
                                                   boolean ver_result = false;
                                        %>
                                        <form action="/Kupon/courier/set_delivered" method="post">
                                            <tr>
                                                <td><%= orders.get(i).getBuyer().getName() %></td>
                                                <td><%= orders.get(i).getBuyer().getTelephone() %></td>
                                                <td><%= orders.get(i).getBuyer().getAddress() %></td>
                                                <td><a href="/Kupon/admin/order/details?order_id=<%= orders.get(i).getId() %>">Подробнее</a></td>
                                                <td>
                                                    <% SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
                                                        String date =  format.format(orders.get(i).getCreate_time());
                                                    %>
                                                    <%= date %>
                                                </td>
                                                <%
                                                    VerSign ver = new VerSign();
                                                    ver_result = ver.checkMessage(orders.get(i).getId());
                                                %>
                                                <% if(orders.get(i).getDelivered()==1){ %>
                                                <td><input type="button" value="проверка" onclick="printVer(<%= ver_result %>)" disabled></td>
                                                <% }else {%>
                                                <td><input type="button" value="проверка" onclick="printVer(<%= ver_result %>)"></td>
                                                <%}%>

                                                <% if(orders.get(i).getPayment_type().equals("cash")){ %>
                                                <td>Наличными</td>
                                                <% } else { %>
                                                <td>Онлайн</td>
                                                <% } if(orders.get(i).getPaid()==1){ %>
                                                <td><input type="checkbox" name="paid" checked disabled></td>
                                                <% } else { %>
                                                <td><input type="checkbox" name="paid"></td>
                                                <% } if(orders.get(i).getDelivered()==1){ %>
                                                <td><input type="checkbox" checked disabled></td>
                                                <% } else { %>
                                                <td><input type="checkbox"></td>
                                                <% } %>

                                               <input type="hidden" name="delivered" value="1">
                                               <input type="hidden" name="order_id" value="<%= orders.get(i).getId() %>">
                                              <td>
                                                  <% if(orders.get(i).getDelivered()==1){ %>
                                                  <input type="submit" name="submit" value="Доставлено" disabled>
                                                  <% }else {%>
                                                  <input type="submit" name="submit" value="Доставлено">
                                                  <%}%>
                                              </td>
                                            </tr>
                                        </form>
                                        <%     }
                                            }
                                        %>
                                        </tbody>

                                    </table>		

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