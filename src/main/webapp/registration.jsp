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

            <div id="header" class="width">

            </div>

            <div class="floatRight width25 lightBlueBg horzPad">

                <ul class="submenu2">
                    <li><a href="main.jsp">Главная</a></li>
                    <li><a href="login.jsp">Вход  </a></li>
                    <li><a href="registration.jsp">Регистрация </a></li>

                </ul>
            </div>

            <div id="page">

                <div id="columns" class="widthPad">

                    <div class="floatLeft">

                   <div class="register"><br>
                <form action="/Kupon/Registration" method="post">
                    <table>
                        <tr>
                            <td>Имя:</td><td><input type="text" size="20" name="name" required></td>
                        </tr>
                        <tr>
                            <td><%
                                if(session.getAttribute("error-name")!=null){
                                    out.println("<p class='registration-error'>"+((String)session.getAttribute("error-name"))+"</p>");
                                }
                                %></td>
                        </tr>
                        <tr>
                            <td>Фамилия:</td><td><input type="text" size="20" name="surname" required></td>
                        </tr>
                        <tr>
                            <td><%
                                if(session.getAttribute("error-surname")!=null){
                                    out.println("<p class='registration-error'>"+((String)session.getAttribute("error-surname"))+"</p>");
                                }
                            %></td>
                        </tr>
                        <tr>
                            <td>E-mail:</td><td><input type="text" size="20" name="email" required></td>
                        </tr>
                        <tr>
                            <td><%
                                if(session.getAttribute("error-email")!=null){
                                    out.println("<p class='registration-error'>"+((String)session.getAttribute("error-email"))+"</p>");
                                }
                            %></td>
                        </tr>
                        <tr>
                            <td>Пароль:</td><td><input type="password" size="20" name="password" required></td>
                        </tr>
                        <tr>
                            <td><%
                                if(session.getAttribute("error-pass")!=null){
                                    out.println("<p class='registration-error'>"+((String)session.getAttribute("error-pass"))+"</p>");
                                }
                            %></td>
                        </tr>
                        <tr>
                            <td>Подтвердите пароль:</td><td><input type="password" size="20" name="passwordc" required></td>
                        </tr>
                        <tr>
                            <td><%
                                if(session.getAttribute("error-repass")!=null){
                                    out.println("<p class='registration-error'>"+((String)session.getAttribute("error-repass"))+"</p>");
                                }
                            %></td>
                        </tr>
                        <tr>
                            <td><input type="submit" id="button" value="Register"></td>
                            <td><input type="reset" id="button" value="Reset"></td>
                        </tr>
                    </table>
                </form>

            </div>
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
