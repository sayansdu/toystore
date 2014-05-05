<%@ page import="entity.Goods" %>
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
    <title>Update good</title>
    <style>
        div {
            margin: auto;
            width: 100%;
        }

    </style>
</head>
<body>
<div>
    <h2>Update item page</h2>
    <%
        Goods goods = (Goods) session.getAttribute("updating_object");
    %>
    <form method="post" action="/Kupon/admin/update/save">
        <table>
            <tr>
                <td>
                    <span>Название</span>
                </td>
                <td>
                    <input type="text" name="name" value="<% out.print(goods.getName()); %>" size="20">
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
                    <textarea name="description" cols="20" rows="6"><% out.print(goods.getDescription()); %></textarea>
                </td>
            </tr>
            <tr>
                <td>
                    <span>Цена</span>
                </td>
                <td>
                    <input type="text" name="price" value="<% out.print(goods.getPrice()); %>" size="20">
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
                    <input type="text" name="category" value="<% out.print(goods.getCategory()); %>" size="20">
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
                    <input type="text" name="amount" value="<% out.print(goods.getAmount()); %>" size="20">
                    <input type="hidden" name="id" value="<% out.print(goods.getId()); %>">
                </td>
            </tr>
            <tr>
                <td><%
                    if(session.getAttribute("error-amount")!=null){
                        out.println("<p class='registration-error'>"+((String)session.getAttribute("error-amount"))+"</p>");
                    }
                %></td>
            </tr>
        </table>
        <input type="submit" value="Update"/>
    </form>
</div>

</body>
</html>