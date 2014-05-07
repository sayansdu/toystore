<%@ page import="entity.*" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="header.jsp"%>

			<section class="header_text sub">
				<h4><u>Все игрушки</u></h4> или <h4><u><a href="products.jsp"> Все игрушки</u></a>  > раздел или категорию сюда</h4>
			</section>
			<section class="main-content">
			<div class="row">						
					<div class="span9">								
						<ul class="thumbnails listing-products">
                            <%
                                List<Goods> goods = (List<Goods>) session.getAttribute("goods");
                                for (int i = 0; i < goods.size(); i++) { %>
                            <li class="span2">
                                <div class="product-box">
                                    <a><img alt="" src="images/toys/toy.jpg"></a><br/>
                                    <a class="title"><% out.print(goods.get(i).getName()); %></a><br/>

                                    <p class="price">Цена: <% out.print(goods.get(i).getPrice()); %></p>
                                    <button type="button" class="btn btn-inverse">Просмотр Изменить</button>
                                    <button type="button" class="btn btn-danger">Удалить</button>
                                </div>
                            </li>
                            <% } %>

						<%--<hr>
						<div class="pagination pagination-small pagination-centered">
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
                        <%@include file="left_menu.jsp"%>
				    </div>
			</section>
			
			<section id="footer-bar">
			</section>
			<section id="copyright">
				<span styl="">ВСЕ ПРАВА ЗАЩИЩЕНЫ 2014. 
			</section>
		</div>
		
    </body>
</html>