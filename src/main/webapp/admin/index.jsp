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
                                              <td><input type="checkbox" checked></td>
                                            </tr>
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