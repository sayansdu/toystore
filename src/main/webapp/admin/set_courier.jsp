<%@ page import="entity.*" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@include file="header.jsp"%>

<section class="header_text sub">
    <span style="float:left;"><u><a href="index.jsp">Заказы</a></u> > Назначить курьера</span>
</section>
<section class="main-content">

    <div class="row">
        <div class="span9">
            <h5>Назначить курьера для этого заказа</h5>

            <form class="form-inline" action="/Kupon/admin/order/save_courier" method="post">

            <span>Список курьеров</span>
            <div class="control-group">
                <label class="control-label"></label>
                <div class="controls">
                    <select class="input-xlarge" name="courier_id" required>
                        <% List<User> couriers = (List<User>) session.getAttribute("couriers");
                           if(couriers!=null){
                               for (int i = 0; i < couriers.size(); i++) {
                        %>
                        <option value="<%= couriers.get(i).getId() %>"><%= couriers.get(i).getName() %></option>
                        <% }} %>
                    </select>
                </div>
            </div>
                <button class="btn btn-inverse" type="submit" onclick="">Назначить</button>
            </form>
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