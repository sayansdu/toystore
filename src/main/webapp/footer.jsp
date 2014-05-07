<%@ page contentType="text/html; charset=UTF-8"%>

<section id="footer-bar">
</section>
<section id="copyright">
    <span styl="">ВСЕ ПРАВА ЗАЩИЩЕНЫ 2014. <u><a href="about.jsp">О Компании</a></u>&nbsp;<u><a href="contact-us.jsp">Обратная связь</a></u></span>
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