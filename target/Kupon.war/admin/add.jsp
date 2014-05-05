<%--
  Created by IntelliJ IDEA.
  User: sayan
  Date: 4/21/14
  Time: 5:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <META http-equiv="content-type" content="text/html; charset=utf-8">
    <title>Add good</title>
    <%--<link rel="stylesheet" type="text/css" href="../css/html.css">--%>
<style>
    div {
        margin: auto;
        width: 100%;
    }

</style>
</head>
<body>
<div>
    <h2>Add item page</h2>
    <form method="post" action="/Kupon/admin/add" enctype="multipart/form-data">
        <table>
            <tr>
                <td>
                    <span>Название</span>
                </td>
                <td>
                    <input type="text" name="name" size="20" required="">
                </td>
            </tr>
            <tr>
                <td><%
                    if(session.getAttribute("error-name")!=null){
                        out.println("<p class='registration-error'>"+((String)session.getAttribute("error-name"))+"</p>");
                    }
                %></td>
            </tr>
            <tr>
                <td>
                    <span>Описание</span>
                </td>
                <td>
                    <textarea name="description" cols="20" rows="6"></textarea>
                </td>
            </tr>
            <tr>
                <td>
                    <span>Цена</span>
                </td>
                <td>
                    <input type="text" name="price" size="20" required="">
                </td>
            </tr>
            <tr>
                <td><%
                    if(session.getAttribute("error-price")!=null){
                        out.println("<p class='registration-error'>"+((String)session.getAttribute("error-price"))+"</p>");
                    }
                %></td>
            </tr>
            <tr>
                <td>
                    <span>Категория</span>
                </td>
                <td>
                    <input type="text" name="category" size="20">
                </td>
            </tr>
            <tr>
                <td><%
                    if(session.getAttribute("error-category")!=null){
                        out.println("<p class='registration-error'>"+((String)session.getAttribute("error-category"))+"</p>");
                    }
                %></td>
            </tr>
            <tr>
                <td>
                    <span>Количество</span>
                </td>
                <td>
                    <input type="text" name="amount" size="20">
                </td>
            </tr>
            <tr>
                <td><%
                    if(session.getAttribute("error-amount")!=null){
                        out.println("<p class='registration-error'>"+((String)session.getAttribute("error-amount"))+"</p>");
                    }
                %></td>
            </tr>
            <tr>
                <td>
                    <span>Фото</span>
                </td>
                <td>
                    <input type="file" name="photo">
                </td>
            </tr>
        </table>
        <input type="submit" value="Add"/>
    </form>
</div>

</body>
</html>