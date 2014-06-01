<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="entity.Category" %>
<%@ page import="entity.Section" %>

<ul class="nav nav-list">
    <li class="nav-header"><u>Категории</u></li>

    <%  List<Category> categories = (List<Category>) session.getAttribute("categories");
        for (int i = 0; i < categories.size(); i++) {
    %>
    <li><a href="/Kupon/goods/get/by?category_id=<%= categories.get(i).getId() %>"><%=(categories.get(i).getValue()) %></a></li>
    <% } %>
</ul>
<br/>
<ul class="nav nav-list below">
    <li class="nav-header"><u>Интересное</u></li>
    <%
        List<Section> sections2 = (List<Section>) session.getAttribute("sections");
        for (int i = 0; i < sections2.size(); i++) {
    %>
    <li><a href="/Kupon/goods/get/by?section_id=<%= sections2.get(i).getId() %>"><%=(sections2.get(i).getValue()) %></a></li>
    <% } %>
</ul>