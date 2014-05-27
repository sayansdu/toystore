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
                                          <th>Номер заказа</th>
                                          <th>ID Пользователя</th>
                                          <th>ID книги</th>
                                          <th>Наименование игрушки</th>
                                          <th>Цена</th>
                                          <th>Кол.</th>
                                          <th>Общая сумма</th>
                                          <th>Статус</th>
                                        </tr>
                                      </thead>
                                   
                                        <tbody>
                                            <tr>
                                              <td>3</td>
                                              <td>4</td>
                                              <td>44</td>
                                              <td>имя </td>
                                              <td>555</td>
                                              <td>2</td>
                                              <td>1110</td>
                                              <td><input type="button" name="submit" value="Доставлено"></td>
                                            </tr>
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