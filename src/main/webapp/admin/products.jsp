<%@ page import="entity.*" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="header.jsp"%>

			<section class="header_text sub">
				<h4><u>Все игрушки</u></h4>
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
                                    <a><img alt="" src="<%
                                                        if(goods.get(i).getImage()!=null){ %>
                                                        ../getImage.jsp?img_id=<%= goods.get(i).getId() %>
                                                        <%} else { %>
                                                            <%= goods.get(i).getFoto_dir() %>
                                                        <% } %>">
                                    </a><br/>
                                    <a class="title"><%=(goods.get(i).getName()) %></a><br/>
                                    <p class="price">Цена: <%=(goods.get(i).getPrice()) %> тг.</p>

                                    <form action="/Kupon/admin/good/update/get" method="post">
                                        <input type="hidden" name="update_id" value="<%=(goods.get(i).getId()) %>">
                                        <button type="submit" class="btn btn-inverse">Изменить</button>
                                    </form>
                                    <form action="/Kupon/admin/good/delete" method="post">
                                        <input type="hidden" name="delete_id" value="<%=(goods.get(i).getId()) %>">
                                        <button type="submit" class="btn btn-danger">Удалить</button>
                                    </form>
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
                        </ul>
					</div>
					<div class="span3 col">
                        <%@include file="left_menu.jsp"%>
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