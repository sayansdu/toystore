<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="header.jsp"%>

			<section class="header_text sub">
			<img class="pageBanner" src="images/pageBanner.jpg" >
			</section>
			<section class="main-content">	
			<h4><span>Контакты</span></h4>			
				<div class="row">				
					<div class="span5">

						<div>
							
							<p><strong>Телефон:</strong>&nbsp;+7 (727) 237-45-66<br>
							<strong>Факс:</strong>&nbsp;+7 (727) 235-21-65<br>
							<strong>Email:</strong>&nbsp;<a href="#">info@toysstore.kz</a><br>
							<strong>Адрес:</strong>&nbsp;РК г. Алматы ул. Толе би 288 офис 4<br>								
							</p>
							<br/>
							<iframe src="https://mapsengine.google.com/map/embed?mid=zoDc2edudOog.kMMqdWfqtyzw" width="400" height="250"></iframe>
						</div>
					</div>
					<div class="span7">
						<h5>ОБРАТНАЯ СВЯЗЬ</h5>
						<form method="post" action="#">
							<fieldset>
								<div class="clearfix">
									<label for="name"><span>Имя:</span></label>
									<div class="input">
										<input tabindex="1" size="18" id="name" name="name" type="text" value="" class="input-xlarge" placeholder="Ваше имя" required>
									</div>
								</div>
								
								<div class="clearfix">
									<label for="email"><span>Email:</span></label>
									<div class="input">
										<input tabindex="2" size="25" id="email" name="email" type="email" value="" class="input-xlarge" placeholder="Ваш Email " required>
									</div>
								</div>
								
								<div class="clearfix">
									<label for="message"><span>Сообщение:</span></label>
									<div class="input">
										<textarea tabindex="3" class="input-xlarge" id="message" name="body" rows="7" placeholder="Ваше сообщение" required></textarea>
									</div>
								</div>
								
								<div class="actions">
									<button tabindex="3" type="submit" class="btn btn-inverse">Отправить</button>
								</div>
							</fieldset>
						</form>
					</div>				
				</div>
			</section>

<%@include file="footer.jsp"%>