<%@ page import="entity.*" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="header.jsp"%>

<section class="header_text sub">
    <h4><u>Игрушки по разделу или категорий</u></h4>
</section>
<section class="main-content">
    <div class="row">
        <div class="span9">
            <ul class="thumbnails listing-products">
                <%  List<Goods> sec_goods = (List<Goods>) session.getAttribute("section_goods");
                    if(sec_goods==null)
                        sec_goods = (List<Goods>) session.getAttribute("category_goods");

                    for (int i = 0; i < sec_goods.size(); i++) {
                        if(sec_goods.get(i).getImage()!=null) {
                %>
                <li class="span2">
                    <div class="product-box">
                        <a><img alt="" src="<%
                                                        if(sec_goods.get(i).getImage()!=null){ %>
                                                        ../getImage.jsp?img_id=<%= sec_goods.get(i).getId() %>
                                                        <%} else { %>
                                                            <%= sec_goods.get(i).getFoto_dir() %>
                                                        <% } %>">
                        </a><br/>
                        <a class="title"><%=(sec_goods.get(i).getName()) %></a><br/>
                        <p class="price">Цена: <%=(sec_goods.get(i).getPrice()) %> тг.</p>

                        <form action="/Kupon/admin/good/update/get" method="post">
                            <input type="hidden" name="update_id" value="<%=(sec_goods.get(i).getId()) %>">
                            <button type="submit" class="btn btn-inverse">Изменить</button>
                        </form>
                        <form action="/Kupon/admin/good/delete" method="post">
                            <input type="hidden" name="delete_id" value="<%=(sec_goods.get(i).getId()) %>">
                            <button type="submit" class="btn btn-danger">Удалить</button>
                        </form>
                    </div>
                </li>
                <% } } %>
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