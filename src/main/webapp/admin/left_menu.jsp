<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="entity.Category" %>
<%@ page import="entity.Section" %>

<div class="block">
    <ul class="nav nav-list below">

        <li class="nav-header"><u>Разделы</u></li>
        <%
            List<Section> sections2 = (List<Section>) session.getAttribute("sections");
            for (int i = 0; i < sections2.size(); i++) {
        %>
        <li><a href="products.jsp"><% out.println(sections2.get(i).getValue()); %></a></li>
        <% } %>
    </ul>
</div>
<div class="block">
    <ul class="nav nav-list">
        <li class="nav-header"><u>Категории</u></li>
        <%  List<Category> categories2 = (List<Category>) session.getAttribute("categories");
            for (int i = 0; i < categories2.size(); i++) {
        %>
        <li><a href="products.jsp"><% out.println(categories2.get(i).getValue()); %></a></li>
        <% } %>
    </ul>
    <br/>
</div>