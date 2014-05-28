<%@ page import="entity.*" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="header.jsp"%>

<section class="header_text sub">
    <% User user = (User) session.getAttribute("current_user");
       if(user.getStatus().equals("admin")){
    %>
    <span style="float:left;"><u><a href="index.jsp">Заказы</a></u> > Игрушки</span>
    <%} else {%>
    <span style="float:left;"><u><a href="courier.jsp">Заказы</a></u> > Игрушки</span>
    <%} %>
</section>
<section class="main-content">

    <div class="row">
        <div class="span9">
            <h5>Игрушки в заказе</h5>
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