

<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page contentType="text/html; charset=UTF-8"%>
<html>
    <head>
        <title></title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" type="text/css" href="css/layout.css" media="screen, projection, tv " />
        <link rel="stylesheet" type="text/css" href="css/html.css" media="screen, projection, tv " />
        <style type="text/css">
            <!--
            .style2 {color: #627E9A}
            .style3 {color: #62CC3C}
            .style6 {color: #5C8096}
            .style7 {color: #888888}
            -->
        </style>

    </head>
    <body>




        <br><div id="content">

            <div id="header" class="width"> <img src="images/2.jpg" alt="Your logo goes here" style="width:300px;" />

            </div>

            <div class="floatRight width25 lightBlueBg horzPad">

                <h3><span class="dark">Впервые на Chocolife.me? </span></h3>
                <ul class="submenu2">
                    <li><a href="index.jsp">Главная</a></li>
                    <li><a href="login.jsp">Вход  </a></li>
                    <li><a href="registration.jsp">Регистрация </a></li>

                </ul>
            </div>

            <div id="page">

                <div id="columns" class="widthPad">

                    <div class="floatLeft">

                        <form action="/Kupon/Login" method="post">
                            <table>
                                <tr>
                                    <td>E-mail:</td><td><input type="text" size="20" name="email"></td>
                                </tr>
                                <tr>
                                    <td>Пароль:</td><td><input type="password" size="20" name="password"></td>
                                </tr>
                                <tr>
                                    <%
                                        String login_error = (String) session.getAttribute("login");
                                        if(login_error!=null){
                                            out.println("<br/>");
                                            out.println("<p style='color:red;'>"+login_error+"</p>");
                                        }
                                    %>
                                </tr>
                                <tr>
                                    <td><input type="submit" id="button" value="Send" /></td>
                                    <td><input type="reset" id="button" value="Reset" /></td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </div>

            </div>

            <div id="footer">

                <div id="bg" class="width">
                    <ul>

                        <li><a rel="nofollow" target="_blank" href="" class="last">Мы в социальных сетях!</a></li>

                    </ul>
                </div>

            </div>







    </body>
</html>
