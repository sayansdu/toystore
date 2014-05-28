<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="header.jsp"%>

			<section class="header_text sub">
			<img class="pageBanner" src="images/pageBanner.jpg" >
				<div class="row">
                    <form action="/Kupon/order/save" method="post" enctype="multipart/form-data">
					<div class="span12" style="text-align:left;">
					<h4><span>Оплата</span></h4>
                        <br/>
                        <span>
                            Способ доставки
                        </span>
                           <div class="control-group">
                               <label class="control-label"></label>
                               <div class="controls">
                                   <select class="input-xlarge" name="delivery_type" required>
                                       <option value="yourself" selected>Самовывоз</option>
                                       <option value="courier">Курьерская доставка</option>
                                   </select>
                               </div>
                           </div>

                        <br/>
                        <span>
                            Способ оплаты
                        </span>
                        <div class="control-group">
                            <label class="control-label"></label>
                            <div class="controls">
                                <select class="input-xlarge" name="payment_type" required>
                                    <option value="online" selected>Онлайн оплата</option>
                                    <option value="cash">Наличными</option>
                                </select>
                            </div>
                        </div>

                        <br/>
                        <span>
                            Для целосности и надежности данных прощу вас подписать электронной подписью ваши данные
                        </span>
                        <br/><br/>

                        <% User user  = (User) session.getAttribute("current_user");
                            if(user==null)
                                response.sendRedirect("/Kupon/Logout");
                        %>
                        <div class="control-group">
                            <label class="control-label">Телефон:</label>
                            <div class="controls">
                                <input type="text" placeholder="Телефон" class="input-xlarge" name="phone" value="<%= user.getTelephone() %>">
                            </div>
                            <div class="form-error">
                                <% if(session.getAttribute("phone_error")!=null) {
                                    out.println(session.getAttribute("phone_error"));
                                }%>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label">Адрес:</label>
                            <div class="controls">
                                <input type="text" placeholder="Адрес" class="input-xlarge" name="address" value="<%= user.getAddress() %>">
                            </div>
                            <div class="form-error">
                                <% if(session.getAttribute("address_error")!=null) {
                                    out.println(session.getAttribute("address_error"));
                                }%>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Хранилище:</label>
                            <div class="controls">
                                <input type="file" name="store"><br>
                            </div>
                            <div class="form-error">
                                <% if(session.getAttribute("store_error")!=null) {
                                    out.println(session.getAttribute("store_error"));
                                }%>
                            </div>
                        </div>
				    </div>
                        <button class="btn btn-inverse" type="submit">Подвердить</button>

                    </form>
                </div>
			</section>
<%@include file="footer.jsp"%>