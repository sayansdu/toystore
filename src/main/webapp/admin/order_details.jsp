<%@ page import="entity.*" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="header.jsp"%>

<section class="header_text sub">
    <span style="float:left;"><u><a href="index.jsp">Заказы</a></u> > Продукты/Товары</span>
</section>
<section class="main-content">

    <div class="row">
        <div class="span9">
            <h5>Товары в заказе</h5>
            <table class="table">
                <thead>
                <tr>
                    <th>Название</th>
                    <th>Категория</th>
                    <th>Цена</th>
                    <th>Количество</th>
                    <th>Общая сумма</th>
                </tr>
                </thead>

                <tbody>
                <%
                    List<OrderBefore> orders = (List<OrderBefore>) session.getAttribute("order_details");
                    if(orders!=null){
                    for (int i = 0; i < orders.size(); i++) { %>
                <tr>
                    <td><%= orders.get(i).getGoods().getName() %></td>
                    <td><%= orders.get(i).getGoods().getCategory().getValue() %></td>
                    <td><%= orders.get(i).getGoods().getPrice() %> тг.</td>
                    <td><%= orders.get(i).getAmount() %></td>
                    <td><%= (orders.get(i).getAmount()*orders.get(i).getGoods().getPrice()) %> тг.</td>
                </tr>
                <%
                    }
                    }
                %>
                </tbody>

            </table>
        </div>
        <div class="span3 col">
            <%--<div class="block">
                <ul class="nav nav-list">
                Корзина сюда
                </ul>
            </div>--%>
            <div class="block">
                <%@include file="left_menu.jsp"%>
            </div>
            <div class="block">
                <h4 class="title">
                    <span class="pull-left"><span class="text">Разное</span></span>
								<span class="pull-right">
									<a class="left button" href="#myCarousel" data-slide="prev"></a><a class="right button" href="#myCarousel" data-slide="next"></a>
								</span>
                </h4>
                <div id="myCarousel" class="carousel slide">
                    <div class="carousel-inner">
                        <div class="active item">
                            <ul class="thumbnails listing-products">
                                <li class="span3">
                                    <div class="product-box">
                                        <a href="product_detail.jsp"><img alt="" src="images/toys/toy.jpg"></a><br/>
                                        <a href="product_detail.jsp" class="title">Имя</a><br/>
                                        Количество <input type="number" name="book_qty" value="1"  class="input-small">
                                        <p class="price">Цена</p>
                                        <button type="button" class="btn btn-default">В корзину</button>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="item">
                            <ul class="thumbnails listing-products">
                                <li class="span3">
                                    <div class="product-box">
                                        <a href="product_detail.jsp"><img alt="" src="images/toys/toy.jpg"></a><br/>
                                        <a href="product_detail.jsp" class="title">Имя</a><br/>
                                        Количество <input type="number" name="book_qty" value="1"  class="input-small">
                                        <p class="price">Цена</p>
                                        <button type="button" class="btn btn-default">В корзину</button>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        </div>
</section>

<section id="footer-bar">
</section>
<section id="copyright">
    <span styl="">ВСЕ ПРАВА ЗАЩИЩЕНЫ 2014.</span>
</section>
</div>
<script src="js/common.js"></script>
<script src="js/jquery.flexslider-min.js"></script>
<script type="text/javascript">
    $(function() {
        $(document).ready(function() {
            $('.flexslider').flexslider({
                animation: "fade",
                slideshowSpeed: 4000,
                animationSpeed: 600,
                controlNav: false,
                directionNav: true,
                controlsContainer: ".flex-container" // the container that holds the flexslider
            });
        });
    });
</script>
</body>
</html>