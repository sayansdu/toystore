<%@ page import="entity.K_Image" %>
<%@ page import="java.io.OutputStream" %>
<%--
  Created by IntelliJ IDEA.
  User: sayan
  Date: 5/13/14
  Time: 8:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
    <p>Image</p>
    <%
        K_Image k_image = (K_Image) session.getAttribute("image");
        byte[] image_content = k_image.getImage();
        response.setContentType("image/gif");
        OutputStream o = response.getOutputStream();
        o.write(image_content);
        o.flush();
        o.close();
    %>
</body>
</html>